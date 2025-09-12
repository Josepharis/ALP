import '../models/question.dart';

final List<Question> hypotensiveAgentsQuestions = [
  Question(
    question: "Aşağıdaki ilaçlardan hangisi cerrahi sırasında kontrollü hipotansiyon sağlamak için kullanılabilir?",
    options: ["Midazolam", "Hidralazin", "Fentanil", "Ketamin", "Fenilefrin"],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Hidralazin, arteriyollerde vazodilatasyon yaparak kan basıncını düşürür. İntraoperatif hipotansiyon sağlamada kullanılabilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi direkt etkili arteriyel vazodilatör özelliği ile bilinir?",
    options: ["Nitroprussid", "Labetalol", "Propranolol", "Atropin", "Efedrin"],
    correctAnswerIndex: 0,
    difficulty: 1,
    explanation: "Sodyum nitroprussid, hem arteriyel hem venöz vazodilatasyon yapar ve kontrollü hipotansiyon için kullanılır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Nitroprussid metabolizması sonucu hangi toksik bileşik açığa çıkar?",
    options: ["Karbonmonoksit", "Sülfat", "Siyanür", "Nitrat", "Asetat"],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Sodyum nitroprussid metabolizmasında siyanür açığa çıkar. Bu nedenle uzun süreli kullanımda siyanür toksisitesi gelişebilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Nitrogliserin'in esas etkisi hangi damar yatağındadır?",
    options: ["Arteriyel", "Venöz", "Kapiller", "Lenfatik", "Serebral"],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Nitrogliserin, öncelikle venöz sistem üzerinde etkilidir ve preload'u azaltır. Bu, miyokard oksijen tüketimini düşürür.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Esmolol'ün hipotansif ajan olarak avantajı nedir?",
    options: [
      "Siyanür toksisitesinden korur",
      "Yalnızca venöz damarları etkiler",
      "Kısa etkili olması",
      "Sadece santral etkili olması",
      "Antikolinerjik etki göstermesi",
    ],
    correctAnswerIndex: 2,
    difficulty: 1,
    explanation: "Esmolol, ultrakısa etkili beta-1 blokerdir. Anestezi sırasında geçici taşikardi ve hipertansiyon kontrolünde kullanılır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Nitroprussid uygulamasında siyanür toksisitesini azaltmak için hangisi birlikte verilebilir?",
    options: [
      "Kalsiyum",
      "Nitrik oksit",
      "Sodyum tiyosülfat",
      "Protamin sülfat",
      "Metilprednizolon",
    ],
    correctAnswerIndex: 2,
    difficulty: 3,
    explanation: "Sodyum tiyosülfat, siyanürün tiyosiyanata dönüşmesini sağlar. Nitroprussid ile birlikte verildiğinde siyanür toksisitesini azaltır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki hipotansif ajanlardan hangisi histamin salınımı yoluyla hipotansiyon oluşturabilir?",
    options: [
      "Esmolol",
      "Nitroprussid",
      "Hidralazin",
      "Nitrogliserin",
      "Trimetafan",
    ],
    correctAnswerIndex: 4,
    difficulty: 3,
    explanation: "Trimetafan, gangliyon blokajı ile birlikte histamin salınımı da yaparak hipotansiyon oluşturabilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Fenoldopam'ın vazodilatör etkisi hangi reseptör üzerinden gerçekleşir?",
    options: [
      "Alfa-1",
      "Beta-1",
      "Dopamin D1",
      "Muskarinik M3",
      "Serotonin 5-HT2",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Fenoldopam, selektif D1 dopamin reseptör agonisti olup özellikle renal ve mezenterik vazodilatasyon yapar. Hipertansif acillerde kullanılır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Nitroprussid'in hipotansif etkisi ne kadar sürede başlar ve ne kadar sürer?",
    options: [
      "30–60 saniyede başlar, 20–30 dakika sürer",
      "1–2 dakikada başlar, 1–2 saat sürer",
      "Hemen başlar, etkisi kısa sürer (1–2 dakika)",
      "10 dakikada başlar, 6–8 saat sürer",
      "5–10 dakikada başlar, 12 saat sürer",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Sodyum nitroprussid, hızlı etki başlangıcı ve kısa etki süresi ile karakterizedir; bu nedenle titrasyonla kontrollü hipotansiyon sağlamada idealdir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hipotansif ajan kullanımı sırasında en sık gözlenen advers etki hangisidir?",
    options: [
      "Hiperglisemi",
      "Bradikardi",
      "Rebound hipertansiyon",
      "Aşırı hipotansiyon",
      "Hiperkalemi",
    ],
    correctAnswerIndex: 3,
    difficulty: 1,
    explanation: "Bu ajanlar doz ayarlaması yapılmadan kullanıldığında aşırı hipotansiyon, en sık karşılaşılan ve tehlikeli olabilen yan etkidir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Trimetafan'ın hipotansif etkisi nasıl ortaya çıkar?",
    options: [
      "Direkt düz kas gevşetici etki",
      "Gangliyon blokajı",
      "Beta-2 agonist etki",
      "Renin anjiyotensin inhibisyonu",
      "Alfa-2 presinaptik stimülasyon",
    ],
    correctAnswerIndex: 1,
    difficulty: 3,
    explanation: "Trimetafan, nöronal gangliyonları bloke eder, böylece sempatik çıkışı azaltarak sistemik vasküler direnci düşürür.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Nitrogliserin hipotansif etkisini hangi yolla gösterir?",
    options: [
      "NO salınımı",
      "Beta-2 reseptör aktivasyonu",
      "Alfa-1 blokajı",
      "Muskarinik stimülasyon",
      "D1 reseptör blokajı",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Nitrogliserin, damar düz kasında nitrik oksit (NO) salarak venodilatasyon yapar; bu da preload ve kan basıncını düşürür.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisinin arteriyel sistem üzerinde etkisi venöz sisteme göre daha fazladır?",
    options: [
      "Nitrogliserin",
      "Hidralazin",
      "Furosemid",
      "Trimetafan",
      "Morfin",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Hidralazin, arteriyel sistem üzerine seçici etkili bir vazodilatördür. Preload'u değil, daha çok afterload'u düşürür.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Fenoldopam kullanımında dikkat edilmesi gereken en önemli yan etki nedir?",
    options: [
      "Bronkospazm",
      "Hiperglisemi",
      "Refleks taşikardi",
      "QT uzaması",
      "Hiperkalemi",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Fenoldopam, damar yatağında genişleme yaparak refleks taşikardiye neden olabilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Nitroprussid ile ilişkili tiyosiyanat toksisitesi en çok hangi hasta grubunda görülür?",
    options: [
      "Astımlı hastalar",
      "Karaciğer yetmezliği olanlar",
      "Böbrek yetmezliği olanlar",
      "Hipotiroidi hastaları",
      "Hipertiroide olanlar",
    ],
    correctAnswerIndex: 2,
    difficulty: 3,
    explanation: "Nitroprussid'in yıkım ürünlerinden olan tiyosiyanat, renal yolla atılır. Bu nedenle böbrek yetmezliği olan hastalarda toksisite riski artar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdakilerden hangisi hem arteriyel hem venöz dilatasyon yapan ajanlardandır?",
    options: [
      "Nitroprussid",
      "Hidralazin",
      "Nitrogliserin",
      "Labetalol",
      "Fenilefrin",
    ],
    correctAnswerIndex: 0,
    difficulty: 1,
    explanation: "Sodyum nitroprussid, hem arteriyel hem venöz damarları dilate eder; bu özelliği ile preload ve afterload'u azaltır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi karaciğerden metabolize edilir ve plazma kolinesteraz ile yıkılmaz?",
    options: [
      "Esmolol",
      "Nitroprussid",
      "Trimetafan",
      "Labetalol",
      "Fenoldopam",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Labetalol, karaciğerde metabolize edilir. Bu nedenle karaciğer fonksiyon bozukluğu olan hastalarda dikkatli kullanılmalıdır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi kontrollü hipotansiyon için en kısa sürede titre edilebilen ilaçlardan biridir?",
    options: ["Labetalol", "Esmolol", "Hidralazin", "Propranolol", "Diltiazem"],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Esmolol, kısa yarı ömrü (~9 dakika) sayesinde hızla titre edilebilir; intraoperatif hemodinamik kontrol için uygundur.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Kontrollü hipotansiyon uygulamalarında en çok tercih edilen ajan hangisidir?",
    options: [
      "Nitrogliserin",
      "Trimetafan",
      "Nitroprussid",
      "Esmolol",
      "Metoprolol",
    ],
    correctAnswerIndex: 2,
    difficulty: 1,
    explanation: "Sodyum nitroprussid, hızlı başlangıçlı, kolay titre edilebilir etkisi sayesinde kontrollü hipotansiyon için en sık kullanılan ilaçtır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisinin arteriyel dilatasyon etkisi minimal düzeydedir?",
    options: [
      "Hidralazin",
      "Nitroprussid",
      "Nitrogliserin",
      "Fenoldopam",
      "Trimetafan",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Nitrogliserin, öncelikle venodilatör etkilidir. Arteriyel etkisi sınırlıdır ve genellikle preload'u düşürmekte kullanılır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Nitroprussid'e bağlı gelişen siyanür toksisitesinin en erken belirtisi aşağıdakilerden hangisidir?",
    options: [
      "Hipotermi",
      "Metabolik asidoz",
      "Hipoglisemi",
      "Bradikardi",
      "Hipoksemi",
    ],
    correctAnswerIndex: 1,
    difficulty: 3,
    explanation: "Siyanür, hücresel oksijen kullanımını engeller ve laktik asidoz gelişir. Bu da ilk bulgu olarak metabolik asidoz şeklinde izlenir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi, gebelerde hipertansiyon tedavisinde güvenle kullanılabilir?",
    options: [
      "Nitroprussid",
      "Labetalol",
      "Nitrogliserin",
      "Esmolol",
      "Trimetafan",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Labetalol, gebelikte güvenle kullanılabilen alfa ve beta bloker etkili bir antihipertansiftir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hidralazin'in hipotansif etkisinin başlaması genellikle ne kadar sürer?",
    options: ["10 saniye", "1 dakika", "5–20 dakika", "30 dakika", "1 saat"],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Hidralazin, etkisini 5–20 dakika arasında gösterir. Bu yüzden akut ayarlama gereken durumlarda dezavantajlı olabilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Fenoldopam'ın en önemli farmakolojik avantajı hangisidir?",
    options: [
      "Bronkodilatör etkisi olması",
      "Hepatik eliminasyon",
      "Renal kan akımını artırması",
      "Kalp hızını azaltması",
      "Antikonvülsan etkisi olması",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Fenoldopam, D1 dopamin reseptör agonistidir ve renal perfüzyonu artırması onu özellikle hipertansif böbrek hastalarında avantajlı kılar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Trimetafan'ın hipotansif etkisinin en belirgin riski nedir?",
    options: [
      "Aritmi",
      "Nefrotoksisite",
      "Rebound hipertansiyon",
      "Aşırı sedasyon",
      "Göz içi basınç artışı",
    ],
    correctAnswerIndex: 2,
    difficulty: 3,
    explanation: "Trimetafan, gangliyon blokajı ile hipotansiyon oluşturur. Etki sonlandığında yoğun rebound sempatik aktivite ile hipertansiyon gelişebilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Nitroprussid kullanımında siyanür toksisitesi riskini artıran en önemli faktör aşağıdakilerden hangisidir?",
    options: [
      "Hızlı intravenöz enjeksiyon",
      "Uzun süreli ve yüksek doz infüzyon",
      "Hastanın yaşı",
      "Hipotermi varlığı",
      "Yüksek plazma protein düzeyi",
    ],
    correctAnswerIndex: 1,
    difficulty: 3,
    explanation: "Uzun süreli ve yüksek doz nitroprussid infüzyonu, siyanür birikimine neden olarak toksisite riskini ciddi şekilde artırır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hidralazin'in en yaygın yan etkilerinden biri aşağıdakilerden hangisidir?",
    options: [
      "Refleks taşikardi",
      "Bradikardi",
      "Hipoglisemi",
      "Hiperpotasemi",
      "QT uzaması",
    ],
    correctAnswerIndex: 0,
    difficulty: 1,
    explanation: "Hidralazin, arteriyel dilatasyon yoluyla kan basıncını düşürürken baroreseptör cevabıyla taşikardi oluşabilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi hem arteriyel hem de venöz sistem üzerinde etkili olup NO salınımı ile çalışır?",
    options: [
      "Esmolol",
      "Nitrogliserin",
      "Labetalol",
      "Nitroprussid",
      "Trimetafan",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Sodyum nitroprussid, hem arteriyel hem venöz vazodilatasyon sağlar ve etkisini nitrik oksit salınımı yoluyla gösterir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki hipotansif ajanlardan hangisi preload'u en fazla düşürür?",
    options: [
      "Esmolol",
      "Nitrogliserin",
      "Hidralazin",
      "Labetalol",
      "Propranolol",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Nitrogliserin, güçlü venodilatör etkisiyle preload'u azaltır, bu da özellikle iskemik kalp hastalarında avantajlıdır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Fenoldopam, hangi özelliği sayesinde renal fonksiyonları korumada etkilidir?",
    options: [
      "Beta-1 blokaj",
      "D2 reseptör antagonizması",
      "D1 reseptör agonizması",
      "Antidiüretik hormon salınımı",
      "Renin inhibisyonu",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Fenoldopam, dopamin D1 reseptörlerini aktive ederek renal vazodilatasyon sağlar, glomerüler filtrasyonu destekler.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisi plazma kolinesteraz ile hızla yıkılır?",
    options: [
      "Nitroprussid",
      "Esmolol",
      "Labetalol",
      "Hidralazin",
      "Fenoldopam",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Esmolol, ester bağının plazma kolinesteraz ile hidrolizi yoluyla hızla yıkılır, bu da kısa etkili olmasını sağlar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Trimetafan ile hipotansiyon oluşturulurken göz içi basıncında ne beklenir?",
    options: [
      "Artar",
      "Değişmez",
      "Belirgin şekilde azalır",
      "Hafifçe artar",
      "İki aşamalı yanıt oluşur",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Trimetafan, göz içi basıncını da azaltarak glokom cerrahisinde tercih edilebilecek ajanlardandır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Kontrollü hipotansiyon uygulamasında hangi hedef ortalama arter basıncı (MAP) seviyesi genellikle yeterli kabul edilir?",
    options: [
      "25–30 mmHg",
      "30–40 mmHg",
      "40–50 mmHg",
      "50–65 mmHg",
      "65–80 mmHg",
    ],
    correctAnswerIndex: 3,
    difficulty: 1,
    explanation: "Çoğu cerrahi senaryoda MAP 50–65 mmHg aralığında tutulması yeterli perfüzyon sağlarken cerrahi alan kanamasını azaltır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Nitrogliserin uygulamasında gelişebilecek en sık yan etki hangisidir?",
    options: [
      "Bradikardi",
      "Rebound hipertansiyon",
      "Baş ağrısı",
      "Hipoglisemi",
      "Bulantı",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Nitrogliserin, serebral vazodilatasyona neden olarak sıklıkla baş ağrısına yol açabilir; bu yan etki doz bağımlıdır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Esmolol infüzyonu sonrası etki süresi ne kadardır?",
    options: [
      "1–2 dakika",
      "5–10 dakika",
      "10–20 dakika",
      "30 dakika",
      "1 saat",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Esmolol'ün etkisi yaklaşık 5–10 dakika sürer. Bu özelliği, intraoperatif geçici taşikardi veya hipertansiyon kontrolünde tercih edilmesini sağlar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi, özellikle iskemik kalp hastalığı olan bireylerde tercih edilir?",
    options: [
      "Nitroprussid",
      "Hidralazin",
      "Esmolol",
      "Trimetafan",
      "Fenoldopam",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Esmolol, kalp hızını ve miyokardiyal oksijen tüketimini azaltarak iskemik kalp hastalarında güvenle kullanılabilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Siyanür toksisitesine bağlı gelişebilecek en ciddi komplikasyon hangisidir?",
    options: [
      "Hipokalemi",
      "Respiratuvar alkaloz",
      "Serebral ödem",
      "Metabolik asidoz ve ölüm",
      "Hipertermi",
    ],
    correctAnswerIndex: 3,
    difficulty: 3,
    explanation: "Siyanür, hücresel solunumu engelleyerek hızla metabolik asidoza ve tedavi edilmezse ölüme neden olabilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Nitroprussid'in etkisi hangi yolla sonlanır?",
    options: [
      "Hepatik metabolizma",
      "Renal eliminasyon",
      "Plazma kolinesteraz ile hidroliz",
      "Hemoglobin aracılığıyla yıkım",
      "Akciğer klirensi",
    ],
    correctAnswerIndex: 3,
    difficulty: 3,
    explanation: "Nitroprussid, plazmada oksijenli hemoglobin tarafından yıkılarak NO ve siyanür açığa çıkarır. Bu siyanür daha sonra karaciğerde metabolize edilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki hipotansif ajanlardan hangisi gangliyon blokajı yoluyla etki eder?",
    options: ["Labetalol", "Esmolol", "Trimetafan", "Hidralazin", "Fenoldopam"],
    correctAnswerIndex: 2,
    difficulty: 3,
    explanation: "Trimetafan, nöronal gangliyon blokajı ile sempatik çıkışı engeller, bu sayede hipotansiyon oluşturur.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hidralazin kullanımında immünolojik yan etki olarak aşağıdakilerden hangisi gözlenebilir?",
    options: [
      "Anafilaksi",
      "Stevens-Johnson sendromu",
      "Sistemik lupus benzeri sendrom",
      "Trombositopeni",
      "Aplastik anemi",
    ],
    correctAnswerIndex: 2,
    difficulty: 3,
    explanation: "Hidralazin, uzun süreli ve yüksek doz kullanımda lupus benzeri sendroma neden olabilir. Bu etkisi nadirdir ama bilinen bir komplikasyondur.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Kontrollü hipotansiyon stratejilerinde en önemli kontrendikasyonlardan biri aşağıdakilerden hangisidir?",
    options: [
      "Hipertansiyon",
      "Açık cerrahi",
      "Anemi",
      "İntrakraniyal patoloji",
      "Göz cerrahisi",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "İntrakraniyal basınç regülasyonu çok hassas olduğundan, kontrollü hipotansiyon bu hastalarda kontrendikedir; serebral perfüzyon tehlikeye girebilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Kontrollü hipotansiyon amacıyla en sık kullanılan intravenöz ajan aşağıdakilerden hangisidir?",
    options: [
      "Esmolol",
      "Fenilefrin",
      "Sodyum nitroprussid",
      "Dobutamin",
      "Dopamin",
    ],
    correctAnswerIndex: 2,
    difficulty: 1,
    explanation: "Sodyum nitroprussid, hızlı ve titrasyonu kolay arteriyel + venöz vazodilatördür → kontrollü hipotansiyon için idealdir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Sodyum nitroprussidin en önemli potansiyel toksisitesi nedir?",
    options: [
      "Hiperkalemi",
      "Methemoglobinemi",
      "Siyanür toksisitesi",
      "Hipoglisemi",
      "Laktik asidoz",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Nitroprussid metabolizması sonucu siyanür iyonu açığa çıkar → özellikle uzun süreli veya yüksek dozda kullanıldığında siyanür toksisitesi riski vardır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisi venodilatör etkisi ile ön yükü azaltır?",
    options: [
      "Nitrogliserin",
      "Esmolol",
      "Labetalol",
      "Nikardipin",
      "Hidralazin",
    ],
    correctAnswerIndex: 0,
    difficulty: 1,
    explanation: "Nitrogliserin, özellikle venöz sistemde vazodilatasyon yapar → preload'u (ön yük) düşürür → kalp iş yükünü azaltır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdakilerden hangisi kalsiyum kanal blokeri olup, hipotansif etkisi ile intraoperatif kullanılabilir?",
    options: [
      "Esmolol",
      "Deksmedetomidin",
      "Nikardipin",
      "Fenoldopam",
      "Fenilefrin",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Nikardipin, dihidropiridin grubu kalsiyum kanal blokeridir → arteriyel vazodilatasyon ile hipotansiyon sağlar → intraoperatif kullanımı yaygındır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi en kısa etkili beta bloker olup hipotansif amaçla tercih edilir?",
    options: [
      "Metoprolol",
      "Atenolol",
      "Labetalol",
      "Esmolol",
      "Propranolol",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Esmolol, ultrakısa etkili beta-1 selektif antagonistik ajan olup, hızlı kontrol gerektiren durumlarda idealdir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Nitrogliserin kullanımı sırasında en sık görülen yan etki aşağıdakilerden hangisidir?",
    options: [
      "Hipoglisemi",
      "Bradikardi",
      "Tolerans gelişimi",
      "Siyanür toksisitesi",
      "Hiperkalemi",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Nitrogliserin, sürekli kullanıldığında tolerans gelişebilir → etki azalır → aralıklı kullanım veya doz titrasyonu önerilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi özellikle arteriyel sistem üzerinde etkili olup, periferik dirençte azalmaya neden olur?",
    options: [
      "Nitrogliserin",
      "Nikardipin",
      "Labetalol",
      "Esmolol",
      "Fenilefrin",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Nikardipin, arteriyel selektif kalsiyum kanal blokeridir → sistemik vazodilatasyon yapar → afterload azalır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi doz bağımsız olarak hem arteriyel hem venöz vazodilatasyon yapar?",
    options: [
      "Nitrogliserin",
      "Nikardipin",
      "Sodyum nitroprussid",
      "Esmolol",
      "Fenoldopam",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Sodyum nitroprussid, dozdan bağımsız olarak hem arteriyel hem venöz sistemde güçlü vazodilatasyon yapar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi özellikle preeklampsi tedavisinde tercih edilir?",
    options: [
      "Nitrogliserin",
      "Sodyum nitroprussid",
      "Nikardipin",
      "Labetalol",
      "Esmolol",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Labetalol, gebelikte güvenli kabul edilir ve preeklampsi/eklampsi tedavisinde ilk tercih edilen hipotansif ajanlardan biridir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Nitrogliserin, aşağıdaki hangi durum için en çok kullanılır?",
    options: [
      "Kardiyojenik şok",
      "Hipertansif kriz",
      "Stabil angina",
      "Feokromositoma",
      "Aort diseksiyonu",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Nitrogliserin, venodilatör etkisi ile miyokard oksijen ihtiyacını azaltır → stabil angina tedavisinde yaygın kullanılır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisinin aşırı kullanımı refleks taşikardiye neden olabilir?",
    options: [
      "Labetalol",
      "Nitrogliserin",
      "Esmolol",
      "Metoprolol",
      "Fenilefrin",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Nitrogliserin, venodilatasyon yaparak preload'u azaltır → buna karşılık refleks taşikardi gelişebilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki hipotansif ajanlardan hangisi arteriyel ve venöz dengeyi sağlayan ajanlardandır?",
    options: [
      "Labetalol",
      "Nitroprussid",
      "Esmolol",
      "Fenoldopam",
      "Nikardipin",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Sodyum nitroprussid, hem arteriyel hem venöz damarları dilate eder → afterload ve preload azaltımı sağlar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisi tolerans gelişimi en sık gözlenen hipotansif ajandır?",
    options: [
      "Esmolol",
      "Nikardipin",
      "Nitrogliserin",
      "Labetalol",
      "Fenoldopam",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Nitrogliserin, sürekli kullanımda tolerans gelişimine en yatkın hipotansif ajandır → aralıklı kullanım önerilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki hipotansif ajanlardan hangisinin renal kan akımı üzerine olumlu etkisi vardır?",
    options: [
      "Nitrogliserin",
      "Esmolol",
      "Fenoldopam",
      "Labetalol",
      "Propranolol",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Fenoldopam, D₁ dopamin reseptörlerini uyararak renal vazodilatasyon ve natriürez yapar → hipertansif kriz + böbrek yetmezliğinde tercih edilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Sodyum nitroprussid uzun süreli kullanımda en çok hangi organ sistemine toksisite oluşturur?",
    options: [
      "Karaciğer",
      "Akciğer",
      "Santral sinir sistemi",
      "Böbrek",
      "Kalp",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Siyanür ve tiyosiyanat birikimi, özellikle santral sinir sistemi üzerinde toksik etkilere (konfüzyon, nöbet) yol açabilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi kalp hızını azaltarak kan basıncını düşürür?",
    options: [
      "Fenoldopam",
      "Nikardipin",
      "Esmolol",
      "Nitrogliserin",
      "Nitroprussid",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Esmolol, beta-1 reseptör antagonisti olarak kronotropiyi (kalp hızı) azaltır → kan basıncı da düşer.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisi refleks taşikardiye en az neden olan hipotansif ajanlardandır?",
    options: [
      "Nikardipin",
      "Nitrogliserin",
      "Esmolol",
      "Hidralazin",
      "Fenoldopam",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Esmolol, kalp hızını doğrudan azaltarak taşikardiyi engeller → refleks taşikardi oluşturmaz, hatta baskılar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Nitrogliserin ve nitroprussid arasındaki en temel klinik fark nedir?",
    options: [
      "Etki süresi",
      "Tolerans gelişimi",
      "Vazodilatör etkisinin yeri",
      "Bronkodilatör etkisi",
      "Diüretik etki",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Nitrogliserin → venodilatör ağırlıklı, Nitroprussid → hem arteriyel hem venöz vazodilatasyon yapar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Fenoldopam kullanımı sonrası en sık karşılaşılan istenmeyen etki hangisidir?",
    options: [
      "Bradikardi",
      "Hipotansiyon",
      "Hiperkalemi",
      "Hipernatremi",
      "Bradipne",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Fenoldopam, güçlü vazodilatördür → en sık yan etkisi hipotansiyondur, özellikle hızlı infüzyonlarda dikkatli olunmalı.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Esmolol'ün kısa etkili olmasını sağlayan metabolizma yolu nedir?",
    options: [
      "Hepatik mikrozomal enzimler",
      "Renal hidroliz",
      "Eritrosit esterazları",
      "P450 sistemi",
      "Plazma proteinleri",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Esmolol, eritrosit esterazları ile hızla metabolize edilir → bu sayede ultrakısa etkilidir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi hipotansiyon oluştururken aynı zamanda arteriyel oksijenasyonu da artırabilir?",
    options: [
      "Nikardipin",
      "Esmolol",
      "Fenoldopam",
      "Labetalol",
      "Nitrogliserin",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Fenoldopam, böbrek perfüzyonunu artırır, oksijen tüketimini azaltır → bazı çalışmalarda oksijenasyonu artırabileceği gösterilmiştir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi arteriyel dilatasyonu ön planda yaparak afterload'u azaltır?",
    options: [
      "Nitrogliserin",
      "Labetalol",
      "Fenoldopam",
      "Nikardipin",
      "Esmolol",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Nikardipin, selektif arteriyel vazodilatördür → afterload'u düşürerek antihipertansif etki yapar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Beta-1 selektif bloker olan Esmolol, hangi durumda tercih edilmez?",
    options: [
      "Aort diseksiyonu",
      "Tiroid fırtınası",
      "KOAH",
      "Supraventriküler taşikardi",
      "Miyokard infarktüsü",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Esmolol beta-1 selektiftir ama yüksek dozda beta-2 etkisi de olabilir → KOAH'lı hastalarda dikkatli kullanılmalıdır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki hipotansif ilaçlardan hangisi hem kan basıncını düşürür hem de miyokard oksijen tüketimini azaltır?",
    options: [
      "Esmolol",
      "Fenoldopam",
      "Nitroprussid",
      "Nikardipin",
      "Dopamin",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Esmolol, kalp hızını ve inotropiyi azaltarak miyokardın O₂ ihtiyacını azaltır → hem antiiskemik hem hipotansif etki sağlar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdakilerden hangisi nitrogliserin için doğru bir ifadedir?",
    options: [
      "Arteriyel dilatasyonu baskındır",
      "Refleks bradikardi oluşturur",
      "Koroner vazodilatasyon sağlar",
      "Siyanür içerir",
      "KOAH'da kontrendikedir",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Nitrogliserin, koroner arterleri dilate eder → miyokardiyal oksijenlenmeyi artırır → özellikle angina tedavisinde önemlidir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisinin antihipertansif etkisi en kısa sürede sonlanır?",
    options: [
      "Nitrogliserin",
      "Esmolol",
      "Labetalol",
      "Fenoldopam",
      "Nikardipin",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Esmolol, eritrosit esterazlarıyla hızla yıkılır → etkisi birkaç dakika içinde başlar ve etki süresi çok kısadır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki hipotansif ajanlardan hangisi kalsiyum kanal blokajı yaparak etki gösterir?",
    options: [
      "Labetalol",
      "Fenoldopam",
      "Nikardipin",
      "Esmolol",
      "Nitrogliserin",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Nikardipin, dihidropiridin tipi kalsiyum kanal blokeridir → arteriyel düz kas hücrelerinde vazodilatasyon sağlar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Nitroprussid için siyanür toksisitesini önlemek amacıyla en sık kullanılan antidot aşağıdakilerden hangisidir?",
    options: [
      "N-asetilsistein",
      "Metilen mavisi",
      "Sodyum tiosülfat",
      "Vitamin K",
      "Nalokson",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Sodyum tiosülfat, siyanürü tiosiyanata çevirerek toksisiteyi önler → nitroprussid ile birlikte veya toksisite geliştiğinde verilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdakilerden hangisi nitrogliserin infüzyonunun kesilmesini izleyen dönemde gözlenebilir?",
    options: [
      "Hipertansiyon reboundu",
      "Refleks bradikardi",
      "Hipoglisemi",
      "Uzun süreli hipotansiyon",
      "Hiponatremi",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Ani kesilme, kısa yarı ömür nedeniyle hızlı etki kaybına yol açar → rebound hipertansiyon görülebilir → doz azaltılarak kesilmelidir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Beta blokerler, hangi klinik durumda dikkatli kullanılmalıdır?",
    options: [
      "Hipertiroidi",
      "Supraventriküler taşikardi",
      "Aort diseksiyonu",
      "Akut kalp yetmezliği",
      "Glokom",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Akut kalp yetmezliği olan hastada beta blokerler kontraktiliteyi azaltarak durumu kötüleştirebilir → dikkatle verilmelidir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Esmolol, hangi özellikleriyle intraoperatif hipotansiyon kontrolünde idealdir?",
    options: [
      "Karaciğerden yıkılması",
      "Lipofilik olması",
      "Eritrosit esterazlarıyla hızlı yıkımı",
      "Alfa blokajı yapması",
      "Bronkodilatör etki göstermesi",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Esmolol, eritrosit esterazlarıyla yıkılır → hızlı başlar, kısa sürer → cerrahi sırasında titratif kontrol sağlar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisinin refleks taşikardi oluşturma riski en yüksektir?",
    options: [
      "Nikardipin",
      "Esmolol",
      "Labetalol",
      "Fenoldopam",
      "Nitrogliserin",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Nikardipin, arteriyel dilatör olarak baroreseptörleri uyarabilir → refleks taşikardiye neden olabilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Fenoldopam kullanımı sırasında dikkat edilmesi gereken elektrolit bozukluğu hangisidir?",
    options: [
      "Hiponatremi",
      "Hiperkalemi",
      "Hipokalemi",
      "Hipokalsemi",
      "Hipermagnezemi",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Fenoldopam, natriürez ve diürez yapar → potasyum kaybına neden olabilir → hipokalemi görülebilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi pulmoner konjesyonu azaltmak için en uygundur?",
    options: [
      "Nitrogliserin",
      "Esmolol",
      "Nikardipin",
      "Labetalol",
      "Metoprolol",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Nitrogliserin, venodilatör etkisiyle pulmoner venöz dönüşü azaltır → pulmoner konjesyonu hafifletir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi arteriyel vazodilatör + diüretik etki kombinasyonuna sahiptir?",
    options: [
      "Fenoldopam",
      "Nitrogliserin",
      "Labetalol",
      "Esmolol",
      "Propranolol",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Fenoldopam, D1 reseptör agonistidir → hem arteriyel dilatasyon, hem de natriürez sağlar → özellikle hipertansif kriz + böbrek yetmezliğinde tercih edilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisinin hipotansif etkisi yanında anestezi sırasında miyokardiyal oksijen tüketimini azaltıcı etkisi de vardır?",
    options: [
      "Nikardipin",
      "Fenoldopam",
      "Nitrogliserin",
      "Esmolol",
      "Labetalol",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Esmolol, kalp hızını ve kasılma gücünü düşürerek hem kan basıncını azaltır, hem de miyokardın oksijen ihtiyacını azaltır → cerrahi sırasında koruyucudur.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hangisi kontrollü hipotansiyon sırasında serebral perfüzyonu korumak için önerilir?",
    options: [
      "Başın nötral pozisyonda tutulması",
      "Hiperventilasyon",
      "Volüm kısıtlaması",
      "Yüksek PEEP uygulanması",
      "Hiperglisemi oluşturulması",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Venöz dönüşü engellememek için baş elevasyonu ve boyun fleksiyonundan kaçınılır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hangisi kontrollü hipotansiyon sırasında renal koruma stratejisidir?",
    options: [
      "Hidrasyonun sağlanması",
      "Diüretik kullanımı",
      "Hiperosmolar sıvılar",
      "NSAİİ kullanımı",
      "Yüksek doz dopamin",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Yeterli volüm replasmanı renal perfüzyonu korur; diüretikler/NSAİİ riski artırır.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hangisi kontrollü hipotansiyon için kullanılan volatil anesteziklerin etki mekanizmasıdır?",
    options: [
      "Periferik vazodilatasyon + kardiyak depresyon",
      "Sempatik sinir sistemini aktive etme",
      "ADH salınımını artırma",
      "Renin-anjiyotensin sistemini aktive etme",
      "Platelet agregasyonunu artırma",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "İzofluran/sevofluran vazodilatör ve kardiyak depresan etki ile hipotansiyon sağlar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hangisi kontrollü hipotansiyon sırasında kullanılan α2 agonistidir?",
    options: [
      "Dekmedetomidin",
      "Fenilefrin",
      "Epinefrin",
      "Dopamin",
      "Dobutamin",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Santral α2 agonisti olarak sempatik aktiviteyi baskılar; sedasyon ve analjezi sağlar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hangisi kontrollü hipotansiyon sırasında gelişen refleks taşikardiyi önlemede kullanılır?",
    options: [
      "Esmolol",
      "Atropin",
      "Dopamin",
      "Epinefrin",
      "Hidralazin",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Refleks taşikardi vazodilatör ajanlarla (nitroprussid) gelişir; β blokerlerle kontrol edilir.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hangisi kontrollü hipotansiyon için kullanılan fosfodiesteraz inhibitörüdür?",
    options: [
      "Milrinon",
      "Nitrogliserin",
      "Nikardipin",
      "Fenoldopam",
      "Klonidin",
    ],
    correctAnswerIndex: 0,
    difficulty: 3,
    explanation: "Kardiyak outputu korurken periferik vazodilatasyon yapar; PDE-III inhibitörüdür.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hangisi kontrollü hipotansiyon sırasında gelişen metabolik asidozun nedenidir?",
    options: [
      "Doku hipoperfüzyonu",
      "Hiperventilasyon",
      "Alkaloz",
      "Hiperglisemi",
      "Hipokalemi",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Laktik asidoz gelişebilir; MAP <50 mmHg'da risk artar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hangisi kontrollü hipotansiyon sırasında kardiyak outputu en iyi koruyan ajandır?",
    options: [
      "Fenoldopam",
      "Nitroprussid",
      "Nikardipin",
      "Esmolol",
      "İzofluran",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Dopaminerjik etki ile renal ve splanknik perfüzyonu artırırken kardiyak outputu korur.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hangisi kontrollü hipotansiyon için kullanılan bir ganglion blokeridir?",
    options: [
      "Trimetafan",
      "Nikardipin",
      "Esmolol",
      "Nitroprussid",
      "Dekmedetomidin",
    ],
    correctAnswerIndex: 0,
    difficulty: 3,
    explanation: "Nadir kullanılır; sempatik ve parasempatik gangliyonları bloke eder.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hangisi kontrollü hipotansiyon sırasında kullanılan bir ACE inhibitörüdür?",
    options: [
      "Enalaprilat",
      "Labetalol",
      "Hidralazin",
      "Fenoldopam",
      "Milrinon",
    ],
    correctAnswerIndex: 0,
    difficulty: 3,
    explanation: "Anjiyotensin II oluşumunu engelleyerek vazodilatasyon yapar; etkisi geç başlar.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hangisi kontrollü hipotansiyon için kullanılan bir arteriyel vazodilatördür?",
    options: [
      "Hidralazin",
      "Nitrogliserin",
      "Esmolol",
      "Dekmedetomidin",
      "Milrinon",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Direkt arteriyel vazodilatör; etkisi geç başlar (10-20 dk) ve uzun sürer.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hangisi kontrollü hipotansiyon sırasında gelişebilecek bir komplikasyondur?",
    options: [
      "Görme kaybı",
      "Hipertansiyon",
      "Hipertermi",
      "Hiperglisemi",
      "Hipokalemi",
    ],
    correctAnswerIndex: 0,
    difficulty: 3,
    explanation: "Optik sinir iskemisine bağlı nadir ancak ciddi bir komplikasyondur.",
    category: "Hipotansif Ajanlar",
  ),

  Question(
    question: "Hangisi kontrollü hipotansiyon için kullanılan bir renin inhibitörüdür?",
    options: [
      "Aliskiren",
      "Enalapril",
      "Losartan",
      "Hidralazin",
      "Fenoldopam",
    ],
    correctAnswerIndex: 0,
    difficulty: 3,
    explanation: "Renin-anjiyotensin sisteminin ilk basamağını inhibe eder; klinik kullanımı sınırlıdır.",
    category: "Hipotansif Ajanlar",
  ),
];
