import 'package:flutter/material.dart';

class RespiratoryDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RespiratoryDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RespiratoryDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<RespiratoryDiseaseAnesthesiaItem> items;

  RespiratoryDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class RespiratoryDiseaseAnesthesiaData {
  static List<RespiratoryDiseaseAnesthesiaCategory> getRespiratoryDiseaseAnesthesiaData(BuildContext context) {
    return [
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Pulmoner Risk Faktörleri',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Riskli Hasta Faktörleri',
            description: 'Sigara 🚬, ileri yaş, obezite.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Riskli Cerrahiler',
            description: 'Torasik + üst abdomen (FRK ↓ belirgin).',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Üst Abdomen Cerrahisi',
            description: 'FRK ↓ en çok post-op 1. gün – etki 7-10 gün sürer.',
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Obstrüktif Akciğer Hastalıkları',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Genel Özellikler',
            description: 'FEF%25-75 <70: Erken anomali (kadın >1.6 L/sn, erkek >2 L/sn normal).',
            subtitle: 'İleri dönemde: FEV1 ↓ + FEV1/FVC <%70.',
            additionalInfo: 'Hava hapsi → RV ↑ + TLC ↑.',
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Astım',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Patofizyoloji',
            description: 'Parasempatik ↑, IgE-mast hücre aktivasyonu → histamin, bradikinin, LT-C/D/E, PGD2, PAF → bronkokonstriksiyon.',
            subtitle: 'Sabah saatleri: Bronşiyal tonus ↑ (diyurnal ritim).',
            additionalInfo: 'Takipne → hipokapni tipik, PaCO2 normal/↑ = solunum yetmezliği gelişiyor ⚠️.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Tedavi',
            description: 'β2 agonist: En etkili bronkodilatör.',
            subtitle: 'Metilksantin: PDE inhibisyonu → cAMP ↑, diafram stimülasyonu.',
            additionalInfo: 'Glukokortikoid: Antiinflamatuvar (inhaler: beklometazon, budesonid, flutikazon).',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Antikolinerjik',
            description: 'Refleks bronkospazmı çözer.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Anestezik Yaklaşım',
            description: 'Kritik nokta: Havayolu enstrümantasyonu 🚨.',
            subtitle: 'Maske ventilasyonu / rejyonal tercih edilir.',
            additionalInfo: 'İndüksiyon: Sevofluran iyi seçenek.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Lidokain Kullanımı',
            description: 'Lidokain düşük doz → anti-iritan; yetersiz doz → bronkospazm yapabilir.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Ventilasyon Stratejisi',
            description: 'Ekspirasyon süresi uzatılmalı → hava hapsi ↓.',
            subtitle: 'İnhaler + volatil ↑ konsantrasyon = intraop BC tedavisi.',
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'KOAH',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Kronik Bronşit',
            description: '≥2 yıl, her yıl ≥3 ay prodüktif öksürük.',
            subtitle: 'Blue bloater: Hiperkapni + hipoksemi.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Amfizem',
            description: 'Distal havayolu/alveol yıkımı (sigara: sentrilobüler; α1AT eksikliği: panlobüler).',
            subtitle: 'V/Q bozukluğu + difüzyon ↓.',
            additionalInfo: 'Pulmoner HT: Hafif, nadiren >40 mmHg. Pink puffer fenotipi.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Tedavi',
            description: 'Sigara bırakmak = hastalığın hızını ↓.',
            subtitle: 'Bronkodilatörler semptomatik.',
            additionalInfo: 'Hipoksemi (<55 mmHg): O2 (1-2 L/dk). Kor pulmonale: Diüretik.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Anestezik Yaklaşım',
            description: 'FEV1 <%50 → efor dispnesi; <%25 → minimal aktivitede dispne.',
            subtitle: 'İndüksiyon öncesi preoksijenizasyon şart.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Hava Hapsini Azaltanlar',
            description: 'Ekspirasyon süresi ↑',
            subtitle: 'Permisif hiperkapni (PaCO2 ~70 mmHg tolere edilebilir)',
            additionalInfo: 'Düşük eksternal PEEP',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'N₂O Kontrendikasyonu',
            description: 'N2O\'dan kaçınılmalı (büller, PHT).',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Post-op Mekanik Ventilasyon Riski',
            description: 'FEV1 <%50 + üst batın/torasik cerrahi.',
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Restriktif Akciğer Hastalıkları',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Genel Özellikler',
            description: 'FEV1 & FVC ↓, FEV1/FVC normal/↑.',
            subtitle: 'Kompliyans ↓ → hızlı yüzeyel solunum.',
            additionalInfo: 'Gaz değişimi genellikle geç döneme kadar normal.',
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Akut İntrensek Akciğer Hastalıkları',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: 'ARDS Ventilasyon',
            description: 'TV: 4–6 mL/kg',
            subtitle: 'f: 14–18/dk',
            additionalInfo: 'Pplat: ≤30 cmH2O',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Post-op Destek',
            description: 'Post-op yoğun bakım desteği planlanmalı.',
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Kronik İntrensek (İnterstisyel)',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Ciddi Disfonksiyon',
            description: 'VC <15 mL/kg (normal ~70 mL/kg) → ciddi disfonksiyon.',
            subtitle: 'İndüksiyon → hipoksemi riski yüksek (FRK ↓).',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Bleomisin Öyküsü',
            description: 'FiO2 olabildiğince düşük (SpO2 %88–92 aralığında tut).',
            subtitle: 'Gerekirse İ:E=1:1 veya ters oranlı ventilasyon.',
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Pulmoner Emboli',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Patofizyoloji',
            description: 'PaCO2 genelde ↑, fakat klinikte hipoksemi ön planda.',
            subtitle: 'V/Q bozukluğu → refleks vazokonstriksiyon + BC.',
            additionalInfo: '24–48 sa → sürfaktan kaybı, atelektazi.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Dolaşım Tıkanıklığı',
            description: 'Sağlıklı → %50 dolaşım tıkanıklığı → PHT; hasta bireylerde daha azıyla olur.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Semptomlar',
            description: 'Ani dispne, takipne, göğüs ağrısı, hemoptizi.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'ABG Bulguları',
            description: 'Respiratuvar alkaloz + hipoksemi.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'EKG Bulguları',
            description: 'Sağ aks deviasyonu, RBBB, sivri T.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Tanı',
            description: 'BT anjio pratik (Altın standart: Pulmoner anjio).',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'DVT Önleme',
            description: 'Elastik bant, pnömotik kompresyon, mobilizasyon.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Heparin Tedavisi',
            description: 'Heparin → aPTT 1.5–2.5 kat normal.',
            subtitle: 'LMWH başlanmalı (pre-op 12 sa, post-op 12–24 sa).',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Köprü Tedavisi',
            description: 'Heparin + warfarin → INR terapötik düzey.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'Anestezi',
            description: 'Akut ataktan 1 yıl sonra cerrahi riski düşük.',
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: 'İntraop Emboli Belirtisi',
            description: 'Ani hipotansiyon + hipoksemi + bronkospazm',
            subtitle: 'EtCO2 düşmesi 🚨',
          ),
        ],
      ),
    ];
  }
}
