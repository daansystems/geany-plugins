AC_DEFUN([GP_CHECK_ESLINT],
[
    GP_ARG_DISABLE([eslint], [auto])

    GP_CHECK_PLUGIN_VALA([eslint])
    GP_CHECK_PLUGIN_DEPS([eslint], [ESLINT], [json-glib-1.0])
    GP_COMMIT_PLUGIN_STATUS([ESLint])

    AC_CONFIG_FILES([
        eslint/Makefile
        eslint/src/Makefile
    ])
])
