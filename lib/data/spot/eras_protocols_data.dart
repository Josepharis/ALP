import 'package:flutter/material.dart';

class ErasProtocolsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ErasProtocolsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ErasProtocolsCategory {
  final String categoryName;
  final List<ErasProtocolsItem> items;

  ErasProtocolsCategory({
    required this.categoryName,
    required this.items,
  });
}

class ErasProtocolsData {
  static List<ErasProtocolsCategory> getErasProtocolsData(BuildContext context) {
    return [
      ErasProtocolsCategory(
        categoryName: 'Genel Prensipler',
        items: [
          ErasProtocolsItem(
            title: 'ERAS Tanımı',
            description: 'Perioperatif dönemde fizyolojik stres yanıtı azaltmak ve iyileşmeyi hızlandırmak için geliştirilmiştir',
          ),
          ErasProtocolsItem(
            title: 'Multimodal Yaklaşım',
            description: 'Multidisipliner yaklaşım → cerrah, anestezist, hemşire, diyetisyen, fizyoterapist',
          ),
          ErasProtocolsItem(
            title: 'Hedefler',
            description: 'Komplikasyonları, morbidite ve mortaliteyi azaltmak; hastanede kalış süresini kısaltmak',
          ),
        ],
      ),
      ErasProtocolsCategory(
        categoryName: 'Preoperatif Stratejiler',
        items: [
          ErasProtocolsItem(
            title: 'Hasta Eğitimi ve Optimizasyonu',
            description: 'Sigara/alkol bırakma',
            subtitle: 'Anemi, malnütrisyon, diyabet, KOAH, obezite gibi durumların düzeltilmesi',
          ),
          ErasProtocolsItem(
            title: 'Karbonhidrat Yüklemesi',
            description: 'Operasyondan 2 saat öncesine kadar berrak sıvılar',
            subtitle: 'Açlık süresini azaltır, insülin direncini düşürür',
          ),
          ErasProtocolsItem(
            title: 'Prehabilitasyon',
            description: 'Egzersiz, solunum fizyoterapisi',
          ),
          ErasProtocolsItem(
            title: 'Profilaktik Antibiyotik',
            description: 'İnsizyon öncesi 30-60 dk',
          ),
        ],
      ),
      ErasProtocolsCategory(
        categoryName: 'İntraoperatif Stratejiler',
        items: [
          ErasProtocolsItem(
            title: 'Anestezi Yönetimi',
            description: 'Multimodal analjezi (opioid-sparing: NSAID, asetaminofen, ketamin, gabapentinoid, epidural)',
            subtitle: 'Bölgesel anestezi teknikleri (ör. TAP blok, epidural)',
          ),
          ErasProtocolsItem(
            title: 'Sıvı Tedavisi',
            description: 'Ne hipovolemi ne de aşırı sıvı yüklemesi',
            subtitle: 'Hedefe yönelik sıvı tedavisi (goal-directed fluid therapy)',
          ),
          ErasProtocolsItem(
            title: 'Normotermi Korunması',
            description: 'Aktif ısıtma, sıvı ısıtma',
          ),
          ErasProtocolsItem(
            title: 'Minimal İnvaziv Cerrahi',
            description: 'Laparoskopik/robotik',
          ),
        ],
      ),
      ErasProtocolsCategory(
        categoryName: 'Postoperatif Stratejiler',
        items: [
          ErasProtocolsItem(
            title: 'Erken Beslenme',
            description: 'İlk 24 saatte oral/enteral beslenme → barsak motilitesi hızlanır, enfeksiyon azalır',
          ),
          ErasProtocolsItem(
            title: 'Erken Mobilizasyon',
            description: 'Yatak başı egzersiz → tromboz ve pulmoner komplikasyon riski düşer',
          ),
          ErasProtocolsItem(
            title: 'Analjezi',
            description: 'Opioid tasarruflu, multimodal analjezi',
          ),
          ErasProtocolsItem(
            title: 'İnvaziv Cihazların Hızlı Çekilmesi',
            description: 'Nazogastrik tüp, dren, kateter en kısa sürede',
          ),
          ErasProtocolsItem(
            title: 'Glikoz Kontrolü',
            description: 'Hiperglisemi komplikasyon riskini artırır',
          ),
        ],
      ),
      ErasProtocolsCategory(
        categoryName: 'Multimodal Analjezi – ERAS\'ın Temel Taşı',
        items: [
          ErasProtocolsItem(
            title: 'NSAID/Parasetamol',
            description: 'Opioid ihtiyacını azaltır',
          ),
          ErasProtocolsItem(
            title: 'Epidural Analjezi',
            description: 'Abdominal/torakal büyük cerrahilerde',
          ),
          ErasProtocolsItem(
            title: 'Periferik Sinir Blokları',
            description: 'Ortopedik cerrahilerde',
          ),
          ErasProtocolsItem(
            title: 'Lokal İnfiltrasyon',
            description: 'Yara hattında',
          ),
        ],
      ),
      ErasProtocolsCategory(
        categoryName: 'ERAS Sonuçları',
        items: [
          ErasProtocolsItem(
            title: 'Komplikasyonlarda Azalma',
            description: 'Postop komplikasyonlarda azalma',
          ),
          ErasProtocolsItem(
            title: 'İyileşme Hızlanması',
            description: 'İyileşmenin hızlanması',
          ),
          ErasProtocolsItem(
            title: 'Hastanede Kalış Süresi',
            description: 'Hastanede kalış süresinde 2–3 gün kısalma',
          ),
          ErasProtocolsItem(
            title: 'Hasta Memnuniyeti',
            description: 'Hasta memnuniyetinde artış',
          ),
          ErasProtocolsItem(
            title: 'Maliyet Azalması',
            description: 'Sağlık sistemi maliyetinde azalma',
          ),
        ],
      ),
    ];
  }
}
