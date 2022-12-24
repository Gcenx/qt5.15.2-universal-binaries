
add_library(Qt5::QGeoServiceProviderFactoryNokia MODULE IMPORTED)


_populate_Location_plugin_properties(QGeoServiceProviderFactoryNokia RELEASE "geoservices/libqtgeoservices_nokia.dylib" TRUE)
_populate_Location_plugin_properties(QGeoServiceProviderFactoryNokia DEBUG "geoservices/libqtgeoservices_nokia_debug.dylib" TRUE)

list(APPEND Qt5Location_PLUGINS Qt5::QGeoServiceProviderFactoryNokia)
set_property(TARGET Qt5::Location APPEND PROPERTY QT_ALL_PLUGINS_geoservices Qt5::QGeoServiceProviderFactoryNokia)
set_property(TARGET Qt5::QGeoServiceProviderFactoryNokia PROPERTY QT_PLUGIN_TYPE "geoservices")
set_property(TARGET Qt5::QGeoServiceProviderFactoryNokia PROPERTY QT_PLUGIN_EXTENDS "")
set_property(TARGET Qt5::QGeoServiceProviderFactoryNokia PROPERTY QT_PLUGIN_CLASS_NAME "QGeoServiceProviderFactoryNokia")
