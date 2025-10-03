import 'package:flutter/material.dart';

class EndocrineDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  EndocrineDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class EndocrineDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<EndocrineDiseaseAnesthesiaItem> items;

  EndocrineDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class EndocrineDiseaseAnesthesiaData {
  static List<EndocrineDiseaseAnesthesiaCategory> getEndocrineDiseaseAnesthesiaData(BuildContext context) {
    return [
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Pankreas & Diyabet',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'Günlük İnsülin Salgısı',
            description: '≈ 50 U (Langerhans adacıkları)',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Tanı Kriterleri',
            description: 'Açlık glukoz >126 mg/dL veya HbA1c >6.5%',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'DKA',
            description: 'Tip 1 DM\'in ilk bulgusu olabilir',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'DKA Tedavisi',
            description: 'İnsülin 0.1 U/kg/saat; NaCl 1–2 L ilk saatte → ardından 200–500 mL/saat',
            subtitle: 'Glukoz <250 mg/dL → D5W başlanır',
            additionalInfo: 'Hedef düşüş: 75–100 mg/dL/sa veya %10/sa',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'K Düzeyi',
            description: 'Yakın takip edilmeli',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Hiperglisemi',
            description: '>360 mOsm/L → nöbet & mental değişiklik',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Hipoglisemi',
            description: '<50 mg/dL ciddi; terleme, taşikardi, sinirlilik katekolamin deşarjına bağlı',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Preop Değerlendirme',
            description: 'HbA1c yüksekliği periop komplikasyon riski',
            subtitle: 'Otonom nöropati → mide boşalması gecikebilir',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'İntraop Glisemik Kontrol',
            description: 'Glukoz <180 mg/dL tutulmalı',
            subtitle: '1 Ü kristalize insülin → glukozu 25–30 mg/dL düşürür',
            additionalInfo: 'İnsülin infüzyonu: 0.1 U/kg/saat veya [Plazma glukozu/150]',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'İlaç Kesimi',
            description: 'Sülfonilüre/metformin → 24–48 s önce kesilmeli',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Postop',
            description: 'Sıkı glisemik kontrol devam etmeli (stres hiperglisemisi riski)',
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Hipertiroidi',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'Klinik Bulgular',
            description: 'Kilo kaybı, diyare, sinirlilik, sıcak intoleransı, aritmi (sinüs taşikardi–AF)',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Tedavi',
            description: 'PTU, metimazol → hormon sentezini bloke eder',
            subtitle: 'İyodür → salınımı engeller',
            additionalInfo: 'β-bloker → T4→T3 dönüşümünü azaltır',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Anestezi',
            description: 'Preop mutlaka ötiroid hale getirilmeli',
            subtitle: 'İntraop: Kardiyak fonksiyon ve ısı takibi; Graves hastalarında kornea korunmalı',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Tiroid Fırtınası',
            description: 'Postop (6–24 s); hiperpreksi, taşikardi, bilinç değişikliği',
            subtitle: 'Malign hipertermi ile karışmaz (kas rijiditesi/CK artışı yok)',
            additionalInfo: 'Tedavi: Soğutma + β-bloker + PTU + iyodür + steroid',
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Hipotiroidi',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'Klinik Bulgular',
            description: 'Yüksek TSH, düşük T4. Periferik VC → soğuk & benekli deri',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Miksödem Koma',
            description: 'Mental bozukluk, hipoventilasyon, hipotermi, hiponatremi, KKY',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Anestezi',
            description: 'Preop: Ötiroid hale getirilmeli. Tek doz levotiroksin eksikliği sorun olmaz (T4 yarı ömrü 8 gün)',
            subtitle: 'İntraop: Anestezik ihtiyacı ↓, hipoksi & hipotermi riski ↑',
            additionalInfo: 'Postop: Opioidlere bağlı solunum depresyonuna dikkat',
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Paratiroid',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'PTH Fonksiyonu',
            description: 'Ca düzeyini ↑ (kemikten mobilizasyon, renal geri emilim), fosfat atılımını ↑',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Hiperparatiroidizm',
            description: 'Hiperkalsemi → HT, aritmiler, böbrek taşı',
            subtitle: 'Tedavi: Salin + furosemid; maligniteye bağlı ise bifosfonat, glukokortikoid, kalsitonin',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Hipoparatiroidizm',
            description: 'Hipokalsemi → tetani, Chvostek/Trousseau pozitif',
            subtitle: 'Tedavi: İv kalsiyum',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Anestezi',
            description: 'Hipokalsemi → preop düzeltilmeli',
            subtitle: 'Albuminli/sitratlı solüsyonlara dikkat',
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Glukokortikoid Eksikliği',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'Addison',
            description: 'Primer adrenal yetmezlik',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Akut Adrenal Kriz',
            description: 'Hipotansiyon, arrest, resüsitasyona yanıtsız',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Anestezi',
            description: 'Stres dozu steroid şart → 3×100 mg hidrokortizon',
            subtitle: 'Alternatif: indüksiyon 25 mg + postop 100 mg/24 s',
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Glukokortikoid Fazlalığı',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'Cushing',
            description: 'Sarkopeni, osteoporoz, santral obezite, HT',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Anestezi',
            description: 'Hipokalemik metabolik alkaloz, kırık riski yüksek',
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Katekolamin Fazlalığı',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'Feokromasitoma',
            description: 'Paroksismal HT, baş ağrısı, terleme, çarpıntı',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Preop Hazırlık',
            description: 'α-blokaj + sıvı replasmanı, sonra β-blokaj',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'İntraop',
            description: 'İABP monitörizasyon, geniş damar yolu',
            subtitle: 'HT → fentolamin, nitroprussid, nikardipin',
            additionalInfo: 'İndirekt katekolamin & histamin salıcı ilaçlardan kaçınılır',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Postop',
            description: 'Tm çıkarıldıktan sonra hipotansiyon → sıvı, gerekirse fenilefrin/norepi',
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Obezite',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'Tanım',
            description: 'BMI >30 obez, >40 morbid obez',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Fizyoloji',
            description: 'FRK ↓, OSA, restriktif akciğer patern, CO₂ üretimi ↑',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Preop',
            description: 'Aspirasyon profilaksisi, zor havayolu hazırlığı',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'İntraop',
            description: 'Kısa etkili ajan, ideal vücut ağırlığına göre dozlama',
            subtitle: 'Epiduralde %20–25 daha az LA',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Postop',
            description: 'Kas gücü tam → ekstübasyon; CPAP; opioid dikkatli',
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Karsinoid Sendrom',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'Neden',
            description: 'Serotonin, histamin, kallikrein salınımı',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Klinik',
            description: 'Flushing, bronkospazm, aşırı diyare, ABP dalgalanmaları',
            subtitle: 'Sağ kalp kapak hastalığı',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Tanı',
            description: 'İdrarda 5-HİAA, plazmada kromogranin ↑',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Anestezi',
            description: 'Tümör manipülasyonu salınımı artırabilir → kaçınılmalı',
            subtitle: 'RA ve histamin salmayan ajanlar tercih edilmeli',
            additionalInfo: 'İABP monitörizasyon, kan şekeri takibi',
          ),
        ],
      ),
    ];
  }
}
