import 'package:flutter/services.dart';

import 'share_utils_platform_interface.dart';

const MethodChannel _channel = MethodChannel('achjqz.com/share_utils');

class MethodChannelShareUtils extends ShareUtilsPlatform {
  @override
  Future<String> getDeviceName() {
    return _channel.invokeMethod('getDeviceName');
  }

  @override
  Future<String> getUserAgent() {
    return _channel.invokeMethod('getUserAgent');
  }
}