
import 'flutter_kdxf_sst_nrt_platform_interface.dart';

class FlutterKdxfSstNrt {
  Future<String?> getPlatformVersion() {
    return FlutterKdxfSstNrtPlatform.instance.getPlatformVersion();
  }
}
