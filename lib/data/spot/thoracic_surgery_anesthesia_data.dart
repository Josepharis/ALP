import 'package:flutter/material.dart';

class ThoracicSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ThoracicSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ThoracicSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<ThoracicSurgeryAnesthesiaItem> items;

  ThoracicSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class ThoracicSurgeryAnesthesiaData {
  static List<ThoracicSurgeryAnesthesiaCategory> getThoracicSurgeryAnesthesiaData(BuildContext context) {
    return [
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Lateral Dekübit Pozisyonu',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Uyanık Spontan Solunum',
            description: 'V/Q korunur → dependan akciğer hem daha çok ventile hem de daha çok perfüze olur.',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Genel Anestezi + Pozitif Basınçlı Ventilasyon',
            description: 'Ventilasyon üst akciğere kayar, perfüzyon altta devam → V/Q uyumsuzluğu + hipoksemi riski',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Hipoksemiyi Artıran Faktörler',
            description: 'Yastık yerleşimi, üst taraf torakotomi, anestezi derinliği.',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Açık Pnömotoraks',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Paradoksal Solunum',
            description: 'İnspirasyonda hava açık → kapalı AC',
            subtitle: 'Ekspirasyonda kapalı → açık AC',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Mediasten Hareketi',
            description: 'İnspirasyon ↓, ekspirasyon ↑',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Tek Akciğer Ventilasyonu (TAV / OLV)',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'İntrapulmoner Şant',
            description: '%20–30',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'HPV İnhibe Edenler',
            description: 'Çok düşük / çok yüksek PAP',
            subtitle: 'Hipokapni',
            additionalInfo: 'Çok düşük / çok yüksek PaO2, Vazodilatörler, Pulmoner enfeksiyon, İnhalasyon ajanları (yüksek doz)',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Dependan AC Perfüzyonunu Azaltanlar',
            description: 'Yüksek PEEP / basınç',
            subtitle: 'Yetersiz ekspirasyon → PEEPi',
            additionalInfo: 'Vazokonstriktör',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'CO₂ Atılımı',
            description: 'Genelde değişmez.',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Çift Lümenli Tüp (DLT)',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Boyutlar',
            description: '35F (kadın) – 37/39/41F (erkek)',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Trakea Uzunluğu',
            description: '11–13 cm',
            subtitle: 'Yerleşim: Krikoid (C6) → Karina (T5)',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Sağ DLT',
            description: 'Üst lob için ekstra ventilasyon açıklığı gerekir.',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Sol DLT Tercih Edilmeyen Durumlar',
            description: 'Sol bronş dıştan bası (aort anevrizması, kitle)',
            subtitle: 'Sol pnömonektomi',
            additionalInfo: 'Sol akciğer transplantasyonu, Sol tüp rezeksiyonu',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Komplikasyonlar',
            description: 'Hipoksemi (yerleşim hatası, obstrüksiyon, venöz karışım)',
            subtitle: 'Travmatik larenjit / bronş rüptürü',
            additionalInfo: 'Cerrahi sırasında tüpe dikiş',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Bronşiyal Bloker',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Avantaj',
            description: 'Postop entübasyon gerekiyorsa DLT değiştirmeye gerek yok.',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Dezavantaj',
            description: 'Bloke edilen akciğerin sönmesi yavaş.',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Akciğer Rezeksiyonu – Preop Değerlendirme',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Benign Tm',
            description: '%90 hamartom',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Malign Tm',
            description: 'Santral: epidermoid, küçük hücreli',
            subtitle: 'Periferik: adeno, büyük hücreli',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Postop FEV1 Hesap',
            description: 'Preop FEV1 × (% kalan AC dokusu)',
            subtitle: 'Postop FEV1 < %40 → ↑ mortalite/morbidite',
            additionalInfo: '<%30 → ventilatörden ayrılma zor',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'DLCO',
            description: 'DLCO < %40: komplikasyon ↑',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Gaz Değişimi',
            description: 'PaO2 >60, PaCO2 <45',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'VO2 Max',
            description: 'VO2 max < 20 mL/kg/dk: risk ↑',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'İntraop Ventilasyon',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'TAV Sırasında',
            description: 'Tidal vol: 6–8 mL/kg',
            subtitle: 'PEEP: 5–10 cmH2O',
            additionalInfo: 'FiO2: %50–80',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Basınç Limitleri',
            description: 'Pplat < 25 cmH2O',
            subtitle: 'Ppeak < 35 cmH2O',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'AC Açma Manevrası',
            description: '30 cmH2O basınç ile.',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Sıvı Yönetimi',
            description: 'Aşırı verilmez → "dependan AC sendromu" riski.',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Güdük Kaçağı Testi',
            description: '30 cmH2O basınçla, su altında.',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Hipoksi Yönetimi (OLV sırasında)',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'İlk Adımlar',
            description: 'DLT pozisyonunu kontrol et',
            subtitle: 'FiO2 = 1.0',
            additionalInfo: 'Rekruitment → dependan AC',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Optimizasyon',
            description: 'PEEP optimize et',
            subtitle: 'CO / O2 taşımasını artır',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Cerrahla Uyumlu',
            description: 'CPAP (opere edilen AC\'ye O2)',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Persistan Hipoksi',
            description: 'Bilateral ventilasyon ± pulmoner arter klempi',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Postop Komplikasyonlar',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Sık Komplikasyonlar',
            description: 'Hipoksemi, respiratuvar asidoz, supraventriküler taşikardi',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Analjezi',
            description: 'Torakal epidural > opioid',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Erken Ekstübasyon',
            description: 'Barotravma/pnömotoraks riski nedeniyle',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Komplikasyonlar',
            description: 'Atelektazi (tıkaç, sekresyon)',
            subtitle: 'Hava kaçağı',
            additionalInfo: 'Geç pnömotoraks, AC torsiyonu, Mediasten kayması',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Sinir Hasarı',
            description: 'Frenik, vagus, n. rekürrens',
            subtitle: 'Parapleji (spinal kord basısı)',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Özel Durumlar',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Masif Hemoptizi',
            description: '>500–600 mL/24s → mortalite %20+',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'AC Kist / Bül',
            description: 'N2O kontrendike, spontan solunumla entübasyon.',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'AC Apsesi',
            description: 'Seri entübasyon + DLT → sağlam AC korunur.',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Bronkoplevral Fistül',
            description: 'PBV kontrendike (büyük kaçak riski).',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Trakea Rezeksiyonu',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Premedikasyon',
            description: 'Verilmez.',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Spontan Solunum',
            description: 'Korunur (NMB\'den kaçınılır).',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'İndüksiyon',
            description: '1–2 mg/kg lidokain → anestezi derinliği ↑',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Tanısal İşlemler',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Bronkoskopi',
            description: 'Apneik O2 / yan kol ventilasyonu / jet ventilasyon',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Mediastinoskopi',
            description: 'Sol koldan tansiyon ölçümü',
            subtitle: 'İnnominant arter bası riski',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'BAL',
            description: 'DLT + 10–20 L ılık SF ile',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Akciğer Transplantasyonu',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Tek AC Nakli',
            description: 'İPF → genellikle KPB gerekmez.',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Çift AC Nakli',
            description: 'Genellikle KPB ile.',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Hipotansiyon Tedavisi',
            description: 'Vazopressör (sıvı değil).',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'HPV ve Öksürük Refleksi',
            description: 'HPV korunur, ancak öksürük refleksi kaybolur.',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Postop',
            description: 'Erken ekstübasyon, kısıtlı sıvı.',
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Özofagus Cerrahisi',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: 'Ana Risk',
            description: 'Aspirasyon',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'İndüksiyon',
            description: 'Seri indüksiyon şart.',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Tüp',
            description: 'Çift lümenli (torakotomi varsa)',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Komplikasyonlar',
            description: 'Kardiyak dolum bozukluğu, vagal stimülasyon.',
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: 'Postop',
            description: 'Mekanik ventilasyon ihtiyacı sık.',
          ),
        ],
      ),
    ];
  }
}
