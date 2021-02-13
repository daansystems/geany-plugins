/*
 * plugin.vala - This file is part of the Geany ESLint plugin
 *
 * Copyright (c) 2020 DaanSystems <info@daansystems.com>.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 */

using Geany;

static IOChannel input = null;
static string js_code;

internal void parse_eslint(string json) throws Error
{
    Json.Node root = Json.from_string(json);
    var file_path = root.get_array().get_element(0).get_object().get_string_member("filePath");
    var doc = Document.find_by_real_path(file_path);
    if (doc == null) {
        show_error("cannot find document: " + json);
        return;
    }
    var editor = doc.editor;
    var sci = editor.sci;
    var extended_styles_start = (int) sci.send_message(GeanyScintilla.SCI_ANNOTATIONGETSTYLEOFFSET, 0, 0);
    if (extended_styles_start == 0) {
        extended_styles_start = (int) sci.send_message(GeanyScintilla.SCI_ALLOCATEEXTENDEDSTYLES, 3, 0);
        sci.send_message(GeanyScintilla.SCI_ANNOTATIONSETSTYLEOFFSET, extended_styles_start, 0);
        sci.send_message(GeanyScintilla.SCI_STYLESETFORE, extended_styles_start + 1, 0x00ffff);
        sci.send_message(GeanyScintilla.SCI_STYLESETFORE, extended_styles_start + 2, 0x0000ff);
    }
    editor.indicator_clear(Indicator.ERROR);
    sci.send_message(GeanyScintilla.SCI_ANNOTATIONCLEARALL, 0, 0);
    var lint_messages = Json.Path.query("$..messages[*]", root);
    lint_messages.get_array().foreach_element((array, index, item) => {
        var obj = item.get_object();
        var line = (int)obj.get_int_member("line") - 1;
        var end_line = (int)obj.get_int_member_with_default("endLine", line + 1) - 1;
        var column = (int)obj.get_int_member("column") - 1;
        var end_column = (int)obj.get_int_member_with_default("endColumn", column + 1) - 1;
        var message = obj.get_string_member("message");
        var rule_id = obj.get_string_member("ruleId");
        var severity = (int)obj.get_int_member("severity");
        int start_range = sci.get_position_from_line(line) + column;
        int end_range = sci.get_position_from_line(end_line) + end_column;
        editor.indicator_set_on_range(Indicator.ERROR, start_range, end_range);
        string annotation = message + " (" + rule_id + ")";
        string annotation_style = string.nfill(annotation.length + 1, (char)severity);
        int buffer_previous_size = (int)sci.send_message(GeanyScintilla.SCI_ANNOTATIONGETTEXT, line, (intptr) 0);
        if (buffer_previous_size > 0) {
            var annotation_previous = new uint8[buffer_previous_size];
            sci.send_message(GeanyScintilla.SCI_ANNOTATIONGETTEXT, line, (intptr) annotation_previous);
            var annotation_previous_style = new uint8[buffer_previous_size];
            sci.send_message(GeanyScintilla.SCI_ANNOTATIONGETSTYLES, line, (intptr) annotation_previous_style);
            annotation = (string)annotation_previous + "\n" + annotation;
            annotation_style = (string)annotation_previous_style + annotation_style;
        }
        sci.send_message(GeanyScintilla.SCI_ANNOTATIONSETTEXT, line, (intptr) annotation.data);
        sci.send_message(GeanyScintilla.SCI_ANNOTATIONSETSTYLES, line, (intptr) annotation_style);
    });
    sci.send_message(GeanyScintilla.SCI_ANNOTATIONSETVISIBLE, GeanyScintilla.ANNOTATION_BOXED, 0);
}

internal bool handle_stdout(IOChannel channel, IOCondition condition) {
    if (condition != IOCondition.IN) {
        input = null;
        return false;
    }
    try {
        string str_return;
        size_t length;
        channel.read_line (out str_return, out length, null);
        parse_eslint(str_return);
    } catch (GLib.Error e) {
        show_error("parse error: " + e.message);
    }
    return true;
}

