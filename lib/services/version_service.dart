import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter/foundation.dart';

class VersionService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Firestore'daki ayarlar dokümanı yolu
  static const String CONFIG_PATH = 'settings/app_config';

  /// Güncelleme kontrolü yapar
  /// [forceUpdate] : Eğer true dönerse kullanıcı uygulamayı kullanamaz
  Future<AppVersionStatus> checkVersionStatus() async {
    try {
      // 1. Mevcut uygulama bilgilerini al
      final packageInfo = await PackageInfo.fromPlatform();
      final String currentVersion = packageInfo.version;
      
      // 2. Firestore'dan minimum versiyon bilgilerini al
      DocumentSnapshot<Map<String, dynamic>> doc = await _firestore.doc(CONFIG_PATH).get();
      
      // EĞER DOKÜMAN YOKSA: Otomatik oluştur (Sizin manuel yapmamanız için)
      if (!doc.exists) {
        final initialData = {
          'min_version': '1.1.4',
          'force_update': true,
          'store_url': 'https://play.google.com/store/apps/details?id=com.yftsoftware.anestezi',
          'last_updated': FieldValue.serverTimestamp(),
          'description': 'Otomatik oluşturulan versiyon kontrol dokümanı'
        };
        await _firestore.doc(CONFIG_PATH).set(initialData);
        // Dokümanı tekrar çek
        doc = await _firestore.doc(CONFIG_PATH).get();
        debugPrint('Firestore: app_config dokümanı otomatik olarak oluşturuldu.');
      }

      final data = doc.data()!;
      final String minVersion = data['min_version'] ?? '1.0.0';
      final String storeUrl = data['store_url'] ?? '';
      final bool isForceUpdateEnabled = data['force_update'] ?? false;

      // 3. Karşılaştır (Sadeleştirilmiş versiyon karşılaştırma)
      bool needsUpdate = _isVersionLower(currentVersion, minVersion);

      if (needsUpdate && isForceUpdateEnabled) {
        return AppVersionStatus(
          canContinue: false,
          needsUpdate: true,
          storeUrl: storeUrl,
          currentVersion: currentVersion,
          minVersion: minVersion,
        );
      }

      return AppVersionStatus(
        canContinue: true,
        needsUpdate: needsUpdate,
        storeUrl: storeUrl,
      );
    } catch (e) {
      debugPrint('Versiyon kontrol hatası: $e');
      // Hata durumunda kullanıcıyı engelleme
      return AppVersionStatus(canContinue: true);
    }
  }

  /// v1 < v2 kontrolü yapar (Örn: 1.1.3 < 1.1.4)
  bool _isVersionLower(String current, String min) {
    try {
      List<int> currentParts = current.split('.').map((e) => int.parse(e)).toList();
      List<int> minParts = min.split('.').map((e) => int.parse(e)).toList();

      for (int i = 0; i < minParts.length; i++) {
        if (i >= currentParts.length) return true;
        if (currentParts[i] < minParts[i]) return true;
        if (currentParts[i] > minParts[i]) return false;
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}

class AppVersionStatus {
  final bool canContinue;
  final bool needsUpdate;
  final String storeUrl;
  final String? currentVersion;
  final String? minVersion;

  AppVersionStatus({
    required this.canContinue,
    this.needsUpdate = false,
    this.storeUrl = '',
    this.currentVersion,
    this.minVersion,
  });
}
