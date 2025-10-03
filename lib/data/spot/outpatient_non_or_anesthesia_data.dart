import 'package:flutter/material.dart';

class OutpatientNonOrAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OutpatientNonOrAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OutpatientNonOrAnesthesiaCategory {
  final String categoryName;
  final List<OutpatientNonOrAnesthesiaItem> items;

  OutpatientNonOrAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class OutpatientNonOrAnesthesiaData {
  static List<OutpatientNonOrAnesthesiaCategory> getOutpatientNonOrAnesthesiaData(BuildContext context) {
    return [
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Genel İlkeler',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'Tanım',
            description: 'Aynı gün anestezi + cerrahi girişim → taburculuk',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Avantajlar',
            description: 'Düşük maliyet, daha hızlı iyileşme, enfeksiyon riskinde azalma',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Zorluklar',
            description: 'Hasta seçimi, komplikasyon yönetimi, sınırlı kaynaklar (özellikle hastane dışı)',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Hasta Seçimi',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'ASA Sınıflaması',
            description: 'ASA I–II uygundur, komorbid ASA III seçilmiş olgularda olabilir',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Kontrendikasyonlar',
            description: 'Kontrolsüz DM, HT, ciddi kardiyak/pulmoner hastalık, aktif enfeksiyon',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Özel Gruplar',
            description: 'Çocuk → genellikle uygun, özellikle KBB, üroloji girişimleri',
            subtitle: 'Yaşlı → dikkatli seçimle güvenli olabilir',
            additionalInfo: 'Obezite → risk ↑ (hava yolu, PONV, OSA)',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Preoperatif Hazırlık',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'Açlık Kuralları',
            description: 'Katı gıda → 6–8 saat',
            subtitle: 'Anne sütü → 4 saat',
            additionalInfo: 'Açık sıvı → 2 saat',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Premedikasyon',
            description: 'Minimal sedatif → hızlı derlenme, erken taburculuk amaçlanır',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Profilaksi',
            description: 'PONV riski yüksek hastalarda antiemetik',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'İndüksiyon ve İdame',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'İndüksiyon',
            description: 'IV ajanlar (propofol en sık, hızlı derlenme avantajı)',
            subtitle: 'İntranasal/IM seçenekler çocuklarda',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'İdame',
            description: 'TIVA veya düşük doz inhalasyon ajanları',
            subtitle: 'Kısa etkili opioidler (fentanil, remifentanil)',
            additionalInfo: 'Kas gevşetici ihtiyacı minimal → kısa etkili tercih edilir',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'Standart ASA monitörizasyonu (EKG, SpO₂, NIBP, ETCO₂) her ortamda şart',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Ameliyathane Dışı Anestezi (NORA)',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'Yerler',
            description: 'Endoskopi üniteleri, radyoloji (MRI/CT), girişimsel kardiyoloji/radyoloji, acil servis',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Zorluklar',
            description: 'Ekipman/hasta pozisyonu → erişim kısıtlı',
            subtitle: 'Oksijen kaynağı sınırlı olabilir',
            additionalInfo: 'Acil müdahale için geri çağırma (rescue) ekipmanı her zaman hazır olmalı',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Özel Durumlar',
            description: 'MRI → manyetik alan uyumlu monitör/ekipman zorunlu',
            subtitle: 'Endoskopi → hava yolu paylaşımı riski',
            additionalInfo: 'Radyoloji çocuk hastaları → genellikle derin sedasyon/GA',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Derlenme ve Taburculuk',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'Taburculuk Kriterleri',
            description: 'Vital bulgular stabil',
            subtitle: 'Yeterli analjezi, bulantı-kusma kontrolü',
            additionalInfo: 'Oral sıvı alabilme, destek olmadan yürüyebilme/uyanıklık',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Aldrete Skoru',
            description: 'Taburculuk için Aldrete skoru ≥ 9/10',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Eşlik Eden',
            description: 'Sorumlu erişkin yanında olmalı',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Komplikasyonlar',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'Hava Yolu Obstrüksiyonu',
            description: 'Özellikle sedasyon + üst GİS girişimlerinde',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Hipoventilasyon/Hipoksemi',
            description: 'Kapalı alanlarda sık',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'PONV',
            description: 'Günübirlik cerrahide taburculuğu geciktiren en sık neden',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Kanama/Hemodinamik İnstabilite',
            description: 'Özellikle girişimsel kardiyoloji/radyoloji',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'İdeal Ajan Özellikleri',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'Genel Özellikler',
            description: 'Hızlı başlangıç, kısa etki süresi, tahmin edilebilir eliminasyon',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Tercih Edilen Ajanlar',
            description: 'Propofol (altın standart), remifentanil, sevofluran',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Antiemetik Kombinasyonu',
            description: 'Ondansetron + deksametazon',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Özetle',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'Kritik Noktalar',
            description: 'Günübirlik ve NORA\'da hasta seçimi + monitörizasyon kritik',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'En Sık Tercih',
            description: 'Propofol en sık tercih edilen ajan',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Taburculuk Şartları',
            description: 'Taburculuk için Aldrete ≥ 9, yanında refakatçi şart',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'En Sık Sorunlar',
            description: 'PONV ve hava yolu güvenliği en sık karşılaşılan sorunlar',
          ),
        ],
      ),
    ];
  }
}
