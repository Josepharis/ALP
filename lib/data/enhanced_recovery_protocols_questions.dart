import '../models/question.dart';

final List<Question> enhancedRecoveryProtocolsQuestions = <Question>[
  Question(
    question:
        "Geliştirilmiş İyileştirme Protokolleri (ERAS) hangi temel prensibe dayanır?",
    options: [
      "Postoperatif yoğun bakım süresini uzatmak",
      "Hastanede kalış süresini artırmak",
      "Stres yanıtını azaltarak iyileşmeyi hızlandırmak",
      "Sadece farmakolojik tedavilere odaklanmak",
      "Cerrahi teknikleri değiştirmek",
    ],
    correctAnswerIndex: 2,
    explanation:
        "ERAS, cerrahi stres yanıtını minimize ederek fizyolojik fonksiyonların erken dönüşünü sağlamayı hedefler.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "ERAS protokolünde intraoperatif normotermiyi korumanın en önemli etkisi aşağıdakilerden hangisidir?",
    options: [
      "Anestezi derinliğini artırır",
      "İmmün fonksiyonu bozar",
      "Kan kaybını artırır",
      "Yara iyileşmesini destekler ve enfeksiyonu azaltır",
      "Kardiyak output'u azaltır",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Normotermi, perfüzyon ve hücresel fonksiyonlar için kritik önemdedir → yara iyileşmesini hızlandırır ve enfeksiyon oranını düşürür.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "Preoperatif karbonhidrat yüklemesinin temel amacı nedir?",
    options: [
      "İştahı kapatmak",
      "Reaktif hipoglisemiyi önlemek",
      "Glikojen depolarını boşaltmak",
      "İnsülin direncini azaltmak",
      "Bazal metabolizmayı artırmak",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Karbonhidrat içeren berrak sıvılar, operasyon öncesi verildiğinde ameliyat sonrası insülin direncini azaltır.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, ERAS protokolüne uygun bir perioperatif sıvı yönetimi stratejisi değildir?",
    options: [
      "Hedefe yönelik sıvı tedavisi",
      "Aşırı sıvı yüklenmesinden kaçınmak",
      "Sıvı kısıtlaması nedeniyle hipovolemiye tolerans geliştirmek",
      "Dinamik hemodinamik izleme ile yönlendirme",
      "Normovolemi sağlamak",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Hipovolemiye tolerans geliştirmek, ERAS felsefesine aykırıdır. Normovolemi hedeflenir, ne eksik ne fazla sıvı verilir.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "ERAS kapsamında postoperatif dönemde önerilen idame sıvısı aşağıdakilerden hangisidir?",
    options: [
      "Hipotonik glukozlu sıvı",
      "İzotonik kristalloid",
      "Hipertonik salin",
      "Kolloid çözelti",
      "Dextrozlu salin",
    ],
    correctAnswerIndex: 1,
    explanation:
        "İzotonik kristalloidler, sıvı-elektrolit dengesini sağlamak için tercih edilir. Aşırı sıvı yükü ve hiponatremiden kaçınılır.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "ERAS protokolünde kortikosteroidlerin intraoperatif kullanımı, hangi amaçla en çok tercih edilir?",
    options: [
      "Kas gevşetici etki için",
      "Antiemetik etki ve analjezi desteği için",
      "İnsülin direncini artırmak için",
      "Sedasyon sağlamak için",
      "Sıvı retansiyonunu teşvik etmek için",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Deksametazon gibi steroidler, bulantı-kusma kontrolü ve opioid gereksinimini azaltıcı etkileri nedeniyle ERAS'ta kullanılır.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, ERAS uygulamaları açısından anestezistin temel katkılarından biri değildir?",
    options: [
      "Hedefe yönelik sıvı yönetimi",
      "Normoterminin korunması",
      "Anksiyetenin farmakolojik olarak giderilmesi",
      "Nazogastrik tüp takılması",
      "Multimodal analjezi uygulanması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Nazogastrik tüp uygulaması, ERAS ile çelişir çünkü erken mobilizasyon ve oral alımı engeller → genellikle önerilmez.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "ERAS protokolü uygulanan hastalarda postoperatif morbidite oranlarının azalmasında en fazla etkili olan faktörlerden biri aşağıdakilerden hangisidir?",
    options: [
      "Uzun süreli intravenöz sıvı tedavisi",
      "Erken ekstübasyon",
      "Agresif sıvı yüklemesi",
      "Opioid dozu arttırılması",
      "Erken mobilizasyon ve erken oral alım",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Erken mobilizasyon ve oral beslenme, pulmoner komplikasyonları, ileusu ve DVT riskini azaltır → morbidite düşer.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "Prehabilitasyon (prehabilitation) terimi ERAS protokolü içinde hangi süreci ifade eder?",
    options: [
      "Ameliyat sonrası fizik tedavi",
      "Anestezi öncesi beslenme kesilmesi",
      "Cerrahi öncesi dönemde fiziksel, beslenme ve psikolojik hazırlık",
      "Postoperatif ağrı kontrolü",
      "Operasyon öncesi antibiyotik profilaksisi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Prehabilitasyon, cerrahiden önce fiziksel kondisyon, beslenme durumu ve psikolojik hazırlığın iyileştirilmesidir → iyileşmeyi hızlandırır.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki seçeneklerden hangisi, ERAS protokollerinin standardizasyonunu engelleyebilecek durumlardan biridir?",
    options: [
      "Cerrahın eğitimi",
      "Hastanın klinik stabilitesi",
      "Girişimsel işlemin acil olması",
      "Hasta eğitiminin yapılması",
      "Multimodal analjezi uygulanması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Acil cerrahiler, hastayı protokole uygun şekilde hazırlamaya izin vermez → standart ERAS uygulamaları aksayabilir.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "ERAS protokolüne göre postoperatif nazogastrik tüpün rutin olarak bırakılması ile ilgili doğru ifade hangisidir?",
    options: [
      "Önerilir çünkü aspirasyonu önler",
      "Gastrointestinal motiliteyi artırır",
      "Genellikle önerilmez çünkü ileusu uzatır",
      "Hiponatremiyi azaltır",
      "Sıvı yönetimini kolaylaştırır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Nazogastrik tüp, peristaltizmi inhibe eder → ileus süresi uzar → bu nedenle rutin kullanım önerilmez.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "ERAS uygulamalarında postoperatif dönemde mobilizasyon için en ideal süre aşağıdakilerden hangisidir?",
    options: [
      "Ameliyat sonrası 48 saat",
      "Ameliyat sonrası 24 saat",
      "Ameliyat sonrası 6 saat içinde",
      "Ameliyat sonrası 72 saat",
      "Bir hafta sonra",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Erken mobilizasyon, mümkünse ilk 6 saatte başlatılmalı → pulmoner komplikasyon ve DVT riski azalır.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "ERAS protokolüne göre intraoperatif hipergliseminin en önemli zararı nedir?",
    options: [
      "Hipotermiye neden olması",
      "Artmış yara dehissansı",
      "İntraoperatif kan kaybının artması",
      "Gecikmiş uyanma",
      "Antibiyotik etkisini azaltması",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Hiperglisemi, doku iyileşmesini bozar, enfeksiyon ve yara ayrışması (dehissans) riskini artırır.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki seçeneklerden hangisi, ERAS protokolüne karşı en yaygın hasta uyumsuzluğu nedenidir?",
    options: [
      "Aşırı sedasyon",
      "Yetersiz hasta bilgilendirmesi",
      "Kanama",
      "Uzamış anestezi süresi",
      "Fizik tedavi eksikliği",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Yetersiz hasta bilgilendirmesi, ERAS protokolüne uyumsuzluğun en yaygın nedenidir.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "ERAS uygulamalarında normotermi sağlanamazsa, aşağıdakilerden hangisi en sık görülen perioperatif komplikasyonlardan biridir?",
    options: [
      "Hipokalemi",
      "Artmış kanama",
      "Artmış motor blok",
      "Hipertansiyon",
      "Hipoglisemi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Normotermi sağlanamadığında en sık görülen komplikasyon artmış kanamadır.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, ERAS'ta sıvı tedavisinin başarısını izlemek için en uygun izlem yöntemidir?",
    options: [
      "Yalnızca idrar çıkışı",
      "Göz kararı sıvı verme",
      "Dinamik hemodinamik parametrelerle yönlendirme",
      "Sabit saatlik sıvı infüzyonu",
      "Kalp atım sayısı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Dinamik hemodinamik parametrelerle yönlendirme, ERAS'ta sıvı tedavisinin başarısını izlemek için en uygun yöntemdir.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "Opioid-sparing (azaltılmış opioid) stratejisi aşağıdakilerden hangisiyle en iyi desteklenir?",
    options: [
      "Ketamin + NSAİİ + lokal anestezi kombinasyonu",
      "Yüksek doz morfin",
      "Günde bir kez fentanil",
      "Sedatif hipnotiklerle opioid kombine kullanımı",
      "Benzodiazepin eklenmesi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Ketamin + NSAİİ + lokal anestezi kombinasyonu, opioid-sparing stratejisini en iyi destekler.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki uygulamalardan hangisi ERAS protokolünün hedefe yönelik sıvı tedavisi (GDFT) anlayışına uygundur?",
    options: [
      "Sadece bolus sıvı verilmesi",
      "Hipovolemiden kaçınarak minimal sıvı tedavisi",
      "Yoğun sıvı yüklemesi",
      "İdrar çıkışına göre sıvı ayarlanması",
      "Rutin kolloid kullanımı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "ERAS'ta hedefe yönelik sıvı tedavisi; hipovolemiye izin vermeden aşırı sıvı yüklememeyi amaçlar.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi ERAS uygulamalarının postoperatif komplikasyonlar üzerindeki etkisidir?",
    options: [
      "Komplikasyon oranlarında artış",
      "Sadece PONV azalması",
      "Enfeksiyon, tromboz ve ileus oranlarında azalma",
      "Yalnızca mortaliteyi etkiler",
      "Reoperasyon oranlarında belirgin artış",
    ],
    correctAnswerIndex: 2,
    explanation:
        "ERAS; yara enfeksiyonları, derin ven trombozu, PONV ve ileus gibi komplikasyonları azaltır.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "ERAS protokolüne göre hastaların mobilize edilmesi için ideal zaman nedir?",
    options: [
      "Postop 6. saat",
      "Postop 24. saat",
      "Postop 48. saat",
      "Taburculuk günü",
      "Cerrahın uygun gördüğü herhangi bir zaman",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Erken mobilizasyon, genellikle postoperatif 6. saatte başlatılır ve pulmoner komplikasyonları önler.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "ERAS protokolünde preoperatif açlık süresi önerisi aşağıdakilerden hangisidir?",
    options: [
      "12 saat katı, 4 saat sıvı",
      "8 saat katı, 6 saat sıvı",
      "6 saat katı, 2 saat berrak sıvı",
      "4 saat katı, 2 saat süt",
      "10 saat açlık, sıvı yasak",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Katı gıdalar için 6 saat, berrak sıvılar için 2 saat açlık önerilir.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "ERAS protokolünde nazogastrik tüp kullanımı için en doğru yaklaşım hangisidir?",
    options: [
      "Tüm hastalarda rutin uygulanmalıdır",
      "İlk 48 saatte çıkarılmalıdır",
      "Cerrahi sonrası hemen çekilmelidir",
      "Sadece kusması olan hastalarda tercih edilir",
      "Gıda alımı başlayana kadar tutulmalıdır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Rutin NG tüp önerilmez, gerekliyse kısa sürede çekilmelidir.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "Anemi varlığı, ERAS kapsamında aşağıdaki komplikasyonlardan hangisinin riskini artırır?",
    options: [
      "Hipoglisemi",
      "Nörojenik şok",
      "Postoperatif enfeksiyon",
      "Hipotermi",
      "Nefropati",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Anemi doku oksijenlenmesini bozar, yara iyileşmesini ve bağışıklık fonksiyonlarını etkileyerek enfeksiyon riskini artırır.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "ERAS protokollerinde postoperatif erken enteral beslenme ne zaman başlatılmalıdır?",
    options: [
      "24 saat sonra",
      "48 saat sonra",
      "Ameliyat günü",
      "Bağırsak sesleri duyulunca",
      "Flatus sonrası",
    ],
    correctAnswerIndex: 2,
    explanation:
        "ERAS'ta oral alım, ameliyat gününde (4-6 saat sonra) başlatılır.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "ERAS'ta 'postoperatif ağrı skoru' kaçın altında olmalıdır?",
    options: [
      "1",
      "3",
      "5",
      "7",
      "10",
    ],
    correctAnswerIndex: 1,
    explanation:
        "ERAS'ta VAS skoru <3 olmalıdır (hasta konforu için).",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "ERAS'ta 'postoperatif atrial fibrilasyon' riskini azaltmak için hangisi yapılır?",
    options: [
      "Beta-bloker",
      "Yüksek sıvı yüklemesi",
      "Hiperglisemi",
      "Derin anestezi",
      "Hiçbiri",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Beta-blokerler, postoperatif atrial fibrilasyon riskini azaltır.",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
  Question(
    question:
        "ERAS protokollerinin uygulanması sonucu hangi cerrahide hastanede kalış süresi en çok kısalır?",
    options: [
      "Kolorektal cerrahi",
      "Kafa cerrahisi",
      "Kardiyak cerrahi",
      "Göz cerrahisi",
      "Hiçbiri",
    ],
    correctAnswerIndex: 0,
    explanation:
        "ERAS, kolorektal cerrahide hastanede kalışı belirgin kısaltır (5-7 günden 2-3 güne).",
    category: "Geliştirilmiş İyileştirme Protokolleri ve Perioperatif Sonuçların Optimizasyonu",
    difficulty: 2,
  ),
];
