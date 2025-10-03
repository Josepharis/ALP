import 'package:flutter/material.dart';

class AnesthesiaComplicationsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnesthesiaComplicationsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnesthesiaComplicationsCategory {
  final String categoryName;
  final List<AnesthesiaComplicationsItem> items;

  AnesthesiaComplicationsCategory({
    required this.categoryName,
    required this.items,
  });
}

class AnesthesiaComplicationsData {
  static List<AnesthesiaComplicationsCategory> getAnesthesiaComplicationsData(BuildContext context) {
    return [
      AnesthesiaComplicationsCategory(
        categoryName: 'Genel Çerçeve',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Komplikasyon Spektrumu',
            description: 'Hafif-orta dereceli (bulantı, titreme, hafif hipotansiyon)\'dan ölümcül olaylara kadar değişebilir',
            subtitle: 'Hava yolu obstrüksiyonu, anafilaksi, kardiyak arrest, malign hipertermi, masif kanama',
          ),
          AnesthesiaComplicationsItem(
            title: 'Önleme',
            description: 'Çoğu komplikasyon önceden risk tanımlama, uygun monitörizasyon ve hızlı müdahale ile önlenebilir',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Kardiyovasküler Komplikasyonlar',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Hipotansiyon',
            description: 'Hipovolemi, aşırı anestezik derinlik, alerjik reaksiyon, miyokard depresyonu',
          ),
          AnesthesiaComplicationsItem(
            title: 'Hipertansiyon',
            description: 'Yetersiz anestezi, cerrahi uyarı, katekolamin fazlalığı, ilaç çekilmesi',
          ),
          AnesthesiaComplicationsItem(
            title: 'Aritmiler',
            description: 'Hipoksi, elektrolit bozukluğu, uçucu ajanlar, vagal stimülasyon, kateter manipülasyonu',
          ),
          AnesthesiaComplicationsItem(
            title: 'Kardiyak Arrest',
            description: 'En sık hipoksi ve hipovolemiye bağlı',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Solunumsal Komplikasyonlar',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Hipoksi',
            description: 'En yaygın komplikasyon; nedeni → hava yolu obstrüksiyonu, bronkospazm, entübasyon hatası, atelektazi',
          ),
          AnesthesiaComplicationsItem(
            title: 'Hipoventilasyon',
            description: 'Rezidüel kas gevşemesi, opioidler, göğüs cerrahisi',
          ),
          AnesthesiaComplicationsItem(
            title: 'Aspirasyon',
            description: 'Yetersiz açlık süresi, acil cerrahiler, gebelik',
          ),
          AnesthesiaComplicationsItem(
            title: 'Bronkospazm / Laringospazm',
            description: 'Astımlılar, entübasyon ekstübasyon sırasında, irritan gazlar',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Nörolojik Komplikasyonlar',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Awareness (Farkındalık)',
            description: 'Yetersiz anestezi, özellikle TIVA kullanımı',
            subtitle: 'Yüksek riskli cerrahiler (kardiyak, obstetrik, travma)',
          ),
          AnesthesiaComplicationsItem(
            title: 'Postoperatif Deliryum',
            description: 'Özellikle yaşlılarda, hipoksi, hiponatremi, ilaçlar',
          ),
          AnesthesiaComplicationsItem(
            title: 'Nöropati',
            description: 'Yanlış pozisyonlama, bası (ulnar sinir, peroneal sinir)',
          ),
          AnesthesiaComplicationsItem(
            title: 'Nöroaksiyel Blok Komplikasyonları',
            description: 'Baş ağrısı, hematom, enfeksiyon, nörolojik hasar',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'İmmünolojik / İlaç Komplikasyonları',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Anafilaksi / Anafilaktoid Reaksiyonlar',
            description: 'NMB\'ler, lateks, antibiyotikler, kolloidler',
          ),
          AnesthesiaComplicationsItem(
            title: 'Klinik Bulgular',
            description: 'Ani hipotansiyon, bronkospazm, deri bulguları',
          ),
          AnesthesiaComplicationsItem(
            title: 'Tedavi',
            description: 'Adrenalin (10–100 µg IV), hava yolu desteği, sıvı',
            subtitle: 'Antihistaminik, steroid',
          ),
          AnesthesiaComplicationsItem(
            title: 'Transfüzyon Reaksiyonları',
            description: 'Febril, hemolitik, TRALI, TACO',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Termoregülasyon Komplikasyonları',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Hipotermi',
            description: 'Kanama ↑, enfeksiyon ↑, iyileşme gecikmesi, aritmi riski',
          ),
          AnesthesiaComplicationsItem(
            title: 'Malign Hipertermi',
            description: 'Volatil ajanlar + süksinilkolin tetikler, genetik RYR1 defekti',
          ),
          AnesthesiaComplicationsItem(
            title: 'MH Klinik Bulgular',
            description: 'Hiperkarbi (en erken bulgu), taşikardi, kas rijiditesi, hipertermi',
          ),
          AnesthesiaComplicationsItem(
            title: 'MH Tedavi',
            description: 'Dantrolen, soğutma, elektrolit düzeltilmesi',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Gastrointestinal ve Renal Komplikasyonlar',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Aspirasyon Pnömonisi',
            description: 'Mendelson sendromu',
          ),
          AnesthesiaComplicationsItem(
            title: 'İleo Paralitik / PONV',
            description: 'Postoperatif en sık komplikasyonlardan',
            subtitle: '5-HT3 antagonisti, deksametazon, droperidol profilaksi',
          ),
          AnesthesiaComplicationsItem(
            title: 'Oligüri / AKI',
            description: 'Hipovolemi, sepsis, nefrotoksinler',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Cerrahi Pozisyon ile İlişkili Komplikasyonlar',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Dorsal Dekübit',
            description: 'Atelektazi, aspirasyon riski',
          ),
          AnesthesiaComplicationsItem(
            title: 'Trendelenburg',
            description: 'Yüz ödemi, artmış GİB/İOB',
          ),
          AnesthesiaComplicationsItem(
            title: 'Prone',
            description: 'Bası yaraları, optik nöropati, venöz göllenme',
          ),
          AnesthesiaComplicationsItem(
            title: 'Lateral',
            description: 'Peroneal sinir hasarı, akciğer V/Q uyumsuzluğu',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Postoperatif Komplikasyonlar',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Ağrı Kontrolsüzlüğü',
            description: 'Solunum yetersizliği, hipertansiyon, taşikardi',
          ),
          AnesthesiaComplicationsItem(
            title: 'Bulantı-Kusma (PONV)',
            description: 'Kadın, sigara içmeyen, PONV öyküsü, opioid kullanımı riski ↑',
          ),
          AnesthesiaComplicationsItem(
            title: 'Titreme',
            description: 'Hipotermi veya anestezik etkiler',
          ),
          AnesthesiaComplicationsItem(
            title: 'Ateş',
            description: 'Enfeksiyon, transfüzyon reaksiyonu, MH, tiroid krizi',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Spesifik Nadir Komplikasyonlar',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Hava Embolisi',
            description: 'Özellikle oturur pozisyon beyin cerrahisi',
          ),
          AnesthesiaComplicationsItem(
            title: 'Trombemboli (DVT/PE)',
            description: 'Ortopedi, uzun cerrahi, immobilite',
          ),
          AnesthesiaComplicationsItem(
            title: 'Görme Kaybı',
            description: 'Uzamış prone pozisyon, hipotansiyon, anemi',
            subtitle: '(İskemik optik nöropati)',
          ),
          AnesthesiaComplicationsItem(
            title: 'İyatrojenik Travma',
            description: 'Diş hasarı (entübasyon), trakeal laserasyon, damar yaralanmaları',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Klinik Pratik İçin Özet',
        items: [
          AnesthesiaComplicationsItem(
            title: 'En Sık Komplikasyonlar',
            description: 'Hipotansiyon, hipoksi, PONV, titreme',
          ),
          AnesthesiaComplicationsItem(
            title: 'En Ciddi Komplikasyonlar',
            description: 'Hava yolu obstrüksiyonu, anafilaksi, MH, kardiyak arrest',
          ),
          AnesthesiaComplicationsItem(
            title: 'Önleme > Tedavi',
            description: 'Preop değerlendirme, uygun monitörizasyon, hazırlıklı ekipman ve hızlı müdahale hayat kurtarır',
          ),
        ],
      ),
    ];
  }
}
