import 'package:flutter/material.dart';

class LocalAnestheticsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  LocalAnestheticsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class LocalAnestheticsCategory {
  final String categoryName;
  final List<LocalAnestheticsItem> items;

  LocalAnestheticsCategory({
    required this.categoryName,
    required this.items,
  });
}

class LocalAnestheticsData {
  static List<LocalAnestheticsCategory> getLocalAnestheticsData(BuildContext context) {
    return [
      LocalAnestheticsCategory(
        categoryName: 'Etki Mekanizması',
        items: [
          LocalAnestheticsItem(
            title: 'Membran Potansiyeli',
            description: 'İstirahat membran potansiyeli: –70 mV (Na-K ATPaz ile korunur).',
            subtitle: 'Uyarı → Voltaj bağımlı Na⁺ kanalı açılır → +35 mV.',
            additionalInfo: 'LA\'ler Na⁺ kanalının α alt ünitesine bağlanır → depolarizasyonu engeller.\nAçık & inaktif kanala afiniteleri yüksek (use-dependent block).',
          ),
          LocalAnestheticsItem(
            title: 'LA Etkisi',
            description: 'Küçük çaplı',
            subtitle: 'Miyelinli',
            additionalInfo: 'Yavaş ileten sinirlerde daha belirgin.',
          ),
          LocalAnestheticsItem(
            title: 'Diğer Na Kanal Blokerleri',
            description: 'TCA, meperidin, volatil anestezikler, KKB, ketamin.',
            subtitle: 'Tetradotoksin → Na kanalına merkez dışından bağlanır.',
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Yapı – Aktivite İlişkisi',
        items: [
          LocalAnestheticsItem(
            title: 'Yapı',
            description: 'Lipofilik grup + Ester/Amid.',
            subtitle: 'Artikain: benzen yerine tiyofen halkası içerir.',
            additionalInfo: 'LA = zayıf baz (fizyolojik pH\'da kısmen iyonize).',
          ),
          LocalAnestheticsItem(
            title: 'Potens ve Etki Başlangıcı',
            description: 'Potens ~ lipofiliklik (oktanol çözünürlüğü).',
            subtitle: 'Etki başlangıcı ~ pKa',
            additionalInfo: 'pKa ↑ → daha geç başlar.\nİstisna: Kloroprokain (yüksek pKa ama en hızlı).\nBenzokain: yüklü formu yok.',
          ),
          LocalAnestheticsItem(
            title: 'pH ve Alkalinizasyon',
            description: 'Ticari solüsyon pH: 6–7 (epinefrinli 4–5).',
            subtitle: 'Alkalinizasyon: 10 mL LA + 1 mL %8.4 NaHCO₃ → etki başlangıcı hızlanır.',
          ),
          LocalAnestheticsItem(
            title: 'Çözünürlük ve Bağlanma',
            description: 'Yağda çözünürlüğü yüksek → etki süresi uzun.',
            subtitle: 'Bağlanma: α1-asit glikoproteine.',
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Klinik Farmakoloji',
        items: [
          LocalAnestheticsItem(
            title: 'Emilim',
            description: 'Sıra: IV > Trakeal > İnterkostal > Paraservikal > Epidural > Siyatik > SC.',
            subtitle: 'Epinefrin/fenilefrin eklenmesi → kısa etkili ajanların süresini belirgin uzatır.',
            additionalInfo: 'EMLA (%5 lidokain + %5 prilokain): 1–2 sa, 3–5 mm penetrasyon.',
          ),
          LocalAnestheticsItem(
            title: 'Dağılım',
            description: 'α fazı: iyi perfüze dokular (beyin, kalp).',
            subtitle: 'β fazı: az kanlanan dokular.',
            additionalInfo: 'Akciğerler önemli miktarda LA tutar.\nKas → büyük miktarda LA depolar.',
          ),
          LocalAnestheticsItem(
            title: 'Metabolizma',
            description: 'Esterler: plazma psödokolinesteraz ile, metabolit = PABA (allerji).',
            subtitle: 'Amidler: KC\'de CYP450 ile (hız: Prilokain > Lidokain > Mepivakain > Ropivakain > Bupivakain).',
            additionalInfo: 'Prilokain >10 mg/kg → o-toluidin → metHb.\nMetHb tedavisi: %1 metilen mavisi 1–2 mg/kg, 5 dk.',
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Organ Sistemleri Üzerine Etki',
        items: [
          LocalAnestheticsItem(
            title: 'Nörolojik Etkiler',
            description: 'Erken toksisite: ağız çevresi uyuşma, dil parezi, tinnitus, görme bulanıklığı.',
            subtitle: 'Ağır: Ajitasyon, nöbet.',
            additionalInfo: 'BDZ + hiperventilasyon → nöbet eşiğini ↑.\nLidokain 1,5 mg/kg → entübasyona bağlı KİB artışını azaltır.\nMAK\'ı %40 ↓.\nNörotoksisite sırası: Lidokain = Tetrakain > Bupivakain > Ropivakain.\nSürekli intratekal %5 lidokain → KES (cauda equina sendromu).',
          ),
          LocalAnestheticsItem(
            title: 'Solunum Etkileri',
            description: 'Lidokain → hipoksik drive ↓.',
            subtitle: 'Bronkodilatör, fakat astımlı hastada inhaler form → bronkospazm yapabilir.',
          ),
          LocalAnestheticsItem(
            title: 'Kardiyovasküler Etkiler',
            description: 'Faz IV baskılanır → otomatisite ↓.',
            subtitle: 'Düşük dozda: NO sentaz inhibisyonu → vazokonstriksiyon.',
            additionalInfo: 'Yüksek dozda: aritmi, AV blok, hipotansiyon.\nKardiyotoksisite sırası: Bupivakain > Ropivakain > Lidokain.\nRopivakain: saf S-izomer, en güvenli.\nLevobupivakain: bupivakaine eşdeğer ama daha güvenli.\nKokain: NE geri alımını bloke eder → HT, aritmi.',
          ),
          LocalAnestheticsItem(
            title: 'Diğer Sistemler',
            description: 'İmmünolojik: Esterler → PABA, Amid → Metilproben',
            subtitle: 'Kas-İskelet: Miyotoksik.',
            additionalInfo: 'Hematolojik: Koagülasyonu baskılar, fibrinoliz ↑ (TEG\'de).',
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Özet Spotlar',
        items: [
          LocalAnestheticsItem(
            title: 'ÖZET SPOT',
            description: 'Bupivakain = en kardiyotoksik.',
            subtitle: 'Ropivakain = en güvenli (S-izomer).',
            additionalInfo: 'Kloroprokain = en hızlı etki.\nBenzokain & Prilokain → metHb.\nEpinefrin → emilimi ↓, etki süresi ↑.\nToksisite erken bulgu = ağız çevresi uyuşma.\nİntratekal lidokain yüksek konsantrasyon → KES.',
          ),
        ],
      ),
    ];
  }
}
