import 'package:flutter/material.dart';

class HepaticPhysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  HepaticPhysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class HepaticPhysiologyAnesthesiaCategory {
  final String categoryName;
  final List<HepaticPhysiologyAnesthesiaItem> items;

  HepaticPhysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class HepaticPhysiologyAnesthesiaData {
  static List<HepaticPhysiologyAnesthesiaCategory> getHepaticPhysiologyAnesthesiaData(BuildContext context) {
    return [
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Fonksiyonel Anatomi',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Karaciğer Ağırlığı',
            description: 'Ortalama ağırlık: 1500 g',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Yapı',
            description: 'Sağ ve sol lob → 50.000–100.000 lobül',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Asinüs Zonları',
            description: 'Zon 1: Portal sisteme en yakın, en fazla O₂ alır',
            subtitle: 'Zon 3: Sentrilobüler ven çevresi, en az O₂ alan bölge (hipoksiye en duyarlı)',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Kupffer Hücreleri',
            description: 'Karaciğerin makrofajları',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'İnnervasyon',
            description: 'Sempatik (T6–T11), parasempatik (vagus), sağ frenik',
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Hepatik Kan Akımı',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Kan Akımı',
            description: 'Kardiyak debinin %25–30\'u karaciğere gider',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Oksijen İhtiyacı',
            description: '%45–55 hepatik arter',
            subtitle: '%50–55 portal ven',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Reseptörler',
            description: 'Hepatik arter: α1 (VC), β2–D1 (VD)',
            subtitle: 'Portal ven: α1 ve D1',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Klinik Etkiler',
            description: 'Sempatik aktivasyon → akım ↓',
            subtitle: 'β-bloker → akım ↓, portal basınç ↓',
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Depo Fonksiyonu',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Portal Ven Basıncı',
            description: '7–10 mmHg',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Kan Rezervuarı',
            description: 'Karaciğer büyük bir kan rezervuarı',
            subtitle: 'Cerrahide CVP düşük tutulursa kanama ↓',
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Metabolik Fonksiyonlar',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Glikoz Metabolizması',
            description: 'Günlük glikoz tüketimi: 150 g',
            subtitle: 'Glikojen deposu: 70 g',
            additionalInfo: 'Beyin: Glikoz → uzun açlıkta keton cisimleri',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Protein Sentezi',
            description: 'İmmünglobulinler hariç tüm plazma proteinleri',
            subtitle: 'Faktör VIII ve vWF hariç tüm koagülasyon faktörleri',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Hormon Metabolizması',
            description: 'T4 → T3 dönüşümü',
            subtitle: 'İnsülin, steroidler, glukagon, ADH degradasyonu',
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'İlaç Metabolizması',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Faz I Metabolizma',
            description: 'P450, oksidasyon/redüksiyon vs.',
            subtitle: 'Barbitürat, benzodiazepin inaktivasyonu',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Faz II Metabolizma',
            description: 'Konjugasyon',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'P450 İndükleyiciler',
            description: 'Etanol, barbitüratlar, ketamin, benzodiazepinler',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Yüksek Ekstraksiyonlu İlaçlar',
            description: 'Kan akımı bağımlı klerens',
            subtitle: 'Labetalol, lidokain, morfin, verapamil, propranolol',
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Safra Fizyolojisi',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Safra Üretimi',
            description: 'Hepatosit → safra tuzu, kolesterol, fosfolipid, konjuge bilirübin',
            subtitle: 'Safra kesesi → depo',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Klinik Etkiler',
            description: 'Safra eksikliği → ADEK vit. malabsorbsiyonu',
            subtitle: 'K vit. eksikliği → protrombin, faktör VII, IX, X eksikliği',
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Karaciğer Fonksiyon Testleri',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Total Bilirübin',
            description: '<1.5 mg/dL, >3 → sarılık',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Konjuge Bilirübin',
            description: '↑: Hepatik disfonksiyon, kolestaz, obstrüksiyon',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Ankonjuge Bilirübin',
            description: '↑: Hemoliz, konjugasyon defekti',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'AST/ALT',
            description: 'Hücre hasarı göstergesi',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Alkalen Fosfataz',
            description: '25–85 IU/L, obstrüksiyonda ↑',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Albumin',
            description: '3.5–5.5 g/dL, yarı ömrü 2–3 hafta',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Kan Amonyağı',
            description: '47–65 µmol/L, ↑ → ensefalopati',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Protrombin Zamanı',
            description: '11–14 sn, uzaması hepatik yetmezlik göstergesi',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Viskoelastik Testler',
            description: 'TEG, ROTEM: Gerçek zamanlı koagülasyon analizi',
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Anestezinin Hepatik Etkileri',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Kan Akımı Etkileri',
            description: 'GA/RA hepatik kan akımını genelde ↓',
            subtitle: 'Yüksek havayolu basıncı → akım ↓',
            additionalInfo: 'Karaciğer cerrahisi → kan akımı %60\'a kadar ↓',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Metabolik Yanıt',
            description: 'Cerrahi travma → katekolamin, glukagon, kortizol ↑ → hiperglisemi',
            subtitle: 'RA/derin GA/sempatik blok → bu yanıtı baskılar',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Opioidler',
            description: 'Oddi sfinkteri spazmı → Nalokson/glukagon ile çözülür',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Postop Sarılık',
            description: 'En sık eritrosit yıkımı, hematom rezorbsiyonu',
          ),
        ],
      ),
    ];
  }
}
