import 'package:flutter/material.dart';

class SepsisArdsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  SepsisArdsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class SepsisArdsCategory {
  final String categoryName;
  final List<SepsisArdsItem> items;

  SepsisArdsCategory({
    required this.categoryName,
    required this.items,
  });
}

class SepsisArdsData {
  static List<SepsisArdsCategory> getSepsisArdsData(BuildContext context) {
    return [
      SepsisArdsCategory(
        categoryName: 'Sepsis Tanımı ve Tarama',
        items: [
          SepsisArdsItem(
            title: 'Sepsis Tanımı',
            description: 'Organ disfonksiyonu ile birlikte enfeksiyon şüphesi/kanıtı; SOFA artışı ≥2 organ disfonksiyonu göstergesi',
          ),
          SepsisArdsItem(
            title: 'Septik Şok',
            description: 'Vazoaktif ihtiyacı (MAP ≥65 mmHg için) + laktat >2 mmol/L (yeterli sıvıya rağmen)',
          ),
          SepsisArdsItem(
            title: 'Tarama',
            description: 'Yatan hasta ve acilde tek başına qSOFA\'yı tarama için kullanmayın; NEWS/MEWS gibi erken uyarı skorları veya SIRS + klinik değerlendirme tercih edin',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'İlk Saat Yaklaşımı (Hour-1 Bundle)',
        items: [
          SepsisArdsItem(
            title: 'Laktat Düzeyi',
            description: 'Laktat düzeyini ölç (yüksekse yeniden ölç)',
            subtitle: 'Anaerobik üretim ≈ doku perfüzyonu',
          ),
          SepsisArdsItem(
            title: 'Kan Kültürü',
            description: 'Kan kültürü (antibiyotikten önce) + diğer uygun kültür ve örnekler',
          ),
          SepsisArdsItem(
            title: 'Geniş Spektrum Antibiyotik',
            description: 'Gecikmeden (şüpheli sepsis/şokta ilk saat içinde)',
          ),
          SepsisArdsItem(
            title: 'Sıvı Resüsitasyonu',
            description: 'Hipotansiyon veya laktat ≥4 mmol/L\'de 30 mL/kg izotonik kristalloid (ideal kilo)',
          ),
          SepsisArdsItem(
            title: 'Vazopresör',
            description: 'Sıvıya rağmen MAP <65 mmHg ise norepinefrin ilk tercih',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'Antimikrobiyal Tedavi',
        items: [
          SepsisArdsItem(
            title: 'İlk Saat',
            description: 'Geniş başlangıç, kaynak ve risklere göre',
          ),
          SepsisArdsItem(
            title: '48–72 Saatte',
            description: 'Kültür/duyarlılığa göre daralt/de-eskale et',
            subtitle: 'Gereksiz kombinasyonlardan kaçın',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'Sıvı, Vazopresör, Hemodinamik',
        items: [
          SepsisArdsItem(
            title: 'Kristalloid Tercih',
            description: 'Kristalloid tercih (dengeli kristalloidler makul)',
            subtitle: 'Koloid olarak albumin, yüksek kristalloid gereksinimi varsa düşünülebilir',
            additionalInfo: 'Hidroksietil nişasta (HES) yok',
          ),
          SepsisArdsItem(
            title: 'Hedef MAP',
            description: '≥65 mmHg',
          ),
          SepsisArdsItem(
            title: 'Vazopresör Seçimi',
            description: 'İlk ajan norepinefrin; ek gerekirse vasopressin (genelde 0.03 U/dk sabit)',
            subtitle: 'Norepinefrini azaltmaya yardımcı; refrakter olguda epinefrin eklenebilir',
            additionalInfo: 'Dopamin tercih edilmez',
          ),
          SepsisArdsItem(
            title: 'Dinamik Yanıt Ölçümü',
            description: 'Pasif bacak kaldırma, SVV/PPV, strok hacmi değişimi statik ölçümlere (CVP vb.) üstündür',
            subtitle: 'Sıvı cevabını bu yöntemlerle değerlendirin',
          ),
          SepsisArdsItem(
            title: 'İdrar Çıkışı Hedefi',
            description: '≥0.5 mL/kg/s',
            subtitle: 'Laktatın seri düşüşü perfüzyon iyileşmesini destekler',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'Kaynak Kontrolü',
        items: [
          SepsisArdsItem(
            title: 'Gecikmeden',
            description: 'İdeal olarak ilk 6–12 sa içinde drenaj/debridman/odak kontrolü planlayın',
            subtitle: 'Gecikme mortaliteyi artırır',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'Kortikosteroid',
        items: [
          SepsisArdsItem(
            title: 'Septik Şokta',
            description: 'Yeterli sıvı + vazoaktife rağmen devam eden vazopresör ihtiyacı varsa düşük doz hidrokortizon (≈200 mg/gün) önerilir',
          ),
          SepsisArdsItem(
            title: 'Sepsiste (Şoksuz)',
            description: 'Rutin steroid önerilmez',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'Transfüzyon, Glisemi, RRT',
        items: [
          SepsisArdsItem(
            title: 'RBC Transfüzyon Eşiği',
            description: 'Hemodinamik stabil hastada Hb <7 g/dL (aktif iskemi, ağır hipoksemi dışında)',
          ),
          SepsisArdsItem(
            title: 'Glisemi Hedefi',
            description: '140–180 mg/dL; yoğun insülinle sıkı kontrol önerilmez (hipoglisemi riski)',
          ),
          SepsisArdsItem(
            title: 'RRT',
            description: 'Hemodinamik duruma göre aralıklı vs. CRRT seçilebilir',
            subtitle: 'Erken/yoğun diyalizin üstünlüğüne kanıt yok',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS Tanı ve Sınıflama',
        items: [
          SepsisArdsItem(
            title: 'Berlin Tanımı',
            description: '1 haftada başlangıç, bilateral opasiteler, kardiyak nedenle tam açıklanmayan ödem',
            subtitle: 'PaO₂/FiO₂: hafif (200–300), orta (100–200), ağır (≤100) (PEEP ≥5)',
            additionalInfo: 'Küresel klinik pratikte hâlâ esas çerçeve',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS Mekanik Ventilasyon',
        items: [
          SepsisArdsItem(
            title: 'Düşük Tidal Hacim',
            description: 'Düşük tidal hacim (≈6 mL/kg PBW) ve platö basıncı <30 cmH₂O kullanın',
            subtitle: 'Sürüş basıncını (ΔP = Pplat − PEEP) mümkün olduğunca düşük tutmak hedeflenmeli',
          ),
          SepsisArdsItem(
            title: 'PEEP',
            description: 'Orta-ağır ARDS\'te yüksek PEEP stratejileri seçilebilir',
            subtitle: 'Hipoksemide artırım denemeleri, hemodinami/overdistansiyon açısından dikkatli',
            additionalInfo: 'Rutin agresif recruitment maneuver önerilmez',
          ),
          SepsisArdsItem(
            title: 'Prone Pozisyon',
            description: 'Orta-ağır ARDS\'te güçlü öneri; günde 12–16 saat uygulayın',
            subtitle: 'Oksijenasyonu ve mortaliteyi iyileştirir',
          ),
          SepsisArdsItem(
            title: 'Nöromüsküler Blokaj',
            description: 'Rutin erken sürekli infüzyon önerilmez',
            subtitle: 'Ciddi hipoksemi/asinroni/ventilatörle uyumsuzluk veya prone uygulanacak ağır hastada kısa süreli düşünülebilir',
          ),
          SepsisArdsItem(
            title: 'Yüksek Frekanslı Osilasyon',
            description: 'Ventilasyonu önerilmez (zarar/yarar dengesi)',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS Oksijenasyon ve Non-İnvaziv Destek',
        items: [
          SepsisArdsItem(
            title: 'Hafif-Orta Hipoksemik Yetmezlik',
            description: 'HFNC, uygun seçilmiş olguda NIV düşünülebilir',
          ),
          SepsisArdsItem(
            title: 'ARDS Gelişmiş ve İş Yükü Yüksekse',
            description: 'Erken entübasyon eşiği düşük tutulmalı',
            subtitle: 'Kılavuzlar kuvvetli kanıtı invaziv ventilasyon için veriyor',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS Sıvı Yönetimi ve Sedasyon',
        items: [
          SepsisArdsItem(
            title: 'Konservatif Sıvı Stratejisi',
            description: 'Hem stabil olduktan sonra konservatif sıvı stratejisi (kuru hasta hedefi) önerilir',
            subtitle: 'Pulmoner ödemi azaltır, ventilatör günlerini kısaltır',
          ),
          SepsisArdsItem(
            title: 'Sedasyon',
            description: 'Hafif-orta sedasyon; fazladan derin sedasyondan kaçının',
            subtitle: 'Mobilizasyonu erken başlatın (hemodinami/oksijenasyon elverirse)',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS Kortikosteroidler',
        items: [
          SepsisArdsItem(
            title: 'Orta-Ağır ARDS',
            description: 'Orta-ağır ARDS\'te kortikosteroid kullanımı koşullu öneri',
            subtitle: 'Ölüm ve ventilatör günleri üzerinde olası fayda; doz/ajan farklılık gösterebilir',
            additionalInfo: 'Hafif ARDS\'te rutin değil',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS ECMO',
        items: [
          SepsisArdsItem(
            title: 'Veno-Venöz ECMO',
            description: 'Ağır, refrakter hipoksemi/hiperkapni için veno-venöz ECMO koşullu öneri',
            subtitle: 'Optimize edilmiş ventilasyon + prone + NMB\'ye rağmen',
            additionalInfo: 'Deneyimli merkezlerde, seçilmiş hastalara; konv. stratejiler başarısızsa düşünün',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS Diğerleri',
        items: [
          SepsisArdsItem(
            title: 'İnert Gazlar/Nitratlar',
            description: 'İnert gazlar/nitratlar, statinler, rutin inhaler prostasiklin için yeterli kanıt yok',
          ),
          SepsisArdsItem(
            title: 'İnhaler NO',
            description: 'Selektif kurtarıcı durumlarda inhaler NO kısa süre oksijenasyon kurtarıcısı olabilir',
            subtitle: 'Prognoz faydası gösterilmemiştir',
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'Hızlı Hatırlatma Kartı',
        items: [
          SepsisArdsItem(
            title: 'Sepsis (İlk Saat)',
            description: 'Laktat al/tekrarla → Kan kültürü → Antibiyotik → 30 mL/kg kristalloid (hipotansiyon/laktat ≥4) → NE ile MAP ≥65',
            subtitle: 'Dinamik volüm yanıtı ile ek sıvı. Vasopressin eklenebilir; steroid refrakter şokta',
            additionalInfo: 'Kaynak kontrolünü geciktirme',
          ),
          SepsisArdsItem(
            title: 'ARDS',
            description: 'VT 6 mL/kg PBW, Pplat <30, uygun PEEP, prone 12–16 h/gün (orta-ağır)',
            subtitle: 'Agresif RM yok, konservatif sıvı, steroid (koşullu) orta-ağır, refraktere ECMO',
          ),
        ],
      ),
    ];
  }
}
