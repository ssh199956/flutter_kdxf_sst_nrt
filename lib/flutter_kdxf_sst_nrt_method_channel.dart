import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_kdxf_sst_nrt_platform_interface.dart';

/// An implementation of [FlutterKdxfSstNrtPlatform] that uses method channels.
class MethodChannelFlutterKdxfSstNrt extends FlutterKdxfSstNrtPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_kdxf_sst_nrt');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
