import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_kdxf_sst_nrt/flutter_kdxf_sst_nrt.dart';
import 'package:flutter_kdxf_sst_nrt/flutter_kdxf_sst_nrt_platform_interface.dart';
import 'package:flutter_kdxf_sst_nrt/flutter_kdxf_sst_nrt_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterKdxfSstNrtPlatform
    with MockPlatformInterfaceMixin
    implements FlutterKdxfSstNrtPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterKdxfSstNrtPlatform initialPlatform = FlutterKdxfSstNrtPlatform.instance;

  test('$MethodChannelFlutterKdxfSstNrt is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterKdxfSstNrt>());
  });

  test('getPlatformVersion', () async {
    FlutterKdxfSstNrt flutterKdxfSstNrtPlugin = FlutterKdxfSstNrt();
    MockFlutterKdxfSstNrtPlatform fakePlatform = MockFlutterKdxfSstNrtPlatform();
    FlutterKdxfSstNrtPlatform.instance = fakePlatform;

    expect(await flutterKdxfSstNrtPlugin.getPlatformVersion(), '42');
  });
}
