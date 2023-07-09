#ifndef FLUTTER_PLUGIN_FLUTTER_KDXF_SST_NRT_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_KDXF_SST_NRT_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_kdxf_sst_nrt {

class FlutterKdxfSstNrtPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterKdxfSstNrtPlugin();

  virtual ~FlutterKdxfSstNrtPlugin();

  // Disallow copy and assign.
  FlutterKdxfSstNrtPlugin(const FlutterKdxfSstNrtPlugin&) = delete;
  FlutterKdxfSstNrtPlugin& operator=(const FlutterKdxfSstNrtPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_kdxf_sst_nrt

#endif  // FLUTTER_PLUGIN_FLUTTER_KDXF_SST_NRT_PLUGIN_H_
