import 'package:flutter/material.dart';

class CholinesteraseInhibitorsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CholinesteraseInhibitorsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CholinesteraseInhibitorsCategory {
  final String categoryName;
  final List<CholinesteraseInhibitorsItem> items;

  CholinesteraseInhibitorsCategory({
    required this.categoryName,
    required this.items,
  });
}

class CholinesteraseInhibitorsData {
  static List<CholinesteraseInhibitorsCategory> getCholinesteraseInhibitorsData(BuildContext context) {
    return [
      CholinesteraseInhibitorsCategory(
        categoryName: 'Genel Kolinerjik Farmakoloji',
        items: [
          CholinesteraseInhibitorsItem(
            title: 'Temel Prensipler',
            description: 'Kolinerjik = adrenerjik etkilerin tersi',
            subtitle: 'Sentez: Asetil-KoA + Kolin → Asetilkolin (kolin asetiltransferaz ile)',
            additionalInfo: 'Yıkım: Asetilkolin → Kolin + Asetat (AChE ile)',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Ach Salgısı',
            description: 'Tüm parasempatik, bazı sempatik (ganglion, adrenal medulla, ter bezi), SSS, iskelet kası',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Reseptörler',
            description: 'Nikotinik → ganglion, iskelet kası',
            subtitle: 'Muskarinik → bronş, tükrük bezi, SA nod',
            additionalInfo: 'KBB: hem nikotinik hem muskarinik reseptör var',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Klinik Ajanlar',
            description: 'Metakolin → astım provokasyon testi',
            subtitle: 'Betanekol → geniş açılı glokom',
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Etki Mekanizması',
        items: [
          CholinesteraseInhibitorsItem(
            title: 'Kolinesteraz İnhibitörleri',
            description: 'Organofosfatlar → AChE ile irreversibl bağ',
            subtitle: 'Karbamatlar (neostigmin, pridostigmin, fizostigmin) → reversibl',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Myastenia Gravis',
            description: 'Tanı (edrofonyum) & tedavi (neostigmin, pridostigmin)',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Depolarizan Blok',
            description: 'SC: kolinesteraz inhibitörleri ile uzar',
            subtitle: 'Neostigmin/pridostigmin: psödokolinesterazı sınırlı bloke eder',
            additionalInfo: 'Edrofonyum: çok az ya da hiç etkilemez',
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Klinik Etkiler',
        items: [
          CholinesteraseInhibitorsItem(
            title: 'Kardiyovasküler Etkiler',
            description: 'Muskarinik etki → bradikardi, arrest',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Pulmoner Etkiler',
            description: 'Bronkospazm, sekresyon artışı',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Santral Sinir Sistemi',
            description: 'Fizostigmin KBB\'ni geçer, yaygın aktivasyon yapar',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Gastrointestinal Etkiler',
            description: 'Peristaltizm ↑, sekresyon ↑ → PONV, fekal inkontinans',
            subtitle: 'Yan etkiler azaltma: atropin / glikoprolat',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Geri Dönüş Değerlendirmesi',
            description: 'TOF & tetanik korelasyon; yüksek frekanslı stimülasyona daha duyarlı',
            subtitle: 'Kas gücü geri gelme sırası: baş ↑ > inspirasyon gücü > VC > TV',
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Spesifik Ajanlar',
        items: [
          CholinesteraseInhibitorsItem(
            title: 'Neostigmin',
            description: 'Yapı: karbamat + kuarterner amonyum (KBB geçmez)',
            subtitle: 'Doz: 0,04–0,08 mg/kg (max 5 mg)',
            additionalInfo: 'Başlangıç: 5–10 dk\n\nAntikolinerjik eşleştirme:\n1 mg Neo → 0,2 mg Glikoprolat\n1 mg Neo → 0,4 mg Atropin\n\nGebe: Atropin > Glikoprolat',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Pridostigmin',
            description: 'Yapı: kuarterner amonyum + fenol',
            subtitle: 'Doz: 0,25 mg/kg (Neo\'nun %20 potent)',
            additionalInfo: 'Başlangıç: 10–15 dk (yavaş)\nSüre: uzun\n\n1 mg Pri → 0,05 mg Glikoprolat veya 0,1 mg Atropin\n\nGlikoprolat tercih edilir (etki başlama hızları uyumlu)',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Edrofonyum',
            description: 'Yapı: karbamat yok, kovalent olmayan bağ',
            subtitle: 'Doz: 0,5–1 mg/kg',
            additionalInfo: 'Başlangıç: 1–2 dk (en hızlı)\nSüre: en kısa\n\nMuskarinik etkisi en az\nAntikolinerjik ihtiyacı düşük (yarı doz yeterli)',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Fizostigmin',
            description: 'Yapı: tertiyer amin (KBB geçer)',
            subtitle: 'Doz: 0,01–0,03 mg/kg',
            additionalInfo: 'Kullanım: santral antikolinerjik sendrom, volatil/BD deliryum, post-op titreme, morfin depresyonu\n\nYan etkiler: salivasyon, kusma, konvülziyon\nAtropin tercih edilebilir (daha iyi tolere edilir)',
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Sugammadeks',
        items: [
          CholinesteraseInhibitorsItem(
            title: 'Yapı ve Mekanizma',
            description: 'Yapı: gama-siklodekstrin',
            subtitle: 'Steroid yapıdaki kas gevşeticileri (ro, ve, pa) 1:1 oranında bağlar',
            additionalInfo: 'Atılım: değişmeden böbreklerden',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Klinik Özellikler',
            description: 'Doz: 1–16 mg/kg',
            subtitle: 'Etkisi hızlı, selektif',
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'L-Sistein',
        items: [
          CholinesteraseInhibitorsItem(
            title: 'Gantaküryum Antagonizması',
            description: 'Gantaküryum (fumarat grubu) blokajını hızla çözer (2–3 dk\'da)',
            subtitle: 'Mekanizma: sistein ile birleşip inaktif metabolit oluşturur',
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Altın Spotlar',
        items: [
          CholinesteraseInhibitorsItem(
            title: 'Özet',
            description: 'Neostigmin: en sık, KBB geçmez',
            subtitle: 'Pridostigmin: daha yavaş, uzun etkili',
            additionalInfo: 'Edrofonyum: en hızlı, en kısa\nFizostigmin: KBB geçer → santral kullanım\nSugammadeks: steroid yapılılara özel\nSC blok: kolinesteraz inhibitörleri ile uzar',
          ),
        ],
      ),
    ];
  }
}
