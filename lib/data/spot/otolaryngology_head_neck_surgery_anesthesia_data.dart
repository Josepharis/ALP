import 'package:flutter/material.dart';

class OtolaryngologyHeadNeckSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OtolaryngologyHeadNeckSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OtolaryngologyHeadNeckSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<OtolaryngologyHeadNeckSurgeryAnesthesiaItem> items;

  OtolaryngologyHeadNeckSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class OtolaryngologyHeadNeckSurgeryAnesthesiaData {
  static List<OtolaryngologyHeadNeckSurgeryAnesthesiaCategory> getOtolaryngologyHeadNeckSurgeryAnesthesiaData(BuildContext context) {
    return [
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Endoskopi',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Preop Değerlendirme',
            description: 'Havayolu patolojileri → görüntüleme + indirekt laringoskopi',
            subtitle: 'Zor havayolu varsa → uygun ekipman hazır',
            additionalInfo: 'Sedatif premedikasyon kaçınılmalı',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Premedikasyon',
            description: 'Glikoprolat (1 saat önce) → sekresyon ↓',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Kas Gevşemesi',
            description: 'Sch ve orta etkili NMB kullanılabilir',
            subtitle: 'Derin blok ekstübasyonu geciktirir',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Ventilasyon Teknikleri',
            description: 'Küçük ETT (cerrah görüşünü bozabilir)',
            subtitle: 'Trakeal kanül (kısa süreli uygun, uzun sürede yetersiz)',
            additionalInfo: 'Aralıklı apne (2–3 dk cerrahi, sonra ventilasyon)',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Jet Ventilasyon',
            description: '30–50 psi, 1–2 sn inspirasyon, 4–6 sn pasif ekspirasyon',
            subtitle: 'Barotravma/hava tuzağı riski',
            additionalInfo: 'Modifiye jet: küçük kanül ile 80–300/dk',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Hemodinami',
            description: 'Laringoskopi → hipertansiyon/hipotansiyon atakları',
            subtitle: 'Kısa etkili ajanlarla kontrol',
            additionalInfo: 'G. faringeal + S. laringeal sinir bloğu uygulanabilir',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Lazer Cerrahisi Önlemleri',
            description: 'CO₂ lazer (uzun dalga, suda emilir, penetrasyon az)',
            subtitle: 'YAG lazer (kısa dalga, penetrasyon ↑)',
            additionalInfo: 'FiO₂ → minimum, N₂O kullanılmaz (yanmayı destekler)',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Lazer Güvenlik Önlemleri',
            description: 'Tüp kafı salinle doldur',
            subtitle: 'Havayolu → salinli tampon',
            additionalInfo: 'Su kaynağı (60 mL SF) hazır olmalı, En ciddi komplikasyon: havayolu yangını',
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Nazal ve Sinüs Cerrahisi',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Preop Değerlendirme',
            description: 'Nazal obstrüksiyon → zor maske ventilasyonu',
            subtitle: 'Nazal polip → NSAID kontrendike (allerjik reaksiyon)',
            additionalInfo: 'Kanama hikayesi/antikoagülan sorgulanmalı',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'İntraop',
            description: 'Topikal + submukozal LA',
            subtitle: 'GA indüksiyonu sonrası airway kullanılmalı',
            additionalInfo: 'RAE/spiral tüpler tercih edilir',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'ESC',
            description: 'Göz çok yakın; göz hareketleri izlenebilir',
            subtitle: 'Gözler korumaya alınmalı (korneal abrazyon riski)',
            additionalInfo: 'NMB kullanılmalı (nörolojik/oftalmik komplikasyon önleme)',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Ekstübasyon',
            description: 'Ikınma/öksürme olmadan, aspirasyonu önleyecek kadar uyanık',
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Baş ve Boyun Kanseri Cerrahisi',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Preop Değerlendirme',
            description: 'KOAH, KAH, kötü yaşam tarzı eşlik eder',
            subtitle: 'Zor havayolu için → fiberoptik entübasyon veya inhalasyon indüksiyon',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'İntraop Monitörizasyon',
            description: 'A-line + CVP, hipotermi önleme',
            subtitle: 'Sinir monitörizasyon tüpleri kullanılabilir',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Trakeostomi',
            description: 'Kaf indirilmeli, FiO₂ <%30',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Anestezi İdamesi',
            description: 'NMB verilmez (sinir monitörizasyonu için)',
            subtitle: 'Flepli hastada → vazopressörlerden kaçınılmalı',
            additionalInfo: 'Transfüzyon: Hct %27–30',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Kardiyovasküler İnstabilite',
            description: 'Karotid sinüs/stellat ganglion manipülasyonu → dalgalanmalar',
            subtitle: 'Bilateral boyun diseksiyonu → HT + hipoksik güdü kaybı',
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Maksillofasiyal Rekonstrüksiyon / Ortognatik Cerrahi',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Preop Değerlendirme',
            description: 'Ciddi havayolu problemi → zor havayolu ekipmanı hazır',
            subtitle: 'Nazal entübasyon gerekli; Le Fort II–III kırıklarında riskli',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'İntraop',
            description: 'Kontrollü hipotansiyon + tampon ile kan kontrolü',
            subtitle: 'Geniş IV yol, A-line monitörizasyon',
            additionalInfo: 'Havayolu basıncı ve ETCO₂ yakından takip',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Ekstübasyon',
            description: 'Öncesi tampon çıkar + aspirasyon yapılmalı',
            subtitle: 'Postop → havayolu komplikasyonlarına hazırlıklı olunmalı',
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Kulak Cerrahisi',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'N₂O',
            description: 'Kullanılmaz (orta kulakta basınç ↑)',
            subtitle: 'Timpanoplastide zar yerleştirilmeden 15–30 dk önce kesilmeli',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Hemostaz',
            description: 'Baş yükseltilmesi + epinefrin solüsyonu',
            subtitle: 'Kontrollü hipotansiyon uygulanabilir',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Fasiyal Sinir Saptama',
            description: 'NMB verilmez',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Postop Komplikasyonlar',
            description: 'Vertigo, POBK → propofol indüksiyonu ↓',
            subtitle: 'Retadron + 5-HT3 antagonistleri faydalı',
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Ağız Cerrahisi',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Anestezi Seçimi',
            description: 'Çoğunlukla LA blok yeterli',
            subtitle: 'Sedasyon → düşük doz opioid + midazolam',
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: 'Epinefrinli Solüsyon',
            description: 'Toksik doz aşılmamalı',
            subtitle: '%2 Lidokain 1/100.000 → max 12 mL',
            additionalInfo: '%0.5 Bupivakain 1/200.000 → max 8 mL',
          ),
        ],
      ),
    ];
  }
}
