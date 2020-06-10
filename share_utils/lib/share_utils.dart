import 'dart:async';

import 'package:share_utils_platform_interface/share_utils_platform_interface.dart';

class ShareUtils {

  static Future<String> get deviceName async {
    return await ShareUtilsPlatform.instance.getDeviceName();
  }

  static Future<String> get userAgent async {
    return await ShareUtilsPlatform.instance.getUserAgent();
  }
}
