import 'package:cloud_firestore/cloud_firestore.dart';

class DeviceInfo {
  final String deviceId;
  final String fcmToken;
  final String deviceName;
  final String platform;
  final DateTime registeredAt;
  final DateTime lastLoginAt;

  DeviceInfo({
    required this.deviceId,
    required this.fcmToken,
    required this.deviceName,
    required this.platform,
    required this.registeredAt,
    required this.lastLoginAt,
  });

  // Firestore'dan veri okumak için
  factory DeviceInfo.fromMap(Map<String, dynamic> map) {
    return DeviceInfo(
      deviceId: map['deviceId'] ?? '',
      fcmToken: map['fcmToken'] ?? '',
      deviceName: map['deviceName'] ?? '',
      platform: map['platform'] ?? '',
      registeredAt: (map['registeredAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
      lastLoginAt: (map['lastLoginAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
    );
  }

  // Firestore'a veri yazmak için
  Map<String, dynamic> toMap() {
    return {
      'deviceId': deviceId,
      'fcmToken': fcmToken,
      'deviceName': deviceName,
      'platform': platform,
      'registeredAt': Timestamp.fromDate(registeredAt),
      'lastLoginAt': Timestamp.fromDate(lastLoginAt),
    };
  }

  // copyWith method for updates
  DeviceInfo copyWith({
    String? deviceId,
    String? fcmToken,
    String? deviceName,
    String? platform,
    DateTime? registeredAt,
    DateTime? lastLoginAt,
  }) {
    return DeviceInfo(
      deviceId: deviceId ?? this.deviceId,
      fcmToken: fcmToken ?? this.fcmToken,
      deviceName: deviceName ?? this.deviceName,
      platform: platform ?? this.platform,
      registeredAt: registeredAt ?? this.registeredAt,
      lastLoginAt: lastLoginAt ?? this.lastLoginAt,
    );
  }

  @override
  String toString() {
    return 'DeviceInfo(deviceId: $deviceId, deviceName: $deviceName, platform: $platform)';
  }
}

// Cihaz limiti aşıldığında fırlatılacak exception
class DeviceLimitExceededException implements Exception {
  final String message;
  
  DeviceLimitExceededException(this.message);
  
  @override
  String toString() => 'DeviceLimitExceededException: $message';
} 