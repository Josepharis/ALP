import 'package:flutter/material.dart';

class RespiratorySystemsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RespiratorySystemsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RespiratorySystemsCategory {
  final String categoryName;
  final List<RespiratorySystemsItem> items;

  RespiratorySystemsCategory({
    required this.categoryName,
    required this.items,
  });
}

class RespiratorySystemsData {
  static List<RespiratorySystemsCategory> getRespiratorySystemsData(BuildContext context) {
    return [
      RespiratorySystemsCategory(
        categoryName: 'İnsuflasyon',
        items: [
          RespiratorySystemsItem(
            title: 'Anestezik Gazların Hastanın Yüzüne Üflenmesi',
            description: 'Anestezik gazların hastanın yüzüne üflenmesi.',
            subtitle: 'Akım >10 L/dk → CO₂ birikimi önlenir',
            additionalInfo: 'Tekrar soluma yok.\n\nKullanım:\n• Yüze üfleme: çocuk hasta, yüz kapalı lokal işlem\n• Akciğere üfleme: bronkoskopide trakeaya\n• Nazal kanül: 6 L/dk\'ya kadar, FiO₂ her 1 L için %4 artar (max ≈ %44)\n• Venturi maske: FiO₂ %24–40, dk ventilasyon ve ins akım hızından bağımsız',
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Açık Damla Anestezisi',
        items: [
          RespiratorySystemsItem(
            title: 'Schimmel-Busch Maskesi',
            description: 'Schimmel-Busch maskesi ile uygulanan tarihsel yöntem.',
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Draw-Over Anestezisi',
        items: [
          RespiratorySystemsItem(
            title: 'Taşıyıcı Gaz: Atmosfer Havası ± O₂',
            description: 'Taşıyıcı gaz: atmosfer havası ± O₂.',
            subtitle: 'Hortum ≈ 400 mL, geri solumasız valf + PEEP valfi vardır',
            additionalInfo: 'IPPV, CPAP, PEEP uygulanabilir.\n\nDezavantaj: pediatrik ve baş-boyun cerrahisinde zorluk, atık gaz ile ortam kirliliği.\n\nPotent halojenli ajan kullanılabilir.\n\nO₂ desteği:\n• 1 L/dk → FiO₂ %30–40\n• 4 L/dk → FiO₂ %60–80\n\nSpO₂ <%90 riski!',
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Mapleson Devreleri',
        items: [
          RespiratorySystemsItem(
            title: 'Genel Yapı',
            description: 'Genel: hortum + taze gaz girişi + APL valfi + rezervuar balon.',
          ),
          RespiratorySystemsItem(
            title: 'A (Magill)',
            description: 'Spontan solumada en ideal. Kontrollüde uygun değil.',
          ),
          RespiratorySystemsItem(
            title: 'B',
            description: 'Balon–Hortum–Taze gaz–APL–Maske.',
          ),
          RespiratorySystemsItem(
            title: 'C (Waters to-and-fro)',
            description: 'B\'nin kısaltılmış hali.',
          ),
          RespiratorySystemsItem(
            title: 'D (Bain)',
            description: 'Kontrollü ventilasyona en uygun. Taze gaz hortumu içten gider (katlanma riski).',
          ),
          RespiratorySystemsItem(
            title: 'E (Ayre T)',
            description: 'D – (balon + APL); geri solumasız.',
          ),
          RespiratorySystemsItem(
            title: 'F (Jackson-Rees)',
            description: 'D – APL; pediatride sık.',
          ),
          RespiratorySystemsItem(
            title: 'Komponentler',
            description: 'Hortumlar: 22 mm çap, hacim ≥ tidal volüm.\nTaze gaz girişi: performansı belirler.\nAPL valfi: basınç kontrollü dışa akım.\nRezervuar balon: rezervuar + pozitif basınç için; büyük hacim = ↑kompliyans, ↓barotravma.',
            subtitle: 'Performans: Geri solumayı önlemek için yeterli taze gaz gerekir.',
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Halka (Circle) Sistemi',
        items: [
          RespiratorySystemsItem(
            title: 'CO₂ Absorbanları',
            description: 'CO₂ absorbanları: soda lime, baryum hydroxide lime, amsorb.',
            subtitle: 'Son ürün: ısı + su + CaCO₃',
            additionalInfo: 'İndikatör: etil viyole (renk değişimi %50–70 → değiştirilmeli).\n\nCO riski: kuru absorban, yüksek ısı, desfluran/sevofluran.\n\nCompound A: sevofluran yıkım ürünü.\n\nAbsorban verimliliği: tidal volüm ≥ absorban hacminin yarısı.\n\nSodalaym > Baralaym kapasite.',
          ),
          RespiratorySystemsItem(
            title: 'Tek Yönlü Valfler',
            description: 'İleri akımı sağlar, geri kaçışı önler.',
          ),
          RespiratorySystemsItem(
            title: 'Yerleşim',
            description: 'TGG absorban–inspiratuar valf arasına.\nAPL valf ekspiratuar valf–absorban arasına.\nBalon ekspiratuar valf–absorban arasına.',
          ),
          RespiratorySystemsItem(
            title: 'Performans Özellikleri',
            description: 'Taze gaz >5 L/dk → absorber gereksiz.\nÖlü boşluk: hortum uzunluğu etkilemez.\nDirenç: valf + absorber ↑direnç.\nIsı/nem: absorber granülleri önemli kaynak.',
            subtitle: 'Bakteri riski → Y-konnekör veya inspiratuar/ekspiratuar kola filtre eklenebilir.',
            additionalInfo: 'Dezavantajlar:\n• Büyük ve karmaşık yapı\n• Absorban + düşük akımda öngörülemez komplikasyonlar',
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Diğer',
        items: [
          RespiratorySystemsItem(
            title: 'Jet Ventilasyon',
            description: '22G kanül ile yüksek basınçlı hava jeti → alveollere taze gaz ulaşır.',
          ),
          RespiratorySystemsItem(
            title: 'Kapalı Sistem',
            description: 'Ekshale edilen gazın tümü CO₂ absorbe edilip geri solunur.',
          ),
          RespiratorySystemsItem(
            title: 'Yarı Kapalı Sistem',
            description: 'Ekshale edilen gazın bir kısmı geri solunur (en sık kullanılan).',
          ),
        ],
      ),
    ];
  }
}
