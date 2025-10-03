import 'package:flutter/material.dart';

class HepaticDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  HepaticDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class HepaticDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<HepaticDiseaseAnesthesiaItem> items;

  HepaticDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class HepaticDiseaseAnesthesiaData {
  static List<HepaticDiseaseAnesthesiaCategory> getHepaticDiseaseAnesthesiaData(BuildContext context) {
    return [
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Akut Hepatit',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: 'Viral Hepatit',
            description: 'HAV & HEV → fekal-oral',
            subtitle: 'HBV & HCV → kan/vücut sıvıları',
            additionalInfo: 'HDV → HBV varlığı şart',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Diğer Viral Nedenler',
            description: 'EBV, CMV, HSV de sebep olabilir',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Klinik Seyir',
            description: 'Prodromal dönem 1–2 hafta → yorgunluk, halsizlik, ateş, bulantı',
            subtitle: 'Sarılık (2–12 hafta) → 4 ayda iyileşme',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Kronikleşme',
            description: 'HBV %3–10, HCV %50',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Profilaksi',
            description: 'HBV\'de immünglobulin profilaksisi etkili, HCV\'de etkisiz',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'İlaca Bağlı Hepatit',
            description: 'Alkol → yağlı hepatomegali',
            subtitle: 'Asetaminofen >25 g → fulminan hepatit',
            additionalInfo: 'Klorpromazin & OKS → kolestaz',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Anestezi Yaklaşımı',
            description: 'Viral hepatitte ilaç duyarlılığı ↑',
            subtitle: 'Alkoliklerde anesteziklere tolerans gelişebilir',
            additionalInfo: 'İnhalasyon ajanları tercih edilir (izo/sevo perfüzyon korur)',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Kaçınılması Gerekenler',
            description: 'Hipotansiyon, sempatik aktivasyon ve yüksek havayolu basıncından kaçınılmalı',
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Kronik Hepatit',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: 'Tanım',
            description: '6 ay süren inflamasyon',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Sınıflama',
            description: 'Persistan, Lobüler, Aktif',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'En Sık Neden',
            description: 'HBV & HCV',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Anestezi Yaklaşımı',
            description: 'Persistan/lobüler → akut hepatit gibi',
            subtitle: 'Kronik aktif → sirozlu gibi yönetilmeli',
            additionalInfo: 'Otoimmün kronik aktif → steroid yan etkileri ve otoimmün komplikasyonlara dikkat',
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Siroz',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: 'En Sık Sebep',
            description: 'Alkol',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Patofizyoloji',
            description: 'Hepatosit nekrozu → fibrozis + nodüler rejenerasyon',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Komplikasyonlar',
            description: 'Portal HT & varis kanaması',
            subtitle: 'Asit & dirençli sıvı retansiyonu',
            additionalInfo: 'Ensefalopati & koma, HCC gelişebilir',
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Preoperatif Özellikler',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: 'Gastrointestinal',
            description: 'Portal HT → varis kanaması, nitrojen yükü → ensefalopati riski',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Hematolojik',
            description: 'Anemi, trombositopeni, koagülopati',
            subtitle: '<75.000/µL\'de trombosit replasmanı',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Kardiyak',
            description: 'Hiperdinamik dolaşım, KMP eşlik edebilir',
            subtitle: '>50 yaş + risk faktörü → KAH için test',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Pulmoner',
            description: 'İntrapulmoner şant ↑, hipoksi, atelektazi',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Portopulmoner HT',
            description: 'PAH >25 mmHg, PVR >240 dyn·s/cm⁵, transpulmoner gradyan >12 mmHg',
            subtitle: '45 mmHg → ciddi risk, nakilde mortalite ↑',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Renal',
            description: 'Asit, dilüsyonel hiponatremi, hipokalemi, hepatorenal sendrom',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Sıvı Dengesi',
            description: 'Asit + ödem → günlük kayıp <1 kg',
            subtitle: 'Sadece asit → <0.5 kg/gün',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Santral Sinir Sistemi',
            description: 'Ensefalopati → laktüloz (30–50 mL/8 sa), neomisin (500 mg/6 sa)',
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'İntraoperatif Yönetim',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: 'İlaç Yanıtı',
            description: 'Farmakokinetik değişir, psödokolinesteraz ↓',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Anestezi',
            description: 'Hepatik akım arter bağımlı, RA teknikler trombositopeni/koagülopatide riskli',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'İdame',
            description: 'Propofol indüksiyon + izofluran/sevo, opioid yarı ömrü ↑',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'İnvaziv arteriyel basınç, sık kan gazı',
            subtitle: 'PEEP hipoksemide kullanılabilir',
            additionalInfo: 'Ekokardiyografi ile volüm değerlendirme',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Sıvı Replasmanı',
            description: 'İntraop kayıplar → kolloid',
            subtitle: 'Asit drenajı sonrası hipotansiyon/renal disfonksiyon riski',
            additionalInfo: 'ES → sitrat → hipokalsemi',
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Hepatik Cerrahi',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: 'Gereklilikler',
            description: 'Geniş IV yol, CVP, invaziv arter basıncı, ısıtma sistemleri',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'CVP tek başına yetersiz → Doppler/EKO kullanılmalı',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Hipotansiyon Yönetimi',
            description: 'Perfüzyon bozulmasında antifibrinolitikler (e-aminokaproik asit, traneksamik asit) kullanılabilir',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Hidatik Kist',
            description: 'Periton yayılımı → anaflaksi riski',
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Karaciğer Nakli',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: 'Preop',
            description: 'MELD skoru → mortalite öngörüsü',
            subtitle: 'Renal sınırda → CVVH kullanılabilir',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Diseksiyon Fazı',
            description: 'Büyük damar manipülasyonu, hiponatremi hızlı düzeltilmemeli',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Anhepatik Faz',
            description: 'Karaciğere giriş çıkış akım kesilir, venövenöz bypass düşünülebilir',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Neohepatik Faz',
            description: 'Portal ven açılır, reperfüzyon sendromu (hipotansiyon, hiperkalemi, asidoz)',
            subtitle: 'CaCl & NaHCO₃ kullanılabilir',
          ),
          HepaticDiseaseAnesthesiaItem(
            title: 'Postop',
            description: 'Multisistemik takip',
            subtitle: 'Erken ekstübasyon uygun hastada mümkün',
            additionalInfo: 'İmmünsüpresyon, Hepatik arter akımı yakından takip',
          ),
        ],
      ),
    ];
  }
}
