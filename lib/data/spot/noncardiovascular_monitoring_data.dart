import 'package:flutter/material.dart';

class NoncardiovascularMonitoringItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NoncardiovascularMonitoringItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NoncardiovascularMonitoringCategory {
  final String categoryName;
  final List<NoncardiovascularMonitoringItem> items;

  NoncardiovascularMonitoringCategory({
    required this.categoryName,
    required this.items,
  });
}

class NoncardiovascularMonitoringData {
  static List<NoncardiovascularMonitoringCategory> getNoncardiovascularMonitoringData(BuildContext context) {
    return [
      NoncardiovascularMonitoringCategory(
        categoryName: 'Solunum Gaz Değişim Monitörleri',
        items: [
          NoncardiovascularMonitoringItem(
            title: 'Prekordiyal ve Özofageal Stetoskop',
            description: 'Endikasyon: Gaz monitörü yoksa; ETCO2 ile entübasyon takibi.',
            subtitle: 'Kontrendikasyon: Özofagus darlık, varis.',
            additionalInfo: 'Teknik:\n• Prekordiyal: Göğüs veya suprasternal çentik üzerine\n• Özofageal: Balonlu plastik kateter (8-24F)\n\nKlinik: Solunum sesi, kalp ritmi değerlendirilir.',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Pulse Oksimetre',
            description: 'Her anestezi hastasına uygulanmalı.',
            subtitle: 'Teknik: Işık kaynağı + sensör + dedektör; Lambert-Beer kanunu.',
            additionalInfo: 'Dalga boyları: OksiHb 940 nm, DeoksiHb 660 nm.\n\nYanlış ölçüm: COHb, MetHb, düşük PaO2, hareket, düşük perfüzyon, optik şant, metilen mavisi vb.\n\nNormal: SpO2 ~%90 → PaO2 65 mmHg\n\nSvo2, bulbus jugularis ve NIRS ile serebral oksijen ölçümü. Normal rSO2: %70',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Kapnografi',
            description: 'Endikasyon: Genel anestezi. Kontrendikasyon yok.',
            subtitle: 'Teknik: CO₂\'in IR ışığı absorpsiyonu.',
            additionalInfo: 'Nondiverting: Solunum devresinden ölçer.\nDiverting: Sistemden aspirasyon.\n\nKlinik: Malign hipertermi → ETCO2 artar. Alveolar ölü boşluğu: PaCO2-ETCO2 = 2-5 mmHg\n\nBasınç-zaman kapnografi: Faz I-IV; Volüm-zaman: alveolar ölü boşluk, PEEP optimizasyonu.',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Anestezik Gaz Analizleri',
            description: 'Teknikler: Kızılötesi spektrofotometri, piezoelektrik osilasyon, galvanik hücre, paramanyetik analiz.',
            subtitle: 'Oksijen, nitrojen IR ışınlarını absorbe etmez.',
            additionalInfo: 'Piezoelektrik: Anestezik ayrımı yapamaz.\nGalvanik: Oksijen tüketir; inspiratuar kola konur.\nParamanyetik: Oksijen paramagnetik; genişleme ölçülür.',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Spirometri',
            description: 'Akım-hacim-basınç ölçümü ile solunum fonksiyonu değerlendirilir.',
          ),
        ],
      ),
      NoncardiovascularMonitoringCategory(
        categoryName: 'Nörolojik Monitörler',
        items: [
          NoncardiovascularMonitoringItem(
            title: 'EEG',
            description: 'Endikasyon: Serebral oksijenasyon ve aktivite takibi.',
            subtitle: 'Teknik: 1-30 Hz elektriksel potansiyel kaydı.',
            additionalInfo: 'Dalga tipleri:\n• α: 8-13 Hz, istirahat\n• β: 13-30 Hz, konsantrasyon/anestezi altında\n• δ: 0,5-4 Hz, derin uyku/anestezi\n• θ: 4-7 Hz, uyku/anestezi\n\nBIS: 40-65 → genel anestezi, 65-85 → sedasyon\nEntropi: SE (EEG), RE (EMG)',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Uyarılmış Potansiyeller (EP)',
            description: 'SEP: Duyu uyarısı → korteks potansiyeli\nMEP: Korteks stim → kas potansiyeli',
            subtitle: 'Kontrendikasyon: MEP → metal kafatası defekti, implante cihaz, majör serebral lezyon',
            additionalInfo: 'Anestezik etkiler:\n• Volatil ajanlar → amplitüd ↓, latens ↑\n• Barbitüratlar → amplitüd ↓, latens ↑\n• Propofol → amplitüd ↓, latens ↑\n• Ketamin → amplitüd ↑ veya değişmez\n• Opioid → hafif amplitüd ↓\n• NMB → EP üzerine anlamlı etkisi yok',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Serebral Oksimetri (NIRS)',
            description: 'Venöz Hb absorbsiyonu üzerine yoğunlaşır, pulsatil komponent yok.',
            subtitle: '<%40 rSO2 veya bazal %25 değişim → nörolojik hasar riski',
            additionalInfo: 'Juguler venöz oksijen → serebral O2 tahmini\nO2 doku basıncı <20 mmHg → SPB 60 mmHg↑, İKB 20 mmHg↓',
          ),
        ],
      ),
      NoncardiovascularMonitoringCategory(
        categoryName: 'Diğer Monitörler',
        items: [
          NoncardiovascularMonitoringItem(
            title: 'Isı',
            description: 'Faz I: Redistrübisyon (santral → periferik)\nFaz II: Lineer ısı kaybı > metabolik üretim\nFaz III: Denge (ısı kaybı = metabolik üretim)',
            subtitle: 'Ölçüm: Termistör/termokupl; timpani, rektum, nazofarenks, özofagus, mesane, deri',
          ),
          NoncardiovascularMonitoringItem(
            title: 'İdrar Debisi',
            description: 'Endikasyon: Böbrek perfüzyonu, sıvı durumu',
            subtitle: '<0,5 mL/kg/sa → oligüri',
            additionalInfo: 'Teknik: Foley kateter; komplikasyon: İYE, üretra travması',
          ),
          NoncardiovascularMonitoringItem(
            title: 'Periferik Sinir Stimülasyonu',
            description: 'Endikasyon: NMB izleme',
            subtitle: 'Teknik: 60-80 mA, addüktör pollicis/ulnar veya orbikularis oculi',
            additionalInfo: 'TOF: 2 s\'de 4 uyarı, nondepolarizan blokta yanıtlar progresif olarak azalır\n4. Twitch %75 → blok %75-95\nDBS: TOF\'dan daha duyarlı\nKlinik geri dönüş: >0,7 TOF → yeterli kas fonksiyonu',
          ),
        ],
      ),
    ];
  }
}
