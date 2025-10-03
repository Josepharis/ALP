class AnesthesiaHistoryItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  const AnesthesiaHistoryItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnesthesiaHistoryCategory {
  final String categoryName;
  final List<AnesthesiaHistoryItem> items;

  const AnesthesiaHistoryCategory({
    required this.categoryName,
    required this.items,
  });
}

class AnesthesiaHistoryData {
  static const List<AnesthesiaHistoryCategory> categories = [
    AnesthesiaHistoryCategory(
      categoryName: "Anestezi Tarihçesi – Spot Bilgiler",
      items: [
        AnesthesiaHistoryItem(
          title: "1846, Morton",
          description: "İlk başarılı eter anestezisi (modern anestezinin başlangıcı)",
        ),
        AnesthesiaHistoryItem(
          title: "1844, Horace Wells",
          description: "İlk kez N₂O ile diş çekimi (başarısız sayıldı)",
        ),
        AnesthesiaHistoryItem(
          title: "Oliver Wendell Holmes",
          description: "\"Anestezi\" terimini ilk kullanan (1846)",
        ),
        AnesthesiaHistoryItem(
          title: "Ether",
          description: "İlk yaygın genel anestezik",
        ),
        AnesthesiaHistoryItem(
          title: "James Simpson",
          description: "Kloroformu doğum analjezisi için kullandı",
        ),
        AnesthesiaHistoryItem(
          title: "John Snow",
          description: "Eter ve kloroformun güvenli kullanımı",
          subtitle: "Kraliyet ailesinde anestezi uygulamaları",
          additionalInfo: "İlk endotrakeal tüp prensipleri",
        ),
      ],
    ),
    AnesthesiaHistoryCategory(
      categoryName: "İlaçlar ve İlk Kullanımlar",
      items: [
        AnesthesiaHistoryItem(
          title: "Nitröz oksit (N₂O)",
          description: "1800 → Humphry Davy analjezik etkisini tanımladı",
          subtitle: "1844 → Wells/Colton diş hekimliğinde kullandı",
        ),
        AnesthesiaHistoryItem(
          title: "Kokain",
          description: "1884 → Carl Koller, göz cerrahisinde topikal",
          subtitle: "1884 → William Halsted, sinir bloğu / infiltrasyon",
        ),
        AnesthesiaHistoryItem(
          title: "Chloral hydrate",
          description: "İlk sedatif, 19. yy sonu",
        ),
        AnesthesiaHistoryItem(
          title: "Barbitüratlar",
          description: "İlk: Hekzobarbital (1927)",
        ),
        AnesthesiaHistoryItem(
          title: "Saf opioid anestezisi",
          description: "Lowenstein, 1969",
        ),
      ],
    ),
    AnesthesiaHistoryCategory(
      categoryName: "Bölgesel Anestezi – Spotlar",
      items: [
        AnesthesiaHistoryItem(
          title: "Spinal anestezi",
          description: "August Bier, 1898",
        ),
        AnesthesiaHistoryItem(
          title: "RİVA (Bier Bloğu)",
          description: "1908",
        ),
        AnesthesiaHistoryItem(
          title: "Kaudal epidural",
          description: "Cathelin & Sicard",
        ),
        AnesthesiaHistoryItem(
          title: "Lumbal epidural",
          description: "Fidel Pages (1921), Dogliotti (1931)",
        ),
      ],
    ),
    AnesthesiaHistoryCategory(
      categoryName: "Teknolojik / Uygulama Gelişmeleri",
      items: [
        AnesthesiaHistoryItem(
          title: "Alexander Wood (1855)",
          description: "Hipodermik enjektör → IV anestezinin temeli",
        ),
        AnesthesiaHistoryItem(
          title: "Joseph Clover",
          description: "Modern havayolu yönetimi & monitörizasyon öncüsü",
        ),
        AnesthesiaHistoryItem(
          title: "Joseph O'Dwyer",
          description: "Elektif trakeal entübasyon",
        ),
        AnesthesiaHistoryItem(
          title: "Sir Robert Macintosh",
          description: "Endotrakeal tüp kullanımını yaygınlaştırdı (güvenli havayolu)",
        ),
        AnesthesiaHistoryItem(
          title: "Lundy (1926)",
          description: "Dengeli anestezi tanımı",
        ),
      ],
    ),
  ];
}
