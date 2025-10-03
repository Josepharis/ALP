import 'package:flutter/material.dart';

class TraumaEmergencySurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  TraumaEmergencySurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class TraumaEmergencySurgeryAnesthesiaCategory {
  final String categoryName;
  final List<TraumaEmergencySurgeryAnesthesiaItem> items;

  TraumaEmergencySurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class TraumaEmergencySurgeryAnesthesiaData {
  static List<TraumaEmergencySurgeryAnesthesiaCategory> getTraumaEmergencySurgeryAnesthesiaData(BuildContext context) {
    return [
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Primer Değerlendirme (ABCDE)',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Hava Yolu',
            description: 'Tüm travma hastaları "tok" kabul edilir',
            subtitle: 'Servikal omurga yaralanması aksine kanıtlanana kadar var kabul edilir',
            additionalInfo: 'Başarısız entübasyon olasılığına hazırlık şart',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Solunum',
            description: 'Mekanik ventilasyon sonrası ani instabilite → tansiyon pnömotoraks düşün',
            subtitle: 'Bilateral iğne torakostomi (2. İKM, midklaviküler hat) + tüp torakostomi',
            additionalInfo: '%100 O₂ başlanır',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Dolaşım',
            description: 'Nabız yok + penetran göğüs yaralanması → bilateral göğüs tüpü + 500–1000 mL hızlı sıvı',
            subtitle: 'Acil torakotomi endikasyonları dışında torakotomi yapılmaz',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Nörolojik Fonksiyon',
            description: 'Bilinç kapalı → metabolik/ilaç nedenleri dışlandıktan sonra SSS hasarı var kabul edilir',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Hasar Değerlendirme',
            description: 'Tam soyma muayenesi',
            subtitle: 'Hipotermiye karşı ısıtıcılar, sıcak sıvılar kullanılmalı',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Kanama Sınıflaması',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Sınıf I',
            description: '<%15, hemodinami stabil → sıvı gerekmez',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Sınıf II',
            description: '%15–30, Taşikardi + ↑ DBP → kristalloid/kolloid başlanır, kan hazırlığı yapılır',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Sınıf III',
            description: '%30–40, hipotansiyon, asidoz → sıvı bolusuna geçici yanıt, tekrar bozulur',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Sınıf IV',
            description: '> %40, yaşamı tehdit eder → masif transfüzyon + kontrol resüstasyonu',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Travma Koagülopatisi',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'İnsidans',
            description: 'Major travmalılarda %25',
            subtitle: 'Baz açığı >6 → %20 koagülopati riski',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Patofizyoloji',
            description: 'Hipoperfüzyon → trombomodülin ↑ → fibrin oluşumu ↓, aktive protein C ↑ → hiperfibrinolizis',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Traneksamik Asit',
            description: 'İlk 3 saatte 1 g bolus + 8 saatte 1 g infüzyon → mortalite ↓',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Hemostatik Resüstasyon',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Hedef',
            description: '1:1:1 (eritrosit:TDP:trombosit) → tam kanı taklit eder',
            subtitle: 'TEG ile kılavuz: TDP ↓, antifibrinolitik ↑',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Çapraz Yapılmamış Transfüzyon',
            description: '>8 Ünite gerekiyorsa 0 grubu devam edilir',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Masif Transfüzyon Protokolü',
            description: 'Her hastaya değil, seçilmiş olgulara',
            subtitle: 'Faydaları: mortalite ↓, organ yetmezliği ↓',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'ABC Skoru ≥2',
            description: 'MTP ihtimali yüksek',
            subtitle: 'Delici yaralanma, SBP <90, HR >120',
            additionalInfo: 'FAST (+)',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Anestezi Yönetimi',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Genel Yaklaşım',
            description: 'Tüm travma hastaları servikal travmalı + tok kabul edilir',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'İndüksiyon Ajanları',
            description: 'Etomidat, ketamin → instabil hastalarda indüksiyon ajanı',
            subtitle: 'Skopolamin 0.4 mg da eklenebilir',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'Arteriyel kan basıncı monitörizasyonu faydalı, ama cerrahiyi geciktirmemeli',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Hasar Kontrol Cerrahisi',
            description: 'Hızlı eksplorasyon + kanama odağı kontrolü',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Travmatik Beyin Hasarı (TBH)',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Akut Subdural Hematom',
            description: 'Köprü venler, yüksek mortalite',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Epidural Hematom',
            description: 'MCA hasarı, prognoz daha iyi',
            subtitle: 'Cerrahi endikasyonu: supratentoriyal >30 mL, infratentoriyal >10 mL',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'İntraparankimal',
            description: 'Frontal/temporal → ↑ İKB → gerekirse dekompresyon',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Diffüz Aksonal Hasar',
            description: 'Ağır deselerasyon, mortalite yüksek',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'İKB Yönetimi',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Normal İKB',
            description: '~10 mmHg, <20 tutulmalı',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'CPP Hedefi',
            description: '50–70 mmHg',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Hiperventilasyon',
            description: 'Geçici İKB düşüşü, ama iskemi riski ↑',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Mannitol',
            description: '0.25–1 g/kg (osmolalite + elektrolit izlenmeli)',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Barbitürat Koması',
            description: 'Serebral O₂ tüketimi ↓',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Spinal Kord Hasarı',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Omurga Stabilite',
            description: '3 kolon (ön, orta, arka) → ≥2 kolon hasarı → instabilite',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Servikal Kırık',
            description: '%10–15 başka spinal kırık eşlik eder',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Torakolomber',
            description: 'T11–L3 → ikinci kırık %40',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Cerrahi Endikasyon',
            description: 'Vertebra gövdesi > %50 yük kaybı veya > %30 daralma',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Yanık Dereceleri',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: '1. Derece',
            description: 'Sadece epidermis, sıvı gerekmez',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: '2. Derece',
            description: 'Epidermis + dermis kısmen, >%20 → sıvı replasmanı',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: '3. Derece',
            description: 'Dermisi tam kat geçer, hissiz, greft gerekir',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Yanık Merkezi',
            description: 'Yüzey >%20 (2.–3. derece)',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Yanık Hemodinamiği',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Yanık Şoku',
            description: '↓ kalp debisi %50, hipoperfüzyon',
            subtitle: 'Doğru sıvı replasmanı ile 48 saatte düzelir',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Yanık Sıvı Tedavisi',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Parkland',
            description: '4 mL/kg/%TBSA (ilk 8 saatte yarısı)',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Brook',
            description: '2 mL/kg/%TBSA',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'İdrar Çıkışı Hedefi',
            description: 'Erişkin: 0.5–1 mL/kg/sa',
            subtitle: '<30 kg çocuk: 1 mL/kg/sa (+%5 dekstroz eklenir)',
            additionalInfo: '<1 yaş: 1–2 mL/kg/sa',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Yanık Komplikasyonları',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Abdominal Kompartman Sendromu',
            description: '>6 mL/kg/%TBSA sıvı, pediatrik, karın yanığı → risk',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'CO Zehirlenmesi',
            description: 'Pulse oksimetre güvenilmez',
            subtitle: 'HbCO %20+ → entübasyon, MV',
            additionalInfo: 'HbCO %60 → ölümcül',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Pulmoner Komplikasyonlar',
            description: 'Pnömoni, inhalasyon hasarı',
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Yanık Anestezik Yaklaşım',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Havayolu',
            description: 'Zor havayolu riski → acil protokol hazır',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Süksinilkolin',
            description: '48 saatten sonra kontrendike (hiperkalemi)',
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: 'Analjezi',
            description: 'Mutlaka sağlanmalı',
          ),
        ],
      ),
    ];
  }
}
