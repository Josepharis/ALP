import 'package:flutter/material.dart';

class NeurophysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeurophysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeurophysiologyAnesthesiaCategory {
  final String categoryName;
  final List<NeurophysiologyAnesthesiaItem> items;

  NeurophysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeurophysiologyAnesthesiaData {
  static List<NeurophysiologyAnesthesiaCategory> getNeurophysiologyAnesthesiaData(BuildContext context) {
    return [
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Beyin Metabolizması',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Beyin O₂ Tüketimi',
            description: 'Vücut toplam O₂\'nin %20\'si',
            subtitle: 'CMRO₂: 3–3,8 mL/100 g/dk (erişkin) → %60\'ı elektriksel aktivite için',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Kritik PaO₂ Değerleri',
            description: 'PaO₂ < 30 mmHg → 10 sn\'de bilinç kaybı, 3–8 dk\'da kalıcı hasar',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Glukoz Tüketimi',
            description: '5 mg/100 g/dk',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Serebral Kan Akımı (SKA)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Normal SKA',
            description: '50 mL/100 g/dk (~750 mL/dk)',
            subtitle: 'Gri cevher: 80 mL/100 g/dk, beyaz cevher: 20 mL/100 g/dk',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Kritik Eşikler',
            description: '< 20–25 mL: EEG yavaşlama',
            subtitle: '15–20 mL: EEG düzleşir',
            additionalInfo: '< 10 mL: geri dönüşsüz hasar',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'TCD İzlemi',
            description: 'Orta serebral arter akımı normal 55 cm/sn; >120 cm/sn → vazospazm/kanama',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Beyin Dokusu Oksimetrisi',
            description: 'Normal 20–50 mmHg, <20 mmHg müdahale, <10 mmHg iskemi',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Mikrodiyaliz',
            description: 'Laktat/piruvat ↑ → iskemi',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Serebral Perfüzyon Basıncı (SPB)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'SPB Formülü',
            description: 'SPB = OAB – KİB',
            subtitle: 'KİB normal: <10 mmHg',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'SPB Kritik Değerleri',
            description: 'SPB < 50 mmHg → EEG yavaşlama',
            subtitle: 'SPB 25–40 mmHg → EEG düzleşir',
            additionalInfo: 'SPB < 25 mmHg → kalıcı hasar',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Otoregülasyon',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Normal Sınır',
            description: 'OAB 60–160 mmHg',
            subtitle: 'Hipertansiyon → sınır yukarı kayar',
            additionalInfo: 'Mekanizmalar: miyojenik, metabolik',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'PaCO₂ Etkisi',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'PaCO₂ Aralığı',
            description: '20–80 mmHg aralığında SKA, PaCO₂ ile doğru orantılı',
            subtitle: 'Her 1 mmHg PaCO₂ değişimi → SKA 1–2 mL/100 g/dk değişir',
            additionalInfo: 'Etki 24–48 saatte BOS HCO₃ uyumu ile azalır',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'PaO₂ ve Isı Etkisi',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'PaO₂ Etkisi',
            description: 'PaO₂ < 50 mmHg → SKA artar',
            subtitle: 'Hiperoksi → SKA %10 azalır',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Isı Etkisi',
            description: '1°C değişim → SKA %5–7 değişir',
            subtitle: '10°C düşüş → CMRO₂ %50 azalır',
            additionalInfo: '20°C → EEG izoelektrik',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Viskozite',
            description: 'Temel belirleyici: hematokrit',
            subtitle: 'Optimal O₂ sunumu için Hct ~%30',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Kan–Beyin Bariyeri',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Geçiş Kuralları',
            description: 'Yağda çözünen moleküller geçer, iyonize/büyükler geçemez',
            subtitle: 'Su geçer → elektrolit dengesizliklerinde osmotik fark',
            additionalInfo: 'KBB bozulursa → sıvı geçişi hidrostatik basınç farkıyla olur',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Beyin Omurilik Sıvısı (BOS)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'BOS Üretim ve Hacim',
            description: 'Üretim: 500 mL/gün (21 mL/saat)',
            subtitle: 'Hacim: 150 mL',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'BOS Yolu',
            description: 'Koroid pleksus → Lateral ventrikül → Foramen Monro → 3. Ventrikül → Akuaduktus Sylvii → 4. Ventrikül → For. Magendie/Luschka → Sisterna Magna',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'BOS Üretimini Azaltanlar',
            description: 'Asetazolamid, steroid, spironolakton, furosemid, izofluran, vazokonstriktörler',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'BOS Özellikleri',
            description: 'İzotoniktir (Na sekresyonu ile oluşur)',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Kafa İçi Basıncı (KİB)',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'KİB Normal Değer',
            description: 'Normal: <10 mmHg',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'KİB İçeriği',
            description: '%80 beyin, %12 kan, %8 BOS',
            subtitle: 'Artış → elastans sınırlı → herniasyon risk',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Volatil Ajanların Etkileri',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'CMRO₂ Etkisi',
            description: 'CMRO₂ ↓ (en fazla izofluran, en az halotan)',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'SKA Etkisi',
            description: 'SKA ↑ (Halotan %200, izofluran %20, sevofluran en az)',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Otoregülasyon',
            description: 'Otoregülasyon bozulur (Halotan en güçlü)',
            subtitle: 'Lüks perfüzyon (CMRO₂ ↓ + SKA ↑)',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'BOS Etkisi',
            description: 'İzofluran (emilim ↑), Halotan (oluşum/emilim ↓), Desfluran (oluşum ↑, emilim ↓)',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'N₂O ve İV Ajanların Etkileri',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'N₂O',
            description: 'CMRO₂, SKA, KİB etkisi minimal',
            subtitle: 'Tek başına → VD + KİB ↑',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Barbitürat',
            description: 'CMRO₂ ↓, SKA ↓, BOS emilimi ↑, Robin Hood fenomeni',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Opioid',
            description: 'Etki minimal (PaCO₂ yükselmezse), hipotansiyon → SPB ↓',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Etomidat',
            description: 'CMRO₂ ↓, BOS üretimi ↓, epileptik odak olabilir',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Propofol',
            description: 'CMRO₂ ↓, SKA ↓, KİB ↓ (nöroanestezi için ideal)',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Benzodiazepin',
            description: 'Etki hafif, instabil hastada SPB ↓ olabilir',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Ketamin',
            description: 'SKA ↑ %50–60, CMR değişmez, BOS emilimi ↓, NMDA blokajı → nöroprotektif',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Lidokain',
            description: 'Hafif CMRO₂, SKA, KİB ↓, nöroprotektif',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Vazopressörler ve Vazodilatörler',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Vazopressörler',
            description: 'Otoregülasyon korunmuşsa SKA değişmez',
            subtitle: 'β1 agonistler → CMR/SKA ↑ (KBB bozulursa)',
            additionalInfo: 'α2 agonistler → serebral vazokonstriksiyon',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Vazodilatörler',
            description: 'SKA ↑, KİB ↑',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'NMB Ajanlar',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Genel Etki',
            description: 'Direkt etki yok',
            subtitle: 'Histamin → KİB ↑',
            additionalInfo: 'Süksinilkolin fasikülasyon → SKA ↑ (önlenebilir)',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'Beyin Koruması',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Hipotermi',
            description: 'En etkili yöntem; 10°C ↓ → CMRO₂ %50 ↓',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Anestezik Ajanlar',
            description: 'Barbitürat, propofol, etomidat, izofluran elektriksel sessizlik yapar',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Ketamin',
            description: 'NMDA blokajı → nöroprotektif',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Nimodipin',
            description: 'SAK vazospazm tedavisi',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Genel Önlemler',
            description: 'SPB\'yi normal/↑ tut',
            subtitle: 'Venöz basınç/KİB artışından kaçın',
            additionalInfo: 'Glisemi <180 mg/dL, Normokarbi',
          ),
        ],
      ),
      NeurophysiologyAnesthesiaCategory(
        categoryName: 'EEG & Uyarılmış Potansiyeller',
        items: [
          NeurophysiologyAnesthesiaItem(
            title: 'Anestezik EEG Etkileri',
            description: 'Çoğu anestezik: Doz ↑ → önce aktivasyon, sonra depresyon',
            subtitle: 'İzofluran → izoelektrik EEG',
            additionalInfo: 'Sevo/Des → burst-supresyon',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Opioid ve Ketamin EEG',
            description: 'Opioid → doz bağımlı depresyon',
            subtitle: 'Ketamin → yüksek amplitüdlü teta/gama → düşük beta',
          ),
          NeurophysiologyAnesthesiaItem(
            title: 'Uyarılmış Potansiyeller',
            description: 'Kısa latens → beyin sapı/sinir',
            subtitle: 'Orta–uzun latens → korteks',
          ),
        ],
      ),
    ];
  }
}
