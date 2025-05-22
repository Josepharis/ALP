import '../models/question.dart';

final List<Question> operatingRoomQuestions = [
  Question(
    question:
        "Ameliyathane ortamı ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Ameliyathane, steril bir ortam olmalıdır.",
      "II. Hava sıcaklığı ve nem kontrolü önemlidir.",
      "III. Aydınlatma yeterli olmalıdır.",
      "IV. Hava değişimi düzenli olmalıdır.",
      "V. Gürültü seviyesi kontrol altında olmalıdır."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Ameliyathane",
    difficulty: 1,
  ),
  Question(
    question:
        "Ameliyathane güvenliği ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Hasta kimlik doğrulaması yapılmalıdır.",
      "II. Cerrahi site işaretlemesi kontrol edilmelidir.",
      "III. Time-out prosedürü uygulanmalıdır.",
      "IV. Steril alan korunmalıdır.",
      "V. Keskin nesneler güvenli şekilde atılmalıdır."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Ameliyathane ekipmanları ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Cerrahi aletler steril olmalıdır.",
      "II. Monitörler çalışır durumda olmalıdır.",
      "III. Yedek ekipman hazır olmalıdır.",
      "IV. Ekipman bakımı düzenli yapılmalıdır.",
      "V. Ekipman kayıtları tutulmalıdır."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Ameliyathane personeli ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Personel eğitimi düzenli yapılmalıdır.",
      "II. İş güvenliği kurallarına uyulmalıdır.",
      "III. İletişim etkili olmalıdır.",
      "IV. Takım çalışması önemlidir.",
      "V. Personel sağlığı takip edilmelidir."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Ameliyathane enfeksiyon kontrolü ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. El hijyeni önemlidir.",
      "II. Steril teknik uygulanmalıdır.",
      "III. Hava kalitesi kontrol edilmelidir.",
      "IV. Atık yönetimi düzenli olmalıdır.",
      "V. Enfeksiyon izlemi yapılmalıdır."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Ameliyathane",
    difficulty: 3,
  ),
  Question(
    question:
        "E-silindirin (tüpün) yaklaşık olarak yarısının dolu olduğunu ve 330 L oksijen içerdiğini gösteren inç kare başına düşen basınç (psig) kaçtır?",
    options: ["1000", "100", "10", "1", "745"],
    correctAnswerIndex: 0,
    explanation: "E-silindirin yarısı dolu olduğunda basınç 1000 psig'dir.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question: "Ameliyathane ekipmanlarında izin verilen maksimum kam μA'dir?",
    options: ["1", "10", "100", "1000", "10000"],
    correctAnswerIndex: 1,
    explanation:
        "Ameliyathane ekipmanlarında izin verilen maksimum kam 10 μA'dir.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question: "Cerrahi yangın için en yaygın risk faktörü nedir?",
    options: [
      "O₂'nin açıktan verilmesi",
      "Elektrik hatlarındaki kaçaklar",
      "Personel dikkatsizliği",
      "Ortadaki silindirlerin yanlış konumlandırılması",
      "Koter plağının yanlış yerleştirilmesi"
    ],
    correctAnswerIndex: 0,
    explanation:
        "Cerrahi yangın için en yaygın risk faktörü O₂'nin açıktan verilmesidir.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question: "Sıvı O₂ için kritik sıcaklık kaç derecedir?",
    options: ["-25°", "-18°", "+25°", "-25°", "-119°"],
    correctAnswerIndex: 4,
    explanation: "Sıvı O₂ için kritik sıcaklık -119° derecedir.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Oksijen dakikada 3 L hızla tüketilirse, yarısı dolu olan bir silindir kaç dakikada boşalır?",
    options: ["60", "180", "100", "110", "119"],
    correctAnswerIndex: 3,
    explanation:
        "Oksijen dakikada 3 L hızla tüketildiğinde, yarısı dolu olan silindir 110 dakikada boşalır.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Anestezi makinelerinde farklı gaz türleri için yanlışlıkla çapraz geçişi ve bağlantıları önlemek amacıyla kullanılan güvenlik sistemi hangisidir?",
    options: ["Pin", "Fiş", "Diameter", "Valf", "Silindir renkleri"],
    correctAnswerIndex: 0,
    explanation:
        "Pin sistemi, farklı gaz türlerinin yanlışlıkla bağlanmasını önlemek için kullanılan güvenlik sistemidir.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Bir güvenlik özelliği olarak, hangisinin silindirinde Wood's metalinden yapılmış bir 'fiş' bulunur?",
    options: ["CO₂", "N₂O", "O₂", "N₂", "Hava"],
    correctAnswerIndex: 2,
    explanation:
        "O₂ silindirinde Wood's metalinden yapılmış güvenlik fişi bulunur.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question: "Nitroz oksidin kritik sıcaklığı kaç derecedir?",
    options: ["≤25°", ">25°", "<36.5°", ">36.5°", "25°"],
    correctAnswerIndex: 3,
    explanation: "Nitroz oksidin kritik sıcaklığı >36.5° derecedir.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Medikal gaz silindirlerinin karakteristik özellikleri ile ilgili verilen bilgilerden hangisi yanlıştır?",
    options: [
      "O₂-Hava-N₂ silindirleri 625-700 L, N₂O E-silindiri ortalama 1590 L'dir.",
      "O₂-Hava-N₂ silindirlerinin 20°C'deki psig/kg 1800-2200, N₂O 745'dir.",
      "Uluslararası silindir renkleri; O₂ için beyaz, hava için beyaz ve siyah, N₂O mavi ve N₂ için siyahtır.",
      "O₂-Hava-N₂, N₂O silindir formları gazdır.",
      "Medikal hava için kritik hava sıcaklığı -140.6°'dir."
    ],
    correctAnswerIndex: 3,
    explanation:
        "O₂-Hava-N₂, N₂O silindir formları sıvı haldedir, gaz değildir.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Sıvı nitroz oksit tükendiğinde ve tank basıncı düşmeye başladığında, yaklaşık ne kadar nitroz oksit kalır?",
    options: ["745 L", "1800 L", "330 L", "450 L", "400 L"],
    correctAnswerIndex: 4,
    explanation:
        "Sıvı nitroz oksit tükendiğinde ve tank basıncı düşmeye başladığında yaklaşık 400 L nitroz oksit kalır.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Medikal gazların, bir boru ağı yoluyla merkezideki kaynaklarından ameliyathane iletimesinde sistemdeki basınç için kriter değer ne olmalıdır?",
    options: ["≥5 psig", "<5psig", "<3psig", ">3psig", "<745psig"],
    correctAnswerIndex: 0,
    explanation:
        "Medikal gazların iletiminde sistemdeki basınç için kriter değer ≥5 psig olmalıdır.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question: "Yetişkin hastalar için ortam oda sıcaklığı ne kadar olmalıdır?",
    options: ["20-24°", "18-20°", "16-20°", "22-24°", "15-18°"],
    correctAnswerIndex: 0,
    explanation: "Yetişkin hastalar için ortam oda sıcaklığı 20-24° olmalıdır.",
    category: "Ameliyathane",
    difficulty: 1,
  ),
  Question(
    question: "Hipotermin etkilerinden olmayan hangisidir?",
    options: [
      "Yara yeri enfeksiyonu",
      "Koagülopati",
      "Kan kaybında artış",
      "Uzamış hastane yatışı",
      "Kan kaybında azalma"
    ],
    correctAnswerIndex: 4,
    explanation: "Hipotermi kan kaybını artırır, azaltmaz.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question: "Ameliyathane ortamı için verilen bilgilerden hangisi yanlıştır?",
    options: [
      "Ameliyathane ortam nemi %20 ile %60 arasında tutulmalıdır.",
      "Ameliyathane gürültüsü 70 ile 80 desibel (dB) arasında ölçülmektedir ve sıklıkla ses tepe noktaları 80 dB'i aşmaktadır.",
      "Ulusal Yangından Korunma Ajansı durgunluk ve bakteri üremesi riskini azaltmak için saatte 20 hava hacmi değişimi gerektirmektedir.",
      "Hava kalitesi, sunulan partiküllerin %90'nı filtreleven bir filtre olarak tanımlanan %90'lık bir filtre kullanılarak ve %99'luk bir filtre kullanılarak korunmalıdır.",
      "High-efficiency particulate filters (HEPA) mühendislik veya enfeksiyon kontrol standartları tarafından gereklidir."
    ],
    correctAnswerIndex: 4,
    explanation:
        "HEPA filtreleri mühendislik veya enfeksiyon kontrol standartları tarafından gerekli değildir.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        '"Ekipman veya sistemin arızalanmasının hastalara veya bakıcılarda büyük ölçüde yaralanmasına veya ölümüne neden olma olasılığı yüksek olan tesis sistemleri" NFPA 99 Sağlık Hizmetleri Tesis kodları\'nın hangi risk kategorisinde yer alır?',
    options: [
      "Kategori 1",
      "Kategori 2",
      "Kategori 3",
      "Kategori 4",
      "Kategori 5"
    ],
    correctAnswerIndex: 0,
    explanation: "Bu tanım Kategori 1 risk sınıfına aittir.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Diyatermi yanıklarını amacıyla alınacak önlemler arasında değildir?",
    options: [
      "Uygun dönüş elektrodu yerleşimi",
      "Protezlerden kaçınma",
      "Kemik çıkıntılarından kaçınma",
      "Hasta-toprak temasının ortadan kaldırılması",
      "Dönüş elektrodunun kalpten uzak yerleşimi"
    ],
    correctAnswerIndex: 4,
    explanation:
        "Dönüş elektrodunun kalpten uzak yerleşimi diyatermi yanıklarını önlemek için gerekli değildir.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Yanıcı üçlüsü veya yangın üçgeni diye adlandırılan kimyasal kombinasyonda hangisi hangileri yer alır?",
    premises: [
      "I. Yakıt",
      "II. Oksitleyici",
      "III. Ateşleme kaynağı (ısı)",
      "IV. Koter plağı"
    ],
    options: ["Yalnız I", "I-II", "I-IV", "II-III", "Hepsi"],
    correctAnswerIndex: 2,
    explanation:
        "Yanıcı üçlüsünde yakıt, oksitleyici ve ateşleme kaynağı (I-IV) bulunur.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi ameliyathane yangınları ve patlamalarına potansiyel olarak katkıda bulunmaz?",
    options: [
      "Alkol",
      "Klorheksidin",
      "Cerrahi örtüler",
      "Cerrahi önlükler",
      "Hava"
    ],
    correctAnswerIndex: 4,
    explanation:
        "Hava, ameliyathane yangınları ve patlamalarına potansiyel olarak katkıda bulunmaz.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi ameliyathane yangınları ve patlamalarına potansiyel olarak katkıda bulunmaz?",
    options: [
      "Endotrakeal tüpler",
      "Kanüller",
      "Bağırsak gazları",
      "Saç",
      "Vakum sistemi"
    ],
    correctAnswerIndex: 4,
    explanation:
        "Vakum sistemi, ameliyathane yangınları ve patlamalarına potansiyel olarak katkıda bulunmaz.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi ameliyathane yangınları ve patlamalarına potansiyel olarak katkıda bulunur?",
    premises: [
      "I. Oksijen",
      "II. Lazerler",
      "III. Nitroz oksit",
      "IV. Harici defibrilatörler",
      "V. Fiberoptik ışık kaynakları (distal uç)"
    ],
    options: ["I-IV", "II-V", "I-II-V", "I-V", "Hepsi"],
    correctAnswerIndex: 4,
    explanation:
        "Tüm seçenekler ameliyathane yangınları ve patlamalarına potansiyel olarak katkıda bulunur.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question: "Cerrahi yangınların en sık görüldüğü cerrahi bölge hangisidir?",
    options: [
      "İstmüdü üzeri",
      "Abdominal",
      "Pelvis",
      "Alt extremiteler",
      "Kol-ön kol"
    ],
    correctAnswerIndex: 0,
    explanation: "Cerrahi yangınlar en sık istmüdü üzeri bölgede görülür.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi/hangileri Tıbbi lazerlerin güvenli çalışması için önemli hususlardandır?",
    premises: [
      "I. Lazerin tipi",
      "II. Lazerin gücü",
      "III. Dalga boyu",
      "IV. Odak uzaklığı"
    ],
    options: ["Yalnız I", "II-IV", "I-II-III", "I-V", "Yalnız III"],
    correctAnswerIndex: 2,
    explanation:
        "Lazerin tipi, gücü ve dalga boyu (I-II-III) güvenli çalışma için önemli hususlardır.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question: "Ekip kaynak yönetimi (CRM) ilkelerinden olmayan hangisidir?",
    options: [
      "Uyarlanabilirlik/esneklik",
      "Atılganlık/iletişim",
      "Karar verme/liderlik",
      "Analiz/farkındalık",
      "Güvenlik/uyarı"
    ],
    correctAnswerIndex: 4,
    explanation: "Güvenlik/uyarı, CRM ilkelerinden değildir.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi/hangileri Toyota Production System (TPS)'nin 5S olarak adlandırılan işlemleri arasında yer alır?",
    premises: [
      "I. Sınıflandırın (Sort)",
      "II. Sıralı tamamlandırın (Set in Order)",
      "III. Pırıl pırıl olun (Shine)",
      "IV. Standardize edin (Standardize)",
      "V. Sürdürün (Sustain)"
    ],
    options: ["I-V", "III-IV", "I-II-V", "II-III-IV-V", "I-II-III-IV"],
    correctAnswerIndex: 0,
    explanation:
        "Toyota Production System'in 5S işlemleri arasında tüm seçenekler (I-V) yer alır.",
    category: "Ameliyathane",
    difficulty: 2,
  ),
];
