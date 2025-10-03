import 'package:flutter/material.dart';

class IntravenousAnestheticsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  IntravenousAnestheticsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class IntravenousAnestheticsCategory {
  final String categoryName;
  final List<IntravenousAnestheticsItem> items;

  IntravenousAnestheticsCategory({
    required this.categoryName,
    required this.items,
  });
}

class IntravenousAnestheticsData {
  static List<IntravenousAnestheticsCategory> getIntravenousAnestheticsData(BuildContext context) {
    return [
      IntravenousAnestheticsCategory(
        categoryName: 'Barbitüratlar',
        items: [
          IntravenousAnestheticsItem(
            title: 'Etki Mekanizması',
            description: 'GABAA üzerinden (Cl⁻ kanalı açılma süresini ↑).',
          ),
          IntravenousAnestheticsItem(
            title: 'Farmakokinetik',
            description: 'İndüksiyon → dağılım ile sonlanır.',
            subtitle: 'Tiyopental %60 proteine bağlanır, t½ = 10-12 s.',
            additionalInfo: 'Metoheksital → hızlı kc ekstraksiyon, hızlı derlenme.',
          ),
          IntravenousAnestheticsItem(
            title: 'Organ Etkileri',
            description: 'KVS: KB ↓, refleks taşikardi.',
            subtitle: 'Solunum: SS ve TV ↓, bronko-/laringospazm riski ↑.',
            additionalInfo: 'Serebral: CMRO₂ ↓, CBF ↓, ICP ↓.',
          ),
          IntravenousAnestheticsItem(
            title: 'Yan Etkiler',
            description: 'Histamin salınımı (tiyobarbitüratlar), sarımsak tadı, porfiria krizini tetikler.',
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Benzodiazepinler',
        items: [
          IntravenousAnestheticsItem(
            title: 'Etki Mekanizması',
            description: 'GABAA üzerinden Cl⁻ kanalının açılma sıklığını ↑.',
            subtitle: 'Antagonist: Flumazenil.',
          ),
          IntravenousAnestheticsItem(
            title: 'Farmakokinetik',
            description: 'Midazolam pH\'a duyarlı (asidik → hidrofilik; fizyolojik → lipofilik).',
            subtitle: 'Diazepam → aktif metabolit (Faz I).',
            additionalInfo: 't½: Diazepam 30 s, Lorazepam 15 s, Midazolam 2 s.',
          ),
          IntravenousAnestheticsItem(
            title: 'Organ Etkileri',
            description: 'KVS: Minimal.',
            subtitle: 'Solunum: CO₂ yanıtı ↓ → monitor şart!',
            additionalInfo: 'Serebral: Antegrad amnezi, antikonvülzan, analjezik etki yok.',
          ),
          IntravenousAnestheticsItem(
            title: 'Etkileşimler',
            description: 'MAK %30 ↓. Simetidin (diazepam yıkımı ↓), eritromisin (midazolam yıkımı ↓).',
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Ketamin',
        items: [
          IntravenousAnestheticsItem(
            title: 'Etki Mekanizması',
            description: 'NMDA antagonisti; talamus–limbik ayrışma → disosiyatif anestezi.',
            subtitle: 'Farmakokinetik: Norketamin aktif metabolit.',
          ),
          IntravenousAnestheticsItem(
            title: 'Organ Etkileri',
            description: 'KVS: Sempatik aktivite ↑ → HR, BP, CO ↑.',
            subtitle: 'Solunum: Ventilatuar güdü korunur, bronkodilatör, havayolu refleksleri korunur.',
            additionalInfo: 'Serebral: CBF ↑, ICP ↑.',
          ),
          IntravenousAnestheticsItem(
            title: 'Yan Etkiler',
            description: 'Tükürük ↑ (glikoprolat ↓), psikomimetik reaksiyonlar.',
            subtitle: 'Not: Nondepolarizan kas gevşeticileri bloke eder.',
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Etomidat',
        items: [
          IntravenousAnestheticsItem(
            title: 'Etki Mekanizması',
            description: 'GABAA (R+ izomer), RAS depresyonu.',
            subtitle: 'Farmakokinetik: Yüksek protein bağlanması, kc+plazma esteraz metabolizması.',
          ),
          IntravenousAnestheticsItem(
            title: 'Organ Etkileri',
            description: 'KVS: Stabil, histamin salınımı yapmaz.',
            subtitle: 'Solunum: Apne nadir.',
            additionalInfo: 'Serebral: CBF ↓, ICP ↓, CPP korunur.',
          ),
          IntravenousAnestheticsItem(
            title: 'Endokrin Etkiler',
            description: 'Adrenokortikal supresyon (11-β hidroksilaz inhibisyonu).',
          ),
          IntravenousAnestheticsItem(
            title: 'Yan Etkiler',
            description: 'Myoklonus (%30-60).',
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Propofol',
        items: [
          IntravenousAnestheticsItem(
            title: 'Etki Mekanizması',
            description: 'GABAA\'yı allosterik olarak kolaylaştırır.',
            subtitle: 'Farmakokinetik: Çok hızlı dağılım (t½α = 2-8 dk), ekstrahepatik eliminasyon.',
          ),
          IntravenousAnestheticsItem(
            title: 'Organ Etkileri',
            description: 'KVS: BP ↓, SVR ↓ (ama tolere edilebilir).',
            subtitle: 'Solunum: Depresyon → apne, entübasyon için yeterli.',
            additionalInfo: 'Serebral: CBF ↓, ICP ↓, CMRO₂↓.\nSerebral perfüzyon basıncı (CPP): genellikle korunur',
          ),
          IntravenousAnestheticsItem(
            title: 'EEG Değişiklikleri',
            description: 'Düşük voltaj–hızlı aktivite → yüksek voltaj–yavaş dalga → burst-supresyon',
          ),
          IntravenousAnestheticsItem(
            title: 'Yan Etkiler',
            description: 'Ağrılı enjeksiyon (gliserol), propofol infüzyon sendromu.',
            subtitle: 'Etkileşim: Midazolam dozu %10 ↓; opioid klirensi ↓.',
          ),
        ],
      ),
    ];
  }
}
