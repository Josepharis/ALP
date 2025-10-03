import 'package:flutter/material.dart';

class OperatingRoomItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OperatingRoomItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OperatingRoomCategory {
  final String categoryName;
  final List<OperatingRoomItem> items;

  OperatingRoomCategory({
    required this.categoryName,
    required this.items,
  });
}

class OperatingRoomData {
  static List<OperatingRoomCategory> getOperatingRoomData(BuildContext context) {
    return [
      OperatingRoomCategory(
        categoryName: "Medikal Gaz Kaynakları",
        items: [
          OperatingRoomItem(
            title: "O₂ H-silindir",
            description: "2000 psi → 55 ±5 psi'ye düşürülür.",
          ),
          OperatingRoomItem(
            title: "O₂ E-silindir",
            description: "2000 psi = 660 L (20 °C).",
          ),
          OperatingRoomItem(
            title: "Sıvı O₂",
            description: "Kritik sıcaklık –119 °C.",
          ),
          OperatingRoomItem(
            title: "Pin indeks sistemi",
            description: "Silindir için yanlış bağlantıyı önler.",
          ),
          OperatingRoomItem(
            title: "N₂O",
            description: "Kritik sıcaklık 36,5 °C. H/E silindirlerde sıvı halde.",
            additionalInfo: "Basınca bakarak kalan hacim ölçülemez → tartarak anlaşılır. Basınç düşmeye başladığında ≈ 400 L kalmıştır. Buharlaşma sırasında buzlanma olabilir.",
          ),
          OperatingRoomItem(
            title: "Medikal hava",
            description: "O₂ + N₂ karışımı, kritik sıcaklık –140,6 °C.",
          ),
          OperatingRoomItem(
            title: "N₂",
            description: "Medikal cihazlarda kullanılır.",
          ),
          OperatingRoomItem(
            title: "CO₂",
            description: "Renksiz, kokusuz, yanıcı değil, hafif asidik.",
            additionalInfo: "Laparoskopi & robotik cerrahi için insuflasyon. M ve LK silindirleri.",
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: "Medikal Gazların Dağıtımı",
        items: [
          OperatingRoomItem(
            title: "Boru hattı basınç farkı",
            description: "≤5 psi.",
          ),
          OperatingRoomItem(
            title: "Ek yersiz, kaynaklı bakır borular",
            description: "Güvenli gaz dağıtımı için.",
          ),
          OperatingRoomItem(
            title: "Çap indeks + renk kodu",
            description: "Yanlış bağlantıyı önler.",
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: "Ameliyathane Çevresel Faktörler",
        items: [
          OperatingRoomItem(
            title: "Sıcaklık",
            description: "Sıcaklık 20-24 °C olmalı",
            additionalInfo: "Hipotermi → enfeksiyon, kan kaybı, hastanede kalış ↑",
          ),
          OperatingRoomItem(
            title: "Nem",
            description: "Optimal: 37 °C'de %50–55 = 28–30 mg H₂O/L.",
            additionalInfo: "Oda gazı: <10 mg H₂O/L, alveol: 44 mg H₂O/L. Yüksek nem: Bariyer örtüler bozulur. Düşük nem: Partikül hareketi ↑, enfeksiyon riski ↑",
          ),
          OperatingRoomItem(
            title: "Havalandırma",
            description: "Yüksek hava akımı → kontaminasyon ↓",
            additionalInfo: "Hafif pozitif basınç. Tavan → tabana hava akımı. 25 hava değişimi / saat. %90 filtrasyon, HEPA zorunlu değil",
          ),
          OperatingRoomItem(
            title: "Gürültü",
            description: "Ortalama 70 dB.",
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: "Radyasyon",
        items: [
          OperatingRoomItem(
            title: "Doz birimleri",
            description: "Absorbe doz = Gray (Gy), Rad. Biyolojik eşdeğer doz = Sievert (Sv), REM",
            additionalInfo: ">40 REM alan izlenmeli. En sık ölçüm: Film dozimetresi.",
          ),
          OperatingRoomItem(
            title: "ALARP",
            description: "As low as reasonably practicable.",
          ),
          OperatingRoomItem(
            title: "Ters kare kuralı",
            description: "Şiddet ∝ 1/d².",
          ),
          OperatingRoomItem(
            title: "En riskli ortam",
            description: "Floroskopi kullanılan ortam.",
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: "Elektrik Güvenliği",
        items: [
          OperatingRoomItem(
            title: "İzin verilen max kaçak",
            description: "10 μA.",
          ),
          OperatingRoomItem(
            title: "Güvenli akım seviyeleri",
            description: "5 mA'ye kadar genelde zararsız.",
            additionalInfo: "100 μA kalbe ulaşırsa → VF, fatal. 100 mA → VF için en düşük makroşok.",
          ),
          OperatingRoomItem(
            title: "Makroşok",
            description: ">1 mA, 60 Hz.",
          ),
          OperatingRoomItem(
            title: "Mikroşok",
            description: ">0,1 mA (özellikle kateter, pace kablosu, PA kateterli hastalar riskli).",
          ),
          OperatingRoomItem(
            title: "Korunma yöntemleri",
            description: "İzolasyon transformatörü: Hasta-toprak izolasyonu.",
            additionalInfo: "Hat izolasyon monitörü: Kaçak akımı süzer. Topraklama sorunu → 117 V potansiyel fark.",
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: "Cerrahi Diyatermi",
        items: [
          OperatingRoomItem(
            title: "Monopolar",
            description: "Plak, cerrahi alana en yakın yere.",
          ),
          OperatingRoomItem(
            title: "Kardiyak hastalarda",
            description: "Bipolar tercih.",
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: "Yangın Güvenliği",
        items: [
          OperatingRoomItem(
            title: "Yangın üçgeni",
            description: "Yakıt + oksitleyici + ısı.",
          ),
          OperatingRoomItem(
            title: "CO₂ söndürücü",
            description: "Termal yanık yapmaz, hızlı dağılır.",
          ),
          OperatingRoomItem(
            title: "A sınıfı",
            description: "Su bazlı → elektrikli cihaz için uygun değil.",
          ),
          OperatingRoomItem(
            title: "AC sınıfı",
            description: "Su sisi → güvenli.",
          ),
          OperatingRoomItem(
            title: "Halon",
            description: "Çok etkiliydi ama ozon tahribatı + hipoksi riski nedeniyle yasaklandı.",
          ),
        ],
      ),
    ];
  }
}
