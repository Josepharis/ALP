import 'package:flutter/material.dart';

class ObstetricAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ObstetricAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ObstetricAnesthesiaCategory {
  final String categoryName;
  final List<ObstetricAnesthesiaItem> items;

  ObstetricAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class ObstetricAnesthesiaData {
  static List<ObstetricAnesthesiaCategory> getObstetricAnesthesiaData(BuildContext context) {
    return [
      ObstetricAnesthesiaCategory(
        categoryName: 'Doğum Hastasına Genel Yaklaşım',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Tok Hasta',
            description: 'Tüm gebe hastalar tok kabul edilir',
          ),
          ObstetricAnesthesiaItem(
            title: 'Aspirasyon Profilaksisi',
            description: 'Partikülsüz antasit (15–30 mL, 30 dk\'da bir)',
            subtitle: 'Yüksek risk → H₂ bloker (ranitidin 50 mg iv) + metoklopramid (10 mg iv)',
          ),
          ObstetricAnesthesiaItem(
            title: 'Pozisyon',
            description: 'Hasta sol yana deviye yatırılmalı (aortokaval kompresyonu önlemek için)',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Vajinal Doğum İçin Anestezi',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Ağrı Yolakları',
            description: '1. evre: T10–L1 (uterus ve serviks)',
            subtitle: '2. evre: S2–S4 (perineal ağrı, pudendal sinir)',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Nonfarmakolojik Teknikler',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Lamaze',
            description: 'En popüler: kontraksiyon sırasında kontrollü soluma',
          ),
          ObstetricAnesthesiaItem(
            title: 'Diğer Teknikler',
            description: 'Bradley, Dick-Read, Leboyer, Doula',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Parenteral Analjezi',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Meperidin',
            description: '≤100 mg → doğuma ≥4 saat varsa',
          ),
          ObstetricAnesthesiaItem(
            title: 'Fentanil',
            description: '25–100 mcg → hızlı etki, kısa süre',
          ),
          ObstetricAnesthesiaItem(
            title: 'Morfin',
            description: 'Kullanılmaz (uzun etkili, neonatal depresyon riski)',
          ),
          ObstetricAnesthesiaItem(
            title: 'Ketamin',
            description: '≤1 mg/kg güvenli (analjezi); >1 mg/kg → düşük Apgar',
          ),
          ObstetricAnesthesiaItem(
            title: 'NSAİD',
            description: 'Kontrendike (duktus arteriozus kapanmasını geciktirir)',
          ),
          ObstetricAnesthesiaItem(
            title: 'Kombinasyon',
            description: 'Midazolam (≤2 mg) + fentanil (≤100 mcg) kombine edilebilir',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Pudendal Sinir Bloğu',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Teknik',
            description: 'Koback veya Iowa trumpet ile yapılır',
            subtitle: 'İschial spina altından 1–1.5 cm → 10 mL %1–2 kloroprokain',
          ),
          ObstetricAnesthesiaItem(
            title: 'Paraservikal Blok',
            description: 'Fetal bradikardi riski taşır',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Tek Başına Opioidler',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Endikasyon',
            description: 'LA\'ye bağlı sempatektomi tolere edemeyen hastalar (aort darlığı, Eisenmenger, PHT)',
          ),
          ObstetricAnesthesiaItem(
            title: 'İntratekal',
            description: 'Morfin 0.1–0.5 mg (etki: 45–60 dk\'da başlar, 4–6 saat sürer)',
            subtitle: 'Fentanil 12.5 mcg veya sufentanil 5 mcg eklenebilir',
          ),
          ObstetricAnesthesiaItem(
            title: 'Epidural',
            description: 'Morfin ≤5 mg',
            subtitle: 'Fentanil kombinasyonu ile hızlı ve uzun etki',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Epidural Analjezi',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Teknik',
            description: 'Orta hat (veya paramedian), kaybolan direnç',
            subtitle: 'Derinlik ~5 cm',
            additionalInfo: 'Kateter: çok delikli tercih, 4–6 cm ilerletilir',
          ),
          ObstetricAnesthesiaItem(
            title: 'Kombinasyonlar',
            description: 'Bupivakain %0.0625–0.125 + fentanil 2–3 mcg/mL',
            subtitle: 'Ropivakain %0.1–0.2 + sufentanil 0.3–0.5 mcg/mL',
            additionalInfo: 'Test dozu: 3 mL lidokain + epinefrin',
          ),
          ObstetricAnesthesiaItem(
            title: 'Aktivasyon',
            description: '1. evre → 10 mL LA/opioid karışımı, 50–100 mcg fentanil eklenebilir',
            subtitle: '2. evre → 10–15 mL, yavaş verilir',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Epidural Komplikasyonlar',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Hipotansiyon',
            description: 'Hidrasyon + efedrin 5–15 mg veya fenilefrin 25–50 mcg',
          ),
          ObstetricAnesthesiaItem(
            title: 'İntravasküler Enjeksiyon',
            description: 'Küçük fraksiyonlarla uygulama',
          ),
          ObstetricAnesthesiaItem(
            title: 'İntratekal Enjeksiyon',
            description: 'Yüksek blok riski, entübasyon hazırlığı',
          ),
          ObstetricAnesthesiaItem(
            title: 'PDPH',
            description: 'Yatak istirahati, kafein; dirençli → kan yaması (10–20 mL)',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Sezaryen İçin Rejyonal Anestezi',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Hedef Blok',
            description: 'T4',
          ),
          ObstetricAnesthesiaItem(
            title: 'Preload',
            description: '1000–1500 mL RL',
            subtitle: 'Hipotansiyon → efedrin 5–10 mg',
          ),
          ObstetricAnesthesiaItem(
            title: 'Spinal',
            description: 'Bupivakain tercih edilir',
            subtitle: 'Morfin 0.1–0.3 mg → 24 sa analjezi (solunum depresyonu riski)',
            additionalInfo: 'Supin pozisyonda sola deviye edilmelidir',
          ),
          ObstetricAnesthesiaItem(
            title: 'Epidural',
            description: 'Çocuk çıkmamışsa, yetersiz blokta ketamin 10–20 mg + midazolam 1–2 mg eklenebilir',
            subtitle: 'Postop analjezi: epidural morfin 5 mg → 24 saat etkili',
          ),
          ObstetricAnesthesiaItem(
            title: 'Kombine Spinal–Epidural',
            description: 'Daha hızlı başlangıç + uzun süreli analjezi',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Sezaryen İçin Genel Anestezi',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Aspirasyon Profilaksisi',
            description: '30–45 dk önce 30 mL Na sitrat',
            subtitle: '1–2 saat önce ranitidin 50 mg iv veya metoklopramid 10 mg',
            additionalInfo: 'Elektif → gece/sabah omeprazol 40 mg',
          ),
          ObstetricAnesthesiaItem(
            title: 'RSI',
            description: 'Propofol/ketamin + Sch',
          ),
          ObstetricAnesthesiaItem(
            title: 'İdame',
            description: '%50 N₂O + 0.75 MAK volatil',
          ),
          ObstetricAnesthesiaItem(
            title: 'Fetus Çıktıktan Sonra',
            description: 'Oksitosin 20–80 Ü ilk litreye',
            subtitle: 'Uterus kasılmazsa → opioid, volatil kes, metilergonovin/PGF2α verilebilir',
          ),
          ObstetricAnesthesiaItem(
            title: 'Ekstübasyon',
            description: 'Hasta tam uyanıkken',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Komplike Gebeliklerde Anestezi',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Kordon Sarkması',
            description: 'Bebek canlı → sezaryene kadar içeride tutulur',
          ),
          ObstetricAnesthesiaItem(
            title: 'Makat Geliş',
            description: 'Epidural olabilir; baş sıkışırsa GA',
          ),
          ObstetricAnesthesiaItem(
            title: 'Çoğul Gebelik',
            description: 'Epidural uygulanabilir; hipotansiyon riski ↑',
          ),
          ObstetricAnesthesiaItem(
            title: 'Plasenta Previa',
            description: 'Aktif kanama/instabil → GA',
          ),
          ObstetricAnesthesiaItem(
            title: 'Dekolman',
            description: 'Masif transfüzyon; koagülopati (fibrinojen <150 mg/dL)',
          ),
          ObstetricAnesthesiaItem(
            title: 'Uterus Rüptürü',
            description: 'Epiduralde ani ağrı + hipotansiyon',
          ),
          ObstetricAnesthesiaItem(
            title: 'Koryoamniyonitis',
            description: 'Rejyonal kontrendike (sepsis, koagülopati varsa)',
          ),
          ObstetricAnesthesiaItem(
            title: 'Preterm Doğum',
            description: 'Ketamin ve efedrin tokolitik etkileşimi → dikkat',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Preeklampsi',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Patofizyoloji',
            description: 'TXA₂↑, endotelin↑, PGI₂↓',
          ),
          ObstetricAnesthesiaItem(
            title: 'Tedavi',
            description: 'MgSO₄ + labetalol',
            subtitle: 'Mg terapötik düzeyi: 4–6 mEq/L',
          ),
          ObstetricAnesthesiaItem(
            title: 'Anestezi',
            description: 'Epidural ilk tercih (trombosit >70.000 ve stabil ise)',
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Diğer Komplike Durumlar',
        items: [
          ObstetricAnesthesiaItem(
            title: 'Kalp Hastalığı',
            description: 'Aort darlığı, Eisenmenger → rejyonal tolere edemez → opioid/pudendal/GA tercih',
          ),
          ObstetricAnesthesiaItem(
            title: 'Amniyotik Sıvı Embolisi',
            description: 'Şok + DIC; acil resüsitasyon + sezaryen',
          ),
          ObstetricAnesthesiaItem(
            title: 'Postpartum Hemoraji',
            description: 'GA ile uterin masaj, plasenta çıkarılması, laserasyon onarımı',
          ),
        ],
      ),
    ];
  }
}