internal bool handle_stderr(IOChannel channel, IOCondition condition) {
    if (condition != IOCondition.IN) {
        input = null;
        return false;
    }
    string str_return;
    try {
        var fatal = false;
        size_t length;
        channel.read_line (out str_return, out length, null);
        Json.Node root = Json.from_string(str_return);
        root.get_array().foreach_element((array, index, item) => {
            var error_object = item.get_object();
            var file_path = error_object.get_string_member("filePath");
            var error = error_object.get_string_member("error");
            fatal = error_object.get_boolean_member("fatal");
            var doc = Document.find_by_real_path(file_path);
            var prefix = file_path.length == 0 ? "error" : file_path;
            show_error(prefix + ": " + error, doc);
        });
        if (fatal) {
            input.shutdown(true);
            input = null;
            return false;
        }
        return true;
    } catch (GLib.Error e) {
        show_error("error: " + e.message + " line: " + str_return);
        return false;
    }
}


internal void do_lint (GLib.Object geany_object, Document doc, void *user_data) {
    try {
        if (doc.file_type.id != FiletypeID.FILETYPES_JS) {
            return;
        }
        var editor = doc.editor;
        var sci = editor.sci;
        if (input == null) {
            string? node_path = Environment.find_program_in_path ("node");
            if (node_path == null) {
                // Try windows default installation path.
                node_path = Environment.find_program_in_path ("C:/Program Files/nodejs/node.exe");
                if (node_path == null) {
                    throw new SpawnError.NOENT("cannot find node executable in PATH");
                }
            }
            string[] spawn_args = {node_path, "-e", js_code};
            string[] spawn_env = Environ.get ();
            Pid child_pid;
            int standard_input;
            int standard_output;
            int standard_error;
            var path = Path.get_dirname (doc.real_path);
            if (!Process.spawn_async_with_pipes (
                path,
                spawn_args,
                spawn_env,
                GLib.SpawnFlags.SEARCH_PATH,
                null,
                out child_pid,
                out standard_input,
                out standard_output,
                out standard_error)) {
                throw new SpawnError.FAILED("Spawn error");
            }
            input = new IOChannel.unix_new (standard_input);
            var output = new IOChannel.unix_new (standard_output);
            var error = new IOChannel.unix_new (standard_error);
            output.add_watch (IOCondition.IN | IOCondition.HUP, handle_stdout);
            error.add_watch (IOCondition.IN | IOCondition.HUP, handle_stderr);
        }
        var code = sci.get_contents(sci.get_length() + 1);
        var builder = new Json.Builder ();
        builder.begin_array();
        builder.begin_object ();
        builder.set_member_name ("code");
        builder.add_string_value (code);
        builder.set_member_name ("filePath");
        builder.add_string_value (doc.real_path);
        builder.end_object ();
        builder.end_array ();
        var json = Json.to_string(builder.get_root(), false);
        size_t done;
        input.write_chars((json + "\n").to_utf8(), out done);
        input.flush();
    } catch (GLib.Error e) {
        show_error("error: " + e.message, doc);
    }
}

public void show_error(string text, Document ?doc = null) {
    var msg = "ESLint " + text.replace("\n", " ");
    msgwin_msg_add_string (MsgColors.RED, 1, doc, msg);
    msgwin_switch_tab(MessageWindowTabNum.MESSAGE, false);
}

internal bool eslint_init(Plugin plugin, void *data)
{
    try {
        var js_code_bytes = resources_lookup_data ("/lint.js", ResourceLookupFlags.NONE);
        js_code = (string) js_code_bytes.get_data();
    } catch (GLib.Error e) {
        show_error("error: " + e.message);
    }
    return true;
}

internal void eslint_cleanup(Plugin plugin, void *data)
{
    if (input != null) {
        try {
            input.shutdown(true);
            input = null;
        } catch (GLib.Error e) {
            show_error("error: " + e.message);
        }
    }
}

const PluginCallback eslint_callbacks[] = {
    { "document-open", (GLib.Callback) do_lint, true, null },
    { "document-save", (GLib.Callback) do_lint, true, null },
    { "document-reload", (GLib.Callback) do_lint, true, null },
    { null, null, false, null }
};

public void geany_load_module(Plugin plugin)
{
    plugin.info.name = "ESLint";
    plugin.info.description = "ESLint syntax check integration";
    plugin.info.version = "0.1";
    plugin.info.author = "DaanSystems";
    plugin.funcs.init = eslint_init;
    plugin.funcs.cleanup = eslint_cleanup;
    plugin.funcs.callbacks = (PluginCallback *) eslint_callbacks;
    if (!plugin.register(api_version(), 239, abi_version)) {
        show_error("failed to load plugin");
    } else {
        plugin.module_make_resident();
    }
}
