import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_kdxf_sst_nrt_method_channel.dart';

abstract class FlutterKdxfSstNrtPlatform extends PlatformInterface {
  /// Constructs a FlutterKdxfSstNrtPlatform.
  FlutterKdxfSstNrtPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterKdxfSstNrtPlatform _instance = MethodChannelFlutterKdxfSstNrt();

  /// The default instance of [FlutterKdxfSstNrtPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterKdxfSstNrt].
  static FlutterKdxfSstNrtPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterKdxfSstNrtPlatform] when
  /// they register themselves.
  static set instance(FlutterKdxfSstNrtPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
