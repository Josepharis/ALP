import 'package:flutter/material.dart';

class PeripheralNerveBlocksItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PeripheralNerveBlocksItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PeripheralNerveBlocksCategory {
  final String categoryName;
  final List<PeripheralNerveBlocksItem> items;

  PeripheralNerveBlocksCategory({
    required this.categoryName,
    required this.items,
  });
}

class PeripheralNerveBlocksData {
  static List<PeripheralNerveBlocksCategory> getPeripheralNerveBlocksData(BuildContext context) {
    return [
      PeripheralNerveBlocksCategory(
        categoryName: 'Blok Teknikleri',
        items: [
          PeripheralNerveBlocksItem(
            title: 'Alan Bloğu',
            description: 'Kutanöz sinirler; interkostobrakial & safen sinir örnek',
          ),
          PeripheralNerveBlocksItem(
            title: 'Parestezi',
            description: 'Eskimiş, artık kullanılmaz',
          ),
          PeripheralNerveBlocksItem(
            title: 'Sinir Stimülasyonu',
            description: '1–2 Hz, 0–5 mA; <0.2 mA intranöral',
            subtitle: 'Güvenli aralık: 0.2–0.5 mA',
          ),
          PeripheralNerveBlocksItem(
            title: 'USG',
            description: 'Yüksek frekans = yüzeyel yapı; düşük frekans = derin yapı',
          ),
          PeripheralNerveBlocksItem(
            title: 'Devamlı Blok',
            description: 'Uzun etkili LA + düşük konsantrasyon = duyusal blok ↑, motor blok ↓',
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Brakial Pleksus Anatomisi',
        items: [
          PeripheralNerveBlocksItem(
            title: 'Köken',
            description: 'C4–T1',
          ),
          PeripheralNerveBlocksItem(
            title: 'Kordlar',
            description: 'Axiller arter çevresinde lateral, medial, posterior',
          ),
          PeripheralNerveBlocksItem(
            title: 'Terminal Dallar',
            description: 'Median, ulnar, radial, muskulo-kutanöz',
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Üst Ekstremite Blokları',
        items: [
          PeripheralNerveBlocksItem(
            title: 'İnterskalen',
            description: 'C5–C7 yoğun, C8–T1 (ulnar) korunur → dirsek & distale uygun değil',
            subtitle: 'Komplikasyonlar: Frenik sinir bloğu, Horner sendromu, RLN paralizisi',
            additionalInfo: 'LA: postop analjezi 10 mL; cerrahi 20–30 mL',
          ),
          PeripheralNerveBlocksItem(
            title: 'Supraklaviküler',
            description: '"Kolun spinali" → omuz cerrahisinde etkisiz',
            subtitle: 'LA: 30–40 mL (fraksiyonel)',
            additionalInfo: 'Komplikasyonlar: pnömotoraks, frenik sinir bloğu',
          ),
          PeripheralNerveBlocksItem(
            title: 'İnfraklaviküler',
            description: 'Dirsek & distali için ideal; T2 dermatom korunur',
            subtitle: 'Giriş: korakoid çıkıntı 2 cm medial–kaudal, ~5 cm derin',
            additionalInfo: 'LA: ~30 mL. Yanıt: parmak fleks/ekstansiyonu',
          ),
          PeripheralNerveBlocksItem(
            title: 'Aksiller',
            description: 'Perinöral kateter için uygun değil',
            subtitle: 'Her sinire 10 mL, toplam ~40 mL',
            additionalInfo: 'Motor yanıtlar: Median → el bileği fleksiyonu, baş parmak opozisyonu; Ulnar → 4–5. parmak fleksiyonu; Radial → ekstansiyon; Muskulo-kutanöz → supinasyon',
          ),
          PeripheralNerveBlocksItem(
            title: 'Terminal Bloklar',
            description: 'Median, ulnar, radial, muskulo-kutanöz ayrı ayrı 3–10 mL LA ile bloke edilebilir',
            subtitle: 'İnterkostobrakial (T2) pleksus bloğu ile bloke OLMAZ → ayrıca yapılmalı',
          ),
          PeripheralNerveBlocksItem(
            title: 'IVRA (Bier Bloğu)',
            description: 'Proksimal turnike, distal damar yolu',
            subtitle: '%0.5 lidokain: ön kol 25 mL, kol 50 mL',
            additionalInfo: 'Turnike min. 15–20 dk şişik kalmalı, yavaş indirilir',
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Alt Ekstremite Blokları',
        items: [
          PeripheralNerveBlocksItem(
            title: 'Pleksuslar',
            description: 'Lomber (L1–L4) → femoral, obturator, lat. femoral kutanöz',
            subtitle: 'Sakral (L4–S4) → siyatik',
          ),
          PeripheralNerveBlocksItem(
            title: 'Femoral',
            description: 'Kalça fleksiyonu + diz ekstansiyonu',
            subtitle: '30–40 mL LA',
            additionalInfo: 'Fasyal iliaka yaklaşımı alternatif',
          ),
          PeripheralNerveBlocksItem(
            title: 'Lateral Femoral Kutanöz',
            description: 'SİAS 2 cm medial & distal → 10–15 mL',
          ),
          PeripheralNerveBlocksItem(
            title: 'Obturator',
            description: 'Pubik çıkıntı 1.5 cm inf/lat',
            subtitle: 'Yanıt: uyluk addüksiyonu',
            additionalInfo: '15–20 mL',
          ),
          PeripheralNerveBlocksItem(
            title: 'Psoas Kompartman (Lumbal Pleksus)',
            description: 'Derin blok, uzun iğne',
            subtitle: 'Komplikasyon: retroperitoneal yapı yaralanması',
            additionalInfo: 'Orta & büyük cerrahilerde etkili',
          ),
          PeripheralNerveBlocksItem(
            title: 'Safen',
            description: 'Femoral sinirin medial dalı',
            subtitle: '5–10 mL',
            additionalInfo: 'Diz altı blok için siyatik ile kombine edilmeli',
          ),
          PeripheralNerveBlocksItem(
            title: 'Siyatik',
            description: 'PSİS–trokanter major hattı orta nokta',
            subtitle: '25 mL LA',
            additionalInfo: 'Yaklaşımlar: posterior, anterior, subgluteal, popliteal',
          ),
          PeripheralNerveBlocksItem(
            title: 'Ayak Bileği',
            description: '5 sinir → düşük komplikasyon',
            subtitle: 'Yüksek hacimden & epinefrinden kaçınılmalı',
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Gövde Blokları',
        items: [
          PeripheralNerveBlocksItem(
            title: 'Yüzeyel Servikal Pleksus',
            description: 'SCM lateral kenarı, üst–orta 1/3 kesişim',
            subtitle: '5+5 mL LA subkutan',
          ),
          PeripheralNerveBlocksItem(
            title: 'İnterkostal',
            description: 'Kot altı girişim; 3–5 mL',
            subtitle: 'Yüksek sistemik emilim → toksisite riski',
            additionalInfo: 'Pnömotoraks komplikasyonu. Yerini paravertebral aldı',
          ),
          PeripheralNerveBlocksItem(
            title: 'Paravertebral',
            description: 'Torasik/abdominal cerrahide segmenter blok',
            subtitle: 'Mastektomi: T3–T6, aksiller diseksiyon: C7–T2',
            additionalInfo: 'Herni: T10–L2. 5 mL/segment LA. Komplikasyon: pnömotoraks, retroperitoneal yaralanma',
          ),
          PeripheralNerveBlocksItem(
            title: 'TAP Blok',
            description: 'Alt karın cerrahisi/postop analjezi',
            subtitle: 'Sinirler: subkostal (T12), ilioinguinal & iliohipogastrik (L1)',
            additionalInfo: 'İğne: internal oblik & transversus abdominis arasında. 20 mL LA',
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Kritik Notlar',
        items: [
          PeripheralNerveBlocksItem(
            title: 'LA Doz/Volüm',
            description: 'Blok başarısı & komplikasyon için kritik',
          ),
          PeripheralNerveBlocksItem(
            title: 'USG',
            description: 'Başarı ↑, komplikasyon ↓',
          ),
          PeripheralNerveBlocksItem(
            title: 'Komplikasyonlar',
            description: 'Pnömotoraks (supraklaviküler, interkostal, paravertebral), intranöral enjeksiyon, sistemik toksisite',
          ),
          PeripheralNerveBlocksItem(
            title: 'Turnike Süresi (IVRA)',
            description: 'Min. 15–20 dk, hızlı indirme yapılmaz',
          ),
        ],
      ),
    ];
  }
}
