import 'package:flutter/material.dart';

class CardiovascularMonitoringItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiovascularMonitoringItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiovascularMonitoringCategory {
  final String categoryName;
  final List<CardiovascularMonitoringItem> items;

  CardiovascularMonitoringCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiovascularMonitoringData {
  static List<CardiovascularMonitoringCategory> getCardiovascularMonitoringData(BuildContext context) {
    return [
      CardiovascularMonitoringCategory(
        categoryName: 'Arteriyel Kan Basıncı (ABP)',
        items: [
          CardiovascularMonitoringItem(
            title: 'Nabız Basıncı (NB)',
            description: 'Sistolik – Diyastolik',
          ),
          CardiovascularMonitoringItem(
            title: 'Ortalama ABP (OAB)',
            description: '(Sistolik – Diyastolik)/3 + Diyastolik',
          ),
          CardiovascularMonitoringItem(
            title: 'Periferik Basınç',
            description: 'Merkezden periferiye doğru sistolik ve nabız basıncı artar, dalga şekli değişir.',
            subtitle: 'Hipotermi sonrası KPB: periferik basınç düşük olabilir.',
          ),
          CardiovascularMonitoringItem(
            title: 'Noninvazif (NIBP)',
            description: 'Endikasyon: tüm anestezi türlerinde; 3–5 dk aralıklarla ölçüm yeterli.',
            subtitle: 'Kontrendikasyon: AV şant, IV yol bulunan ekstremite, yanık vb.',
            additionalInfo: 'Yöntemler:\n• Palpasyon: yalnızca sistolik ölçer\n• Doppler: sistolik ölçer (eklemelerle diyastolik ölçüm mümkün)\n• Oskültasyon: Korotkoff sesleri; Faz I → Sistolik, Faz V → Diyastolik\n• Osilometri: direkt ABP\'den ~10 mmHg yüksek ölçer; sistolik ve ortalama ABP ölçümü\n• Arteriyel tonometre: kemikli arter üzerinden ölçüm; sık kalibrasyon gerekir\n\nManşon boyutu: kol çevresinin %40, uzunluğu ekstremitenin %80\'i.',
          ),
          CardiovascularMonitoringItem(
            title: 'İnvazif (IBP)',
            description: 'Endikasyon: sıkı hemodinamik takip gerektiren durumlar.',
            subtitle: 'Damar seçimi: Radial > Brakial > Femoral > Ulnar/Dorsalis pedis/Aksiller',
            additionalInfo: 'Komplikasyonlar: hematom, kanama, vazospazm, tromboz, psödoanevrizma, nekroz, sinir hasarı, enfeksiyon.\n\nDalga şekli: Fourier teorisi, 16–24 Hz ideal.\n\nKalp seviyesi: orta aksiller hat; beyin perfüzyonu için dış kulak yolu.',
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Elektrokardiyografi (EKG)',
        items: [
          CardiovascularMonitoringItem(
            title: 'Tüm Hastalarda Zorunlu',
            description: 'Tüm hastalarda intraoperatif EKG takibi zorunlu.',
          ),
          CardiovascularMonitoringItem(
            title: 'Dalga ve Kompleksler',
            description: 'P → atriyum sistolü\nQRS → ventrikül sistolü\nT → repolarizasyon',
          ),
          CardiovascularMonitoringItem(
            title: 'Derivasyonlar',
            description: 'DII: atriyal aktivite, aritmiler, inferior duvar iskemisi\nV5: anterior/lateral duvar iskemisi',
            subtitle: 'İskemik değişiklik: ST segment depresyonu ≥1 mm, J noktasından 80 ms sonra T dalgası ters',
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Santral Venöz Kateter (CVK)',
        items: [
          CardiovascularMonitoringItem(
            title: 'Endikasyon',
            description: 'CVP monitörizasyonu, sıvı resüstasyonu, kostik ilaç, TPN, hava embolisi aspirasyonu.',
          ),
          CardiovascularMonitoringItem(
            title: 'Kateter Yerleşimi',
            description: 'Internal juguler (kısa süre), subklaviyen (uzun süreli)',
          ),
          CardiovascularMonitoringItem(
            title: 'Komplikasyonlar',
            description: 'Enfeksiyon, hava/tromboemboli, aritmiler, hematom, pnömo/hemo/şilotoraks, kardiyak perforasyon.',
          ),
          CardiovascularMonitoringItem(
            title: 'CVP Dalgaları',
            description: 'a → atriyum kontraksiyonu\nc → triküspit kapak yükselmesi\nx → atrium depresyonu\nv → atrium doluşu\ny → triküspit açılması',
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Pulmoner Arter Kateter (Swan-Ganz)',
        items: [
          CardiovascularMonitoringItem(
            title: 'Ölçüm',
            description: 'CO, PA oklüzyon basıncı (PCWP)',
            subtitle: 'Zon III yerleşim ideal, PEEP>10 cmH₂O → ölçüm +1–2 mmHg',
          ),
          CardiovascularMonitoringItem(
            title: 'Komplikasyonlar',
            description: 'CVP komplikasyonlarına ek olarak kapak yaralanması, PA yaralanması',
          ),
          CardiovascularMonitoringItem(
            title: 'PAOB Değerlendirmesi',
            description: 'PAOB düşük → hipovolemi, yüksek → dolu, inotropik ihtiyacı',
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Kalp Debisi (CO)',
        items: [
          CardiovascularMonitoringItem(
            title: 'Termodilüsyon',
            description: 'Soğuk sıvı sağ atriyuma enjekte, termistörden CO ölçümü',
          ),
          CardiovascularMonitoringItem(
            title: 'Transpulmoner Termodilüsyon (PiCCO)',
            description: 'PA kateter gerektirmez, global diyastolik hacim ve ekstravasküler akciğer suyu ölçer',
          ),
          CardiovascularMonitoringItem(
            title: 'Boya Dilüsyonu',
            description: 'Indosiyanin yeşili veya Li sistemi ile CO ölçümü',
          ),
          CardiovascularMonitoringItem(
            title: 'Nabız Kontur Cihazları',
            description: 'CO, SVV, PPV değerlendirme (arteriyel yol gerekli)',
          ),
          CardiovascularMonitoringItem(
            title: 'Özofageal Doppler',
            description: 'İnen aort akım hızı → CO ≈ %70',
          ),
          CardiovascularMonitoringItem(
            title: 'Torasik Biyoempedans',
            description: 'Torasik hacim değişikliklerinden CO hesaplama',
          ),
          CardiovascularMonitoringItem(
            title: 'Fick Prensibi',
            description: 'CO = VO₂ / (CaO₂ – CvO₂), SvO₂ ≈ %75',
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Ekokardiyografi (EKO)',
        items: [
          CardiovascularMonitoringItem(
            title: 'TTE',
            description: 'Noninvaziv, risksiz',
          ),
          CardiovascularMonitoringItem(
            title: 'TEE',
            description: 'Pencere problemi yok, komplikasyon: ösofagus rüptürü, mediastinit',
          ),
          CardiovascularMonitoringItem(
            title: 'Sol Ventrikül Preload',
            description: 'Sol ventrikül preload ölçümü en doğru TEE ile',
          ),
        ],
      ),
    ];
  }
}
