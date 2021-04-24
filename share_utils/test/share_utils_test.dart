import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:share_utils/share_utils.dart';

void main() {
  const MethodChannel channel = MethodChannel('achjqz.com/share_utils');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return 'xhyh';
    });
  });

  test('getDeviceName', () async {
    expect(await ShareUtils.deviceName, 'xhyh');
  });
}
