import '../models/question.dart';

final List<Question> anesthesiaQuestions = [
  Question(
    question:
        "Anestezi tarihi ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. 1846'da Oliver Wendell Holmes anestezi terimini ilk kullanan kişidir.",
      "II. 1846'da William T.G. Morton cerrahi operasyon için genel anestezinin halka açık ilk tanıtımını eter kullanarak gerçekleştirmiştir.",
      "III. Carl Koller (oftalmoloji) 1884'de ilk lokal anestezi uygulamasını topikal anestezi ile gerçekleştirmiştir.",
      "IV. Anestezi uzmanlığının babası olarak John Snow kabul edilir.",
      "V. Eteri ve genel anestezinin fizyolojisini bilimsel olarak araştıran ilk kişi John Snow'dur."
    ],
    options: ["Yalnız I", "I-II-III", "II-IV", "I-II-V", "I-II-III-IV-V"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler (I, II, III, IV ve V) doğrudur.",
    category: "Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Anestezi tarihi ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Sülfirik eter ilk olarak 1540 yılında Valerius Cordus tarafından hazırlandı.",
      "II. 1846'da Boston'da William T.G. Morton, eter kullanarak cerrahi operasyon için genel anestezinin halka açık ilk tanıtımını gerçekleştirdi.",
      "III. Kloroform ilk olarak 1847'de Holmes Coote tarafından kullanıldı.",
      "IV. Kloroform klinik pratiğe Scot Sir James Simpson tarafından getirildi ve bunu hastalarına doğum ağrısını hafifletmek için uyguladı.",
      "V. Joseph Priestley 1772'de nitröz oksit üretti"
    ],
    options: ["I-II-III", "I-II-IV", "III-IV-V", "I-III-V", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler (I, II, III, IV ve V) doğrudur.",
    category: "Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Anestezi tarihi ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Gardner Colton ve Horace Wells, nitröz oksidi ilk kez 1844'de insanlarda diş çekimi için anestezik olarak kullanmış olmakla tanınırlar.",
      "II. Eterin güvenliğine ve popülaritesine rakip olan tek inhalasyon ajanı siklopropandı (1934'te tanıtıldı)",
      "III. Halotan (1951'de geliştirildi; 1956'da piyasaya sürüldü).",
      "IV. Kokain, 1855 yılında Gaedicke tarafından koka yapraklarından izole edildi ve 1860 yılında Albert Niemann tarafından saflaştırıldı.",
      "V. Anestezi için orijinal kokain uygulaması, 1884'de gözün topikal anestezisini gösteren, o zamanlar oftalmolojide \"house officer\" (uzman gözetiminde çalışan doktor) olan Carl Koller'a aittedir."
    ],
    options: ["Yalnız III", "III-V", "I-II-IV", "IV-V", "I-II-III-IV-V"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler (I, II, III, IV ve V) doğrudur.",
    category: "Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Anestezi tarihi ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. 1884'de William Halsted, intradermal infiltrasyon ve sinir blokları (fasiyal sinir, brakial pleksus, pudendal sinir ve posterior tibial sinir blokları dahil) için kokain kullandı.",
      "II. August Bier, 1898'de ilk spinal anesteziyi uyguladı.",
      "III. August Bier 1908'de intravenöz bölgesel anesteziyi (Bier bloğu) tanımlayan ilk kişiydi.",
      "IV. Prokain 1904 yılında Alfred Einhorn tarafından sentezlendi.",
      "V. Heinrich Braun lokal anesteziklerin süresini uzatmak için epinefrin ekleyen ilk kişidir."
    ],
    options: ["I-IV-V", "III-IV", "II-V", "I-III-V", "Hepsi"],
    correctAnswerIndex: 4,
    explanation: "Tüm ifadeler (I, II, III, IV ve V) doğrudur.",
    category: "Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Anestezi tarihi ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Ferdinand Cathelin ve Jean Sicard 1901'de kaudal epidural anesteziyi tanıttılar.",
      "II. Lomber epidural anestezi ilk olarak 1921'de Fidel Pages tarafından tanıtıldı.",
      "III. Barbitüratlar ilk olarak 1903'de Fischer ve von Mering tarafından sentezlendi.",
      "IV. Anestezi indüksiyonu için kullanılan ilk barbitürat dietilbarbitürik asittir (barbital).",
      "V. Tiyopental, klinik olarak ilk kez 1934'de John Lundy ve Ralph Waters tarafından kullanıldı."
    ],
    options: ["Yalnız IV", "I-IV", "II-V", "I-III-V", "I-II-III-V"],
    correctAnswerIndex: 4,
    explanation: "I, II, III ve V numaralı ifadeler doğrudur.",
    category: "Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Anestezi tarihi ile ilgili verilen bilgilerden hangileri doğrudur?",
    premises: [
      "I. Ketamin, 1962'de Stevens tarafından sentezlendi ve ilk olarak 1965'de Corssen ve Domino tarafından klinik olarak kullanıldı.",
      "II. Etomidat 1964'de sentezlendi.",
      "III. 1986'da (Amerika Birleşik Devletlerinde 1989) propofol piyasaya sürüldü.",
      "IV. 1942'de Harold Griffith ve Enid Johnson tarafından kürar'm tanıtıldı.",
      "V. Süksinilkolin, 1949'da Bovet tarafından sentezlendi ve 1951'de piyasaya sürüldü."
    ],
    options: ["Hepsi", "II-IV", "I-III-V", "I-IV", "III-IV"],
    correctAnswerIndex: 0,
    explanation: "Tüm ifadeler (I, II, III, IV ve V) doğrudur.",
    category: "Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Anestezi tarihi ile ilgili verilen bilgilerden hangileri yanlıştır?",
    premises: [
      "a. Guedel, genel anestezinin belirtilerini ve dört aşamasını tanımlayan ilk kişiydi.",
      "b. Waters, Madison'daki Wisconsin Üniversitesinde ilk akademik anesteziyoloji departmanını geliştirdi.",
      "c. 1989'da anestezi asistanları için ilk sertifika sınavları uygulandı.",
      "d. Henry Isaiah Dorr, dünya çapında bilinen ilk anestezi profesörü oldu.",
      "e. Amerikan Anesteziyoloji Kurulu 1938'de kurulduğunda, Dr. Dorr ilk başkanı olarak görev yaptı."
    ],
    options: ["Yalnız a", "Yalnız b", "Yalnız c", "Yalnız d", "Yalnız e"],
    correctAnswerIndex: 2,
    explanation:
        "c şıkkı yanlıştır. Anestezi asistanları için ilk sertifika sınavları 1989'da değil, daha önce uygulanmaya başlanmıştır.",
    category: "Anestezi",
    difficulty: 2,
  ),
];
