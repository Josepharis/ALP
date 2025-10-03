import 'package:flutter/material.dart';

class CardiopulmonaryResuscitationItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiopulmonaryResuscitationItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiopulmonaryResuscitationCategory {
  final String categoryName;
  final List<CardiopulmonaryResuscitationItem> items;

  CardiopulmonaryResuscitationCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiopulmonaryResuscitationData {
  static List<CardiopulmonaryResuscitationCategory> getCardiopulmonaryResuscitationData(BuildContext context) {
    return [
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Genel İlkeler',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'CPR Tanımı',
            description: 'Kardiyak arrest durumunda dolaşım ve oksijenasyonu sürdürmek için temel ve ileri yaşam desteği uygulamaları',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Hedefler',
            description: 'Erken tanı, erken temel yaşam desteği, hızlı defibrilasyon, ileri resüsitasyon ve post-resüsitasyon bakım',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Başarıda En Kritik Unsur',
            description: 'Erken defibrilasyon ve kaliteli göğüs kompresyonları',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Kardiyak Arrestin Tanısı',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'Temel Bulgular',
            description: 'Bilinçsizlik, solunumun olmaması veya agonal solunum, nabızsızlık',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Nabız Kontrolü',
            description: '≤10 sn (karotis/femoral)',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Ritim Analizi',
            description: 'Monitörde ritim analizi → VF/VT, asistoli, nabızsız elektriksel aktivite (NEA)',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Temel Yaşam Desteği (BLS)',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'CAB Sırası',
            description: 'Circulation, Airway, Breathing',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Göğüs Kompresyonları',
            description: 'Derinlik: yetişkin 5–6 cm, çocuk 1/3 göğüs çapı',
            subtitle: 'Hız: 100–120/dk',
            additionalInfo: 'Minimal kesinti, göğüs tam recoil sağlanmalı',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Kompresyon:Ventilasyon Oranı',
            description: 'Yetişkin 30:2 (tek veya çift kurtarıcıda)',
            subtitle: 'Çocuk/infant 30:2 (tek kurtarıcı), 15:2 (iki kurtarıcı)',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Oksijen',
            description: 'Mümkünse %100 O₂',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'İleri Kardiyak Yaşam Desteği (ACLS)',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'Defibrilasyon',
            description: 'Şoklanabilir ritimler: VF ve nabızsız VT',
            subtitle: 'Monofazik: 360 J, Bifazik: 120–200 J',
            additionalInfo: 'CPR şoktan hemen sonra devam etmeli (ritim analizi için ara verilmez)',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Adrenalin',
            description: '1 mg IV/IO, 3–5 dk\'da bir',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Amiodaron',
            description: '300 mg IV bolus, gerekirse ek doz 150 mg',
            subtitle: 'Alternatif: Lidokain 1–1.5 mg/kg',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Magnezyum',
            description: 'Torsades de pointes\'de 1–2 g IV',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Nabızsız Elektriksel Aktivite / Asistoli',
            description: 'Adrenalin + CPR',
            subtitle: 'Şok uygulanmaz',
            additionalInfo: 'Reversibl nedenler (5H–5T) araştırılmalı',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Reversibl Nedenler (5H–5T)',
        items: [
          CardiopulmonaryResuscitationItem(
            title: '5H',
            description: 'Hipovolemi, Hipoksi, Hidrojen iyonu (asidoz), Hipo-/hiperkalemi, Hipotermi',
          ),
          CardiopulmonaryResuscitationItem(
            title: '5T',
            description: 'Tansiyon pnömotoraks, Tamponad, Toksinler, Tromboz (koroner), Tromboz (pulmoner)',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Havayolu Yönetimi',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'Havayolu Seçenekleri',
            description: 'Bag-mask, supraglottik havayolu, endotrakeal entübasyon',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Entübe Hastada',
            description: 'Kompresyon kesilmez, ventilasyon: 10/dk',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Kapnografi (ETCO₂)',
            description: 'Kaliteli CPR göstergesi; <10 mmHg kötü prognoz',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Post-Resüsitasyon Bakım',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'Hedeflenen Hemodinamik',
            description: 'MAP ≥65 mmHg',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Oksijenasyon',
            description: 'SpO₂ %94–98',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Hedef Sıcaklık Yönetimi (TTM)',
            description: '32–36°C, en az 24 saat',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Nörolojik Monitörizasyon',
            description: 'Koma hastalarda EEG/Nörolojik monitörizasyon',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Altta Yatan Sebep',
            description: 'Koroner reperfüzyon, elektrolit düzeltilmesi',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Özel Durumlar',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'Gebelik',
            description: 'Fundus >20. hf → uterin bası azaltmak için manuel sol yan kaydırma',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Hipotermi',
            description: '30°C altı → defibrilasyon ve ilaç etkinliği azalır',
            subtitle: 'Tekrar ısınma sağlanmalı',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Travma',
            description: 'Hızlı hava yolu, masif hemoraji kontrolü öncelikli',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'Astım/Obstrüksiyon',
            description: 'Uzun ekspirasyon zamanı, bronkodilatör',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Klinik Pratik Spotları',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'CPR Başarısı',
            description: 'En çok erken defibrilasyon + kaliteli kompresyon ile artar',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'İlaç Kullanımı',
            description: 'Adrenalin → tüm ritimlerde, Amiodaron → sadece VF/VT\'de',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'ETCO₂ Değerleri',
            description: '<10 mmHg = kötü prognoz; >20 mmHg = ROSC olasılığı yüksek',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'ROSC Sonrası',
            description: 'Hedeflenmiş sıcaklık, hemodinamik stabilizasyon, reperfüzyon stratejisi',
          ),
        ],
      ),
    ];
  }
}
