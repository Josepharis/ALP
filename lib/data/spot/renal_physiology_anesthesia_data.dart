import 'package:flutter/material.dart';

class RenalPhysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RenalPhysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RenalPhysiologyAnesthesiaCategory {
  final String categoryName;
  final List<RenalPhysiologyAnesthesiaItem> items;

  RenalPhysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class RenalPhysiologyAnesthesiaData {
  static List<RenalPhysiologyAnesthesiaCategory> getRenalPhysiologyAnesthesiaData(BuildContext context) {
    return [
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Nefron Yapısı ve Fonksiyonları',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: 'Renal Korpüskül',
            description: 'Glomerül + Bowman kapsülü',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Glomerüler Filtrasyon Basıncı',
            description: '≈ 60 mmHg (OAB\'nın %60\'ı)',
            subtitle: 'Plazma onkotik basınç ≈ 25 mmHg, İnterstisyel basınç ≈ 10 mmHg → net filtrasyon ≈ 10 mmHg',
            additionalInfo: 'Filtrasyon fraksiyonu ≈ %20',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Proksimal Tübül',
            description: 'Ultrafiltratın %65–75\'i izotonik reabsorbe',
            subtitle: 'Temel mekanizma: Na⁺-K⁺-ATPaz',
            additionalInfo: 'ATII, norE → reabsorbsiyonu ↑; Dopamin, Fenoldopam → ↓',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Proksimal Tübül Fonksiyonları',
            description: 'H sekresyonu ile bağlı Na reabsorbsiyonu',
            subtitle: 'Akuaporin I → su geçirgenliği',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Henle Kulpu',
            description: 'Na reabsorpsiyonu %15–20',
            subtitle: 'İnen kol → suya permeabl; Çıkan kalın kol → suya impermeabl, aktif NaCl reabsorbsiyonu',
            additionalInfo: 'Ca ve Mg reabsorpsiyonu için kritik',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Ters Akım Mekanizması',
            description: 'Vasa rekta',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Distal Tübül',
            description: 'Na reabsorpsiyonunun %5\'i',
            subtitle: 'Ca reabsorpsiyonunun primer bölgesi (PTH etkisi)',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Toplayıcı Kanal',
            description: 'Kortikal P hücreleri → Na reabsorbsiyonu (aldosteron bağımlı), K sekresyonu',
            subtitle: 'İ hücreleri → H⁺ sekresyonu (aldosteron etkisi)',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Medüller Kanal',
            description: 'ADH etkisiyle akuaporin-2 ↑ → su geçirgenliği ↑',
            subtitle: 'Üre geri emilimi → medüller hipertonisite ↑',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Jukstaglomerüler Aparat',
            description: 'Afferent arteriyolde, maküla densa ile ilişkili',
            subtitle: 'Renin sentezi (β1 stimülasyon)',
            additionalInfo: 'Renin → AII → aldosteron salınımı',
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Renal Dolaşım',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: 'Böbrek Kan Akımı',
            description: 'Böbrek → kalp debisinin %20–25\'i',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Oksijen Basınçları',
            description: 'Korteks: PaO₂ ≈ 50 mmHg (filtrasyon için)',
            subtitle: 'Medulla: PaO₂ ≈ 15 mmHg (iskemiye hassas)',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Renal Akım Değerleri',
            description: 'Renal plazma akımı (RPA): ≈ 660 mL/dk',
            subtitle: 'Renal kan akımı (RKA): ≈ 1200 mL/dk',
            additionalInfo: 'GFR: Erkek 120 mL/dk, Kadın 95 mL/dk',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Otoregülasyon',
            description: 'OAB 80–180 mmHg',
            subtitle: '<40–50 mmHg → filtrasyon durur',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Tübüloglomerüler Feedback',
            description: 'Maküla densa → GFR regülasyonu',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Hormonal Kontrol',
            description: 'AII → efferent arteriyol VC → GFR korunur',
            subtitle: 'PG (PGE₂, PGI₂, PGD₂) → renal koruma, NSAID engeller',
            additionalInfo: 'ANP → VD, renin inhibisyonu',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Nöronal/Parakrin Kontrol',
            description: 'β1 → renin ↑',
            subtitle: 'α1 → renal VC',
            additionalInfo: 'D1/D2 reseptörleri → VD',
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Anestezi ve Böbrek',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: 'AKİ İnsidansı',
            description: 'Perioperatif %1–5',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'İndirekt Etkiler',
            description: 'Kardiyovasküler depresyon → RKA ↓',
            subtitle: 'Sempatik ↑ → RKA ↓, GFR ↓',
            additionalInfo: 'Endokrin yanıt: katekolamin, ADH, AII, aldosteron ↑',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Volatil Ajanlar',
            description: 'Renal VD',
            subtitle: 'Sevofluran düşük akımda compound A → nefrotoksisite riski, klinikte önemli değil',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'IV Ajanlar',
            description: 'Minimal etki; ketamin hipovolemide koruyucu olabilir',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'NSAID',
            description: 'PG sentezi ↓ → AKİ riski ↑',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'ACEi',
            description: 'GFR koruyucu mekanizma kaybolur',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Cerrahi Etkiler',
            description: 'Laparoskopi → pnömoperitonyum ile renal fonksiyon ↓',
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Osmotik Diüretikler (Mannitol)',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: 'Etki Mekanizması',
            description: 'Proksimal tübül + Henle',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Doz',
            description: '0.25–1 g/kg IV',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Kullanım Alanları',
            description: 'AKİ profilaksisi',
            subtitle: 'Akut oligüride tanı',
            additionalInfo: 'İKB/Serebral ödem ↓, İOB ↓ (göz cerrahisi)',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Yan Etkiler',
            description: 'Hipervolemi, KY, pulmoner ödem, hiponatremi',
            subtitle: 'Rebound oligüri, nefrotoksisite',
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Loop Diüretikler',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: 'Etki Mekanizması',
            description: 'Na-K-2Cl inhibitörü (Henle kalın çıkan kol)',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Doz',
            description: 'Furosemid 20–100 mg IV',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Kullanım Alanları',
            description: 'Ödem (KY, siroz, nefrotik sendrom)',
            subtitle: 'HT',
            additionalInfo: 'Oligürik BY → non-oligürik çevrim, Hiperkalsemi tedavisi',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Yan Etkiler',
            description: 'Hipokalemi, metabolik alkaloz, hipokalsemi, hipomagnezemi',
            subtitle: 'Ototoksisite (furosemid, etakrinik asit)',
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Tiazid Diüretikler',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: 'Etki Mekanizması',
            description: 'Distal tübül Na-Cl kotransporter inh.',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Kullanım Alanları',
            description: 'HT (ilk tercih)',
            subtitle: 'Ödem (hafif-orta)',
            additionalInfo: 'Hiperkalsiüri, Nefrojenik DI',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Yan Etkiler',
            description: 'Hipokalemi, alkaloz, hiperürisemi, hiperglisemi',
            subtitle: 'Hiperkalsemi, hiperlipidemi',
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Potasyum Tutucular',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: 'Aldosteron Antagonistleri',
            description: 'Spironolakton, Eplerenon',
            subtitle: 'Kullanım: Sekonder hiperaldosteronizm, KC asiti, KKY',
            additionalInfo: 'Yan etki: Hiperkalemi, jinekomasti (spironolakton)',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Na Kanal Blokerleri',
            description: 'Amilorid, Triamteren',
            subtitle: 'Yan etki: Hiperkalemi, metabolik asidoz, NSAID ile nefrotoksisite',
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Karbonik Anhidraz İnhibitörleri',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: 'Asetozolamid',
            description: 'Etki: Proksimal tübül',
            subtitle: 'Doz: 250–500 mg IV',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Kullanım Alanları',
            description: 'Metabolik alkaloz',
            subtitle: 'İdrar alkalileştirilmesi',
            additionalInfo: 'Göz içi basınç ↓, Dağ hastalığı profilaksisi',
          ),
          RenalPhysiologyAnesthesiaItem(
            title: 'Yan Etkiler',
            description: 'Hipokloremik metabolik asidoz, parestezi, uyku hali',
          ),
        ],
      ),
    ];
  }
}
