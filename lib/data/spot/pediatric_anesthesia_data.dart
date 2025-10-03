import 'package:flutter/material.dart';

class PediatricAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PediatricAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PediatricAnesthesiaCategory {
  final String categoryName;
  final List<PediatricAnesthesiaItem> items;

  PediatricAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class PediatricAnesthesiaData {
  static List<PediatricAnesthesiaCategory> getPediatricAnesthesiaData(BuildContext context) {
    return [
      PediatricAnesthesiaCategory(
        categoryName: 'Anatomik ve Fizyolojik Özellikler',
        items: [
          PediatricAnesthesiaItem(
            title: 'Solunum Sistemi',
            description: 'Akciğer kompliyansı ↓, göğüs kafesi kompliyansı ↑ → küçük rezidüel kapasiteler',
            subtitle: 'Tam alveol gelişimi: 8 yaş',
          ),
          PediatricAnesthesiaItem(
            title: 'Dil ve Larinks',
            description: 'Dil büyük, larinks yüksek (C4 çocuk, C6 erişkin)',
            subtitle: '<5 yaş: en dar yer krikoid kıkırdak (erişkinde glottis)',
            additionalInfo: 'Yenidoğan ilk 5 ay obligat nazal solunumcu',
          ),
          PediatricAnesthesiaItem(
            title: 'Kardiyovasküler',
            description: 'Debi → kalp hızı bağımlı',
            subtitle: 'Hipovolemi → taşikardisiz hipotansiyon',
            additionalInfo: 'Baroreseptör refleks immatür',
          ),
          PediatricAnesthesiaItem(
            title: 'Metabolizma/Isı',
            description: 'Yüzey alanı ↑ → ısı kaybı ↑, hipotermi riski',
            subtitle: 'Kahverengi yağ metabolizması prematürde sınırlı',
          ),
          PediatricAnesthesiaItem(
            title: 'Renal/Hepatik',
            description: 'Renal fonksiyon 6 ay – 2 yaşta olgunlaşır',
            subtitle: 'Konjugasyon immatür → ilaç eliminasyonu yavaş',
          ),
          PediatricAnesthesiaItem(
            title: 'Glukoz',
            description: 'Glikojen depoları az → hipoglisemiye yatkın',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Farmakoloji',
        items: [
          PediatricAnesthesiaItem(
            title: 'Ağırlık Tahmini',
            description: '50. persantil ≈ (yaş × 2) + 9',
          ),
          PediatricAnesthesiaItem(
            title: 'Vücut Sıvısı',
            description: '↑ → suda eriyen ilaç dağılım hacmi ↑',
          ),
          PediatricAnesthesiaItem(
            title: 'Protein Bağlanması',
            description: '↓ → serbest ilaç fraksiyonu ↑',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'İnhalasyon Ajanları',
        items: [
          PediatricAnesthesiaItem(
            title: 'İndüksiyon',
            description: 'Dakika ventilasyonu ↑, FRK ↓ → indüksiyon hızlı',
            subtitle: 'Kan/gaz katsayısı düşük → hızlı denge, aşırı doz riski',
          ),
          PediatricAnesthesiaItem(
            title: 'Sevofluran',
            description: 'En az solunum depresyonu, hızlı derlenme',
          ),
          PediatricAnesthesiaItem(
            title: 'Desfluran',
            description: 'Hızlı derlenme ama ajitasyon/deliryum ↑',
          ),
          PediatricAnesthesiaItem(
            title: 'Halotan/Sevo',
            description: 'Kalbi katekolaminlere duyarlı hale getirir',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'İV Ajanlar',
        items: [
          PediatricAnesthesiaItem(
            title: 'Propofol',
            description: 'Çocuklarda daha yüksek doz (idame ~250 mcg/kg/dk)',
            subtitle: 'Uzun/k yüksek doz → propofol infüzyon sendromu',
          ),
          PediatricAnesthesiaItem(
            title: 'Tiyopental',
            description: 'YD 3–4 mg/kg, bebek 5–6 mg/kg',
          ),
          PediatricAnesthesiaItem(
            title: 'Opioidler',
            description: 'YD\'da potent → özellikle morfin dikkatli (konjugasyon immatür)',
            subtitle: 'Remifentanil: klerens yüksek, eliminasyon değişmez',
          ),
          PediatricAnesthesiaItem(
            title: 'Ketamin',
            description: 'Hipnotik etkiye direnç olabilir',
          ),
          PediatricAnesthesiaItem(
            title: 'Midazolam',
            description: 'YD\'da klerens ↓',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Kas Gevşeticiler',
        items: [
          PediatricAnesthesiaItem(
            title: 'Genel Özellikler',
            description: 'Çocuklarda etki başlangıcı hızlı',
          ),
          PediatricAnesthesiaItem(
            title: 'Süksinilkolin',
            description: 'Sadece: tok hasta + ventilasyona dirençli laringospazmda',
          ),
          PediatricAnesthesiaItem(
            title: 'Atrakurium/Sisatrakurium',
            description: 'Güvenli (karaciğer dışı eliminasyon)',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Preoperatif',
        items: [
          PediatricAnesthesiaItem(
            title: 'ÜSYE',
            description: '2–4 hafta öncesi geçirilmişse komplikasyon riski ↑',
          ),
          PediatricAnesthesiaItem(
            title: 'Açlık Kuralları',
            description: 'Anne sütü → 4 sa',
            subtitle: 'Mama/katı → 6 sa',
            additionalInfo: 'Su/partikülsüz sıvı → 2 sa',
          ),
          PediatricAnesthesiaItem(
            title: 'Premedikasyon',
            description: 'Midazolam (oral/iv/nazal)',
            subtitle: 'Atropin: YD ve küçük bebeklerde bradikardi profilaksisi',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Monitörizasyon',
        items: [
          PediatricAnesthesiaItem(
            title: 'Glukoz Tedavi Eşikleri',
            description: 'YD: <30 mg/dL',
            subtitle: 'Bebek: <40 mg/dL',
            additionalInfo: 'Çocuk: <60 mg/dL',
          ),
          PediatricAnesthesiaItem(
            title: 'SpO₂',
            description: 'Preduktal SpO₂ en iyi kulak memesi',
          ),
          PediatricAnesthesiaItem(
            title: 'İnvaziv Monitör',
            description: 'YD\'da sağ radial arter',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'İndüksiyon ve Havayolu',
        items: [
          PediatricAnesthesiaItem(
            title: 'İndüksiyon',
            description: 'Kooperasyon yoksa inhalasyon ile başlanır, sonra iv',
          ),
          PediatricAnesthesiaItem(
            title: 'Tüp Boyutu',
            description: '[çap (mm) = 4 + (yaş/4)]',
          ),
          PediatricAnesthesiaItem(
            title: 'Tüp Uzunluğu',
            description: '(cm): 12 + (yaş/2)',
          ),
          PediatricAnesthesiaItem(
            title: 'Kaflı Tüp',
            description: 'Kaçak testi (15–20 cmH₂O\'da)',
            subtitle: 'PEEP 10 cmH₂O laringospazm çözebilir',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'İdame',
        items: [
          PediatricAnesthesiaItem(
            title: 'Ventilasyon',
            description: '<10 kg: PIP 15–18 cmH₂O',
            subtitle: '10 kg: tidal vol 6–8 mL/kg',
          ),
          PediatricAnesthesiaItem(
            title: 'Postop Deliryum',
            description: '↓ → sevo indüksiyon sonrası isoflurana geçilebilir',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Sıvı Yönetimi',
        items: [
          PediatricAnesthesiaItem(
            title: 'İdame',
            description: '4-2-1 kuralı',
          ),
          PediatricAnesthesiaItem(
            title: 'Glikoz Gereksinimi',
            description: '<8 yaş: 6 mg/kg/dk',
            subtitle: '8 yaş: 2 mg/kg/dk',
            additionalInfo: 'Prematüre: 6–8 mg/kg/dk',
          ),
          PediatricAnesthesiaItem(
            title: 'Kan Hacimleri',
            description: 'Prematüre: 100 mL/kg',
            subtitle: 'YD: 85–90 mL/kg',
            additionalInfo: 'Bebek: 80 mL/kg',
          ),
          PediatricAnesthesiaItem(
            title: 'Hedef Hct',
            description: 'Prematüre/YD: %40',
            subtitle: 'Çocuk: %20–26 tolere',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Rejyonal',
        items: [
          PediatricAnesthesiaItem(
            title: 'Kaudal',
            description: 'Bupivakain %0.125–0.25 (2.5 mg/kg)',
            subtitle: 'Sakral: 0.5 mL/kg; midtorasik: 1.25 mL/kg',
            additionalInfo: 'Opioid eklenebilir (morfin 25 mcg/kg)',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Derlenme',
        items: [
          PediatricAnesthesiaItem(
            title: 'Laringospazm',
            description: 'CPAP → gerekirse lidokain 1–1.5 mg/kg veya Sch',
          ),
          PediatricAnesthesiaItem(
            title: 'Postentübasyon Krup',
            description: 'En sık 1–4 yaş',
            subtitle: 'Tedavi: iv deksametazon + nebulize rasemik epinefrin',
          ),
          PediatricAnesthesiaItem(
            title: 'Ağrı',
            description: 'Asetaminofen, ketorolak, PCA (6–7 yaş üstü)',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Spesifik Hastalıklar',
        items: [
          PediatricAnesthesiaItem(
            title: 'Prematüre',
            description: 'Postkonsepsiyonel yaş <50–60 hafta → postop apne riski → monitörizasyon',
          ),
          PediatricAnesthesiaItem(
            title: 'CDH',
            description: 'PIP <30 cmH₂O, permisif hiperkapni, NG dekompresyon',
          ),
          PediatricAnesthesiaItem(
            title: 'TOF',
            description: 'NMB\'siz entübasyon, pozitif basınçtan kaçın',
          ),
          PediatricAnesthesiaItem(
            title: 'Omfalosel/Gastroşizis',
            description: 'N₂O kontrendike',
            subtitle: 'Basınç limitleri → intragastrik >20 cmH₂O, PIP >35 riskli',
          ),
          PediatricAnesthesiaItem(
            title: 'Pilor Stenozu',
            description: 'Hızlı RSI, önce sıvı-elektrolit düzeltme',
          ),
          PediatricAnesthesiaItem(
            title: 'Krup/Epiglottit',
            description: 'Ciddi havayolu obstrüksiyon riski',
          ),
          PediatricAnesthesiaItem(
            title: 'Down Sendromu',
            description: 'Zor havayolu + kardiyak anomaliler',
          ),
          PediatricAnesthesiaItem(
            title: 'Skolyoz',
            description: 'Nöromonitörizasyon, MH riski (müsküler distrofi)',
          ),
        ],
      ),
    ];
  }
}
