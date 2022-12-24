
add_library(Qt5::GeoServiceProviderFactoryEsri MODULE IMPORTED)


_populate_Location_plugin_properties(GeoServiceProviderFactoryEsri RELEASE "geoservices/libqtgeoservices_esri.dylib" TRUE)
_populate_Location_plugin_properties(GeoServiceProviderFactoryEsri DEBUG "geoservices/libqtgeoservices_esri_debug.dylib" TRUE)

list(APPEND Qt5Location_PLUGINS Qt5::GeoServiceProviderFactoryEsri)
set_property(TARGET Qt5::Location APPEND PROPERTY QT_ALL_PLUGINS_geoservices Qt5::GeoServiceProviderFactoryEsri)
set_property(TARGET Qt5::GeoServiceProviderFactoryEsri PROPERTY QT_PLUGIN_TYPE "geoservices")
set_property(TARGET Qt5::GeoServiceProviderFactoryEsri PROPERTY QT_PLUGIN_EXTENDS "")
set_property(TARGET Qt5::GeoServiceProviderFactoryEsri PROPERTY QT_PLUGIN_CLASS_NAME "GeoServiceProviderFactoryEsri")
