import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_kdxf_sst_nrt/flutter_kdxf_sst_nrt_method_channel.dart';

void main() {
  MethodChannelFlutterKdxfSstNrt platform = MethodChannelFlutterKdxfSstNrt();
  const MethodChannel channel = MethodChannel('flutter_kdxf_sst_nrt');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
