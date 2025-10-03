import 'package:flutter/material.dart';

class HypotensiveAgentsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  HypotensiveAgentsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class HypotensiveAgentsCategory {
  final String categoryName;
  final List<HypotensiveAgentsItem> items;

  HypotensiveAgentsCategory({
    required this.categoryName,
    required this.items,
  });
}

class HypotensiveAgentsData {
  static List<HypotensiveAgentsCategory> getHypotensiveAgentsData(BuildContext context) {
    return [
      HypotensiveAgentsCategory(
        categoryName: 'Nitrovazodilatörler',
        items: [
          HypotensiveAgentsItem(
            title: 'Sodyum Nitroprussid',
            description: 'Etki: NO → ↑cGMP → arteriyol + venöz VD.',
            subtitle: 'Yarı ömrü: <5 sn, titrasyon için ideal.',
            additionalInfo: 'Doz: 0,5–10 mcg/kg/dk (1–2 mcg/kg bolus entübasyon yanıtını baskılar).',
          ),
          HypotensiveAgentsItem(
            title: 'Nitroprussid Metabolizması',
            description: 'MetHb + CN⁻ →',
            subtitle: 'MetHb → siyanometHb',
            additionalInfo: 'CN⁻ + tiyosülfat → tiyosiyonat (böbrekten atılır)\nCN⁻ + sitokrom oksidaz → siyanür toks.',
          ),
          HypotensiveAgentsItem(
            title: 'Siyanür Toksisitesi',
            description: 'Bulgular: Metabolik asidoz, aritmi, yüksek venöz O₂, hipotansiyona direnç.',
            subtitle: 'Tedavi: %100 O₂, tiyosülfat, sodyum nitrat, metilen mavisi.',
          ),
          HypotensiveAgentsItem(
            title: 'Nitroprussid Organ Etkileri',
            description: 'Preload & afterload ↓',
            subtitle: 'Koroner çalma sendromu ↑',
            additionalInfo: 'İKB ↑, serebral otoregülasyon bozulur\nPulmoner VD → hipoksiye yanıt ↓\nRBF korunur',
          ),
          HypotensiveAgentsItem(
            title: 'Nitrogliserin',
            description: 'Etki: NO → ↑cGMP (nitroprussid benzeri).',
            subtitle: 'Doz: 0,5–10 mcg/kg/dk; sublingual/transdermal de uygulanır.',
            additionalInfo: 'Klinik: Miyokard iskemisi, HT, vent. yetersizliği.\nPVC setlerde tutulur → cam set kullanılmalı.\nMetabolizma: KC + kanda redüktaz ile; metHb yapabilir.',
          ),
          HypotensiveAgentsItem(
            title: 'Nitrogliserin Özellikleri',
            description: 'Venöz dönüş ↓, O₂ ihtiyacı ↓',
            subtitle: 'Subendokardiyal kan dağılımı iyileşir',
            additionalInfo: 'Koroner spazmı çözer\nÇalma fenomeni yok\nRebound HT daha az\nPulmoner: + bronkodilatasyon\nUterus gevşetir (50–100 mcg)\nTrombosit agregasyonu ↓',
          ),
          HypotensiveAgentsItem(
            title: 'Hidralazin',
            description: 'Etki: Arteriyol düz kas VD (cGMP ↑).',
            subtitle: 'Doz: 15–20 mg iv, etki 15 dk\'da başlar, 2–4 sa sürer.',
            additionalInfo: 'Klinik: Gebelik HT\'da tercih.\nMetabolizma: KC.\nEtki: KB düşüşüne refleks taşikardi, kontraktilite ↑; KKY\'de faydalı.',
          ),
        ],
      ),
      HypotensiveAgentsCategory(
        categoryName: 'Non-Nitrovazodilatörler',
        items: [
          HypotensiveAgentsItem(
            title: 'Fenoldopam',
            description: 'Etki: D1 agonist → VD; α2\'ye de afinitesi var.',
            subtitle: 'Klinik: Malign HT\'de kullanılır.',
            additionalInfo: 'Doz: 0,1 mcg/kg/dk, 15–20 dk\'da ↑.\nYE: Baş ağrısı, flushing, taşikardi, hipokalemi, hipotansiyon.\nMetabolizma: CYP450; inaktif metabolit → organ yetmezliğinde doz ayarı gerekmez.',
          ),
          HypotensiveAgentsItem(
            title: 'Fenoldopam Etkileri',
            description: 'SAB & DAB ↓, GİB ↑ (glokomda dikkat)',
            subtitle: 'RBF & GFR korunur, Na atılımı ↑',
          ),
          HypotensiveAgentsItem(
            title: 'Kalsiyum Kanal Blokerleri',
            description: 'Dihidropiridin, -dipin',
            subtitle: 'Etki: L-tipi kalsiyum kanalı blokajı.',
            additionalInfo: 'Klinik: Kardiyotorasik cerrahide rutin.\nÖzellik: Kardiyak iletiye minimal etki.',
          ),
        ],
      ),
      HypotensiveAgentsCategory(
        categoryName: 'Özet',
        items: [
          HypotensiveAgentsItem(
            title: 'Kısacası',
            description: 'Nitroprussid → hızlı, siyanür toks!',
            subtitle: 'Nitrogliserin → venöz etkili, çalma yok, koroner spazm çözer.',
            additionalInfo: 'Hidralazin → gebelik HT, yavaş başlar.\nFenoldopam → D1 agonist, böbrek koruyucu, glokomda dikkat.\nCCB (dipin) → damar selektif, kardiyak iletiye az etki.',
          ),
        ],
      ),
    ];
  }
}
