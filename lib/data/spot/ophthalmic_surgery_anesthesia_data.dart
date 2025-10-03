import 'package:flutter/material.dart';

class OphthalmicSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OphthalmicSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OphthalmicSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<OphthalmicSurgeryAnesthesiaItem> items;

  OphthalmicSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class OphthalmicSurgeryAnesthesiaData {
  static List<OphthalmicSurgeryAnesthesiaCategory> getOphthalmicSurgeryAnesthesiaData(BuildContext context) {
    return [
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'İntraoküler Basınç (İOB) Dinamikleri',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Normal İOB',
            description: '12–20 mmHg',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Göz Hareketleri',
            description: 'Göz kırpma → +5 mmHg',
            subtitle: 'Şaşı bakma → 50 mmHg\'ye kadar artış',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Volatil Ajanlar',
            description: 'İOB ↓ (KB düşürür + ekstraoküler kas gevşemesi)',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'IV Ajanlar',
            description: 'İOB ↓ (ketamin hariç)',
            subtitle: 'Ketamin → İOB ↑ (kullanımda dikkat)',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Süksinilkolin',
            description: '5–10 dk süreyle +5–10 mmHg ↑',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Nondepolarizan NMB',
            description: 'İOB\'ı etkilemez',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Topikal Antikolinerjikler',
            description: 'Atropin damla → midriyazis → kapalı açılı glokom tetikleyebilir',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Sistemik Antikolinerjikler',
            description: 'Atropin/glikoprolat → İOB ↑ ile ilişkili değil',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Okülokardiyak Refleks (OKR)',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Mekanizma',
            description: 'Trigeminal (V1) afferent → Vagal efferent',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'En Sık Görüldüğü Durum',
            description: 'Pediatrik şaşılık cerrahisinde',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Klinik Bulgular',
            description: 'Bradikardi, AV blok, asistoli, diğer aritmiler',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Koruyucu Önlemler',
            description: 'Antikolinerjik premedikasyon (atropin/gilikoprolat), derin anestezi, retrobulber blok',
            subtitle: 'Retrobulber blok → OKR\'yi tetikleyebilir',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Tedavi Basamakları',
            description: 'Cerrahi manipülasyonu durdur',
            subtitle: 'Ventilasyon + O₂ kontrolü',
            additionalInfo: 'Atropin 10 mcg/kg iv, Dirençli olguda rektus kasına LA enjeksiyonu',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'İntraoküler Gaz Ekspansiyonu',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Kullanım Alanı',
            description: 'Retina/vitreus cerrahisinde gaz enjeksiyonu',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'N₂O Etkisi',
            description: 'Diffüze olur → balon hacmi artar → İOB ↑',
            subtitle: '%70 N₂O → 30 dk içinde hacim 3 katına çıkar',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Önlemler',
            description: 'Hava enjeksiyonundan ≥15 dk önce N₂O kesilmeli',
            subtitle: 'Postop belirli süre N₂O kontrendike (gaz emilene kadar)',
            additionalInfo: 'Dekolman riski nedeniyle dikkatli olunmalı',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Oftalmik İlaçların Sistemik Etkileri',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Fenilefrin (%2.5)',
            description: 'Çocuk/yaşlıda HT, taşikardi, aritmi',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Ekotiyofat',
            description: 'İrreversible kolinesteraz inhibitörü → sch yarı ömrü uzar (3–7 hafta)',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Epinefrin Damla',
            description: 'HT, taşikardi, disritmi (sistemik emilimle)',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Timolol',
            description: 'Göz içi basınç ↓ ama sistemik emilim → bradikardi, AV blok',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Oftalmik Cerrahide Genel Anestezi',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Premedikasyon',
            description: 'Yaş + komorbiditeler dikkate alınmalı',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'İndüksiyon',
            description: 'Derin anestezi altında entübasyon → İOB artışı engellenir',
            subtitle: 'Açık göz cerrahisinde sch tartışmalı, vitreus kaybı olgusu gösterilmemiştir',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'EKG (OKR için)',
            subtitle: 'End-tidal CO₂ (MH\'den ayırım için)',
            additionalInfo: 'Vücut ısısı',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'İdame',
            description: 'Volatil ajanlar, opioidler; göz hareketini önlemek için yeterli NMB',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'POBK Profilaksisi',
            description: 'Ondansetron/granisetron (5-HT3 antagonistleri) ± Deksametazon (8–10 mg)',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Ekstübasyon',
            description: 'Orta derinlikte ekstübasyon → öksürük/ıkınma önlenir',
            subtitle: '1.5 mg/kg lidokain 1–2 dk önce verilebilir',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Retrobulber Blok',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Teknik',
            description: 'Alt göz kapağı dış 1/3 → 25G iğne 3.5 cm → 2–5 mL LA',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Kullanılan LA',
            description: '%2 lidokain, %0.75 bupivakain',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Başarılı Blok',
            description: 'Akinezi + OKR kaybı',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Komplikasyonlar',
            description: 'Sinir hasarı, konvülsiyon, intravasküler enjeksiyon',
            subtitle: 'Apne (20 dk sonra → 1 saatte düzelir)',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Kontrendikasyonlar',
            description: 'Koagülopati, ileri miyopi, açık göz yaralanması',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Peribulber Blok',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Avantaj',
            description: 'Daha güvenli (optik sinir/arter yaralanma riski ↓)',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Dezavantaj',
            description: 'Etki daha geç başlar',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Uygulama',
            description: 'Lateral kantus–limbus hattından uygulanır',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'SubTenon (Episkleral) Blok',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Teknik',
            description: 'Tenon fasya altına LA',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Avantaj',
            description: 'Komplikasyon riski daha az',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Fasiyal Sinir Bloğu',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Amaç',
            description: 'Göz kapağı hareketlerini önler',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Nadbath Tekniği',
            description: 'Glossofaringeal + vagus blokajı da olabilir → havayolu riski',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Topikal Anestezi',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Kullanım Alanı',
            description: 'Yüzeysel işlemlerde kullanılabilir (örn. katarakt)',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'IV Sedasyon',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Derin Sedasyon',
            description: 'Önerilmez',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Hafif Sedasyon',
            description: 'Midazolam 1–2 mg + düşük doz opioid ± propofol/etomidat',
          ),
        ],
      ),
    ];
  }
}
