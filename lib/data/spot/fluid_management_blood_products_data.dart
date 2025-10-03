import 'package:flutter/material.dart';

class FluidManagementBloodProductsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  FluidManagementBloodProductsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class FluidManagementBloodProductsCategory {
  final String categoryName;
  final List<FluidManagementBloodProductsItem> items;

  FluidManagementBloodProductsCategory({
    required this.categoryName,
    required this.items,
  });
}

class FluidManagementBloodProductsData {
  static List<FluidManagementBloodProductsCategory> getFluidManagementBloodProductsData(BuildContext context) {
    return [
      FluidManagementBloodProductsCategory(
        categoryName: 'İntravasküler Hacmin Belirlenmesi',
        items: [
          FluidManagementBloodProductsItem(
            title: 'Laboratuvar Bulguları (İndirekt Yöntemler)',
            description: 'Htc, arteriyel pH, idrar dansitesi (>1.010), idrar Na⁺ (<10 mEq/L), idrar osmolalitesi (>450 mOsm/kg), serum Na⁺, kreatinin, BUN',
          ),
          FluidManagementBloodProductsItem(
            title: 'Hipovolemi Lehine',
            description: 'Hipernatremi, BUN/kreatinin >10:1',
          ),
          FluidManagementBloodProductsItem(
            title: 'Aşırı Volüm Yükünde',
            description: 'Pulmoner vaskülarite artışı, Kerley-B çizgileri, diffüz alveolar infiltratlar',
          ),
          FluidManagementBloodProductsItem(
            title: 'Hemodinamik Ölçümler',
            description: 'CVP statik ölçüm, güvenilir değil',
            subtitle: 'CVP uyumsuzsa pulmoner arter kateterizasyonu',
            additionalInfo: 'PAOP <8 mmHg → hipovolemi; PAOP >18 mmHg → sol ventrikül iş yükü ↑',
          ),
          FluidManagementBloodProductsItem(
            title: 'Arteriyel Nabız Kontur Analizi',
            description: 'Stroke volume variation değerlendirilebilir',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'İntravenöz Sıvılar',
        items: [
          FluidManagementBloodProductsItem(
            title: 'Kristalloidler',
            description: 'İlk seçenek: hemorajik/septik şok, yanık, kafa travması',
            subtitle: 'İntravasküler yarı ömür: 20–30 dk',
          ),
          FluidManagementBloodProductsItem(
            title: 'Ringer Laktat',
            description: 'EC sıvıyı en az etkileyen',
            subtitle: 'Laktat karaciğerde bikarbonata dönüşür',
          ),
          FluidManagementBloodProductsItem(
            title: 'Normal Salin',
            description: 'Yüksek hacimde dilüsyonel hiperkloremik metabolik asidoz',
          ),
          FluidManagementBloodProductsItem(
            title: '%5 Dekstroz',
            description: 'Na kısıtlamalarında',
          ),
          FluidManagementBloodProductsItem(
            title: 'Kolloidler',
            description: 'İntravasküler yarı ömür: 3–6 saat',
            subtitle: 'Endikasyon: ciddi intravasküler açık, hipoalbuminemi, yanık, >3–4 L replasman gereksinimi',
          ),
          FluidManagementBloodProductsItem(
            title: 'Dekstran',
            description: 'Dekstran 70, 40\'tan daha iyi hacim genişletici; fakat dekstran 40 mikrosirkülasyonu artırır',
            subtitle: '20 mL/kg/gün kullanımı: koagülopati, kan grubu değişiklikleri, anafilaksi riski',
          ),
          FluidManagementBloodProductsItem(
            title: 'Hidroksietil Nişasta (HES)',
            description: 'Güçlü hacim genişletici, >1 L kullanımda koagülopati riski',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Perioperatif Sıvı Tedavisi',
        items: [
          FluidManagementBloodProductsItem(
            title: 'Normal İdame',
            description: '4:2:1 kuralı ile hesaplanır',
          ),
          FluidManagementBloodProductsItem(
            title: 'Açlık Açıkları',
            description: 'Açlık süresine göre hesaplanır, intraoperatif tamamlanır',
          ),
          FluidManagementBloodProductsItem(
            title: 'Cerrahi Kayıplar',
            description: 'Spanç ≈10 mL, gaz kompres ≈100–150 mL',
            subtitle: 'Aspiratördeki kan da hesaba katılır',
            additionalInfo: 'Diğer kayıplar: buharlaşma, redistrübisyon',
          ),
          FluidManagementBloodProductsItem(
            title: 'İntraoperatif Replasman',
            description: 'Kan kaybı: transfüzyona kadar 3 katı kristalloid veya eşit miktarda kolloid',
          ),
          FluidManagementBloodProductsItem(
            title: 'Transfüzyon Sınırı',
            description: 'Normal Htc\'de %10–20 kayıp sonrası transfüzyon',
            subtitle: 'İzin verilebilir kan kaybı: Htc 30\'a düşecek kanama x3',
            additionalInfo: 'Htc <24 veya Hb <8 olmadıkça transfüzyon gerekmez',
          ),
          FluidManagementBloodProductsItem(
            title: '1 Ü ES Etkisi',
            description: 'Hb\'i 1 g/dL artırır',
          ),
          FluidManagementBloodProductsItem(
            title: 'Redistrübisyon/Buharlaşma Kayıpları',
            description: '0–2 mL/kg\'dan 4–8 mL/kg\'a kadar değişir',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Transfüzyon',
        items: [
          FluidManagementBloodProductsItem(
            title: 'Kan Grupları',
            description: 'ABO sistemi: eritrosit yüzey antijenleri',
            subtitle: 'Rh sistemi: D antijeni varlığı Rh (+)',
            additionalInfo: 'Diğer sistemler: Lewis, Kidd, Kell, Duffy vb. (nadiren ciddi hemoliz)',
          ),
          FluidManagementBloodProductsItem(
            title: 'Uygunluk Testleri',
            description: 'ABO-Rh testleri: en ciddi reaksiyonlar ABO uyumsuzluğu ile',
            subtitle: 'Antikor taraması: indirekt Coombs',
            additionalInfo: 'Çapraz reaksiyon testi: ABO-Rh doğrulama, non-ABO antikorlar, düşük titre antikorlar',
          ),
          FluidManagementBloodProductsItem(
            title: 'Tip & Tarama Testleri',
            description: 'Elektif cerrahilerde',
          ),
          FluidManagementBloodProductsItem(
            title: 'İntraoperatif Replasman',
            description: 'Eritrosit süspansiyonu: 170 µm filtre; >2–3 Ü → ısıtılmalı',
          ),
          FluidManagementBloodProductsItem(
            title: 'Taze Donmuş Plazma',
            description: '10–15 mL/kg; koagülasyon faktörünü %2–3 artırır; uygulama öncesi ısıtılır',
          ),
          FluidManagementBloodProductsItem(
            title: 'Trombosit',
            description: '<50.000 ise replasman; 1 Ü trombosit 5.000–10.000 artırır',
          ),
          FluidManagementBloodProductsItem(
            title: 'Granülosit',
            description: 'Nötropenik, antibiyotik yanıtsız; ömür kısa, ışınlanmış verilmeli',
          ),
          FluidManagementBloodProductsItem(
            title: 'Travma Koagülopatisinde',
            description: '1:1:1 oranında ES:TDP:Plt',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Kan Transfüzyonunun Komplikasyonları',
        items: [
          FluidManagementBloodProductsItem(
            title: 'İmmünolojik Komplikasyonlar',
            description: 'Akut hemolitik reaksiyon: ABO uyumsuzluğu, 1:38.000; fatal 1:100.000',
            subtitle: 'Geç hemolitik: Rh D dışı antijenler, 2–21 gün sonra, insidans 1:12.000',
          ),
          FluidManagementBloodProductsItem(
            title: 'Non-Hemolitik Reaksiyonlar',
            description: 'Febril reaksiyon (%1–3), Ürtiker (antihistaminik ile tedavi)',
            subtitle: 'Anafilaksi (IgA eksikliği → yıkanmış ES)',
            additionalInfo: 'TRALI: 1:5000, TDP/plt sonrası, akut hipoksi',
          ),
          FluidManagementBloodProductsItem(
            title: 'GVHH',
            description: 'İmmünsüprese hastada, ışınlanmış ürünle önlenir',
          ),
          FluidManagementBloodProductsItem(
            title: 'Purpura',
            description: 'Trombosit antikorları, 5–10 günde',
          ),
          FluidManagementBloodProductsItem(
            title: 'Transfüzyon İlişkili İmmünomodülasyon',
            description: 'Enfeksiyon, nüks, mortalite ↑',
          ),
          FluidManagementBloodProductsItem(
            title: 'Enfeksiyöz Komplikasyonlar',
            description: 'Hepatit B (1/200.000), C (1/1.900.000)',
            subtitle: 'HIV riski çok düşük (NAAT ile)',
            additionalInfo: 'CMV, EBV, HTLV, parvo, Batı Nil virüsü bulaşabilir',
          ),
          FluidManagementBloodProductsItem(
            title: 'Parazit',
            description: 'Sıtma, toksoplazma, chagas (nadir)',
          ),
          FluidManagementBloodProductsItem(
            title: 'Bakteriyel',
            description: 'Stafilokok, Yersinia; transfüzyon 4 sa içinde bitirilmeli',
          ),
          FluidManagementBloodProductsItem(
            title: 'Masif Transfüzyon',
            description: 'Koagülopati: dilüsyonel trombositopeni',
            subtitle: 'Sitrat toksisitesi: hipokalsemi, özellikle KC hastalarında',
            additionalInfo: 'Hipotermi: kan ürünleri ısıtılmalı; 30°C\'de VF riski',
          ),
          FluidManagementBloodProductsItem(
            title: 'Asit-Baz ve Potasyum',
            description: 'Sitrik asit ve metabolitler → asidoz, KC\'de hızla yıkılır',
            subtitle: 'Bankalı kanda K+ ↑ ama infüzyon hızı <100 mL/dk ise genelde sorun yok',
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Cerrahi Sırasında Alternatif Stratejiler',
        items: [
          FluidManagementBloodProductsItem(
            title: 'Otolog Transfüzyon',
            description: '4–5 hafta önce başlanmalı, Htc ≥%34, Hb ≥11 g/dL olmalı',
            subtitle: 'Demir/EPO ile 3–4 Ü toplanabilir',
          ),
          FluidManagementBloodProductsItem(
            title: 'Kan Kurtarma',
            description: 'Kardiyak/vasküler cerrahi; ≥1000–1500 mL kanama olmalı',
            subtitle: 'Kontrendike: septik alan, malignite',
          ),
          FluidManagementBloodProductsItem(
            title: 'Normovolemik Hemodilüsyon',
            description: 'Cerrahiden hemen önce alınan kan, yerine kristalloid/kolloid',
            subtitle: 'CPD torbasında 6 sa saklanabilir',
          ),
          FluidManagementBloodProductsItem(
            title: 'Donör Yönlendirmeli Transfüzyon',
            description: 'Hasta yakınlarının kan vermesi; en az 7 gün önceden alınmalı',
          ),
        ],
      ),
    ];
  }
}
