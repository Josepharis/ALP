import '../models/question.dart';

final operatingRoomEnvironmentQuestions = <Question>[
  Question(
    question:
        "Aşağıdakilerden hangisi E-tipi oksijen silindirinde basınç göstergesi yaklaşık 1000 psig gösterdiğinde kalan oksijen hacmini en iyi tahmin eder?",
    options: ["100 L", "200 L", "330 L", "500 L", "660 L"],
    correctAnswerIndex: 2,
    explanation:
        "1000 psig basınç, E silindirinin yaklaşık yarısının dolu olduğunu ve 330 L oksijen içerdiğini gösterir.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki gazlardan hangisinin kalan miktarını basınç göstergesi ile doğru olarak belirlemek mümkün değildir?",
    options: ["Oksijen", "Hava", "Karbondioksit", "Nitröz oksit", "Helyum"],
    correctAnswerIndex: 3,
    explanation:
        "Nitröz oksit sıvı fazda bulunduğu için basınç sabit kalır; kalan hacim ancak silindiri tartarak belirlenebilir.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question:
        "Silindir bağlantılarında yanlış gaz bağlanmasını önlemek amacıyla kullanılan güvenlik sistemi aşağıdakilerden hangisidir?",
    options: [
      "Diameter Index Safety System",
      "Pin Index Safety System",
      "Color Coding",
      "Schrader Valve",
      "Pressure Relief Valve",
    ],
    correctAnswerIndex: 1,
    explanation:
        "PISS, silindirlerin yanlış bağlantısını önlemek için pin dizilimi sağlar.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question:
        "Ameliyathanelerde pozitif basınçlı havalandırmanın temel amacı nedir?",
    options: [
      "Enerji tasarrufu",
      "Mikroorganizma geçişini önlemek",
      "Oksijen seviyesini sabitlemek",
      "Karbondioksit eliminasyonunu artırmak",
      "Anestezik gazların yayılımını artırmak",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Pozitif basınçlı havalandırma, dış ortamdan içeri kontaminasyon girişini engeller.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question:
        "Anestezi makinelerinde oksijenin diğer gazlardan önce bitmemesi için kullanılan sistem aşağıdakilerden hangisidir?",
    options: [
      "Oksijen Flush Valfi",
      "Oksijen Öncelik Sistemi",
      "Oksijen Basınç Sensörü",
      "Narkotik Alarm Sistemi",
      "Oksijen Oran Koruma Sistemi (ORMC)",
    ],
    correctAnswerIndex: 4,
    explanation:
        "ORMC, oksijenin azaldığı durumlarda diğer gazların akışını kısıtlayarak güvenlik sağlar.",
    category: "Ameliyathane Ortamı",
    difficulty: 3,
  ),

  Question(
    question: "Oksijen flush valfi ile ilgili hangisi doğrudur?",
    options: [
      "Dakikada 5 L oksijen verir",
      "Sadece solunum sırasında aktif olur",
      "Dakikada 35-75 L oksijen sağlar",
      "Nitröz oksitle karıştırılır",
      "Oksijen konsantrasyonunu azaltır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Oksijen flush valfi, yüksek debide (35-75 L/dk) oksijen sağlar; bu nedenle kontrollü kullanılmalıdır.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question:
        "Desfluran için özel vaporizör kullanılmasının temel nedeni nedir?",
    options: [
      "Renksiz olması",
      "Yanıcı olması",
      "Buhar basıncının çok yüksek olması",
      "Kokusunun rahatsız edici olması",
      "Moleküler yapısının çok büyük olması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Desfluran'ın buhar basıncı yüksektir (669 mmHg), bu nedenle özel ısıtmalı vaporizör gerekir.",
    category: "Ameliyathane Ortamı",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi nitrojenin ameliyathane ortamında kullanımı ile ilgili doğru bir ifadedir?",
    options: [
      "Tüm ameliyathanelerde zorunludur",
      "Sadece doğumhanelerde kullanılır",
      "Aspirasyon için gereklidir",
      "Cerrahi aletlerin çalıştırılmasında kullanılır",
      "Lokal anestezide sıklıkla kullanılır",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Basınçlı nitrojen, genellikle cerrahi el aletlerini çalıştırmak için kullanılır.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi ameliyathane içinde hava değişiminin optimal olması için önerilen hava değişim sıklığıdır?",
    options: [
      "Saatte 2–4 kez",
      "Saatte 5–10 kez",
      "Saatte 15–25 kez",
      "Saatte 25–30 kez",
      "Saatte 40–50 kez",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Ameliyathanelerde enfeksiyon kontrolü ve hava kalitesi için önerilen hava değişim hızı 15–25 kez/saat'tir.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question:
        "Ameliyathanelerde kullanılan renk kodlamasına göre yeşil renkli silindir hangi gazı temsil eder?",
    options: [
      "Oksijen",
      "Azot protoksit (N₂O)",
      "Hava",
      "Karbondioksit",
      "Helium",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Oksijen, silindirlerde genellikle yeşil (ABD) veya beyaz (uluslararası) renkle kodlanır.",
    category: "Ameliyathane Ortamı",
    difficulty: 1,
  ),

  Question(
    question: "Anestezi makinesinde interlock sistemi ne işe yarar?",
    options: [
      "Aynı anda birden fazla vaporizör kullanımını engeller",
      "Elektrik kesintisinde makineyi devre dışı bırakır",
      "Oksijenin sürekli verilmesini sağlar",
      "Anestezik gaz tüketimini azaltır",
      "CO₂ emilimini artırır",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Interlock sistemi, birden fazla vaporizörün aynı anda çalışmasını önler, güvenlik sağlar.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question: "Tavan ışıklandırmasında kullanılan ideal aydınlatma tipi nedir?",
    options: [
      "Floresan ışık",
      "Halojen ışık",
      "Lazer aydınlatma",
      "LED ışık",
      "Ksenon ışık",
    ],
    correctAnswerIndex: 3,
    explanation:
        "LED ışıklar, uzun ömürlü ve düşük ısı yaydıkları için cerrahi alan aydınlatmasında idealdir.",
    category: "Ameliyathane Ortamı",
    difficulty: 1,
  ),

  Question(
    question:
        "Aşağıdaki durumların hangisinde oksijen flush valfi kullanımı tehlikeli olabilir?",
    options: [
      "Hastanın hipoksik olduğu durum",
      "Mekanik ventilatör arızası",
      "Spontan soluyan hastada",
      "Anestezi indüksiyonu sırasında",
      "Gaz kaçak testi yapılırken",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Spontan soluyan hastada flush valfin ani yüksek debisi barotravmaya neden olabilir.",
    category: "Ameliyathane Ortamı",
    difficulty: 3,
  ),

  Question(
    question:
        "Ameliyathane ortamında sterilizasyon sırasında aşağıdakilerden hangisi en önemli faktördür?",
    options: [
      "Yüksek sıcaklık",
      "Kimyasal ajan kullanımı",
      "Oksijen seviyesinin yüksek olması",
      "İlaçların doğru dozda kullanılması",
      "Yalnızca cerrahın eğitimi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Sterilizasyonda en önemli faktör, yüksek sıcaklık kullanımıdır. Bu, mikroorganizmaların öldürülmesi için gereklidir.",
    category: "Ameliyathane Ortamı",
    difficulty: 1,
  ),

  Question(
    question: "Ameliyathanelerde \"laminer hava akımı\"nın temel amacı nedir?",
    options: [
      "Hasta konforunu artırmak",
      "Partikül sayısını azaltmak",
      "Anestezik gazları dağıtmak",
      "Cerrahi ekibin ısı kaybını önlemek",
      "Işık yoğunluğunu düzenlemek",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Laminer akım, enfeksiyon riskini azaltmak için partikülleri uzaklaştırır.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi ameliyathane ortam sıcaklığı için önerilen aralıktır?",
    options: ["18-20°C", "20-24°C", "25-28°C", "29-32°C", "33-36°C"],
    correctAnswerIndex: 1,
    explanation: "20-24°C hasta ve ekip konforu için idealdir.",
    category: "Ameliyathane Ortamı",
    difficulty: 1,
  ),

  Question(
    question:
        "\"Sıcak nötr zona\" (thermoneutral zone) hangi hasta grubu için daha yüksek sıcaklık gerektirir?",
    options: [
      "Yetişkinler",
      "Pediatrik hastalar",
      "Obez hastalar",
      "Gebeler",
      "Yaşlı hastalar",
    ],
    correctAnswerIndex: 1,
    explanation: "Yenidoğanlar için 26-32°C gerekir.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi ameliyathane yangın üçgeninin bileşenlerinden DEĞİLDİR?",
    options: [
      "Oksijen",
      "Yanıcı madde",
      "İgnisyon kaynağı",
      "Yüksek nem",
      "Kıvılcım",
    ],
    correctAnswerIndex: 3,
    explanation: "Nem yangın üçgeninde yer almaz.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question:
        "Elektrocerrahi cihazı (Bovie) kullanırken hangi önlem alınmalıdır?",
    options: [
      "Hastanın metal yüzeylere teması sağlanmalı",
      "Dispersif elektrot nemli bölgeye yerleştirilmeli",
      "Oksijen akımı artırılmalı",
      "Monopolar modda düşük güç kullanılmalı",
      "Flolan kullanımına devam edilmeli",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Dispersif elektrot kuru ve kıllı olmayan alana yerleştirilir.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question: "Ameliyathanede \"en sık görülen elektrik kazası\" hangisidir?",
    options: [
      "Mikroşok",
      "Makroşok",
      "Ventriküler fibrilasyon",
      "Yanık",
      "Kas kontraksiyonu",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Kardiyak kateter gibi direkt iletim yollarında mikroşok riski yüksektir.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question:
        "Ameliyathanede \"anestezik gaz maruziyetini\" azaltmak için hangisi etkisizdir?",
    options: [
      "Scavenging sistemi",
      "Düşük akım anestezisi",
      "Vaporizatör contalarının kontrolü",
      "Ameliyathane kapılarının sık açılması",
      "Hava değişim oranının artırılması",
    ],
    correctAnswerIndex: 3,
    explanation: "Kapıların sık açılması hava akımını bozar.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question:
        "Hangisi ameliyathane havalandırma sisteminin özelliklerinden değildir?",
    options: [
      "HEPA filtre kullanımı",
      "Pozitif basınçlı ortam",
      "Dış hava girişinin olmaması",
      "Laminer akım",
      "Partikül sayımı",
    ],
    correctAnswerIndex: 2,
    explanation: "Dış hava girişi olmalıdır.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question: "Ameliyathanede \"HEPA filtre\" hangi partikül boyutunu tutar?",
    options: [
      ">10 µm",
      "5-10 µm",
      "0.3-0.5 µm",
      "<0.1 µm",
      "Sadece bakterileri",
    ],
    correctAnswerIndex: 2,
    explanation: "0.3 µm ve üzeri partikülleri %99.97 verimle tutar.",
    category: "Ameliyathane Ortamı",
    difficulty: 3,
  ),

  Question(
    question:
        "Hangisi ameliyathane aydınlatmasında \"gölge oluşturmayan ışık\" özelliğidir?",
    options: [
      "Noktasal ışık kaynağı",
      "Çoklu LED dizilimi",
      "Floresan lambalar",
      "Halojen spotlar",
      "Kırmızı ışık kullanımı",
    ],
    correctAnswerIndex: 1,
    explanation: "Çoklu LED'ler gölgeyi minimize eder.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question: "\"Ameliyathane zemini\" için hangi özellik gerekli değildir?",
    options: [
      "Antistatik yapı",
      "Sıvı geçirmezlik",
      "Yüksek sürtünme katsayısı",
      "Dezenfektanlara direnç",
      "Isı yalıtımı",
    ],
    correctAnswerIndex: 4,
    explanation: "Isı yalıtımı zorunlu değildir.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi \"ameliyathane hava akımı\" için doğrudur?",
    options: [
      "Hasta başından ayak ucuna doğru olmalıdır",
      "Cerrahın sırtından hastaya doğru olmalıdır",
      "Tavandan yere doğru dikey olmalıdır",
      "Pencerelerden koridora doğru olmalıdır",
      "Rastgele yönlerde olabilir",
    ],
    correctAnswerIndex: 2,
    explanation: "Tavandan yere dikey laminer akım idealdir.",
    category: "Ameliyathane Ortamı",
    difficulty: 2,
  ),

  Question(
    question:
        "Ameliyathanede \"anestezik gaz maruziyet sınırı\" (OSHA) N₂O için nedir?",
    options: ["5 ppm", "25 ppm", "50 ppm", "100 ppm", "500 ppm"],
    correctAnswerIndex: 1,
    explanation: "N₂O için 8 saatlik maruziyet sınırı 25 ppm.",
    category: "Ameliyathane Ortamı",
    difficulty: 3,
  ),
];
