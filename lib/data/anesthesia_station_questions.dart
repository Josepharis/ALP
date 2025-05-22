import '../models/question.dart';

final List<Question> anesthesiaStationQuestions = [
  Question(
    question:
        "Anestezi istasyonu ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Anestezi istasyonu, hasta monitörizasyonu sağlar.",
      "II. Ventilatör, solunum desteği verir.",
      "III. Anestezik gaz karıştırıcısı, gaz konsantrasyonlarını ayarlar.",
      "IV. Monitörler, vital bulguları gösterir.",
      "V. Alarım sistemi, acil durumları bildirir."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Anestezi İstasyonu",
    difficulty: 1,
  ),
  Question(
    question:
        "Anestezi istasyonu güvenliği ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Oksijen basınç göstergesi, gaz basıncını kontrol eder.",
      "II. Vakum sistemi, aspirasyon sağlar.",
      "III. Alarım sistemi, basınç düşüşlerini bildirir.",
      "IV. Gaz analizörü, gaz konsantrasyonlarını ölçer.",
      "V. Yedek oksijen sistemi, acil durumlar için gereklidir."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Anestezi İstasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "Anestezi istasyonu bakımı ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Düzenli bakım, cihaz güvenliği için önemlidir.",
      "II. Filtreler, düzenli olarak değiştirilmelidir.",
      "III. Kalibrasyon, ölçüm doğruluğu için gereklidir.",
      "IV. Temizlik, enfeksiyon kontrolü için önemlidir.",
      "V. Kayıt tutma, bakım takibi için gereklidir."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Anestezi İstasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "Anestezi istasyonu kullanımı ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Kullanım öncesi kontrol listesi uygulanmalıdır.",
      "II. Gaz bağlantıları kontrol edilmelidir.",
      "III. Monitörler kalibre edilmelidir.",
      "IV. Ventilatör ayarları kontrol edilmelidir.",
      "V. Yedek sistemler test edilmelidir."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Anestezi İstasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "Anestezi istasyonu arıza durumları ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Arıza durumunda yedek sistemlere geçiş yapılmalıdır.",
      "II. Arıza kaydı tutulmalıdır.",
      "III. Teknik servis bilgilendirilmelidir.",
      "IV. Hasta güvenliği sağlanmalıdır.",
      "V. Arıza raporu hazırlanmalıdır."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Anestezi İstasyonu",
    difficulty: 3,
  ),
];
