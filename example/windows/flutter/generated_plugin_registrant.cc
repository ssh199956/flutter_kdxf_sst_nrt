//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <flutter_kdxf_sst_nrt/flutter_kdxf_sst_nrt_plugin_c_api.h>
#include <permission_handler_windows/permission_handler_windows_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  FlutterKdxfSstNrtPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FlutterKdxfSstNrtPluginCApi"));
  PermissionHandlerWindowsPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("PermissionHandlerWindowsPlugin"));
}
