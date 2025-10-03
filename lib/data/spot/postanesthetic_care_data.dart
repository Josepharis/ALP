import 'package:flutter/material.dart';

class PostanestheticCareItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PostanestheticCareItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PostanestheticCareCategory {
  final String categoryName;
  final List<PostanestheticCareItem> items;

  PostanestheticCareCategory({
    required this.categoryName,
    required this.items,
  });
}

class PostanestheticCareData {
  static List<PostanestheticCareCategory> getPostanestheticCareData(BuildContext context) {
    return [
      PostanestheticCareCategory(
        categoryName: 'Genel İlkeler',
        items: [
          PostanestheticCareItem(
            title: 'PACU Tanımı',
            description: 'Anestezi sonrası fizyolojik fonksiyonların yakın izlemi ve komplikasyonların erken tanısı/tedavisi için kurulur',
          ),
          PostanestheticCareItem(
            title: 'Amaç',
            description: 'Hava yolu, solunum, dolaşım, ağrı, termoregülasyon ve mental durumun stabilizasyonu',
          ),
          PostanestheticCareItem(
            title: 'PACU\'ya Transfer Kriterleri',
            description: 'Spontan solunumu yeterli, dolaşımı stabil, güvenli hava yolu sağlanmış hastalar alınır',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Monitörizasyon',
        items: [
          PostanestheticCareItem(
            title: 'Temel Monitörizasyon',
            description: 'Sürekli EKG, SpO₂, noninvaziv KB, solunum sayısı izlenir',
          ),
          PostanestheticCareItem(
            title: 'İleri Monitörizasyon',
            description: 'Yüksek riskli olgular için invaziv arter/venöz basınç, ETCO₂ takibi yapılabilir',
          ),
          PostanestheticCareItem(
            title: 'İlk Değerlendirme',
            description: 'Hava yolu, oksijenlenme, dolaşım, bilinç düzeyi, ağrı',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Hava Yolu ve Solunum',
        items: [
          PostanestheticCareItem(
            title: 'En Sık Komplikasyon',
            description: 'Hipoksi en sık komplikasyondur',
          ),
          PostanestheticCareItem(
            title: 'Hipoksi Nedenleri',
            description: 'Rezidüel anestezik etki, üst hava yolu obstrüksiyonu, bronkospazm, laringospazm, aspirasyon, göğüs duvarı rijiditesi',
          ),
          PostanestheticCareItem(
            title: 'Genel Yönetim',
            description: 'Orofaringeal/nazofaringeal airway, pozitif basınç ventilasyonu',
          ),
          PostanestheticCareItem(
            title: 'Bronkospazm',
            description: 'β₂ agonist, steroid',
          ),
          PostanestheticCareItem(
            title: 'Laringospazm',
            description: 'Pozitif basınç, gerekirse sukkinilkolin (0.1–0.5 mg/kg)',
          ),
          PostanestheticCareItem(
            title: 'Aspirasyon',
            description: 'Hava yolu temizliği, oksijen, gerekirse entübasyon',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Dolaşım Problemleri',
        items: [
          PostanestheticCareItem(
            title: 'Hipotansiyon Nedenleri',
            description: 'Hipovolemi, rezidüel anestezik, vazodilatör, kardiyak depresyon, kanama',
          ),
          PostanestheticCareItem(
            title: 'Hipotansiyon Tedavisi',
            description: 'Volüm replasmanı, vazopressör (efedrin, fenilefrin), kan ürünleri',
          ),
          PostanestheticCareItem(
            title: 'Hipertansiyon Nedenleri',
            description: 'Ağrı, hiperkapni, mesane doluluğu, preop HT',
          ),
          PostanestheticCareItem(
            title: 'Hipertansiyon Tedavisi',
            description: 'Analjezi, sedasyon, β-bloker, nitroprussid',
          ),
          PostanestheticCareItem(
            title: 'Aritmiler',
            description: 'Hipoksi, hiperkapni, elektrolit dengesizlikleri, ilaç etkisi',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Nörolojik ve Mental Durum',
        items: [
          PostanestheticCareItem(
            title: 'Uyanamama Nedenleri',
            description: 'Rezidüel anestezik/opioid, hipoglisemi, hipoksi, inme, nöromüsküler blok',
          ),
          PostanestheticCareItem(
            title: 'Ajitasyon/Deliryum Nedenleri',
            description: 'Hipoksi, ağrı, idrar retansiyonu, alkol/ilaç yoksunluğu',
          ),
          PostanestheticCareItem(
            title: 'Yönetim',
            description: 'Oksijen, altta yatan sebebin düzeltilmesi, kısa etkili sedatif gerekirse',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Termoregülasyon',
        items: [
          PostanestheticCareItem(
            title: 'Hipotermi (<36°C)',
            description: 'Uzun cerrahilerde, soğuk sıvı/gaz kullanımı sonrası sık',
            subtitle: 'Sonuç: titreme, O₂ tüketimi ↑, kardiyak stres, koagülopati',
            additionalInfo: 'Tedavi: aktif ısıtma, sıcak sıvı/gaz',
          ),
          PostanestheticCareItem(
            title: 'Hipertermi',
            description: 'En önemli neden → malign hipertermi (dantrolen ile tedavi)',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Ağrı Yönetimi',
        items: [
          PostanestheticCareItem(
            title: 'Postoperatif Ağrı',
            description: 'Postoperatif dönemde ağrı en sık sorunlardan biri',
          ),
          PostanestheticCareItem(
            title: 'Multimodal Yaklaşım',
            description: 'Opioid, NSAID, lokal anestezik infiltrasyonu, rejyonal blok',
          ),
          PostanestheticCareItem(
            title: 'PCA',
            description: 'Hasta kontrollü analjezi uygulanabilir',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'PONV (Postoperatif Bulantı-Kusma)',
        items: [
          PostanestheticCareItem(
            title: 'Risk Faktörleri',
            description: 'Kadın cinsiyet, nonsmoker, opioid kullanımı, geçmiş PONV/kinetozis öyküsü',
          ),
          PostanestheticCareItem(
            title: 'Profilaksi',
            description: 'Ondansetron, deksametazon, droperidol',
          ),
          PostanestheticCareItem(
            title: 'Tedavi',
            description: 'Aynı ajanlar veya kombine tedavi',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Diğer Komplikasyonlar',
        items: [
          PostanestheticCareItem(
            title: 'İdrar Retansiyonu',
            description: 'Özellikle spinal/epidural sonrası, α-bloker veya kateterizasyon',
          ),
          PostanestheticCareItem(
            title: 'Titreme',
            description: 'En sık hipotermiye bağlı, tedavi meperidin 12.5–25 mg IV',
          ),
          PostanestheticCareItem(
            title: 'Kas Güçsüzlüğü',
            description: 'Rezidüel nöromüsküler blok, TOF monitorizasyonu ile değerlendirilmeli',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Taburculuk Kriterleri (PACU\'dan Çıkış)',
        items: [
          PostanestheticCareItem(
            title: 'Aldrete Skoru',
            description: '≥9–10 (solunum, dolaşım, bilinç, aktivite, SpO₂)',
          ),
          PostanestheticCareItem(
            title: 'Stabil Vital Bulgular',
            description: 'Kan basıncı, kalp hızı, solunum sayısı normal sınırlarda',
          ),
          PostanestheticCareItem(
            title: 'Hava Yolu Güvenliği',
            description: 'Spontan solunum yeterli, obstrüksiyon yok',
          ),
          PostanestheticCareItem(
            title: 'Ağrı ve Bulantı Kontrolü',
            description: 'Ağrı ve bulantı-kusma kontrol altında',
          ),
          PostanestheticCareItem(
            title: 'Cerrahi Komplikasyon',
            description: 'Cerrahi komplikasyon bulgusu olmaması',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Klinik Spotlar',
        items: [
          PostanestheticCareItem(
            title: 'En Sık Komplikasyon',
            description: 'PACU\'daki en sık komplikasyon: hipoksi',
          ),
          PostanestheticCareItem(
            title: 'Taburculuk Skorlaması',
            description: 'Taburculukta kullanılan skorlama: Aldrete',
          ),
          PostanestheticCareItem(
            title: 'Hipotansiyonun En Sık Nedeni',
            description: 'Hipotansiyonun en sık nedeni: hipovolemi',
          ),
          PostanestheticCareItem(
            title: 'Rezidüel Blok',
            description: 'Rezidüel blok varlığında → antikolinesteraz/sugammadeks kullanılmalı',
          ),
          PostanestheticCareItem(
            title: 'PONV Profilaksisi',
            description: 'PONV için en etkili profilaksi: multimodal yaklaşım',
          ),
        ],
      ),
    ];
  }
}
