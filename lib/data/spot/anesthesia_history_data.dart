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
      categoryName: "Modern Anestezinin Doğuşu ve Öncüleri",
      items: [
        AnesthesiaHistoryItem(
          title: "WILLIAM MORTON",
          description: "İlk başarılı halka açık eter anestezisini yaparak modern anestezinin başlangıcını sağlamıştır.",
          additionalInfo: "16 Ekim 1846'da Boston'daki 'Ether Dome' amfisinde, cerrah John Warren'ın ağrısız bir tümör ameliyatı yapmasını sağlamış ve tıp tarihinde yeni bir çağ açmıştır.",
        ),
        AnesthesiaHistoryItem(
          title: "HORACE WELLS",
          description: "Diş çekiminde Nitröz Oksit (N₂O) gazını kullanan ilk öncüdür.",
          additionalInfo: "Kendi dişini ağrısız çektirse de Boston'daki halka açık gösterimi sırasında hastanın inlemesi üzerine başarısız sayılmış, ancak Morton'a ilham kaynağı olmuştur.",
        ),
        AnesthesiaHistoryItem(
          title: "JOHN SNOW",
          description: "Anesteziyi bilimsel temellere oturtan ve Kraliçe Victoria'nın doğumlarında kloroform uygulayan ilk uzman doktordur.",
          additionalInfo: "Anestezi dozajını ve güvenliğini kanıtlayarak yöntemin toplumda kabul görmesini sağlamış, aynı zamanda modern epidemiyolojinin temellerini atmıştır.",
        ),
        AnesthesiaHistoryItem(
          title: "OLIVER WENDELL HOLMES",
          description: "Ağrısız cerrahi durumunu tanımlamak için 'Anestezi' terimini ilk kez kullanmıştır.",
          additionalInfo: "1846 yılında William Morton'a yazdığı mektupta, Yunancadan türettiği bu kelimeyi (hissizlik/duygusuzluk) önermiştir.",
        ),
        AnesthesiaHistoryItem(
          title: "JAMES YOUNG SIMPSON",
          description: "Kloroformu keşfederek özellikle doğum sancılarını dindirmek için kullanmış ve kadın doğumda analjeziyi başlatmıştır.",
          additionalInfo: "Eterden daha güçlü ve hızlı etkili olan kloroformu 1847'de kullanmaya başlamış, dönemin bağnaz çevrelerine karşı bilimsel bir mücadele vermiştir.",
        ),
      ],
    ),
    AnesthesiaHistoryCategory(
      categoryName: "Lokal ve Bölgesel Anestezinin Gelişimi",
      items: [
        AnesthesiaHistoryItem(
          title: "CARL KOLLER",
          description: "Kokainin göz üzerindeki etkisini keşfederek lokal anestezinin temelini atmıştır (1884).",
          additionalInfo: "Bu buluş, sadece göz cerrahisinde değil, tüm bölgesel anestezi tekniklerinde bir devrim yaratmış ve cerrahi pratiği kökten değiştirmiştir.",
        ),
        AnesthesiaHistoryItem(
          title: "AUGUST BIER",
          description: "Dünyadaki ilk başarılı spinal anesteziyi gerçekleştirmiştir (1898).",
          additionalInfo: "Kokain kullanarak yaptığı bu uygulamayı bizzat kendisi ve asistanı üzerinde denemiş, böylece bölgesel anestezinin sınırlarını belirlemiştir.",
        ),
        AnesthesiaHistoryItem(
          title: "ALEXANDER WOOD",
          description: "Hipodermik enjektörü icat ederek intravenöz (IV) anestezinin önünü açmıştır (1855).",
          additionalInfo: "İlaçların doğrudan doku ve kan dolaşımına verilmesini sağlayan bu icat, günümüzdeki çoğu anestezi yönteminin teknik altyapısını oluşturur.",
        ),
      ],
    ),
    AnesthesiaHistoryCategory(
      categoryName: "Modern Teknikler ve İlaç Gelişmeleri",
      items: [
        AnesthesiaHistoryItem(
          title: "JOHN LUNDY",
          description: "Tek bir ilaç yerine farklı amaçlı ilaçların bir arada kullanıldığı 'Dengeli Anestezi' kavramını ortaya atmıştır.",
          additionalInfo: "1926 yılında geliştirdiği bu prensip ile yan etkiler azaltılmış ve anestezi güvenliği en üst düzeye çıkarılmıştır.",
        ),
        AnesthesiaHistoryItem(
          title: "ROBERT MACINTOSH",
          description: "Havayolu yönetimini güvenli hale getiren laringoskop kılıcı ve teknikleri geliştirmiştir.",
          additionalInfo: "1940'lı yıllarda tasarladığı eğri laringoskop kılıcı (Macintosh blade), günümüzde hala dünyadaki en standart havayolu ekipmanıdır.",
        ),
        AnesthesiaHistoryItem(
          title: "GRIFFITH VE JOHNSON",
          description: "Kürar (Curare) kullanımını anesteziye dahil ederek tam kas gevşemesi sağlamışlardır (1942).",
          additionalInfo: "Bu sayede karın içi ve göğüs cerrahileri gibi derin kas gevşemesi gerektiren ameliyatlar çok daha güvenli ve kolay yapılabilir hale gelmiştir.",
        ),
      ],
    ),
  ];
}
