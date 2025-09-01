import '../models/question.dart';

final List<Question> analgesicAgentsQuestions = [
  Question(
    question: "Aşağıdakilerden hangisi opioidlere özgü bir etki değildir?",
    options: ["Solunum depresyonu", "İshal", "Miosis", "Öfori", "Analjezi"],
    correctAnswerIndex: 1,
    explanation:
        "Opioidler gastrointestinal motiliteyi azaltarak konstipasyona yol açar. İshal opioidlerle tipik olarak görülmez.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Fentanil ile ilgili aşağıdaki ifadelerden hangisi doğrudur?",
    options: [
      "Uzun etkili bir opioiddir",
      "Histamin salınımı belirgindir",
      "Suda çözünürlüğü yüksektir",
      "Lipofilik yapısı nedeniyle hızlı etki gösterir",
      "Oral biyoyararlanımı yüksektir",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Fentanil yüksek lipofilisiteye sahip olduğundan hızlı beyin penetrasyonu ve hızlı etki başlar.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdaki opioidlerden hangisinin etkisi uzun sürelidir?",
    options: ["Fentanil", "Remifentanil", "Sufentanil", "Morfin", "Alfentanil"],
    correctAnswerIndex: 3,
    explanation:
        "Morfin yarı ömrü uzun olan, daha geç başlayan ama uzun süren bir etki profiline sahiptir.",
    category: "analjezik ajanlar",
    difficulty: 1,
  ),

  Question(
    question: "Remifentanil ile ilgili en önemli farmakokinetik özellik nedir?",
    options: [
      "Karaciğerden metabolize olur",
      "Kolinesteraz ile yıkılır",
      "Uzun etkilidir",
      "Analjezik etkisi zayıftır",
      "Oral kullanılabilir",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Remifentanil plazma ve doku esterazlarıyla yıkılır. Etkisi çok kısa sürelidir ve sürekli infüzyonla kullanılır.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki opioidlerden hangisi aktif metabolitleri nedeniyle renal yetmezlikte dikkatle kullanılmalıdır?",
    options: ["Remifentanil", "Fentanil", "Morfin", "Alfentanil", "Sufentanil"],
    correctAnswerIndex: 2,
    explanation:
        "Morfinin aktif metaboliti olan M6G (morfin-6-glukuronid) böbrek yetmezliğinde birikir ve solunum depresyonu riskini artırır.",
    category: "analjezik ajanlar",
    difficulty: 3,
  ),

  Question(
    question: "Opioidlerin hangi etkisi tolerans gelişimine en az yatkındır?",
    options: ["Analjezi", "Öfori", "Solunum depresyonu", "Miosis", "Sedasyon"],
    correctAnswerIndex: 3,
    explanation:
        "Miosis, opioidlerin tolerans gelişmeyen tipik bir etkisidir. Kronik kullanıcılarda dahi belirgindir.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki reseptörlerden hangisi opioidlerin primer analjezik etkisinden sorumludur?",
    options: ["Delta", "Kappa", "NMDA", "Mu", "Beta"],
    correctAnswerIndex: 3,
    explanation:
        "Mu (μ) reseptörleri opioidlerin analjezik, sedatif, solunum depresif ve öforik etkilerinin çoğundan sorumludur.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Nalokson ile ilgili hangisi doğrudur?",
    options: [
      "Parsiyel opioid agonistidir",
      "Yalnızca oral kullanılır",
      "Opioid reseptör antagonistidir",
      "Analjezik etkisi vardır",
      "Etki süresi morfinden uzundur",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Nalokson opioid antagonistidir; mu, delta ve kappa reseptörlerini bloke eder. IV kullanımda hızlı etki eder.",
    category: "analjezik ajanlar",
    difficulty: 1,
  ),

  Question(
    question:
        "Tramadol'ün analjezik etkisinin bir kısmı hangi nörotransmitterler üzerinden gerçekleşir?",
    options: [
      "Dopamin ve GABA",
      "NMDA ve glutamat",
      "Serotonin ve noradrenalin",
      "Asetilkolin ve GABA",
      "Histamin ve serotonin",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Tramadol hem zayıf bir μ-opioid agonistidir hem de serotonin ve noradrenalin geri alım inhibitörüdür; bu kombinasyon analjezik etki sağlar.",
    category: "analjezik ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Opioid kullanımına bağlı gelişen kas gövde rijiditesi en çok hangi ajanla ilişkilidir?",
    options: ["Morfin", "Tramadol", "Fentanil", "Meperidin", "Nalbuphin"],
    correctAnswerIndex: 2,
    explanation:
        "Fentanil ve türevleri (özellikle yüksek doz IV bolus) göğüs duvarı rijiditesi yapabilir; bu da ventilasyonu zorlaştırabilir.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdaki opioidlerin hangisinin aktif metaboliti yoktur?",
    options: ["Morfin", "Meperidin", "Tramadol", "Fentanil", "Hidromorfon"],
    correctAnswerIndex: 3,
    explanation:
        "Fentanil karaciğerde inaktif metabolitlere yıkılır. Bu nedenle renal yetmezlikte birikme riski düşüktür.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Opioidlerin neden olduğu bulantı-kusma etkisi hangi mekanizma ile ilişkilidir?",
    options: [
      "NMDA antagonizması",
      "Mu reseptör stimülasyonu",
      "Solunum merkezine direkt etki",
      "Kemoreseptör tetik bölge (CTZ) uyarısı",
      "Histamin salınımı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "CTZ medulladaki kusma merkezidir ve opioidler bu bölgeyi uyararak bulantı-kusmaya neden olur.",
    category: "analjezik ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Meperidin ile ilişkili en ciddi toksisite aşağıdakilerden hangisidir?",
    options: [
      "Karaciğer yetmezliği",
      "Epileptik nöbet",
      "Bronkospazm",
      "Bradikardi",
      "İdrar retansiyonu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Meperidin metaboliti olan normeperidin santral sinir sisteminde birikerek nöbet riskini artırır; özellikle böbrek yetmezliğinde tehlikelidir.",
    category: "analjezik ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Opioidlere karşı gelişen tolerans en hızlı hangi etki üzerinde görülür?",
    options: [
      "Analjezi",
      "Miosis",
      "Solunum depresyonu",
      "Konstipasyon",
      "Bulantı-kusma",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Analjezik etkiye tolerans hızlı gelişir. Ancak miosis ve konstipasyon gibi etkiler uzun süre sabit kalabilir.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi parsiyel opioid agonisttir?",
    options: [
      "Morfin",
      "Sufentanil",
      "Buprenorfin",
      "Nalokson",
      "Remifentanil",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Buprenorfin, yüksek afiniteye sahip bir parsiyel mu agonistidir. Analjezik etkisi vardır ancak tam agonistlerden daha az etkilidir.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Opioid toleransının gelişiminde en önemli faktör aşağıdakilerden hangisidir?",
    options: [
      "Reseptör sayısının artması",
      "Reseptör afinitesinin artması",
      "Down-regülasyon ve internalizasyon",
      "Artan hepatik metabolizma",
      "Reseptör mutasyonu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sürekli opioid kullanımı reseptör down-regülasyonu ve internalizasyonuna neden olur, bu da toleransın gelişiminde rol oynar.",
    category: "analjezik ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki opioidlerden hangisi serotonerjik kriz riskini artırabilir?",
    options: ["Fentanil", "Tramadol", "Morfin", "Kodein", "Hepsi"],
    correctAnswerIndex: 1,
    explanation:
        "Tramadol ve meperidin serotonin geri alımını da etkileyebilir; bu nedenle SSRI gibi ilaçlarla birlikte kullanıldığında serotonerjik kriz riski vardır.",
    category: "analjezik ajanlar",
    difficulty: 3,
  ),

  Question(
    question: "Aşağıdakilerden hangisi opioid yoksunluk bulgusu değildir?",
    options: ["Rinore", "Midriyazis", "Ajitasyon", "Konstipasyon", "Terleme"],
    correctAnswerIndex: 3,
    explanation:
        "Opioid yoksunluğunda konstipasyon görülmez; aksine diyare tipiktir. Midriyazis, terleme ve huzursuzluk sık bulgulardır.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Naloksonun etki süresi aşağıdakilerden hangisi için yetersiz kalabilir?",
    options: ["Fentanil", "Remifentanil", "Morfin", "Meperidin", "Tramadol"],
    correctAnswerIndex: 2,
    explanation:
        "Naloksonun yarı ömrü morfinden daha kısadır. Bu nedenle tekrar doz gerekebilir; rebound solunum depresyonu riski vardır.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Opioidlerin neden olduğu solunum depresyonu aşağıdaki reseptörlerden hangisi aracılığıyla olur?",
    options: ["Kappa", "Delta", "NMDA", "Mu", "Sigma"],
    correctAnswerIndex: 3,
    explanation:
        "Solunum depresyonu opioidlerin medulladaki solunum merkezinde yer alan mu (μ) reseptörleri üzerinden yaptığı inhibitör etkiyle oluşur.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Remifentanil ile ilgili olarak aşağıdakilerden hangisi doğrudur?",
    options: [
      "Etkisi hepatik metabolizmaya bağlıdır",
      "Uzun etkili bir ajandır",
      "Kumarin yapısında bir opioid türevidir",
      "Etkisi esterazlarla hızla sonlanır",
      "Analjezik gücü morfinden düşüktür",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Remifentanil plazma ve doku esterazlarıyla hızla yıkılır; bu nedenle çok kısa etkili olup hızlı titrasyon avantajı sunar.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi opioidlerin medulla üzerindeki etkilerinden biri değildir?",
    options: [
      "Solunum depresyonu",
      "Öksürük refleksinin baskılanması",
      "Bulantı-kusma",
      "Kas gevşemesi",
      "Sedasyon",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Opioidler medullada öksürük ve solunum merkezlerini baskılar, sedasyon yapar; ancak doğrudan kas gevşetici etkileri yoktur.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Opioidlerin gastrointestinal sistem üzerindeki tipik etkisi hangisidir?",
    options: [
      "Motilite artışı",
      "Sekresyon artışı",
      "Peristaltizm artışı",
      "Motilite azalması",
      "Peptik ülser gelişimi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Opioidler mide ve bağırsak motilitesini azaltır, peristaltizmi yavaşlatır. Bu da konstipasyona neden olur.",
    category: "analjezik ajanlar",
    difficulty: 1,
  ),

  Question(
    question: "Aşağıdakilerden hangisi tam opioid agonistidir?",
    options: ["Buprenorfin", "Nalbuphin", "Morfin", "Nalokson", "Pentazosin"],
    correctAnswerIndex: 2,
    explanation:
        "Morfin klasik tam μ-opioid agonistidir; analjezik etkisi belirgindir. Diğerleri parsiyel agonist veya antagonisttir.",
    category: "analjezik ajanlar",
    difficulty: 1,
  ),

  Question(
    question: "Opioidlerin nöroendokrin sistem üzerindeki etkisi nedir?",
    options: [
      "TSH salınımını artırır",
      "ACTH salınımını uyarır",
      "LH ve FSH salınımını baskılar",
      "Prolaktin salınımını inhibe eder",
      "GH (büyüme hormonu) salınımını baskılar",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Opioidler hipotalamo-hipofizer aksı etkileyerek gonadotropin (LH, FSH) salınımını baskılar; bu durum hipogonadizme neden olabilir.",
    category: "analjezik ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Opioid kullanımına bağlı gelişen hiperaljezi en çok hangi durumda görülür?",
    options: [
      "Düşük doz uzun süreli kullanım",
      "Hızlı doz azaltılması",
      "Yüksek doz kısa süreli infüzyon",
      "Kombine NSAID kullanımı",
      "Oral kullanım",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Özellikle remifentanil gibi kısa etkili opioidlerin yüksek doz ve kısa süreli infüzyonu sonrası, 'opioid ilişkili hiperaljezi' gelişebilir.",
    category: "analjezik ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki opioidlerin hangisi kas rijiditesine en çok neden olur?",
    options: ["Alfentanil", "Meperidin", "Morfin", "Nalbuphin", "Tramadol"],
    correctAnswerIndex: 0,
    explanation:
        "Alfentanil, hızlı etki başlangıcı ve yüksek potens nedeniyle göğüs duvarı rijiditesine neden olabilir; bu etki genellikle yüksek doz IV bolus ile ortaya çıkar.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Tramadol ile ilgili olarak hangisi doğrudur?",
    options: [
      "Saf opioid agonisttir",
      "Sadece periferik etkisi vardır",
      "Analjezik etkisi serotonerjik ve noradrenerjik yollardan da gelir",
      "Solunum depresyonu morfinden daha şiddetlidir",
      "Böbrek üzerinden metabolize olur",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Tramadol'ün analjezik etkisi hem zayıf μ-opioid agonist etkisinden hem de serotonin/noradrenalin geri alım inhibitörlüğünden kaynaklanır.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Opioidlerin medulla üzerindeki etkilerinden hangisi tedavi edici olarak kullanılır?",
    options: [
      "Solunum depresyonu",
      "Öksürük refleksi baskılanması",
      "Bulantı-kusma",
      "Mide boşalmasının gecikmesi",
      "Midriyazis",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Opioidler medulladaki öksürük merkezini baskılayarak antitussif (öksürük kesici) etki yaparlar; bu amaçla düşük doz kodein gibi ajanlar kullanılır.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi opioid yoksunluk sendromuna ait geç bulgulardan biridir?",
    options: ["Midriyazis", "Anksiyete", "Rinore", "Terleme", "Kas ağrısı"],
    correctAnswerIndex: 4,
    explanation:
        "Opioid yoksunluğunun erken bulguları arasında rinore, lakrimasyon, terleme varken; kas ağrıları ve kramplar geç bulgular arasında yer alır.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki opioidlerin hangisi kardiyovasküler stabiliteyi en fazla korur?",
    options: ["Meperidin", "Morfin", "Sufentanil", "Fentanil", "Remifentanil"],
    correctAnswerIndex: 3,
    explanation:
        "Fentanil, minimal histamin salınımı ve sempatik tonus üzerindeki etkileri nedeniyle kardiyovasküler stabiliteyi en iyi koruyan opioidlerden biridir.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi opioidlerin gözde oluşturduğu tipik etkidir?",
    options: [
      "Midriyazis",
      "Glokom",
      "Miosis",
      "Akkomodasyon spazmı",
      "Pupilla fiksasyonu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Opioidler parasempatik sistemi uyararak pupillaların daralmasına (miosis) neden olur. Bu etkiye tolerans gelişmez.",
    category: "analjezik ajanlar",
    difficulty: 1,
  ),

  Question(
    question:
        "Aşağıdaki opioidlerden hangisi safra kanallarında spazma neden olarak biliyer kolik oluşturabilir?",
    options: ["Meperidin", "Fentanil", "Morfin", "Tramadol", "Nalbuphin"],
    correctAnswerIndex: 2,
    explanation:
        "Morfin Oddi sfinkterini kasarak safra akışını azaltabilir ve biliyer kolik ağrıya yol açabilir.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi opioid kullanımında konstipasyon gelişimini en iyi önler?",
    options: [
      "Düşük doz opioid kullanımı",
      "Antikolinerjik kombinasyonu",
      "Periferik opioid antagonisti verilmesi",
      "Hidrasyon kısıtlaması",
      "SSRI eş zamanlı kullanımı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Laksatiflere yanıt vermeyen opioid kaynaklı konstipasyon, periferik opioid reseptör antagonistleri (örn. metilnaltrekson) ile etkili şekilde tedavi edilir.",
    category: "analjezik ajanlar",
    difficulty: 3,
  ),

  Question(
    question: "Aşağıdakilerden hangisi opioidler için doğrudur?",
    options: [
      "Plasentayı geçemezler",
      "Teratojen etkileri yaygındır",
      "Solunum depresyonu yeni doğanda da oluşabilir",
      "Nefrotoksik etkileri yüksektir",
      "Kusmayı önlerler",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Opioidler plasentayı geçer ve doğum sırasında uygulandığında yenidoğanda solunum depresyonuna neden olabilir.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki opioidlerin hangisi doğum ağrısında sıklıkla tercih edilir?",
    options: ["Morfin", "Nalbuphin", "Fentanil", "Meperidin", "Alfentanil"],
    correctAnswerIndex: 3,
    explanation:
        "Meperidin (petidin), hem analjezik etkisi hem de uterus kontraksiyonlarını çok az etkilemesi nedeniyle doğum sırasında tercih edilen opioidlerden biridir.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Opioidlerle ilişkili kaşıntının temel nedeni nedir?",
    options: [
      "Serotonin salınımı",
      "Asetilkolin salınımı",
      "Histamin salınımı",
      "Prostaglandin sentezi",
      "TNF-alfa aktivasyonu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Özellikle morfin gibi bazı opioidler mast hücrelerinden histamin salınımına neden olur; bu da kaşıntıya yol açar.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi opioidlerin kronik kullanımı sonucunda gelişebilecek bir durumdur?",
    options: [
      "Hiperkalemi",
      "Hipoglisemi",
      "Hipogonadizm",
      "Hipoterminin engellenmesi",
      "Hipertiroidizm",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kronik opioid kullanımı hipotalamo-hipofiz-gonad aksını baskılayarak testosteron düzeyini düşürür; bu durum opioid ilişkili hipogonadizm olarak bilinir.",
    category: "analjezik ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki opioidlerden hangisinin antitussif etkisi daha belirgindir?",
    options: ["Morfin", "Fentanil", "Tramadol", "Kodein", "Nalbuphin"],
    correctAnswerIndex: 3,
    explanation:
        "Kodein düşük dozda öksürük merkezini baskılayarak güçlü antitussif etki gösterir; bu amaçla sıkça reçetelenir.",
    category: "analjezik ajanlar",
    difficulty: 1,
  ),

  Question(
    question:
        "Aşağıdaki opioidlerden hangisi histamin salınımına en az neden olur?",
    options: ["Morfin", "Meperidin", "Fentanil", "Kodein", "Tramadol"],
    correctAnswerIndex: 2,
    explanation:
        "Fentanil ve türevleri (sufentanil, alfentanil) histamin salınımı açısından oldukça güvenlidir ve bu nedenle hemodinamik stabilite aranan hastalarda tercih edilir.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi μ-opioid reseptör stimülasyonuna bağlı değildir?",
    options: [
      "Solunum depresyonu",
      "Euforia",
      "Analjezi",
      "Miosis",
      "Hipertansiyon",
    ],
    correctAnswerIndex: 4,
    explanation:
        "μ-reseptör stimülasyonu hipotansiyon yapabilir; hipertansiyon bu reseptör aktivitesine bağlı tipik bir etki değildir.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki durumların hangisinde opioidlerin etkisi artmış olabilir?",
    options: [
      "Karaciğer enzim indüksiyonu",
      "CYP3A4 aktivasyonunun artması",
      "Renal yetmezlik",
      "Akut hipervolemi",
      "Hipertiroidi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Renal yetmezlikte bazı opioidlerin aktif metabolitleri (özellikle morfin) birikir; bu durum etkilerinin artmasına ve toksisiteye yol açabilir.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Meperidin kullanımında normeperidin birikimi ile ortaya çıkabilen en önemli klinik bulgu nedir?",
    options: ["Deliryum", "Solunum artışı", "Nöbet", "Hipotermi", "Midriyazis"],
    correctAnswerIndex: 2,
    explanation:
        "Normeperidin nörotoksiktir; yüksek doz veya böbrek yetmezliğinde birikerek konvülsiyonlara (nöbetlere) neden olabilir.",
    category: "analjezik ajanlar",
    difficulty: 3,
  ),

  Question(
    question: "Opioidlerle birlikte antihistaminik verilmesinin amacı nedir?",
    options: [
      "Solunum depresyonunu azaltmak",
      "Sedasyonu artırmak",
      "Antiemetik etkiyi artırmak",
      "Kaşıntıyı azaltmak",
      "Analjeziyi uzatmak",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Opioidlerin neden olduğu kaşıntı, histamin salınımına bağlıdır; bu nedenle H1 antagonistleri (antihistaminikler) ile azaltılabilir.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Tramadol ile ilgili aşağıdakilerden hangisi yanlıştır?",
    options: [
      "Zayıf μ-opioid agonistidir",
      "Serotonin geri alım inhibitörüdür",
      "Solunum depresyonu minimaldir",
      "Yüksek dozda nöbet riski yoktur",
      "Noradrenalin geri alımını inhibe eder",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Tramadol yüksek dozda kullanıldığında nöbet riskini artırabilir; özellikle epileptik hastalarda dikkatli kullanılmalıdır.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Opioidlerin en ciddi yan etkisi olarak kabul edilen durum hangisidir?",
    options: [
      "Miosis",
      "Sedasyon",
      "Konstipasyon",
      "Solunum depresyonu",
      "Kaşıntı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Solunum depresyonu, opioidlerin en ciddi ve yaşamı tehdit edebilen yan etkisidir; doz titrasyonu ve izlem bu nedenle çok önemlidir.",
    category: "analjezik ajanlar",
    difficulty: 1,
  ),

  Question(
    question: "Aşağıdakilerden hangisi opioid antagonistidir?",
    options: ["Meperidin", "Tramadol", "Nalokson", "Fentanil", "Alfentanil"],
    correctAnswerIndex: 2,
    explanation:
        "Nalokson, tam opioid antagonistidir ve opioid aşırı dozlarında ilk tercihtir; etkisi kısa sürelidir, gerekirse tekrar dozu verilir.",
    category: "analjezik ajanlar",
    difficulty: 1,
  ),

  Question(
    question:
        "Aşağıdaki opioid reseptörlerinden hangisi analjezi etkisinden en çok sorumludur?",
    options: ["Delta (δ)", "Kappa (κ)", "Mu (μ)", "Sigma (σ)", "NMDA"],
    correctAnswerIndex: 2,
    explanation:
        "Mu (μ) reseptörleri, spinal ve supraspinal düzeyde analjezi, solunum depresyonu ve bağımlılık etkilerinden sorumludur.",
    category: "analjezik ajanlar",
    difficulty: 2,
  ),
];
