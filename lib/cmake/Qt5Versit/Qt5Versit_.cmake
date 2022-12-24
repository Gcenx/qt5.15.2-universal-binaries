
add_library(Qt5:: MODULE IMPORTED)


_populate_Versit_plugin_properties( RELEASE "versit/libqtversit_vcardpreserver.dylib" TRUE)
_populate_Versit_plugin_properties( DEBUG "versit/libqtversit_vcardpreserver_debug.dylib" TRUE)

list(APPEND Qt5Versit_PLUGINS Qt5::)
set_property(TARGET Qt5::Versit APPEND PROPERTY QT_ALL_PLUGINS_versit Qt5::)
set_property(TARGET Qt5:: PROPERTY QT_PLUGIN_TYPE "versit")
set_property(TARGET Qt5:: PROPERTY QT_PLUGIN_EXTENDS "")
set_property(TARGET Qt5:: PROPERTY QT_PLUGIN_CLASS_NAME "")
