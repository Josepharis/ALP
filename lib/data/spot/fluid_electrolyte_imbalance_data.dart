import 'package:flutter/material.dart';

class FluidElectrolyteImbalanceItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  FluidElectrolyteImbalanceItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class FluidElectrolyteImbalanceCategory {
  final String categoryName;
  final List<FluidElectrolyteImbalanceItem> items;

  FluidElectrolyteImbalanceCategory({
    required this.categoryName,
    required this.items,
  });
}

class FluidElectrolyteImbalanceData {
  static List<FluidElectrolyteImbalanceCategory> getFluidElectrolyteImbalanceData(BuildContext context) {
    return [
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Temel Kavramlar',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Molarite',
            description: '1 L solüsyondaki mol sayısı',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Molalite',
            description: '1 kg solüsyondaki mol sayısı',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Ekivalan',
            description: 'mol x elektrik yükü',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Osmotik Basınç',
            description: '1 mOsm/L fark ≈ 19.3 mmHg basınç',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Osmolarite',
            description: '1 L\'deki osmoller',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Osmolalite',
            description: '1 kg\'daki osmoller',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Tonosite',
            description: 'Hücre hacmi üzerine etki',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Sıvı Kompartmanları',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'İntrasellüler (ICS)',
            description: 'K⁺ başlıca katyon, protein fazla',
            subtitle: 'Na-K-ATPaz (3Na dışa:2K içe)',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Ekstrasellüler (ECS)',
            description: 'Na⁺ en önemli katyon',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'İnterstisyel',
            description: 'Protein 2 g/dL, normalde –5 mmHg',
            subtitle: 'Pozitife dönerse ödem',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'İntravasküler',
            description: 'Plazma proteinleri osmotik aktif',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Günlük Su Dengesi',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Alım',
            description: '≈ 2500 mL (300 mL metabolik)',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Kayıp',
            description: 'İdrar 1500 mL',
            subtitle: 'Solunum 400 mL, Cilt 400 mL',
            additionalInfo: 'Ter 100 mL, Gaita 100 mL',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Plazma Osmolalitesi',
            description: '(Na x 2) + BUN/2.8 + Glukoz/18 ≈ 280-290 mOsm/kg',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Glukoz Etkisi',
            description: 'Glukoz ↑ her 62 mg/dL → Na 1 mEq/L ↓',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Osmolal Gap',
            description: '↑ → KBY, ketoasidoz, TUR-sinde glisin, toksinler',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'ADH & Susama Mekanizması',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'ADH',
            description: 'Hipotalamus (supraoptik/paraventriküler)',
            subtitle: '↑ Osmolalite → ↑ ADH → su tutulur',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'ADH Tam Baskılanması',
            description: '10–20 L/gün su atılır',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Nonosmotik ADH',
            description: 'Kan hacmi %5–10 azalınca uyarılır',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Susama',
            description: 'En güçlü savunma (hiperosmolalite & hipernatremi)',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Hipernatremi',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Düşük Na İçeriği',
            description: 'Su > Na kaybı',
            subtitle: 'İdrar Na: renal >20, ekstrarenal <10',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Normal Na İçeriği',
            description: 'Santral/Nefrojenik DI',
            subtitle: 'Santral DI: Beyin ölümü, travma. Tedavi: Desmopressin',
            additionalInfo: 'Nefrojenik DI: ADH\'ye yanıtsız. Sebep: Li, amfoterisin B, hiperkalsemi. Tedavi: Tiyazid, Na/protein kısıtlaması',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Artmış Na İçeriği',
            description: 'Hipertonik salin, hiperaldosteronizm',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Klinik',
            description: 'Huzursuzluk → koma',
            subtitle: 'Akut ↑ (>158) → kanama/nöbet',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Tedavi',
            description: 'Düzeltme ≤0.5 mEq/L/saat',
            subtitle: 'Elektif cerrahi ertelenir (>150 mEq/L)',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Hiponatremi',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Düşük Na İçeriği',
            description: 'Renal (idrarda Na >20), ekstrarenal (idrarda Na <10)',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Artmış Na İçeriği',
            description: 'KKY, siroz, nefrotik sendrom',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Normal Na İçeriği',
            description: 'SIADH (idrarda Na >40, Osm >100), endokrin',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Klinik',
            description: 'Hafif → genelde asemptomatik',
            subtitle: '<120 → ciddi semptom',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Tedavi',
            description: 'Hipovolemik: İzotonik salin',
            subtitle: 'Euvolemik/hipervolemik: Sıvı kısıtlaması',
            additionalInfo: 'Akut semptomatik: Hipertonik salin, düzeltme hızı hafif 0.5, orta 1, ağır 1.5 mEq/L/saat',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Anestezi Güvenli Alt Sınır',
            description: '130 mEq/L',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Potasyum (K⁺)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Normal Alım',
            description: '40–140 mEq/gün',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'K Regülasyonu',
            description: 'Na-K-ATPaz, insülin, β2 agonist',
            subtitle: 'pH 0.1 değişim → K 0.6 mEq değişim',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Hipokalemi',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Klinik',
            description: 'T dalgası düzleşir, U dalgası ↑, kas güçsüzlüğü',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Tedavi',
            description: 'Oral 60–80 mEq/gün',
            subtitle: 'İv replasman → periferik ≤8 mEq/saat, santral ≤20 mEq/saat',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Anestezi',
            description: 'Digoksinde sınır ≥4',
            subtitle: 'NMB\'lere duyarlılık artar (%25–50 doz azalt)',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Hiperkalemi',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Klinik',
            description: 'Sivri T → QRS geniş → P kaybı',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Tedavi',
            description: 'Ca glukonat (kısa, hızlı)',
            subtitle: 'NaHCO₃, β-agonist, insülin+glukoz',
            additionalInfo: 'Loop diüretik, reçine; Diyaliz: hemodiyaliz 50 mEq/sa ↓',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Anestezi',
            description: '>6 mEq/L tedavi edilmeli',
            subtitle: 'Elektif cerrahi ertelenir',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Kalsiyum (Ca²⁺)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Normal',
            description: '8.5–10.5 mg/dL',
            subtitle: 'pH ↓ 0.1 → Ca ↑ 0.16 mg/dL',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Hiperkalsemi',
            description: 'Sebep: Primer HPT, malignite',
            subtitle: 'Klinik: QT kısa, HT, kas güçsüzlüğü',
            additionalInfo: 'Tedavi: Sıvı+loop, bifosfonat, kalsitonin; Anestezi: elektif cerrahi ertelenir',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Hipokalsemi',
            description: 'Sebep: Hipoparatiroidi, sitratlı kan, sepsis, KBY',
            subtitle: 'Klinik: Trousseau, Chvostek, QT uzun',
            additionalInfo: 'Tedavi: Ca replasmanı (Mg de kontrol edilmeli); Anestezi: NMB yanıtı öngörülemez',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Fosfor (P)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Normal',
            description: '2.5–4.5 mg/dL',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Hipofosfatemi',
            description: '<1 mg/dL → multiorgan yetmezlik',
            subtitle: 'Tedavi: oral replasman, ciddi → iv',
            additionalInfo: 'Anestezi: hiperglisemi & alkalozdan kaçın',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Magnezyum (Mg²⁺)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Normal',
            description: '1.7–2.1 mEq/L',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Hipermagnezemi',
            description: 'Klinik: Hiporefleksi, bradikardi, KVS depresyonu',
            subtitle: 'Tedavi: Ca glukonat, diyaliz',
            additionalInfo: 'Anestezi: NMB dozu azaltılır',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Hipomagnezemi',
            description: 'Klinik: Aritmi, AF, kas spazmı',
            subtitle: 'Tedavi: Oral, ciddi → 1–2 g iv Mg',
            additionalInfo: 'Anestezi: Diğer elektrolitlerle beraber düzeltilmeli',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Kritik Ezberler',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Osmolal Gap',
            description: '↑ → toksin/abnormal molekül',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'MAK Etkileri',
            description: 'Hiponatremi → MAK ↓, Hipernatremi → MAK ↑',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'NMB Etkileri',
            description: 'Hipokalemi → NMB duyarlılık ↑, Hiperkalemi → NMB etkisi ↑',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'QT Etkileri',
            description: 'Hipokalsemi → QT uzun, Hiperkalsemi → QT kısa',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Elektif Cerrahi Ertelenmesi',
            description: 'Na >150, K >6, ciddi Ca bozukluklarında ertelenmeli',
          ),
        ],
      ),
    ];
  }
}
