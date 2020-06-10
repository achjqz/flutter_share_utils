import 'package:flutter/services.dart';
import 'dart:io';
import 'share_utils_platform_interface.dart';

const MethodChannel _channel = MethodChannel('achjqz.com/share_utils');

class MethodChannelShareUtils extends ShareUtilsPlatform {
  @override
  Future<String> getDeviceName() {
    return _channel.invokeMethod('getDeviceName');
  }

  @override
  String getUserAgent() {
    return Platform.operatingSystem;
  }
}