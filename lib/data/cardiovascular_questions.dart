import '../models/question.dart';

final List<Question> cardiovascularQuestions = [
  Question(
    question:
        "Kardiyovasküler sistem ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Kalp, kanı vücuda pompalar.",
      "II. Arterler, oksijenli kanı taşır.",
      "III. Venler, oksijensiz kanı taşır.",
      "IV. Kapiller, gaz değişimini sağlar.",
      "V. Kalp, dört odacıktan oluşur."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Kardiyovasküler",
    difficulty: 1,
  ),
  Question(
    question:
        "Kardiyovasküler hastalıklar ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Koroner arter hastalığı, kalp damarlarının daralmasıdır.",
      "II. Hipertansiyon, yüksek tansiyon hastalığıdır.",
      "III. Kalp yetmezliği, kalbin yeterli pompalama yapamamasıdır.",
      "IV. Aritmi, kalp ritim bozukluğudur.",
      "V. Ateroskleroz, damar sertliğidir."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Kardiyovasküler",
    difficulty: 2,
  ),
  Question(
    question:
        "Kardiyovasküler muayene ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Oskültasyon, kalp seslerini dinleme yöntemidir.",
      "II. Palpasyon, nabız kontrolü yöntemidir.",
      "III. Perküsyon, göğüs duvarına vurma yöntemidir.",
      "IV. İnspesiyon, gözle muayene yöntemidir.",
      "V. EKG, kalp elektriksel aktivitesini ölçer."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Kardiyovasküler",
    difficulty: 2,
  ),
  Question(
    question:
        "Kardiyovasküler tedaviler ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. İlaç tedavisi, hastalıkları kontrol eder.",
      "II. Cerrahi tedavi, bazı durumlarda gereklidir.",
      "III. Yaşam tarzı değişiklikleri önemlidir.",
      "IV. Düzenli kontrol gereklidir.",
      "V. Acil müdahale hayat kurtarıcıdır."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Kardiyovasküler",
    difficulty: 2,
  ),
  Question(
    question:
        "Kardiyovasküler acil durumlar ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Miyokard enfarktüsü, kalp krizidir.",
      "II. Kardiyak arrest, kalp durmasıdır.",
      "III. Aort diseksiyonu, damar yırtılmasıdır.",
      "IV. Pulmoner emboli, akciğer damar tıkanmasıdır.",
      "V. Şok, dolaşım yetmezliğidir."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Kardiyovasküler",
    difficulty: 3,
  ),
];
