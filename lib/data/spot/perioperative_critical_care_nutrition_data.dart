import 'package:flutter/material.dart';

class PerioperativeCriticalCareNutritionItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PerioperativeCriticalCareNutritionItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PerioperativeCriticalCareNutritionCategory {
  final String categoryName;
  final List<PerioperativeCriticalCareNutritionItem> items;

  PerioperativeCriticalCareNutritionCategory({
    required this.categoryName,
    required this.items,
  });
}

class PerioperativeCriticalCareNutritionData {
  static List<PerioperativeCriticalCareNutritionCategory> getPerioperativeCriticalCareNutritionData(BuildContext context) {
    return [
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Beslenme Riskinin Saptanması',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Neden Önemli?',
            description: 'Malnütrisyon → yara iyileşmesi gecikmesi, enfeksiyon ↑, ventilatör günleri ↑, yatış süresi ve mortalite ↑',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Tarama',
            description: 'İlk 24–48 sa: NRS-2002, MUST; ICU\'da NUTRIC/NRS',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Klinik İpuçları',
            description: '>10%/6 ay kilo kaybı, BMI <18.5, kas kitlesi/ödem',
            subtitle: 'Düşük alım (>5 gün), katabolik durum (sepsis/yanık/çoğul travma)',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Laboratuvar',
            description: 'Albümin/prealbümin akut fazdan etkilenir; trend izlemek için yardımcı, tanıda tek başına güvenilmez',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Kalori Ölçümü',
            description: 'Dolaylı kalorimetri (altın standart); yoksa öngörü formülleri',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Enerji ve Protein Gereksinimi',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Genel ICU Enerji',
            description: '~25 kcal/kg/gün (stabil hastada 20–25, hiperkatabollerde 25–30)',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Protein',
            description: '1.2–2.0 g/kg/gün (cerrahi/ICU); büyük yanık/şiddetli travma >2.0 g/kg',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Obez',
            description: 'Hipokalorik-yüksek protein',
            subtitle: 'Enerji: 11–14 kcal/kg ACTUAL (BMI 30–50) | 22–25 kcal/kg IBW (BMI >50)',
            additionalInfo: 'Protein: 2.0 g/kg IBW (BMI 30–40), 2.5 g/kg IBW (BMI >40)',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Özel Durumlar',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Yanık',
            description: 'Enerji ↑ (40–60 kcal/kg) + protein 2–3 g/kg',
            subtitle: 'C, A, çinko takviyesi',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Sepsis/ARDS',
            description: 'Erken aşırı kalori verme → CO₂ yükü/hiperglisemi',
            subtitle: 'Normokalorik, yüksek protein',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Böbrek',
            description: 'RRT yoksa 0.8–1.2 g/kg; RRT varsa 1.5–2.5 g/kg',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Karaciğer',
            description: 'Ensefalopatide protein kısıtlama KALICI değil; 1.0–1.5 g/kg',
            subtitle: 'BCAA içeren formüller seçilebilir',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'KOAH/Hiperkapni',
            description: 'Aşırı karbonhidrat → VCO₂ ↑',
            subtitle: 'Dengeli/miktarı sınırlı KH',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Zamanlama ve Yol: Enteral (EN) vs Parenteral (PN)',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'İlk Tercih',
            description: 'EN (bağırsak çalışıyorsa) → 24–48 saat içinde başla',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'EN Kontrendikasyonları',
            description: 'Bağırsak iskemisi/instabil hemodinami, yüksek çıktı obstrüksiyon',
            subtitle: 'Kontrolsüz şok, ağır GİS kanama, perforasyon',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'PN Endikasyonları',
            description: 'Başarısız/güvencesiz EN veya yüksek malnütrisyon riski',
            subtitle: 'Düşük riskli ve kısa süreli beslenemeyecek hastada ilk 7 güne kadar PN verme',
            additionalInfo: 'Ağır malnütrisyon veya EN imkânsızsa erken PN (≤3–5 gün) düşünülebilir',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Enteral Beslenme Pratikleri',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Başlangıç ve İlerleme',
            description: 'Trofik (10–20 mL/s) → tolere ettikçe arttır',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Aspirasyonu Azalt',
            description: 'Baş-uç 30–45°, post-pilorik sonda düşün, oral bakım',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Gastrik Rezidü',
            description: 'Tek başına kesici değil; >500 mL + klinik intolerans varsa değerlendir',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Prokinetik',
            description: 'Metoklopramid/eritromisin (gecikmiş boşalma)',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Formül Seçimi',
            description: 'Yüksek protein; renal/hepatik/akciğer formülleri hasta durumuna göre',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'İmmünonütrisyon',
            description: 'Cerrahi (GIS/baş-boyun): arginin/ω-3/nükleotid faydalı',
            subtitle: 'Ağır sepsis/ICU general: arginin/glutamin rutin önerilmez (seçici kullanım)',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Parenteral Beslenme Temelleri',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Bileşenler',
            description: 'Dekstroz (enerji), aminoasit (protein), lipid emülsiyonu (enerji/EFAD önleme)',
            subtitle: 'Elektrolit/iz element/vitamin',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Lipid',
            description: '0.7–1.0 g/kg/gün; karaciğer yetmezliği/kolestazda sınırlanır',
            subtitle: 'Balık yağı içerenler kolestatik yükü azaltabilir',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Komplikasyonlar',
            description: 'Kateter enfeksiyonu, hiperglisemi, PN ilişkili karaciğer disfonksiyonu',
            subtitle: 'Steatoz/kolestaz, hiperTG, elektrolit bozuklukları, refeeding',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'İzlem',
            description: 'Günlük glisemi/elektrolit; haftalık TG, karaciğer testleri',
            subtitle: 'Sıvı dengesi',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Propofol Kalorisi',
            description: '1.1 kcal/mL (lipid yükünü hesaba kat)',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Glisemik Kontrol',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Hedef',
            description: '140–180 mg/dL çoğu ICU/periop hastada',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Aşırı Sıkı Kontrol',
            description: '80–110 hipoglisemi riski ↑ → önerilmez',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'İnsülin Protokolleri',
            description: 'EN/PN alanlarda düzenli insulin protokolleri',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Refeeding Sendromu (RFS)',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Risk Faktörleri',
            description: 'Uzun açlık, alkolizm, kanser, >10% kilo kaybı',
            subtitle: 'Çok düşük BMI, diüretik/insülin kullanımı',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Patofizyoloji',
            description: 'İnsülin ↑ → P, K, Mg hücre içine',
            subtitle: 'Ağır hipofosfatemi, aritmi, kalp yetmezliği, solunum kas zayıflığı',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Önleme/Tedavi',
            description: 'Beslenmeye düşükten başla: ~10 kcal/kg/gün (ağır riskte 5–10), 3–5 günde hedefe',
            subtitle: 'Tiamin 100–200 mg (beslenmeden önce ve 3–5 gün), P-K-Mg agresif replasman',
            additionalInfo: 'Sık laboratuvar izlemi; Sıvı/sodyumu kontrollü ver',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Nitrojen Dengesi ve İzlem',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Nitrojen Dengesi',
            description: 'Alınan (protein/6.25) − UUN + 4 (diğer kayıplar)',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Negatif Denge',
            description: 'Protein/kalori artır, katabolik nedenleri tedavi et',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Değerlendirme',
            description: 'Antropometri (el kavrama gücü, kas çevresi), fonksiyonel ölçümler',
            subtitle: 'Tüketim/atım verileriyle birlikte değerlendir',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Özel Klinik Senaryolar',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Pankreatit',
            description: 'Erken EN (jejunal/NG tolere ise) mortalite/enfeksiyon ↓',
            subtitle: 'PN kaçınılır',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Kısa Barsak/Enterokütan Fistül',
            description: 'Distal debi/absorpsiyon uygunsa EN; aksi halde PN',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Postop ERAS',
            description: 'Karbonhidrat yüklemesi (gastroparezi/ileri DM yoksa), erken oral/EN',
            subtitle: 'Gereksiz açlık/NG\'den kaçın',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Karaciğer Nakli/Yetm.',
            description: 'Hipoglisemi riski; protein kesilmez',
            subtitle: 'BCAA formülleri düşünülebilir',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Onkoloji',
            description: 'Sarkopenik obeziteyi araştır; tedavide yüksek protein esastır',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Elektrolit ve Mikrobesinler',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Fosfor',
            description: 'Ventilasyon kas gücü için kritik; ICU\'da sık düşer',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Magnezyum',
            description: 'Aritmi/hipokalsemi ile ilişkili; RFS\'de agresif replasman',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'İz Elementler',
            description: 'Çinko, selenyum, bakır, mangan: uzun süreli PN\'de iz element ekle',
            subtitle: 'Kolestaz varsa mangan/bakır yüküne dikkat',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Vitaminler',
            description: 'Günlük PN multivitamin; RFS/alkolizmde tiamin şart',
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Güvenlik/Püf Noktalar',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: 'Genel Prensipler',
            description: 'Bağırsak çalışıyorsa EN > PN',
            subtitle: 'EN\'i 24–48 sa içinde başlat; trofik doz da faydalı',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Kalori Hedefi',
            description: 'Hiperkalori → CO₂ üretimi/yağlanma/hiperglisemi ↑',
            subtitle: 'Eukalorik hedef tuttur',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Aspirasyon Önleme',
            description: 'Baş-uç 30–45°; aspirasyon ve VAP\'i azalt',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'PN Güvenliği',
            description: 'Damar yolu ve asepsi PN\'de hayatidir; kateter sepsisi düşün',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'İmmünonütrisyon',
            description: 'Majör elektif cerrahide faydalı; sepsiste rutin değil',
          ),
          PerioperativeCriticalCareNutritionItem(
            title: 'Glutamin',
            description: 'Cerrahi hastada seçici; multiorgan yetmezlik/şiddetli sepsiste rutin önerilmez',
          ),
        ],
      ),
    ];
  }
}
