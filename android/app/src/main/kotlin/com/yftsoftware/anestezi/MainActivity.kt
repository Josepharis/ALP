package com.yftsoftware.anestezi

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.content.Intent
import android.os.Bundle
import android.provider.Settings
import android.net.Uri
import android.os.PowerManager
import android.content.Context
import androidx.core.view.WindowCompat

class MainActivity : FlutterActivity() {
    private val CHANNEL = "notification_permissions"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "requestBatteryOptimization" -> {
                    val intent = Intent(Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS)
                    intent.data = Uri.parse("package:$packageName")
                    startActivity(intent)
                    result.success(true)
                }
                "openNotificationSettings" -> {
                    val intent = Intent(Settings.ACTION_APP_NOTIFICATION_SETTINGS)
                    intent.putExtra(Settings.EXTRA_APP_PACKAGE, packageName)
                    startActivity(intent)
                    result.success(true)
                }
                "isIgnoringBatteryOptimizations" -> {
                    val powerManager = getSystemService(Context.POWER_SERVICE) as PowerManager
                    val isIgnoring = powerManager.isIgnoringBatteryOptimizations(packageName)
                    result.success(isIgnoring)
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        // Enable edge-to-edge display for Android 15+ (SDK 35)
        // This ensures proper display on devices with Android 15 and later
        WindowCompat.setDecorFitsSystemWindows(window, false)
        
        // Bildirim izinlerini kontrol et
        checkNotificationPermissions()
    }

    private fun checkNotificationPermissions() {
        // Battery optimization'ı kontrol et
        val powerManager = getSystemService(Context.POWER_SERVICE) as PowerManager
        if (!powerManager.isIgnoringBatteryOptimizations(packageName)) {
            // Battery optimization aktif, kullanıcıya bildir
            // Bu durumda bildirimler çalışmayabilir
        }
    }
}
