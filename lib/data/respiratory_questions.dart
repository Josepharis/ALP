import '../models/question.dart';

final List<Question> respiratoryQuestions = [
  Question(
    question:
        "Solunum sistemi ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Solunum sistemi, vücuda oksijen sağlar ve karbondioksiti atar.",
      "II. Akciğerler, göğüs boşluğunda yer alır.",
      "III. Diyafram, solunum kasıdır.",
      "IV. Bronşlar, hava yollarını oluşturur.",
      "V. Alveoller, gaz değişiminin gerçekleştiği yapılardır."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Solunum",
    difficulty: 1,
  ),
  Question(
    question:
        "Solunum sistemi hastalıkları ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Astım, kronik bir solunum yolu hastalığıdır.",
      "II. KOAH, sigara içimi ile ilişkilidir.",
      "III. Pnömoni, akciğer enfeksiyonudur.",
      "IV. Tüberküloz, bulaşıcı bir hastalıktır.",
      "V. Bronşit, hava yollarının iltihaplanmasıdır."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Solunum",
    difficulty: 1,
  ),
  Question(
    question:
        "Solunum sistemi muayenesi ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Oskültasyon, akciğer seslerini dinleme yöntemidir.",
      "II. Perküsyon, göğüs duvarına vurarak ses çıkarma yöntemidir.",
      "III. Palpasyon, elle muayene yöntemidir.",
      "IV. İnspesiyon, gözle muayene yöntemidir.",
      "V. Spirometri, solunum fonksiyon testidir."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Solunum",
    difficulty: 2,
  ),
  Question(
    question:
        "Solunum sistemi tedavileri ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Bronkodilatörler, hava yollarını genişletir.",
      "II. Kortikosteroidler, iltihabı azaltır.",
      "III. Antibiyotikler, bakteriyel enfeksiyonları tedavi eder.",
      "IV. Oksijen tedavisi, kan oksijen seviyesini artırır.",
      "V. Nebülizatör, ilaçları buhar halinde verir."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Solunum",
    difficulty: 2,
  ),
  Question(
    question:
        "Solunum sistemi acil durumları ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Akut solunum yetmezliği, acil müdahale gerektirir.",
      "II. Pnömotoraks, göğüs duvarı yaralanması sonucu oluşabilir.",
      "III. Pulmoner emboli, akciğer damarlarında tıkanma ile oluşur.",
      "IV. Status astmatikus, ciddi bir astım atağıdır.",
      "V. ARDS, akut solunum sıkıntısı sendromudur."
    ],
    options: ["Yalnız I", "I-II", "I-II-III", "I-II-III-IV", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler doğrudur.",
    category: "Solunum",
    difficulty: 3,
  ),
];
