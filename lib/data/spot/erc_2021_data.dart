import 'package:flutter/material.dart';

class Erc2021Item {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  Erc2021Item({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class Erc2021Category {
  final String categoryName;
  final List<Erc2021Item> items;

  Erc2021Category({
    required this.categoryName,
    required this.items,
  });
}

class Erc2021Data {
  static List<Erc2021Category> getErc2021Data(BuildContext context) {
    return [
      Erc2021Category(
        categoryName: 'Temel Yaşam Desteği (TYD)',
        items: [
          Erc2021Item(
            title: 'Kardiyak Arrest Tanısı',
            description: 'Yanıtsız + solunum yok/anormal solunum (agonal solunum dahil)',
          ),
          Erc2021Item(
            title: 'Acil Çağrı',
            description: 'Telefon hoparlör modunda yardım alın',
          ),
          Erc2021Item(
            title: 'Göğüs Kompresyonları',
            description: 'Sternum alt yarısına, 100–120/dk',
            subtitle: 'Derinlik 5–6 cm, tam geri çekilmeye izin ver',
          ),
          Erc2021Item(
            title: 'Kurtarıcı Soluk',
            description: '30:2 oranı. Sağlanamıyorsa sadece kompresyon',
          ),
          Erc2021Item(
            title: 'OED Kullanımı',
            description: 'Mümkün olan en kısa sürede kullanılmalı',
            subtitle: 'Pedler anterolateral (alternatif: anteroposterior)',
            additionalInfo: 'Defibrilasyon hazır olana kadar KPR devam ettirilmeli',
          ),
          Erc2021Item(
            title: 'Şoktan Sonra',
            description: 'Şoktan hemen sonra kesintisiz kompresyona dönülmeli',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'İleri Yaşam Desteği (İYD)',
        items: [
          Erc2021Item(
            title: 'Ritim Sınıflaması',
            description: 'Şoklanabilir ritim: VF/pulssuz VT. Şoklanamaz ritim: PEA/asistoli',
          ),
          Erc2021Item(
            title: 'Adrenalin Kullanımı',
            description: 'Şoklanamaz ritim → mümkün olan en kısa sürede',
            subtitle: 'Şoklanabilir ritim → 3. şoktan sonra',
          ),
          Erc2021Item(
            title: 'Entübasyon',
            description: 'Sadece deneyimli kişilerce yapılmalı',
          ),
          Erc2021Item(
            title: 'POCUS',
            description: 'Kullanılabilir ama kompresyonu aksatmamalı',
          ),
          Erc2021Item(
            title: 'Refrakter VF',
            description: 'Maksimum enerji, ped pozisyonunu değiştir (anteroposterior)',
          ),
          Erc2021Item(
            title: 'Anticipatory Defibrillator Charging',
            description: 'Şok gecikmesini azaltır',
          ),
          Erc2021Item(
            title: 'ROSC Sonrası Bakım',
            description: 'Geri döndürülebilir nedenlerin araştırılması kritik',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'İlk Yardım Prensipleri',
        items: [
          Erc2021Item(
            title: 'Amaç',
            description: 'Yaşamı korumak, ağrı azaltmak, komplikasyonu önlemek, iyileşmeyi hızlandırmak',
          ),
          Erc2021Item(
            title: 'Kurtarma Pozisyonu',
            description: 'Yan yatır, baş geride, solunum kontrolü yap',
          ),
          Erc2021Item(
            title: 'Şoktaki Hasta',
            description: 'Sırtüstü yatır, gerekirse bacakları hafif kaldır',
          ),
          Erc2021Item(
            title: 'Anafilaksi',
            description: 'Adrenalin oto-enjektör, 5 dk içinde düzelmezse 2. doz',
          ),
          Erc2021Item(
            title: 'Hipoglisemi',
            description: '15–20 g glikoz veya eşdeğer şeker → 15 dk sonra tekrar kontrol',
          ),
          Erc2021Item(
            title: 'Göğüs Ağrısı',
            description: 'Travmatik değilse ve kontrendikasyon yoksa 150–300 mg aspirin',
          ),
          Erc2021Item(
            title: 'Sıcak Çarpması',
            description: 'Hızlı soğutma, mümkünse soğuk suya daldırma',
          ),
          Erc2021Item(
            title: 'Kanama',
            description: 'Öncelik doğrudan bası → gerekirse turnike',
          ),
          Erc2021Item(
            title: 'Yabancı Cisim Tıkanıklığı',
            description: 'Öksürük → 5 sırt darbesi → 5 abdominal bası',
          ),
          Erc2021Item(
            title: 'Termal Yanık',
            description: 'En az 20 dk soğuk su ile yıka, steril ört',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan Resüsitasyon - Genel Bilgiler',
        items: [
          Erc2021Item(
            title: 'Yenidoğanların %85\'i',
            description: 'Kendiliğinden solunuma başlar',
          ),
          Erc2021Item(
            title: '%10\'u',
            description: 'Kurulama, taktil uyarı, havayolu açma ile düzelir',
          ),
          Erc2021Item(
            title: '%5\'i',
            description: 'Pozitif basınçlı ventilasyon (PPV) gerektirir',
          ),
          Erc2021Item(
            title: 'Entübasyon Oranı',
            description: '%0,4–2\'dir',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Sıcaklık Kontrolü',
        items: [
          Erc2021Item(
            title: 'Hedef Vücut Isısı',
            description: '36.5–37.5°C',
          ),
          Erc2021Item(
            title: 'Doğum Odası Sıcaklığı',
            description: '23–25°C, pretermlerde >25°C',
          ),
          Erc2021Item(
            title: 'Term Bebekler',
            description: 'Kurula, kuru sıcak havlu, anne ile ten tene temas',
          ),
          Erc2021Item(
            title: 'Preterm ≤32 Hafta',
            description: 'Polietilen örtü + radyant ısıtıcı',
          ),
          Erc2021Item(
            title: 'Solunum Desteğinde',
            description: 'Isıtılmış/nemlendirilmiş gaz tercih edilmeli',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Umbilikal Kord Yönetimi',
        items: [
          Erc2021Item(
            title: 'Stabil Bebekte Klempleme',
            description: 'En az 60 sn geciktir (tercihen akciğer havalandırıldıktan sonra)',
          ),
          Erc2021Item(
            title: 'Gecikme Mümkün Değilse',
            description: '>28 hf bebeklerde kordon sıvazlama (milking) düşünülebilir',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - İlk Değerlendirme',
        items: [
          Erc2021Item(
            title: 'Değerlendirme Parametreleri',
            description: 'Tonus, renk, solunum ve kalp hızı değerlendirilir',
          ),
          Erc2021Item(
            title: 'Kalp Hızı >100',
            description: 'İyi adaptasyon',
          ),
          Erc2021Item(
            title: 'Kalp Hızı 60–100',
            description: 'Orta – ventilasyon desteği gerekir',
          ),
          Erc2021Item(
            title: 'Kalp Hızı <60',
            description: 'Kritik – ventilasyon + gerekirse göğüs kompresyonu',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Taktil Uyarı',
        items: [
          Erc2021Item(
            title: 'Uyarı Yöntemi',
            description: 'Ayak tabanı ve sırt sıvazlama yeterlidir',
          ),
          Erc2021Item(
            title: 'Agresif Stimülasyon',
            description: 'Yapılmaz',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Havayolu Yönetimi',
        items: [
          Erc2021Item(
            title: 'Baş Pozisyonu',
            description: 'Nötr pozisyon, gerekirse çene kaldırma',
          ),
          Erc2021Item(
            title: 'Maske ile PPV',
            description: 'İlk 60 saniyede başlanmalı',
          ),
          Erc2021Item(
            title: 'Başlangıç Basıncı',
            description: 'Term: 30 cmH₂O, Preterm: 25 cmH₂O',
          ),
          Erc2021Item(
            title: 'CPAP',
            description: 'Spontan soluyan preterm bebeklerde ilk seçenek',
          ),
          Erc2021Item(
            title: 'PEEP',
            description: 'En az 5–6 cmH₂O önerilir',
          ),
          Erc2021Item(
            title: 'Mekonyumlu Bebek',
            description: 'Rutin aspirasyon yapılmaz, ventilasyon geciktirilmez',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Alternatif Havayolu',
        items: [
          Erc2021Item(
            title: 'Laringeal Maske',
            description: '≥34 hf (≈2000 g), maske ventilasyonu başarısızsa',
          ),
          Erc2021Item(
            title: 'Endotrakeal Tüp',
            description: 'Ventilasyon yetersizse, uzunsa, göğüs kompresyonu gerekiyorsa, surfaktan verilmesi gerekiyorsa',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Göğüs Kompresyonu',
        items: [
          Erc2021Item(
            title: 'Endikasyon',
            description: '30 sn etkin ventilasyona rağmen kalp hızı <60 ise başlanır',
          ),
          Erc2021Item(
            title: 'Oran',
            description: '3 kompresyon : 1 ventilasyon (dakikada 120 olay ≈ 90 kompresyon + 30 ventilasyon)',
          ),
          Erc2021Item(
            title: 'Teknik',
            description: 'İki el tekniği tercih edilir',
          ),
          Erc2021Item(
            title: 'Oksijen',
            description: '%100 O₂ ile uygulanır',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Damar Yolu ve İlaçlar',
        items: [
          Erc2021Item(
            title: 'İlk Tercih',
            description: 'Umbilikal ven. Alternatif: intraosseöz yol',
          ),
          Erc2021Item(
            title: 'Adrenalin',
            description: '10–30 µg/kg IV/IO; gerekirse 3–5 dk\'da bir tekrar',
          ),
          Erc2021Item(
            title: 'Glukoz',
            description: 'Uzamış resüsitasyonda 250 mg/kg (%10 glukozdan 2,5 mL/kg)',
          ),
          Erc2021Item(
            title: 'Volüm Replasmanı',
            description: '10 mL/kg O Rh(-) kan veya izotonik kristalloid',
          ),
          Erc2021Item(
            title: 'Sodyum Bikarbonat',
            description: 'Uzamış, yanıtsız resüsitasyonda 1–2 mmol/kg',
          ),
          Erc2021Item(
            title: 'Nalokson',
            description: 'Annenin opioid kullanımı + persistan apne durumunda 200 µg IM',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Yenidoğan - Prognoz',
        items: [
          Erc2021Item(
            title: '10–20 Dk Yoğun Resüsitasyon',
            description: 'Yanıt yoksa kötü prognoz riski çok yüksektir',
          ),
          Erc2021Item(
            title: 'Tedavi Sonlandırma',
            description: 'Geri döndürülebilir nedenler dışlandıysa aile ve ekip ile tedaviyi sonlandırma görüşülmelidir',
          ),
        ],
      ),
    ];
  }
}
