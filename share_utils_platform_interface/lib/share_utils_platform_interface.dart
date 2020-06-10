import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:share_utils_platform_interface/method_channel_share_utils.dart';

abstract class ShareUtilsPlatform extends PlatformInterface {
  static final Object _token = Object();

  ShareUtilsPlatform() : super(token: _token);

  static ShareUtilsPlatform _instance = MethodChannelShareUtils();

  static ShareUtilsPlatform get instance => _instance;

  static set instance(ShareUtilsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String> getDeviceName() {
    throw UnimplementedError('getDeviceName() has not been implemented.');
  }

  Future<String> getUserAgent() {
    throw UnimplementedError('getUserAgent() has not been implemented.');
  }
}