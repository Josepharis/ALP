import 'package:flutter/material.dart';

class RespiratoryPhysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RespiratoryPhysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RespiratoryPhysiologyAnesthesiaCategory {
  final String categoryName;
  final List<RespiratoryPhysiologyAnesthesiaItem> items;

  RespiratoryPhysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class RespiratoryPhysiologyAnesthesiaData {
  static List<RespiratoryPhysiologyAnesthesiaCategory> getRespiratoryPhysiologyAnesthesiaData(BuildContext context) {
    return [
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Fonksiyonel Respiratuvar Anatomi',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Göğüs Kafesi ve Solunum Kasları',
            description: 'Diyafram → göğüs hacim değişikliğinin %75\'inden sorumlu.',
            subtitle: 'Normal solunum: diyafram + interkostal kaslar (inspirasyon). Ekspirasyon pasif.',
            additionalInfo: 'Eforlu inspirasyon: SCM, skalen, pektoraller devrede.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Eforlu Solunum',
            description: 'Eforlu/ayakta ekspirasyon: abdominal + interkostal kaslar aktif.',
            subtitle: 'Faringeal kaslar: hava yolu açıklığını korur (özellikle uyku/apne ilişkisi).',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Trakeobronşial Ağaç',
            description: 'Trakea: 10–13 cm, krikoid alt kenar → karina.',
            subtitle: 'Çap: Erkek (2.3 × 1.8 cm, en dar 1.7), Kadın (2.0 × 1.4 cm, en dar 1.3).',
            additionalInfo: 'Karina: sternal açı hizası.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Bronş Anatomisi',
            description: 'Sağ bronş: erkek 2 cm, kadın 1.5 cm sonra üst lob bronşu ayrılır.',
            subtitle: 'Sol bronş: erkek 5 cm, kadın 4.5 cm sonra üst-alt lob bronşu ayrılır.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Bronşiyal Generasyonlar',
            description: 'Toplam 23 jenerasyon bölünme. Gaz değişimi 17–19. jenerasyon respiratuvar bronşiollerde.',
            subtitle: 'Küçük hava yolları → radial gerilime bağımlı.',
            additionalInfo: 'Büyük hava yolları → total akciğer hacmine bağımlı.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Alveoller',
            description: 'Çap: 0.05–0.33 mm.',
            subtitle: 'Tip I pnömosit → gaz değişimi (%90 yüzey).',
            additionalInfo: 'Tip II pnömosit → sürfaktan üretir, bölünebilir ve Tip I\'e dönüşebilir.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Pulmoner Dolaşım',
            description: 'Pulmoner dolaşım → metabolik ihtiyacı karşılar (bronşiollere kadar).',
            subtitle: 'Bronşial dolaşım → bronş duvarı + terminal bronşioller.',
            additionalInfo: 'Pulmoner kapiller → ~10 µm, tek eritrosit geçebilir.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Pulmoner Lenfatikler',
            description: 'Pulmoner lenfatik akım → 20 mL/saat.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'İnnervasyon',
            description: 'Diyafram: C3–C5 (frenik sinir).',
            subtitle: 'C5 üzeri hasar → spontan solunum imkansız.',
            additionalInfo: 'Vagus → duyusal + parasempatik (M reseptör, bronkokonstriksiyon).',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Sempatik İnnervasyon',
            description: 'Sempatik T1–T4 → bronkodilatasyon.',
            subtitle: 'Pulmoner damarlar: α1 (VC), β2 (VD), NO aracılı parasempatik VD.',
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Solunum Mekanizması',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Spontan Solunum',
            description: 'Ekspiryum sonu intraplevral basınç: –5 cmH₂O.',
            subtitle: 'İnspirasyon → intraplevral basınç: –9 cmH₂O, alveolar basınç: –3/–4 cmH₂O.',
            additionalInfo: 'Ptranspulmoner = Palv – Pplev.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Mekanik Ventilasyon',
            description: 'Pozitif basınç ile VT oluşturulur.',
            subtitle: 'Ekspirasyon → basınç kaldırılır → pasif çıkış.',
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Akciğer Mekanikleri',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Kompliyans',
            description: 'CL (akciğer) = 150–100 mL/cmH₂O',
            subtitle: 'CW (göğüs duvarı) = 200 mL/cmH₂O',
            additionalInfo: 'Ctotal ≈ 100 mL/cmH₂O',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Yüzey Gerilimi',
            description: 'Laplace: P = 2T / r',
            subtitle: 'Sürfaktan yüzey gerilimini azaltır → küçük alveoller kollapsa karşı korunur.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Akciğer Hacimleri',
            description: 'FRK → normal ekspirasyon sonu kalan hacim.',
            subtitle: 'Obezite ve GA (genel anestezi) → FRK\'yi düşürür.',
            additionalInfo: 'FRK: supinde 0.8–1 L azalır, GA indüksiyonunda 0.4–0.5 L azalır.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Kapanma Kapasitesi',
            description: 'Kapanma kapasitesi yaşla artar → 44 yaşta supinde, 66 yaşta ayakta FRK\'yi aşabilir.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Hava Yolu Direnci',
            description: 'Normal: 0.5–2 cmH₂O/L/sn',
            subtitle: 'En çok direnç: orta boy bronşlarda.',
            additionalInfo: 'Laminer akım: Re <1000. Türbülan akım: Re >1500.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Dinamik Hava Yolu Kollapsı',
            description: 'Zorlu ekspiryum → dinamik hava yolu kollapsı (dudak büzme mekanizması).',
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Ventilasyon – Perfüzyon',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'V/Q Oranı',
            description: 'Normal VA = 4 L/dk, Q = 5 L/dk → V/Q = 0.8',
            subtitle: 'Ölü boşluk: 2 mL/kg (~150 mL).',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'West Zonları',
            description: 'Zon 1: PA > Pa > Pv (ventilatörde artar).',
            subtitle: 'Zon 2: Pa > PA > Pv.',
            additionalInfo: 'Zon 3: Pa > Pv > PA (en iyi perfüzyon). Zon 4: interstisyel ödem/atelektazi.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Hipoksik Pulmoner Vazokonstriksiyon',
            description: 'Hipoksik pulmoner vazokonstriksiyon → alveoler hipoksiye yanıt.',
            subtitle: 'Volatil ajanlar → HPV inhibisyonu.',
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Gaz Basınçları',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Oksijen Basınçları',
            description: 'PAO₂ (oda havası, deniz seviyesi) ≈ 100 mmHg.',
            subtitle: 'PaO₂ normal = 60–100 mmHg.',
            additionalInfo: 'PaO₂ ≈ 120 – yaş/3.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'A–a Gradiyent',
            description: 'A–a gradiyent: <15 mmHg (yaşla ↑).',
            subtitle: 'PvO₂ ≈ 40 mmHg.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Karbondioksit Basınçları',
            description: 'PaCO₂ normal = 40 ± 4 mmHg.',
            subtitle: 'EtCO₂ ≈ PaCO₂ – 5 mmHg.',
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Oksijen Taşınması',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Hemoglobin Oksijen Taşıma',
            description: '1 g Hb → 1.39 mL O₂ taşır.',
            subtitle: 'Normal Hb sat → %97 → CaO₂ ≈ 19.5 mL/dL.',
            additionalInfo: 'O₂ ekstraksiyon fraksiyonu ≈ %25.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Oksijen Deposu',
            description: 'O₂ deposu (FRK içi) → 1500 mL.',
            subtitle: '%100 O₂ ile preoksijenasyon → 4–5 dk apne süresi.',
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Karbondioksit Taşınması',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'CO₂ Taşınma Yöntemleri',
            description: 'Çözünmüş + bikarbonat (ana) + karbamino bileşik.',
            subtitle: 'Haldane etkisi → Hb O₂\'den boşaldığında CO₂ taşıma kapasitesi artar.',
            additionalInfo: 'Normal VCO₂ ≈ 200 mL/dk.',
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Solunum Kontrolü',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Solunum Merkezleri',
            description: 'Medulla dorsal grup → inspirasyon.',
            subtitle: 'Ventral grup → ekspirasyon.',
            additionalInfo: 'Pontin merkezler → solunum paternini modüle eder.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Kemoreseptörler',
            description: 'Santral kemoreseptör: BOS pH/PCO₂ duyarlı.',
            subtitle: 'Periferik kemoreseptör: PaO₂ <50 mmHg olduğunda aktive olur.',
            additionalInfo: 'Karotid cisim: PaO₂\'ye en duyarlı.',
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Anestezinin Etkileri',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'FRK ve Kapanma Kapasitesi',
            description: 'FRK ↓, kapanma kapasitesi ↓ → şant riski ↑.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Volatil Ajanlar',
            description: 'Volatil ajanlar → bronkodilatasyon, HPV inhibisyonu.',
            subtitle: 'Yüksek FiO₂ → absorpsiyon atelektazisi.',
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: 'Solunum Paterni',
            description: 'Opioid + N₂O → yavaş ve derin solunum.',
            subtitle: 'Volatil → hızlı ve yüzeyel solunum.',
          ),
        ],
      ),
    ];
  }
}
