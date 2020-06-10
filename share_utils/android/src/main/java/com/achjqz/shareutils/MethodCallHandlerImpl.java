package com.achjqz.shareutils;

import android.content.Context;
import android.provider.Settings;

import androidx.annotation.NonNull;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

public class MethodCallHandlerImpl implements MethodChannel.MethodCallHandler {
    private final String deviceName;

    public MethodCallHandlerImpl(Context context) {
        deviceName = Settings.Secure.getString(context.getContentResolver(), "bluetooth_name");
    }

    @Override
    public void onMethodCall(@NonNull MethodCall call, @NonNull MethodChannel.Result result) {
        if (call.method.equals("getDeviceName")) {
            result.success(deviceName);
        } else {
            result.notImplemented();
        }
    }
}
