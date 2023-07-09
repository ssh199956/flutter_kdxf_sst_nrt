#include "include/flutter_kdxf_sst_nrt/flutter_kdxf_sst_nrt_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_kdxf_sst_nrt_plugin.h"

void FlutterKdxfSstNrtPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_kdxf_sst_nrt::FlutterKdxfSstNrtPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
