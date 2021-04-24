#import "ShareUtilsPlugin.h"

@implementation ShareUtilsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"achjqz.com/share_utils"
            binaryMessenger:[registrar messenger]];
  ShareUtilsPlugin* instance = [[ShareUtilsPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getDeviceName" isEqualToString:call.method]) {
    result([[UIDevice currentDevice] name]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
