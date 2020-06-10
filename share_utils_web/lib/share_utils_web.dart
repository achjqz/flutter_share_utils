import 'dart:html' as html;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:share_utils_platform_interface/share_utils_platform_interface.dart';

class ShareUtilsPlugin extends ShareUtilsPlatform {

  static void registerWith(Registrar registrar) {
    ShareUtilsPlatform.instance = ShareUtilsPlugin();
  }

  @override
  Future<String> getDeviceName() async {
    return html.window.navigator.platform;
  }

  @override
  String getUserAgent() {
    return 'web';
  }
}