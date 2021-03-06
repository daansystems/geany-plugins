[CCode (cprefix = "Geany", gir_namespace = "Geany", gir_version = "1.0", lower_case_cprefix = "geany_")]
namespace Geany {

    [CCode (cname="GEANY_ABI_VERSION")]
    extern const int abi_version;
    namespace Build {
        [CCode (cheader_filename = "geanyplugin.h", cname = "build_activate_menu_item")]
        public static void activate_menu_item (Geany.BuildGroup grp, uint cmd);
        [CCode (cheader_filename = "geanyplugin.h", cname = "build_get_current_menu_item")]
        public static unowned string? get_current_menu_item (Geany.BuildGroup grp, uint cmd, Geany.BuildCmdEntries fld);
        [CCode (cheader_filename = "geanyplugin.h", cname = "build_get_group_count")]
        public static uint get_group_count (Geany.BuildGroup grp);
        [CCode (cheader_filename = "geanyplugin.h", cname = "build_remove_menu_item")]
        public static void remove_menu_item (Geany.BuildSource src, Geany.BuildGroup grp, int cmd);
        [CCode (cheader_filename = "geanyplugin.h", cname = "build_set_menu_item")]
        public static void set_menu_item (Geany.BuildSource src, Geany.BuildGroup grp, uint cmd, Geany.BuildCmdEntries fld, string val);
    }
    namespace Highlighting {
        [CCode (cheader_filename = "geanyplugin.h", cname = "highlighting_get_style")]
        public static unowned Geany.LexerStyle? get_style (int ft_id, int style_id);
        [CCode (cheader_filename = "geanyplugin.h", cname = "highlighting_is_code_style")]
        public static bool is_code_style (int lexer, int style);
        [CCode (cheader_filename = "geanyplugin.h", cname = "highlighting_is_comment_style")]
        public static bool is_comment_style (int lexer, int style);
        [CCode (cheader_filename = "geanyplugin.h", cname = "highlighting_is_string_style")]
        public static bool is_string_style (int lexer, int style);
        [CCode (cheader_filename = "geanyplugin.h", cname = "highlighting_set_styles")]
        public static void set_styles (GeanyScintilla.ScintillaObject sci, Geany.Filetype ft);
    }
    namespace UiUtils {
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_add_document_sensitive")]
        [Version (since = "0.15")]
        public static void add_document_sensitive (Gtk.Widget widget);
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_button_new_with_image")]
        public static unowned Gtk.Widget button_new_with_image (string stock_id, string text);
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_combo_box_add_to_history")]
        public static void combo_box_add_to_history (Gtk.ComboBoxText combo_entry, string? text, int history_len);
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_dialog_vbox_new")]
        public static unowned Gtk.Widget dialog_vbox_new (Gtk.Dialog dialog);
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_entry_add_clear_icon")]
        [Version (since = "0.16")]
        public static void entry_add_clear_icon (Gtk.Entry entry);
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_frame_new_with_alignment")]
        [Version (deprecated = true, deprecated_since = "1.29")]
        public static unowned Gtk.Widget frame_new_with_alignment (string label_text, Gtk.Widget alignment);
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_get_gtk_settings_integer")]
        [Version (since = "0.19")]
        public static int get_gtk_settings_integer (string property_name, int default_value);
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_image_menu_item_new")]
        [Version (since = "0.16")]
        public static unowned Gtk.Widget image_menu_item_new (string stock_id, string label);
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_is_keyval_enter_or_return")]
        [Version (since = "0.19")]
        public static bool is_keyval_enter_or_return (uint keyval);
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_lookup_stock_label")]
        public static unowned string lookup_stock_label (string stock_id);
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_lookup_widget")]
        [Version (since = "0.16")]
        public static unowned Gtk.Widget lookup_widget (Gtk.Widget widget, string widget_name);
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_path_box_new")]
        public static unowned Gtk.Widget path_box_new (string? title, Gtk.FileChooserAction action, Gtk.Entry entry);
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_progress_bar_start")]
        [Version (since = "0.16")]
        public static void progress_bar_start (string? text);
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_progress_bar_stop")]
        [Version (since = "0.16")]
        public static void progress_bar_stop ();
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_tree_view_set_tooltip_text_column")]
        [Version (since = "1.25")]
        public static void tree_view_set_tooltip_text_column (Gtk.TreeView tree_view, int column);
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_widget_modify_font_from_string")]
        public static void widget_modify_font_from_string (Gtk.Widget widget, string str);
        [CCode (cheader_filename = "geanyplugin.h", cname = "ui_widget_set_tooltip_text")]
        [Version (deprecated = true, deprecated_since = "0.21", since = "0.16")]
        public static void widget_set_tooltip_text (Gtk.Widget widget, string text);
    }
    namespace Utils {
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_find_open_xml_tag")]
        public static string? find_open_xml_tag (string sel, int size);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_find_open_xml_tag_pos")]
        public static unowned string? find_open_xml_tag_pos (string sel, int size);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_get_date_time")]
        [Version (since = "0.16")]
        public static string get_date_time (string format, long? time_to_use);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_get_file_list")]
        public static GLib.SList<string>? get_file_list (string path, uint length) throws GLib.Error;
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_get_file_list_full")]
        public static GLib.SList<string>? get_file_list_full (string path, bool full_path, bool sort) throws GLib.Error;
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_get_locale_from_utf8")]
        public static string get_locale_from_utf8 (string utf8_text);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_get_real_path")]
        [Version (since = "1.32")]
        public static string get_real_path (string file_name);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_get_setting_boolean")]
        public static bool get_setting_boolean (GLib.KeyFile config, string section, string key, bool default_value);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_get_setting_integer")]
        public static int get_setting_integer (GLib.KeyFile config, string section, string key, int default_value);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_get_setting_string")]
        public static string get_setting_string (GLib.KeyFile config, string section, string key, string default_value);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_get_utf8_from_locale")]
        public static string get_utf8_from_locale (string locale_text);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_mkdir")]
        public static int mkdir (string path, bool create_parent_dirs);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_open_browser")]
        [Version (since = "0.16")]
        public static void open_browser (string uri);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_remove_ext_from_filename")]
        public static string remove_ext_from_filename (string filename);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_spawn_async")]
        public static bool spawn_async (string? dir, string argv, string? env, GLib.SpawnFlags flags, [CCode (delegate_target_pos = 5.5)] GLib.SpawnChildSetupFunc child_setup, out GLib.Pid child_pid) throws GLib.Error;
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_spawn_sync")]
        public static bool spawn_sync (string? dir, string argv, string? env, GLib.SpawnFlags flags, [CCode (delegate_target_pos = 5.5)] GLib.SpawnChildSetupFunc child_setup, out string std_out, out string std_err, out int exit_status) throws GLib.Error;
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_str_casecmp")]
        [Version (since = "0.16")]
        public static int str_casecmp (string? s1, string? s2);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_str_equal")]
        public static bool str_equal (string? a, string? b);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_str_middle_truncate")]
        [Version (since = "0.17")]
        public static string str_middle_truncate (string string, uint truncate_length);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_str_remove_chars")]
        public static string str_remove_chars (string string, string chars);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_string_replace_all")]
        public static uint string_replace_all (GLib.StringBuilder haystack, string needle, string replace);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_string_replace_first")]
        [Version (since = "0.16")]
        public static uint string_replace_first (GLib.StringBuilder haystack, string needle, string replace);
        [CCode (array_length = false, array_null_terminated = true, cheader_filename = "geanyplugin.h", cname = "utils_strv_shorten_file_list")]
        [Version (since = "1.34")]
        public static string[] strv_shorten_file_list ([CCode (array_length_cname = "file_names_len", array_length_pos = 1.1, array_length_type = "gssize")] string[] file_names);
        [CCode (cheader_filename = "geanyplugin.h", cname = "utils_write_file")]
        public static int write_file (string filename, string text);
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class App {
        public weak string configdir;
        public bool debug_mode;
        public weak Geany.Project project;
        public weak Geany.TMWorkspace tm_workspace;
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class Data {
        public weak Geany.App app;
        public weak GLib.GenericArray<Geany.Document> documents_array;
        public weak Geany.EditorPrefs editor_prefs;
        public weak Geany.FilePrefs file_prefs;
        public weak GLib.GenericArray<Geany.Filetype> filetypes_array;
        public weak GLib.SList<Geany.Filetype> filetypes_by_title;
        public weak Geany.InterfacePrefs interface_prefs;
        public weak Geany.MainWidgets main_widgets;
        public weak GLib.Object object;
        public weak Geany.Prefs prefs;
        public weak Geany.SearchPrefs search_prefs;
        public weak Geany.TemplatePrefs template_prefs;
        public weak Geany.ToolPrefs tool_prefs;
        public weak Geany.ToolbarPrefs toolbar_prefs;
    }
    [CCode (cheader_filename = "geanyplugin.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "document_get_type ()")]
    [Compact]
    public class Document {
        public bool changed;
        public weak Geany.Editor editor;
        public weak string encoding;
        public weak string file_name;
        public weak Geany.Filetype file_type;
        public bool has_bom;
        public bool has_tags;
        public uint id;
        public bool is_valid;
        public void* priv;
        public bool readonly;
        public weak string real_path;
        public weak Geany.TMSourceFile tm_file;
        [CCode (cname = "document_close")]
        [Version (since = "0.15")]
        public bool close ();
        [CCode (cname = "document_compare_by_display_name")]
        [Version (since = "0.21")]
        public static int compare_by_display_name (void* a, void* b);
        [CCode (cname = "document_compare_by_tab_order")]
        [Version (since = "0.21")]
        public static int compare_by_tab_order (void* a, void* b);
        [CCode (cname = "document_compare_by_tab_order_reverse")]
        [Version (since = "0.21")]
        public static int compare_by_tab_order_reverse (void* a, void* b);
        [CCode (cname = "document_find_by_filename")]
        public static unowned Geany.Document? find_by_filename (string utf8_filename);
        [CCode (cname = "document_find_by_id")]
        [Version (since = "1.25.")]
        public static unowned Geany.Document find_by_id (uint id);
        [CCode (cname = "document_find_by_real_path")]
        [Version (since = "0.15")]
        public static unowned Geany.Document? find_by_real_path (string realname);
        [CCode (cname = "document_get_basename_for_display")]
        [Version (since = "0.17")]
        public string get_basename_for_display (int length);
        [CCode (cname = "document_get_current")]
        public static unowned Geany.Document? get_current ();
        [CCode (cname = "document_get_from_page")]
        public static unowned Geany.Document? get_from_page (uint page_num);
        [CCode (cname = "document_get_notebook_page")]
        [Version (since = "0.19")]
        public int get_notebook_page ();
        [CCode (cname = "document_get_status_color")]
        [Version (since = "0.16")]
        public unowned Gdk.Color? get_status_color ();
        [CCode (cname = "document_index")]
        [Version (since = "0.16")]
        public static unowned Geany.Document? index (int idx);
        [CCode (cname = "document_new_file")]
        public static unowned Geany.Document new_file (string? utf8_filename, Geany.Filetype? ft, string? text);
        [CCode (cname = "document_open_file")]
        public static unowned Geany.Document? open_file (string locale_filename, bool readonly, Geany.Filetype? ft, string? forced_enc);
        [CCode (cname = "document_open_files")]
        public static void open_files (GLib.SList<string> filenames, bool readonly, Geany.Filetype? ft, string? forced_enc);
        [CCode (cname = "document_reload_force")]
        public bool reload_force (string? forced_enc);
        [CCode (cname = "document_remove_page")]
        public static bool remove_page (uint page_num);
        [CCode (cname = "document_rename_file")]
        [Version (since = "0.16")]
        public void rename_file (string new_filename);
        [CCode (cname = "document_save_file")]
        public bool save_file (bool force);
        [CCode (cname = "document_save_file_as")]
        [Version (since = "0.16")]
        public bool save_file_as (string? utf8_fname);
        [CCode (cname = "document_set_encoding")]
        public void set_encoding (string new_encoding);
        [CCode (cname = "document_set_filetype")]
        public void set_filetype (Geany.Filetype type);
        [CCode (cname = "document_set_text_changed")]
        public void set_text_changed (bool changed);
    }
    [CCode (cheader_filename = "geanyplugin.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "editor_get_type ()")]
    [Compact]
    public class Editor {
        public bool auto_indent;
        public weak Geany.Document document;
        public bool line_breaking;
        public bool line_wrapping;
        public weak GeanyScintilla.ScintillaObject sci;
        public float scroll_percent;
        [CCode (cname = "editor_create_widget")]
        [Version (since = "0.15")]
        public unowned GeanyScintilla.ScintillaObject create_widget ();
        [CCode (cname = "editor_find_snippet")]
        public unowned string? find_snippet (string snippet_name);
        [CCode (cname = "editor_get_eol_char")]
        [Version (since = "0.19")]
        public unowned string get_eol_char ();
        [CCode (cname = "editor_get_eol_char_len")]
        [Version (since = "0.19")]
        public int get_eol_char_len ();
        [CCode (cname = "editor_get_eol_char_mode")]
        [Version (since = "0.20")]
        public int get_eol_char_mode ();
        [CCode (cname = "editor_get_eol_char_name")]
        [Version (since = "0.19")]
        public unowned string get_eol_char_name ();
        [CCode (cname = "editor_get_indent_prefs")]
        public unowned Geany.IndentPrefs get_indent_prefs ();
        [CCode (cname = "editor_get_word_at_pos")]
        [Version (since = "0.16")]
        public string? get_word_at_pos (int pos, string wordchars);
        [CCode (cname = "editor_goto_pos")]
        [Version (since = "0.20")]
        public bool goto_pos (int pos, bool mark);
        [CCode (cname = "editor_indicator_clear")]
        [Version (since = "0.16")]
        public void indicator_clear (int indic);
        [CCode (cname = "editor_indicator_set_on_line")]
        [Version (since = "0.16")]
        public void indicator_set_on_line (int indic, int line);
        [CCode (cname = "editor_indicator_set_on_range")]
        [Version (since = "0.16")]
        public void indicator_set_on_range (int indic, int start, int end);
        [CCode (cname = "editor_insert_snippet")]
        public void insert_snippet (int pos, string snippet);
        [CCode (cname = "editor_insert_text_block")]
        public void insert_text_block (string text, int insert_pos, int cursor_index, int newline_indent_size, bool replace_newlines);
        [CCode (cname = "editor_set_indent_type")]
        [Version (since = "0.16")]
        public void set_indent_type (Geany.IndentType type);
        [CCode (cname = "editor_set_indent_width")]
        [Version (since = "1.27")]
        public void set_indent_width (int width);
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class EditorPrefs {
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class EntryAction {
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class EntryActionClass {
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class FilePrefs {
    }
    [CCode (cheader_filename = "geanyplugin.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "filetype_get_type ()")]
    [Compact]
    public class Filetype {
        public weak string extension;
        public Geany.FiletypeID id;
        public weak string name;
        public weak string pattern;
        public void* priv;
        public weak string title;
        [CCode (cname = "filetypes_get_display_name")]
        public unowned string _get_display_name ();
        [CCode (cname = "filetypes_detect_from_file")]
        public static unowned Geany.Filetype detect_from_file (string utf8_filename);
        [CCode (cname = "filetypes_get_display_name")]
        public static unowned string get_display_name (Geany.Filetype ft);
        [CCode (cname = "filetypes_get_sorted_by_name")]
        public static unowned GLib.SList<Geany.Filetype> get_sorted_by_name ();
        [CCode (cname = "filetypes_index")]
        [Version (since = "0.16")]
        public static unowned Geany.Filetype? index (int idx);
        [CCode (cname = "filetypes_lookup_by_name")]
        [Version (since = "0.15")]
        public static unowned Geany.Filetype? lookup_by_name (string name);
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class Functions {
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class IndentPrefs {
        public int hard_tab_width;
        public Geany.IndentType type;
        public int width;
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class InterfacePrefs {
        public bool compiler_tab_autoscroll;
        public weak string editor_font;
        public bool highlighting_invert_all;
        public bool msgwin_compiler_visible;
        public weak string msgwin_font;
        public bool msgwin_messages_visible;
        public int msgwin_orientation;
        public bool msgwin_scribble_visible;
        public bool msgwin_status_visible;
        public bool notebook_double_click_hides_widgets;
        public bool show_notebook_tabs;
        public bool show_symbol_list_expanders;
        public bool sidebar_openfiles_visible;
        public int sidebar_pos;
        public bool sidebar_symbol_visible;
        public bool statusbar_visible;
        public int symbols_sort_mode;
        public int tab_pos_editor;
        public int tab_pos_msgwin;
        public int tab_pos_sidebar;
        public weak string tagbar_font;
        public bool use_native_windows_dialogs;
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class KeyBinding {
        public weak Geany.KeyCallback callback;
        public uint key;
        public weak string label;
        public weak Gtk.Widget menu_item;
        public Gdk.ModifierType mods;
        public weak string name;
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class KeyGroup {
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class KeyGroupInfo {
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class MainWidgets {
        public weak Gtk.Widget editor_menu;
        public weak Gtk.Widget message_window_notebook;
        public weak Gtk.Widget notebook;
        public weak Gtk.Widget progressbar;
        public weak Gtk.Widget project_menu;
        public weak Gtk.Widget sidebar_notebook;
        public weak Gtk.Widget toolbar;
        public weak Gtk.Widget tools_menu;
        public weak Gtk.Widget window;
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class MatchInfo {
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class MenubuttonAction {
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class MenubuttonActionClass {
    }
    [CCode (cheader_filename = "geanyplugin.h", type_id = "geany_object_get_type ()")]
    public class Object : GLib.Object {
        [CCode (has_construct_function = false)]
        protected Object ();
        public signal void build_start ();
        public signal void document_activate (Geany.Document object);
        public signal void document_before_save (Geany.Document object);
        public signal void document_close (Geany.Document object);
        public signal void document_filetype_set (Geany.Document object, Geany.Filetype p0);
        public signal void document_new (Geany.Document object);
        public signal void document_open (Geany.Document object);
        public signal void document_reload (Geany.Document object);
        public signal void document_save (Geany.Document object);
        public signal bool editor_notify (Geany.Editor object, GeanyScintilla.SCNotification p0);
        public signal void geany_startup_complete ();
        public signal bool key_press (Gdk.Event object);
        public signal void load_settings (GLib.KeyFile object);
        public signal void project_before_close ();
        public signal void project_close ();
        public signal void project_dialog_close (Gtk.Notebook object);
        public signal void project_dialog_confirmed (Gtk.Notebook object);
        public signal void project_dialog_open (Gtk.Notebook object);
        public signal void project_open (GLib.KeyFile object);
        public signal void project_save (GLib.KeyFile object);
        public signal void save_settings (GLib.KeyFile object);
        public signal void update_editor_menu (string object, int p0, Geany.Document p1);
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class Plugin {
        public weak Geany.PluginFuncs funcs;
        public weak Geany.Data geany_data;
        public weak Geany.PluginInfo info;
        public void* priv;
        public weak Geany.ProxyFuncs proxy_funcs;
        [CCode (cname = "plugin_add_toolbar_item")]
        public void add_toolbar_item (Gtk.ToolItem item);
        [CCode (cname = "plugin_builder_connect_signals")]
        [Version (since = "1.24")]
        public void builder_connect_signals (Gtk.Builder builder, void* user_data);
        [Version (since = "1.32")]
        public void* get_data ();
        [CCode (cname = "plugin_module_make_resident")]
        [Version (since = "0.16")]
        public void module_make_resident ();
        [Version (since = "1.26")]
        public bool register (int api_version, int min_api_version, int abi_version);
        [Version (since = "1.26")]
        public bool register_full (int api_version, int min_api_version, int abi_version, void* pdata, GLib.DestroyNotify free_func);
        [Version (since = "1.26")]
        public bool register_proxy (string extensions);
        [Version (since = "1.26")]
        public void set_data (void* pdata, GLib.DestroyNotify free_func);
        [CCode (cname = "plugin_set_key_group_full")]
        [Version (since = "1.26")]
        public unowned Geany.KeyGroup set_key_group_full (string section_name, size_t count, owned Geany.KeyGroupFunc? cb);
        [CCode (cname = "plugin_show_configure")]
        [Version (since = "0.19.")]
        public void show_configure ();
        [CCode (cname = "plugin_signal_connect")]
        public void signal_connect(GLib.Object? obj, string signal_name,
                          bool after, GLib.Callback cb, void *data);
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "PluginCallback", has_type_id = false)]
    [Compact]
    public struct PluginCallback {
        public weak string signal_name;
        public weak GLib.Callback callback;
        public bool after;
        public void* user_data;
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "PluginFields", has_type_id = false)]
    [Compact]
    public class PluginFields {
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class PluginFuncs {
        public weak Geany.PluginCallback *callbacks;
        public Geany.cleanup cleanup;
        public Geany.help help;
        public Geany.init init;
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "PluginInfo", has_type_id = false)]
    [Compact]
    public class PluginInfo {
        public weak string author;
        public weak string description;
        public weak string name;
        public weak string version;
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class Prefs {
        public weak string default_open_path;
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "PrintingPrefs", has_type_id = false)]
    [Compact]
    public class PrintingPrefs {
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class Project {
        public weak string base_path;
        public weak string description;
        public weak string file_name;
        [CCode (array_length = false, array_null_terminated = true)]
        public weak string[] file_patterns;
        public weak string name;
        public void* priv;
        public int type;
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class ProxyFuncs {
        public Geany.load load;
        public Geany.probe probe;
        public Geany.unload unload;
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class SearchPrefs {
        public bool use_current_word;
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "SidebarTreeviews", has_type_id = false)]
    [Compact]
    public class SidebarTreeviews {
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "StashGroup", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "stash_group_get_type ()")]
    [Compact]
    public class StashGroup {
        [CCode (cname = "stash_group_new", has_construct_function = false)]
        public StashGroup (string name);
        [CCode (cname = "stash_group_add_boolean")]
        public void add_boolean (bool setting, string key_name, bool default_value);
        [CCode (cname = "stash_group_add_combo_box")]
        public void add_combo_box (int setting, string key_name, int default_value, Geany.StashWidgetID widget_id);
        [CCode (cname = "stash_group_add_combo_box_entry")]
        public void add_combo_box_entry (string setting, string key_name, string default_value, Geany.StashWidgetID widget_id);
        [CCode (cname = "stash_group_add_entry")]
        public void add_entry (string setting, string key_name, string default_value, Geany.StashWidgetID widget_id);
        [CCode (cname = "stash_group_add_integer")]
        public void add_integer (int setting, string key_name, int default_value);
        [CCode (cname = "stash_group_add_spin_button_integer")]
        public void add_spin_button_integer (int setting, string key_name, int default_value, Geany.StashWidgetID widget_id);
        [CCode (cname = "stash_group_add_string")]
        public void add_string (string setting, string key_name, string? default_value);
        [CCode (cname = "stash_group_add_string_vector")]
        public void add_string_vector (string setting, string key_name, string default_value);
        [CCode (cname = "stash_group_add_toggle_button")]
        public void add_toggle_button (bool setting, string key_name, bool default_value, Geany.StashWidgetID widget_id);
        [CCode (cname = "stash_group_add_widget_property")]
        public void add_widget_property (void* setting, string key_name, void* default_value, Geany.StashWidgetID widget_id, string property_name, GLib.Type type);
        [CCode (cname = "stash_group_display")]
        public void display (Gtk.Widget owner);
        [CCode (cname = "stash_group_free")]
        public void free ();
        [CCode (cname = "stash_group_free_settings")]
        public void free_settings ();
        [CCode (cname = "stash_group_load_from_file")]
        public bool load_from_file (string filename);
        [CCode (cname = "stash_group_load_from_key_file")]
        public void load_from_key_file (GLib.KeyFile keyfile);
        [CCode (cname = "stash_group_save_to_file")]
        public int save_to_file (string filename, GLib.KeyFileFlags flags);
        [CCode (cname = "stash_group_save_to_key_file")]
        public void save_to_key_file (GLib.KeyFile keyfile);
        [CCode (cname = "stash_group_update")]
        public void update (Gtk.Widget owner);
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "TMSourceFile", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "tm_source_file_get_type ()")]
    [Compact]
    public class TMSourceFile {
        public weak string file_name;
        public weak string short_name;
        public weak GLib.GenericArray<Geany.TMTag> tags_array;
        [CCode (cname = "tm_source_file_new", has_construct_function = false)]
        public TMSourceFile (string file_name, string name);
        [CCode (cname = "tm_source_file_free")]
        public void free ();
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "TMTag", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "tm_tag_get_type ()")]
    [Compact]
    public class TMTag {
        public char access;
        public weak string arglist;
        public weak Geany.TMSourceFile file;
        public char impl;
        public weak string inheritance;
        public ulong line;
        public bool local;
        public weak string name;
        public weak string scope;
        public Geany.TMTagType type;
        public weak string var_type;
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "TMWorkspace", has_type_id = false)]
    [Compact]
    public class TMWorkspace {
        public weak GLib.GenericArray<Geany.TMTag> global_tags;
        public weak GLib.GenericArray<Geany.TMSourceFile> source_files;
        public weak GLib.GenericArray<Geany.TMTag> tags_array;
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class TemplatePrefs {
        public weak string company;
        public weak string developer;
        public weak string initials;
        public weak string mail;
        public weak string version;
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class ToolPrefs {
        public weak string browser_cmd;
        public weak string context_action_cmd;
        public weak string grep_cmd;
        public weak string term_cmd;
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class ToolbarPrefs {
        public Gtk.ToolbarStyle icon_style;
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class WrapLabel {
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    [Compact]
    public class WrapLabelClass {
    }
    [CCode (cheader_filename = "geanyplugin.h", has_type_id = false)]
    public struct LexerStyle {
        public int foreground;
        public int background;
        public bool bold;
        public bool italic;
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "SpawnWriteData", has_type_id = false)]
    public struct SpawnWriteData {
        public weak string ptr;
        public size_t size;
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "StashWidgetID")]
    [SimpleType]
    public struct StashWidgetID {
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "TMParserType")]
    [SimpleType]
    public struct TMParserType : int {
    }
    [CCode (cheader_filename = "geanyplugin.h", cprefix = "GEANY_AUTOINDENT_", has_type_id = false)]
    public enum AutoIndent {
        NONE,
        BASIC,
        CURRENTCHARS,
        MATCHBRACES
    }
    [CCode (cheader_filename = "geanyplugin.h", cprefix = "GEANY_BC_", has_type_id = false)]
    public enum BuildCmdEntries {
        LABEL,
        COMMAND,
        WORKING_DIR,
        CMDENTRIES_COUNT
    }
    [CCode (cheader_filename = "geanyplugin.h", cprefix = "GEANY_GBG_", has_type_id = false)]
    public enum BuildGroup {
        FT,
        NON_FT,
        EXEC,
        COUNT
    }
    [CCode (cheader_filename = "geanyplugin.h", cprefix = "GEANY_BCS_", has_type_id = false)]
    public enum BuildSource {
        DEF,
        FT,
        HOME_FT,
        PREF,
        PROJ_FT,
        PROJ,
        COUNT
    }
    [CCode (cheader_filename = "geanyplugin.h", cprefix = "GEANY_", has_type_id = false)]
    public enum EncodingIndex {
        ENCODING_ISO_8859_1,
        ENCODING_ISO_8859_2,
        ENCODING_ISO_8859_3,
        ENCODING_ISO_8859_4,
        ENCODING_ISO_8859_5,
        ENCODING_ISO_8859_6,
        ENCODING_ISO_8859_7,
        ENCODING_ISO_8859_8,
        ENCODING_ISO_8859_8_I,
        ENCODING_ISO_8859_9,
        ENCODING_ISO_8859_10,
        ENCODING_ISO_8859_13,
        ENCODING_ISO_8859_14,
        ENCODING_ISO_8859_15,
        ENCODING_ISO_8859_16,
        ENCODING_UTF_7,
        ENCODING_UTF_8,
        ENCODING_UTF_16LE,
        ENCODING_UTF_16BE,
        ENCODING_UCS_2LE,
        ENCODING_UCS_2BE,
        ENCODING_UTF_32LE,
        ENCODING_UTF_32BE,
        ENCODING_ARMSCII_8,
        ENCODING_BIG5,
        ENCODING_BIG5_HKSCS,
        ENCODING_CP_866,
        ENCODING_EUC_JP,
        ENCODING_EUC_KR,
        ENCODING_EUC_TW,
        ENCODING_GB18030,
        ENCODING_GB2312,
        ENCODING_GBK,
        ENCODING_GEOSTD8,
        ENCODING_HZ,
        ENCODING_IBM_850,
        ENCODING_IBM_852,
        ENCODING_IBM_855,
        ENCODING_IBM_857,
        ENCODING_IBM_862,
        ENCODING_IBM_864,
        ENCODING_ISO_2022_JP,
        ENCODING_ISO_2022_KR,
        ENCODING_ISO_IR_111,
        ENCODING_JOHAB,
        ENCODING_KOI8_R,
        ENCODING_KOI8_U,
        ENCODING_SHIFT_JIS,
        ENCODING_TCVN,
        ENCODING_TIS_620,
        ENCODING_UHC,
        ENCODING_VISCII,
        ENCODING_WINDOWS_1250,
        ENCODING_WINDOWS_1251,
        ENCODING_WINDOWS_1252,
        ENCODING_WINDOWS_1253,
        ENCODING_WINDOWS_1254,
        ENCODING_WINDOWS_1255,
        ENCODING_WINDOWS_1256,
        ENCODING_WINDOWS_1257,
        ENCODING_WINDOWS_1258,
        ENCODING_NONE,
        ENCODING_CP_932,
        ENCODINGS_MAX
    }
    [CCode (cheader_filename = "geanyplugin.h", cprefix = "GEANY_FILETYPE_GROUP_", has_type_id = false)]
    public enum FiletypeGroupID {
        NONE,
        COMPILED,
        SCRIPT,
        MARKUP,
        MISC,
        COUNT
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "filetype_id", cprefix = "GEANY_", has_type_id = false)]
    public enum FiletypeID {
        FILETYPES_NONE,
        FILETYPES_PHP,
        FILETYPES_BASIC,
        FILETYPES_MATLAB,
        FILETYPES_RUBY,
        FILETYPES_LUA,
        FILETYPES_FERITE,
        FILETYPES_YAML,
        FILETYPES_C,
        FILETYPES_NSIS,
        FILETYPES_GLSL,
        FILETYPES_PO,
        FILETYPES_MAKE,
        FILETYPES_TCL,
        FILETYPES_XML,
        FILETYPES_CSS,
        FILETYPES_REST,
        FILETYPES_HASKELL,
        FILETYPES_JAVA,
        FILETYPES_CAML,
        FILETYPES_AS,
        FILETYPES_R,
        FILETYPES_DIFF,
        FILETYPES_HTML,
        FILETYPES_PYTHON,
        FILETYPES_CS,
        FILETYPES_PERL,
        FILETYPES_VALA,
        FILETYPES_PASCAL,
        FILETYPES_LATEX,
        FILETYPES_ASM,
        FILETYPES_CONF,
        FILETYPES_HAXE,
        FILETYPES_CPP,
        FILETYPES_SH,
        FILETYPES_FORTRAN,
        FILETYPES_SQL,
        FILETYPES_F77,
        FILETYPES_DOCBOOK,
        FILETYPES_D,
        FILETYPES_JS,
        FILETYPES_VHDL,
        FILETYPES_ADA,
        FILETYPES_CMAKE,
        FILETYPES_MARKDOWN,
        FILETYPES_TXT2TAGS,
        FILETYPES_ABC,
        FILETYPES_VERILOG,
        FILETYPES_FORTH,
        FILETYPES_LISP,
        FILETYPES_ERLANG,
        FILETYPES_COBOL,
        FILETYPES_OBJECTIVEC,
        FILETYPES_ASCIIDOC,
        FILETYPES_ABAQUS,
        FILETYPES_BATCH,
        FILETYPES_POWERSHELL,
        FILETYPES_RUST,
        FILETYPES_COFFEESCRIPT,
        FILETYPES_GO,
        FILETYPES_ZEPHIR,
        FILETYPES_BIBTEX,
        FILETYPES_SMALLTALK,
        MAX_BUILT_IN_FILETYPES
    }
    [CCode (cheader_filename = "geanyplugin.h", cprefix = "GEANY_FIND_SEL_", has_type_id = false)]
    public enum FindSelOptions {
        CURRENT_WORD,
        X,
        AGAIN
    }
    [CCode (cheader_filename = "geanyplugin.h", cprefix = "GEANY_INDENT_TYPE_", has_type_id = false)]
    public enum IndentType {
        SPACES,
        TABS,
        BOTH
    }
    [CCode (cheader_filename = "geanyplugin.h", cprefix = "GEANY_INDICATOR_", has_type_id = false)]
    public enum Indicator {
        ERROR,
        SEARCH,
        SNIPPET
    }
    [CCode (cheader_filename = "geanyplugin.h", cprefix = "GEANY_KEYS_", has_type_id = false)]
    public enum KeyBindingID {
        EDITOR_TRANSPOSELINE,
        DOCUMENT_REMOVE_ERROR_INDICATORS,
        FOCUS_SEARCHBAR,
        SEARCH_FIND,
        FILE_SAVEALL,
        GOTO_NEXTMARKER,
        NOTEBOOK_SWITCHTABLEFT,
        VIEW_ZOOMOUT,
        GOTO_LINE,
        DOCUMENT_TOGGLEFOLD,
        BUILD_COMPILE,
        EDITOR_SCROLLTOLINE,
        DOCUMENT_UNFOLDALL,
        GOTO_MATCHINGBRACE,
        SEARCH_FINDDOCUMENTUSAGE,
        CLIPBOARD_PASTE,
        BUILD_MAKE,
        INSERT_ALTWHITESPACE,
        EDITOR_SCROLLLINEDOWN,
        VIEW_TOGGLEALL,
        VIEW_FULLSCREEN,
        GOTO_LINEEND,
        EDITOR_CALLTIP,
        FILE_PRINT,
        EDITOR_DUPLICATELINE,
        FOCUS_SCRIBBLE,
        TOOLS_OPENCOLORCHOOSER,
        SEARCH_PREVIOUSMESSAGE,
        FILE_CLOSE,
        DOCUMENT_REPLACETABS,
        FILE_RELOAD,
        SEARCH_FINDNEXTSEL,
        FOCUS_MESSAGES,
        BUILD_RUN,
        HELP_HELP,
        SETTINGS_PLUGINPREFERENCES,
        VIEW_ZOOMRESET,
        SELECT_WORD,
        FORMAT_INCREASEINDENT,
        SETTINGS_PREFERENCES,
        FORMAT_SENDTOCMD3,
        DOCUMENT_FOLDALL,
        FORMAT_SENDTOVTE,
        PROJECT_PROPERTIES,
        DOCUMENT_LINEWRAP,
        EDITOR_MACROLIST,
        EDITOR_SUPPRESSSNIPPETCOMPLETION,
        FOCUS_SIDEBAR_SYMBOL_LIST,
        GOTO_LINESTART,
        SEARCH_FINDUSAGE,
        FILE_NEW,
        EDITOR_SNIPPETNEXTCURSOR,
        NOTEBOOK_SWITCHTABRIGHT,
        FILE_SAVE,
        FORMAT_INCREASEINDENTBYSPACE,
        SEARCH_FINDNEXT,
        GOTO_TOGGLEMARKER,
        GOTO_TAGDEFINITION,
        SEARCH_NEXTMESSAGE,
        EDITOR_DELETELINETOEND,
        FORMAT_AUTOINDENT,
        FILE_OPENSELECTED,
        GOTO_BACK,
        INSERT_DATE,
        BUILD_PREVIOUSERROR,
        GOTO_LINEENDVISUAL,
        DOCUMENT_REPLACESPACES,
        FOCUS_EDITOR,
        SELECT_WORDPARTRIGHT,
        VIEW_MESSAGEWINDOW,
        FOCUS_SIDEBAR_DOCUMENT_LIST,
        FORMAT_REFLOWPARAGRAPH,
        EDITOR_MOVELINEUP,
        NOTEBOOK_MOVETABLEFT,
        SELECT_LINE,
        EDITOR_UNDO,
        EDITOR_MOVELINEDOWN,
        CLIPBOARD_COPYLINE,
        BUILD_MAKEOWNTARGET,
        FORMAT_SENDTOCMD2,
        SEARCH_MARKALL,
        BUILD_LINK,
        FILE_CLOSEALL,
        GOTO_FORWARD,
        CLIPBOARD_CUT,
        NOTEBOOK_SWITCHTABLASTUSED,
        NOTEBOOK_MOVETABRIGHT,
        BUILD_OPTIONS,
        GOTO_TAGDECLARATION,
        FILE_OPEN,
        EDITOR_COMPLETESNIPPET,
        FORMAT_UNCOMMENTLINE,
        FOCUS_VTE,
        FORMAT_SENDTOCMD1,
        SELECT_WORDPARTLEFT,
        VIEW_ZOOMIN,
        DOCUMENT_LINEBREAK,
        EDITOR_REDO,
        EDITOR_CONTEXTACTION,
        SEARCH_FINDPREVSEL,
        FORMAT_DECREASEINDENTBYSPACE,
        FORMAT_COMMENTLINETOGGLE,
        SELECT_ALL,
        DOCUMENT_RELOADTAGLIST,
        BUILD_NEXTERROR,
        NOTEBOOK_MOVETABLAST,
        SELECT_PARAGRAPH,
        EDITOR_DELETELINE,
        CLIPBOARD_COPY,
        VIEW_SIDEBAR,
        FILE_SAVEAS,
        FORMAT_COMMENTLINE,
        GOTO_PREVWORDPART,
        SEARCH_FINDPREVIOUS,
        SEARCH_REPLACE,
        EDITOR_WORDPARTCOMPLETION,
        EDITOR_AUTOCOMPLETE,
        FOCUS_SIDEBAR,
        FOCUS_MESSAGE_WINDOW,
        NOTEBOOK_MOVETABFIRST,
        GOTO_PREVIOUSMARKER,
        EDITOR_SCROLLLINEUP,
        FOCUS_COMPILER,
        FORMAT_TOGGLECASE,
        CLIPBOARD_CUTLINE,
        DOCUMENT_REMOVE_MARKERS,
        BUILD_MAKEOBJECT,
        FORMAT_DECREASEINDENT,
        FILE_OPENLASTTAB,
        SEARCH_FINDINFILES,
        GOTO_NEXTWORDPART,
        INSERT_LINEAFTER,
        INSERT_LINEBEFORE,
        DOCUMENT_REMOVE_MARKERS_INDICATORS,
        PROJECT_OPEN,
        PROJECT_NEW,
        PROJECT_CLOSE,
        FORMAT_JOINLINES,
        GOTO_LINESTARTVISUAL,
        DOCUMENT_CLONE,
        FILE_QUIT,
        FILE_PROPERTIES,
        FORMAT_SENDTOCMD4,
        FORMAT_SENDTOCMD5,
        FORMAT_SENDTOCMD6,
        FORMAT_SENDTOCMD7,
        FORMAT_SENDTOCMD8,
        FORMAT_SENDTOCMD9,
        EDITOR_DELETELINETOBEGINNING,
        DOCUMENT_STRIPTRAILINGSPACES,
        COUNT
    }
    [CCode (cheader_filename = "geanyplugin.h", cprefix = "GEANY_KEY_GROUP_", has_type_id = false)]
    public enum KeyGroupID {
        FILE,
        PROJECT,
        EDITOR,
        CLIPBOARD,
        SELECT,
        FORMAT,
        INSERT,
        SETTINGS,
        SEARCH,
        GOTO,
        VIEW,
        FOCUS,
        NOTEBOOK,
        DOCUMENT,
        BUILD,
        TOOLS,
        HELP,
        COUNT
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "MessageWindowTabNum", cprefix = "MSG_", has_type_id = false)]
    public enum MessageWindowTabNum {
        STATUS,
        COMPILER,
        MESSAGE,
        SCRATCH,
        VTE
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "MsgColors", cprefix = "COLOR_", has_type_id = false)]
    public enum MsgColors {
        RED,
        DARK_RED,
        BLACK,
        BLUE
    }
    [CCode (cheader_filename = "geanyplugin.h", cprefix = "GEANY_PROXY_", has_type_id = false)]
    public enum ProxyProbeResults {
        IGNORE,
        MATCH,
        RELATED
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "SpawnFlags", cprefix = "SPAWN_", has_type_id = false)]
    public enum SpawnFlags {
        ASYNC,
        SYNC,
        LINE_BUFFERED,
        STDOUT_UNBUFFERED,
        STDERR_UNBUFFERED,
        UNBUFFERED,
        STDIN_RECURSIVE,
        STDOUT_RECURSIVE,
        STDERR_RECURSIVE,
        RECURSIVE
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "TMTagAttrType", cprefix = "tm_tag_attr_", has_type_id = false)]
    public enum TMTagAttrType {
        [CCode (cname = "tm_tag_attr_none_t")]
        NONE_T,
        [CCode (cname = "tm_tag_attr_name_t")]
        NAME_T,
        [CCode (cname = "tm_tag_attr_type_t")]
        TYPE_T,
        [CCode (cname = "tm_tag_attr_file_t")]
        FILE_T,
        [CCode (cname = "tm_tag_attr_line_t")]
        LINE_T,
        [CCode (cname = "tm_tag_attr_pos_t")]
        POS_T,
        [CCode (cname = "tm_tag_attr_scope_t")]
        SCOPE_T,
        [CCode (cname = "tm_tag_attr_inheritance_t")]
        INHERITANCE_T,
        [CCode (cname = "tm_tag_attr_arglist_t")]
        ARGLIST_T,
        [CCode (cname = "tm_tag_attr_local_t")]
        LOCAL_T,
        [CCode (cname = "tm_tag_attr_time_t")]
        TIME_T,
        [CCode (cname = "tm_tag_attr_vartype_t")]
        VARTYPE_T,
        [CCode (cname = "tm_tag_attr_access_t")]
        ACCESS_T,
        [CCode (cname = "tm_tag_attr_impl_t")]
        IMPL_T,
        [CCode (cname = "tm_tag_attr_lang_t")]
        LANG_T,
        [CCode (cname = "tm_tag_attr_inactive_t")]
        INACTIVE_T,
        [CCode (cname = "tm_tag_attr_pointer_t")]
        POINTER_T,
        [CCode (cname = "tm_tag_attr_max_t")]
        MAX_T
    }
    [CCode (cheader_filename = "geanyplugin.h", cname = "TMTagType", cprefix = "tm_tag_", has_type_id = false)]
    public enum TMTagType {
        [CCode (cname = "tm_tag_undef_t")]
        UNDEF_T,
        [CCode (cname = "tm_tag_class_t")]
        CLASS_T,
        [CCode (cname = "tm_tag_enum_t")]
        ENUM_T,
        [CCode (cname = "tm_tag_enumerator_t")]
        ENUMERATOR_T,
        [CCode (cname = "tm_tag_field_t")]
        FIELD_T,
        [CCode (cname = "tm_tag_function_t")]
        FUNCTION_T,
        [CCode (cname = "tm_tag_interface_t")]
        INTERFACE_T,
        [CCode (cname = "tm_tag_member_t")]
        MEMBER_T,
        [CCode (cname = "tm_tag_method_t")]
        METHOD_T,
        [CCode (cname = "tm_tag_namespace_t")]
        NAMESPACE_T,
        [CCode (cname = "tm_tag_package_t")]
        PACKAGE_T,
        [CCode (cname = "tm_tag_prototype_t")]
        PROTOTYPE_T,
        [CCode (cname = "tm_tag_struct_t")]
        STRUCT_T,
        [CCode (cname = "tm_tag_typedef_t")]
        TYPEDEF_T,
        [CCode (cname = "tm_tag_union_t")]
        UNION_T,
        [CCode (cname = "tm_tag_variable_t")]
        VARIABLE_T,
        [CCode (cname = "tm_tag_externvar_t")]
        EXTERNVAR_T,
        [CCode (cname = "tm_tag_macro_t")]
        MACRO_T,
        [CCode (cname = "tm_tag_macro_with_arg_t")]
        MACRO_WITH_ARG_T,
        [CCode (cname = "tm_tag_file_t")]
        FILE_T,
        [CCode (cname = "tm_tag_other_t")]
        OTHER_T,
        [CCode (cname = "tm_tag_max_t")]
        MAX_T
    }
    [CCode (cheader_filename = "geanyplugin.h", instance_pos = 2.9)]
    public delegate bool KeyBindingFunc (Geany.KeyBinding key, uint key_id);
    [CCode (cheader_filename = "geanyplugin.h", has_target = false)]
    public delegate void KeyCallback (uint key_id);
    [CCode (cheader_filename = "geanyplugin.h", has_target = false)]
    public delegate bool KeyGroupCallback (uint key_id);
    [CCode (cheader_filename = "geanyplugin.h", instance_pos = 2.9)]
    public delegate bool KeyGroupFunc (Geany.KeyGroup group, uint key_id);
    [CCode (cheader_filename = "geanyplugin.h", has_target = false)]
    public delegate void SpawnReadFunc (GLib.StringBuilder string, GLib.IOCondition condition, void* data);
    [CCode (cheader_filename = "geanyplugin.h", has_target = false)]
    public delegate void cleanup (Geany.Plugin p, void* pdata);
    [CCode (cheader_filename = "geanyplugin.h", has_target = false)]
    public delegate Gtk.Widget configure (Geany.Plugin p, Gtk.Dialog parent, void* pdata);
    [CCode (cheader_filename = "geanyplugin.h", has_target = false)]
    public delegate void help (Geany.Plugin p, void* pdata);
    [CCode (cheader_filename = "geanyplugin.h", has_target = false)]
    public delegate bool init (Geany.Plugin p, void* pdata);
    [CCode (cheader_filename = "geanyplugin.h", has_target = false)]
    public delegate void load (Geany.Plugin proxy, Geany.Plugin inferior, void** proxy_data, void* pdata);
    [CCode (cheader_filename = "geanyplugin.h")]
    public delegate int probe (Geany.Plugin proxy, string filename, void* pdata);
    [CCode (cheader_filename = "geanyplugin.h")]
    public delegate void unload (Geany.Plugin proxy, Geany.Plugin inferior, void* proxy_data, void* pdata);
    [CCode (cheader_filename = "geanyplugin.h")]
    [Version (since = "1.30")]
    public static int api_version ();
    [CCode (cheader_filename = "geanyplugin.h", cname = "dialogs_show_input")]
    [Version (since = "0.20.")]
    public static string? dialogs_show_input (string title, Gtk.Window? parent, string? label_text, string? default_text);
    [CCode (cheader_filename = "geanyplugin.h", cname = "dialogs_show_input_numeric")]
    [Version (since = "0.16")]
    public static bool dialogs_show_input_numeric (string title, string label_text, double value, double min, double max, double step);
    [CCode (cheader_filename = "geanyplugin.h", cname = "dialogs_show_save_as")]
    public static bool dialogs_show_save_as ();
    [CCode (cheader_filename = "geanyplugin.h", cname = "encodings_convert_to_utf8")]
    public static string? encodings_convert_to_utf8 (string buffer, ssize_t size, out string used_encoding);
    [CCode (cheader_filename = "geanyplugin.h", cname = "encodings_convert_to_utf8_from_charset")]
    public static string encodings_convert_to_utf8_from_charset (string buffer, ssize_t size, string charset, bool fast);
    [CCode (cheader_filename = "geanyplugin.h", cname = "encodings_get_charset_from_index")]
    [Version (since = "0.13")]
    public static unowned string? encodings_get_charset_from_index (int idx);
    [CCode (cheader_filename = "geanyplugin.h", cname = "keybindings_get_item")]
    [Version (since = "0.19.")]
    public static unowned Geany.KeyBinding keybindings_get_item (Geany.KeyGroup group, size_t key_id);
    [CCode (cheader_filename = "geanyplugin.h", cname = "keybindings_get_modifiers")]
    [Version (since = "1.25.")]
    public static Gdk.ModifierType keybindings_get_modifiers (Gdk.ModifierType mods);
    [CCode (cheader_filename = "geanyplugin.h", cname = "keybindings_load_keyfile")]
    [Version (since = "1.32")]
    public static void keybindings_load_keyfile ();
    [CCode (cheader_filename = "geanyplugin.h", cname = "keybindings_send_command")]
    public static void keybindings_send_command (uint group_id, uint key_id);
    [CCode (cheader_filename = "geanyplugin.h", cname = "keybindings_set_item_full")]
    [Version (since = "1.26")]
    public static unowned Geany.KeyBinding keybindings_set_item_full (Geany.KeyGroup group, size_t key_id, uint key, Gdk.ModifierType mod, string kf_name, string label, Gtk.Widget? menu_item, owned Geany.KeyBindingFunc? cb);
    [CCode (cheader_filename = "geanyplugin.h", cname = "main_is_realized")]
    [Version (since = "0.19")]
    public static bool main_is_realized ();
    [CCode (cheader_filename = "geanyplugin.h", cname = "main_locale_init")]
    [Version (since = "0.16")]
    public static void main_locale_init (string locale_dir, string package);
    [CCode (cheader_filename = "geanyplugin.h", cname = "main_reload_configuration")]
    [Version (since = "0.15")]
    public static void main_reload_configuration ();
    [CCode (cheader_filename = "geanyplugin.h", cname = "msgwin_clear_tab")]
    [Version (since = "0.15")]
    public static void msgwin_clear_tab (int tabnum);
    [CCode (cheader_filename = "geanyplugin.h", cname = "msgwin_compiler_add_string")]
    [Version (since = "1.34")]
    public static void msgwin_compiler_add_string (int msg_color, string msg);
    [CCode (cheader_filename = "geanyplugin.h", cname = "msgwin_msg_add_string")]
    [Version (since = "1.34")]
    public static void msgwin_msg_add_string (int msg_color, int line, Geany.Document? doc, string string);
    [CCode (cheader_filename = "geanyplugin.h", cname = "msgwin_set_messages_dir")]
    public static void msgwin_set_messages_dir (string messages_dir);
    [CCode (cheader_filename = "geanyplugin.h", cname = "msgwin_status_add_string")]
    [Version (since = "1.34")]
    public static void msgwin_status_add_string (string string);
    [CCode (cheader_filename = "geanyplugin.h", cname = "msgwin_switch_tab")]
    [Version (since = "0.15")]
    public static void msgwin_switch_tab (int tabnum, bool show);
    [CCode (cheader_filename = "geanyplugin.h", cname = "navqueue_goto_line")]
    public static bool navqueue_goto_line (Geany.Document old_doc, Geany.Document new_doc, int line);
    [CCode (cheader_filename = "geanyplugin.h", cname = "plugin_cleanup")]
    public static void plugin_cleanup ();
    [CCode (cheader_filename = "geanyplugin.h", cname = "plugin_configure")]
    public static unowned Gtk.Widget plugin_configure (Gtk.Dialog dialog);
    [CCode (cheader_filename = "geanyplugin.h", cname = "plugin_configure_single")]
    public static void plugin_configure_single (Gtk.Widget parent);
    [CCode (cheader_filename = "geanyplugin.h", cname = "plugin_get_document_data")]
    [Version (since = "1.29")]
    public static void* plugin_get_document_data (void* plugin, void* doc, string key);
    [CCode (cheader_filename = "geanyplugin.h", cname = "plugin_help")]
    public static void plugin_help ();
    [CCode (cheader_filename = "geanyplugin.h", cname = "plugin_init")]
    public static void plugin_init (Geany.Data data);
    [CCode (cheader_filename = "geanyplugin.h", cname = "plugin_set_document_data")]
    [Version (since = "1.29")]
    public static void plugin_set_document_data (void* plugin, void* doc, string key, void* data);
    [CCode (cheader_filename = "geanyplugin.h", cname = "plugin_set_document_data_full")]
    [Version (since = "1.29")]
    public static void plugin_set_document_data_full (void* plugin, void* doc, string key, void* data, GLib.DestroyNotify free_func);
    [CCode (cheader_filename = "geanyplugin.h", cname = "plugin_set_info")]
    public static void plugin_set_info (Geany.PluginInfo info);
    [CCode (cheader_filename = "geanyplugin.h", cname = "plugin_version_check")]
    public static int plugin_version_check (int abi);
    [CCode (cheader_filename = "geanyplugin.h", cname = "project_write_config")]
    [Version (since = "1.25")]
    public static void project_write_config ();
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_delete_marker_at_line")]
    public static void sci_delete_marker_at_line (GeanyScintilla.ScintillaObject sci, int line_number, int marker);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_end_undo_action")]
    public static void sci_end_undo_action (GeanyScintilla.ScintillaObject sci);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_ensure_line_is_visible")]
    public static void sci_ensure_line_is_visible (GeanyScintilla.ScintillaObject sci, int line);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_find_matching_brace")]
    [Version (since = "0.15")]
    public static int sci_find_matching_brace (GeanyScintilla.ScintillaObject sci, int pos);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_find_text")]
    public static int sci_find_text (GeanyScintilla.ScintillaObject sci, int flags, void* ttf);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_char_at")]
    public static char sci_get_char_at (GeanyScintilla.ScintillaObject sci, int pos);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_col_from_position")]
    public static int sci_get_col_from_position (GeanyScintilla.ScintillaObject sci, int position);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_contents")]
    [Version (since = "1.23")]
    public static string sci_get_contents (GeanyScintilla.ScintillaObject sci, int buffer_len);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_contents_range")]
    [Version (since = "0.17")]
    public static string sci_get_contents_range (GeanyScintilla.ScintillaObject sci, int start, int end);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_current_line")]
    public static int sci_get_current_line (GeanyScintilla.ScintillaObject sci);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_current_position")]
    public static int sci_get_current_position (GeanyScintilla.ScintillaObject sci);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_length")]
    public static int sci_get_length (GeanyScintilla.ScintillaObject sci);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_lexer")]
    public static int sci_get_lexer (GeanyScintilla.ScintillaObject sci);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_line")]
    public static string sci_get_line (GeanyScintilla.ScintillaObject sci, int line_num);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_line_count")]
    public static int sci_get_line_count (GeanyScintilla.ScintillaObject sci);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_line_end_position")]
    public static int sci_get_line_end_position (GeanyScintilla.ScintillaObject sci, int line);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_line_from_position")]
    public static int sci_get_line_from_position (GeanyScintilla.ScintillaObject sci, int position);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_line_indentation")]
    [Version (since = "0.19")]
    public static int sci_get_line_indentation (GeanyScintilla.ScintillaObject sci, int line);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_line_is_visible")]
    public static bool sci_get_line_is_visible (GeanyScintilla.ScintillaObject sci, int line);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_line_length")]
    public static int sci_get_line_length (GeanyScintilla.ScintillaObject sci, int line);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_position_from_line")]
    public static int sci_get_position_from_line (GeanyScintilla.ScintillaObject sci, int line);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_selected_text")]
    [Version (deprecated = true)]
    public static void sci_get_selected_text (GeanyScintilla.ScintillaObject sci, string text);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_selected_text_length")]
    public static int sci_get_selected_text_length (GeanyScintilla.ScintillaObject sci);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_selection_contents")]
    [Version (since = "0.17")]
    public static string sci_get_selection_contents (GeanyScintilla.ScintillaObject sci);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_selection_end")]
    public static int sci_get_selection_end (GeanyScintilla.ScintillaObject sci);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_selection_mode")]
    public static int sci_get_selection_mode (GeanyScintilla.ScintillaObject sci);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_selection_start")]
    public static int sci_get_selection_start (GeanyScintilla.ScintillaObject sci);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_style_at")]
    public static int sci_get_style_at (GeanyScintilla.ScintillaObject sci, int position);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_tab_width")]
    [Version (since = "0.15")]
    public static int sci_get_tab_width (GeanyScintilla.ScintillaObject sci);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_text")]
    [Version (deprecated = true)]
    public static void sci_get_text (GeanyScintilla.ScintillaObject sci, int len, string text);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_get_text_range")]
    [Version (deprecated = true)]
    public static void sci_get_text_range (GeanyScintilla.ScintillaObject sci, int start, int end, string text);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_goto_line")]
    public static void sci_goto_line (GeanyScintilla.ScintillaObject sci, int line, bool unfold);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_has_selection")]
    [Version (since = "0.15")]
    public static bool sci_has_selection (GeanyScintilla.ScintillaObject sci);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_indicator_clear")]
    [Version (since = "0.16")]
    public static void sci_indicator_clear (GeanyScintilla.ScintillaObject sci, int pos, int len);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_indicator_set")]
    [Version (since = "0.16")]
    public static void sci_indicator_set (GeanyScintilla.ScintillaObject sci, int indic);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_insert_text")]
    public static void sci_insert_text (GeanyScintilla.ScintillaObject sci, int pos, string text);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_is_marker_set_at_line")]
    public static bool sci_is_marker_set_at_line (GeanyScintilla.ScintillaObject sci, int line, int marker);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_replace_sel")]
    public static void sci_replace_sel (GeanyScintilla.ScintillaObject sci, string text);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_scroll_caret")]
    public static void sci_scroll_caret (GeanyScintilla.ScintillaObject sci);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_send_command")]
    [Version (since = "0.16")]
    public static void sci_send_command (GeanyScintilla.ScintillaObject sci, int cmd);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_set_current_position")]
    public static void sci_set_current_position (GeanyScintilla.ScintillaObject sci, int position, bool scroll_to_caret);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_set_font")]
    public static void sci_set_font (GeanyScintilla.ScintillaObject sci, int style, string font, int size);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_set_line_indentation")]
    [Version (since = "0.19")]
    public static void sci_set_line_indentation (GeanyScintilla.ScintillaObject sci, int line, int indent);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_set_marker_at_line")]
    public static void sci_set_marker_at_line (GeanyScintilla.ScintillaObject sci, int line_number, int marker);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_set_selection_end")]
    public static void sci_set_selection_end (GeanyScintilla.ScintillaObject sci, int position);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_set_selection_mode")]
    public static void sci_set_selection_mode (GeanyScintilla.ScintillaObject sci, int mode);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_set_selection_start")]
    public static void sci_set_selection_start (GeanyScintilla.ScintillaObject sci, int position);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_set_text")]
    public static void sci_set_text (GeanyScintilla.ScintillaObject sci, string text);
    [CCode (cheader_filename = "geanyplugin.h", cname = "sci_start_undo_action")]
    public static void sci_start_undo_action (GeanyScintilla.ScintillaObject sci);
    [CCode (cheader_filename = "geanyplugin.h", cname = "search_show_find_in_files_dialog")]
    [Version (since = "0.14")]
    public static void search_show_find_in_files_dialog (string dir);
    [CCode (cheader_filename = "geanyplugin.h", cname = "spawn_async")]
    [Version (since = "1.25")]
    public static bool spawn_async (string? working_directory, string? command_line, string? argv, string? envp, out GLib.Pid child_pid) throws GLib.Error;
    [CCode (cheader_filename = "geanyplugin.h", cname = "spawn_check_command")]
    [Version (since = "1.25")]
    public static bool spawn_check_command (string command_line, bool execute) throws GLib.Error;
    [CCode (cheader_filename = "geanyplugin.h", cname = "spawn_kill_process")]
    [Version (since = "1.25")]
    public static bool spawn_kill_process (GLib.Pid pid) throws GLib.Error;
    [CCode (cheader_filename = "geanyplugin.h", cname = "spawn_sync")]
    [Version (since = "1.25")]
    public static bool spawn_sync (string? working_directory, string? command_line, string? argv, string? envp, Geany.SpawnWriteData? stdin_data, GLib.StringBuilder? stdout_data, GLib.StringBuilder? stderr_data, out int exit_status) throws GLib.Error;
    [CCode (cheader_filename = "geanyplugin.h", cname = "spawn_write_data")]
    [Version (since = "1.25")]
    public static bool spawn_write_data (GLib.IOChannel channel, GLib.IOCondition condition, Geany.SpawnWriteData data);
    [CCode (cheader_filename = "geanyplugin.h", cname = "symbols_get_context_separator")]
    [Version (since = "0.19")]
    public static unowned string symbols_get_context_separator (int ft_id);
    [CCode (cheader_filename = "geanyplugin.h", cname = "tm_get_real_path")]
    [Version (deprecated = true)]
    public static string tm_get_real_path (string file_name);
    [CCode (cheader_filename = "geanyplugin.h", cname = "tm_workspace_add_source_file")]
    public static void tm_workspace_add_source_file (Geany.TMSourceFile source_file);
    [CCode (cheader_filename = "geanyplugin.h", cname = "tm_workspace_add_source_files")]
    public static void tm_workspace_add_source_files (GLib.GenericArray<Geany.TMSourceFile> source_files);
    [CCode (cheader_filename = "geanyplugin.h", cname = "tm_workspace_remove_source_file")]
    public static void tm_workspace_remove_source_file (Geany.TMSourceFile source_file);
    [CCode (cheader_filename = "geanyplugin.h", cname = "tm_workspace_remove_source_files")]
    public static void tm_workspace_remove_source_files (GLib.GenericArray<Geany.TMSourceFile> source_files);
}
