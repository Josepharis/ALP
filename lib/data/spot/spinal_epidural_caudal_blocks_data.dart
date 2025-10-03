import 'package:flutter/material.dart';

class SpinalEpiduralCaudalBlocksItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  SpinalEpiduralCaudalBlocksItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class SpinalEpiduralCaudalBlocksCategory {
  final String categoryName;
  final List<SpinalEpiduralCaudalBlocksItem> items;

  SpinalEpiduralCaudalBlocksCategory({
    required this.categoryName,
    required this.items,
  });
}

class SpinalEpiduralCaudalBlocksData {
  static List<SpinalEpiduralCaudalBlocksCategory> getSpinalEpiduralCaudalBlocksData(BuildContext context) {
    return [
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Anatomi',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'Vertebra Sayıları',
            description: '7C – 12T – 5L – 5S',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'İğne Girişinde Tabakalar',
            description: 'Cilt → cilt altı → supraspinoz → interspinoz → lig. flavum → epidural boşluk → dura',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Spinal Kord Sonlanması',
            description: 'Erişkin L1, çocuk L3',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Dural Kese Sonlanması',
            description: 'Erişkin S2, çocuk S3',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Arteria Radikülaris Magna',
            description: 'Adamkiewicz: alt anterior 2/3 kanlanmasını sağlar',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Etki Mekanizması',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'Diferansiyel Blok',
            description: 'Sempatik > duyusal > motor',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Kardiyak Akseleratör Lifler',
            description: 'T1–T4',
            subtitle: 'Hipotansiyon önlenmesi için sıvı yükleme yeterli değil → efedrin tercih edilir',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Frenik Sinir',
            description: 'C3–C5 → yüksek blokta solunum riski',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'T5–L1 Sempatik Blok',
            description: 'Vagal tonus ↑ → barsak motilitesi ↑',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Sakral Blok',
            description: 'S2–S4 → idrar retansiyonu',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Cerrahi Stres Yanıtı',
            description: 'Baskılanır',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Kontrendikasyonlar',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'Kesin Kontrendikasyonlar',
            description: 'Hasta reddi, koagulopati, ciddi hipovolemi, enfeksiyon bölgesi',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Göreceli Kontrendikasyonlar',
            description: 'Ciddi aort/mitral darlık, önceden nörolojik defisit/demiyelinizan hastalık',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Antikoagülan İlaçlar',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'Warfarin',
            description: 'INR normal olmalı',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Aspirin/NSAID',
            description: 'Tek başına risk oluşturmaz',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Klopidogrel/Tiklopidin',
            description: 'Klopidogrel 7 gün, tiklopidin 14 gün önceden kesilmeli',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'SC Heparin',
            description: 'Minidoz: kontrendike değil',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'LMWH',
            description: 'Kanlı girişim varsa postop 24 saat LMWH ertelenir',
            subtitle: 'Kateter çekimi → sonraki dozdan 2 saat önce veya uygulamadan 10 saat sonra',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Trombolitik/Fibrinolitik',
            description: 'Kesin kontrendike',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Teknik Notlar',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'Yüzey İşaretleri',
            description: 'C7 en belirgin çıkıntı',
            subtitle: 'Skapula alt ucu: T7',
            additionalInfo: 'Krista iliaka hattı: L4–5, SİPS: S2',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Pozisyonlar',
            description: 'Oturur, lateral, jackknife',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Yaklaşım',
            description: 'Orta hat veya paramedian',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Spinal Anestezi',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'İğneler',
            description: 'Quincke (keskin), Whitacre/Sprotte (non-cutting)',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'BOS Barisitesi',
            description: '1.003–1.008',
            subtitle: 'Glukoz eklenirse hiperbarik, steril su eklenirse hipobarik',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Lokal Anestezik',
            description: 'Koruyucusuz LA kullanılmalı',
            subtitle: 'Lidokain %5 → KES riski nedeniyle kullanılmaz',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Epinefrin',
            description: 'Bupivakain süresini az uzatır, tetrakaini %50 uzatır',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Epidural Anestezi',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'İğneler',
            description: 'Tuohy (künt, eğimli) – Crawford (keskin)',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Kateter',
            description: 'Epidural boşlukta 2–6 cm ilerletilir',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Segment Dozu',
            description: 'Segment başına 1–2 mL LA yeterli',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Solüsyon pH Yükseltme',
            description: '10 mL LA + 1 mEq NaHCO₃ (lidokain, mepivakain, kloroprokain için)',
            subtitle: 'Bupivakain 6.8 pH üstünde çöker → bikarbonat eklenmez',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Kaudal Anestezi',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'Endikasyon',
            description: 'Çocuklarda sık kullanılır',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Teknik',
            description: 'Sakral hiatus girişinden yapılır',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Komplikasyonlar',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'Yüksek Spinal',
            description: 'Bilinç kaybı, apne, hipotansiyon',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Total Spinal',
            description: 'Kranial sinir tutulumu',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'İdrar Retansiyonu',
            description: 'S2–S4 blokajı',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Postdural Ponksiyon Başağrısı',
            description: '12–72 sa sonra',
            subtitle: 'Kan yaması (15–20 mL) en etkili tedavi',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Spinal/Epidural Hematom',
            description: 'Spinal 1:220.000, epidural 1:150.000',
            subtitle: 'Acil dekompresyon ≤12 sa',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Epidural Abse',
            description: 'Staph aureus/epidermidis en sık',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Geçici Nörolojik Semptomlar',
            description: 'En sık hiperbarik lidokain',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Lidokain Nörotoksisitesi',
            description: 'Mesane-barsak disfonksiyonu',
          ),
        ],
      ),
    ];
  }
}
