include $(top_srcdir)/build/vars.build.mk
include $(top_srcdir)/build/vars.docs.mk

plugin = eslint

geanyplugins_LTLIBRARIES = eslint.la

eslint_la_VALAFLAGS = \
	--vapidir $(abs_top_srcdir)/eslint/src/vapi \
	--pkg geany \
	--pkg geany-scintilla-1.0 \
	--pkg json-glib-1.0 \
	--header eslint.h

eslint_la_SOURCES = \
	eslint.vala

eslint_la_CPPFLAGS = $(AM_CPPFLAGS) -DG_LOG_DOMAIN=\"ESLint\"
eslint_la_CFLAGS = \
	-DGETTEXT_PACKAGE='"$(GETTEXT_PACKAGE)"' \
	$(AM_CFLAGS) \
	$(ESLINT_CFLAGS)

eslint_la_LIBADD = \
	$(COMMONLIBS) \
	$(ESLINT_LIBS)
