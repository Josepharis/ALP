import '../models/question.dart';

final List<Question> auxiliaryDrugsQuestions = [
  Question(
    id: 'aux_001',
    question:
        'Aşağıdakilerden hangisi preanestezik medikasyon olarak anksiyolitik amaçla kullanılır?',
    options: [
      'Ondansetron',
      'Midazolam',
      'Deksametazon',
      'Ketamin',
      'Ranitidin',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Midazolam, benzodiazepin grubundandır, anksiyolitik, sedatif ve amnestik etkileri vardır → preanestezik medikasyonda sık kullanılır.',
    difficulty: 1,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_002',
    question:
        'Alfa-2 agonist olup, premedikasyonda sedasyon ve analjezi sağlayan ajan aşağıdakilerden hangisidir?',
    options: [
      'Fentanil',
      'Midazolam',
      'Deksmedetomidin',
      'Difenhidramin',
      'Ondansetron',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Deksmedetomidin, alfa-2 agonisttir → sedasyon, anksiyolizis ve analjezi sağlar, solunum depresyonu oluşturmaz.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_003',
    question:
        'Aşağıdaki yardımcı ilaçlardan hangisi histamin H2 reseptör antagonistidir?',
    options: [
      'Ranitidin',
      'Ondansetron',
      'Deksametazon',
      'Prometazin',
      'Difenhidramin',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Ranitidin, H2 reseptör blokörüdür → mide asiditesini azaltır, özellikle aspirasyon riski olan hastalarda tercih edilir.',
    difficulty: 1,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_004',
    question:
        'Aşağıdakilerden hangisi antiasit premedikasyonu amacıyla kullanılır?',
    options: [
      'Deksametazon',
      'Sodyum sitrat',
      'Famotidin',
      'Ondansetron',
      'Metoklopramid',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Sodyum sitrat, oral olarak verilen antiasid bir ajan olup mide içeriğinin pH ını yükseltir.',
    difficulty: 1,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_005',
    question: 'Gastrokinetik etkili antiemetik ajan hangisidir?',
    options: [
      'Ondansetron',
      'Skopolamin',
      'Metoklopramid',
      'Deksametazon',
      'Prometazin',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Metoklopramid, D2 antagonizması ile birlikte mide boşalmasını hızlandıran gastrokinetik etki gösterir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_006',
    question:
        'Deksametazonun antiemetik etkisi en çok hangi mekanizma ile ilişkilidir?',
    options: [
      'D2 reseptör blokajı',
      '5-HT3 antagonizması',
      'Kortikosteroid etkisiyle beyin sapı inhibitörü etki',
      'H1 blokajı',
      'NK1 reseptör blokajı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Deksametazon, net mekanizması bilinmemekle birlikte kemoreseptör tetikleme bölgesinde inhibitör etki yaparak bulantı kusmayı azaltır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_007',
    question:
        'Aşağıdaki ilaçlardan hangisi preanestezik mide boşaltımını hızlandırmak amacıyla kullanılır?',
    options: [
      'Ondansetron',
      'Metoklopramid',
      'Midazolam',
      'Ketamin',
      'Deksmedetomidin',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Metoklopramid, dopamin antagonistidir, gastrik motiliteyi artırır → aspirasyon riskini azaltmak için kullanılabilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_008',
    question:
        'Aşağıdakilerden hangisi postoperatif bulantı ve kusma (PONV) profilaksisinde en sık kullanılan ajanlardan biridir?',
    options: ['Fentanil', 'Neostigmin', 'Ondansetron', 'Lidokain', 'Midazolam'],
    correctAnswerIndex: 2,
    explanation:
        'Ondansetron, 5-HT3 reseptör antagonisti olup PONV tedavisinde ilk tercih edilen ilaçlardandır.',
    difficulty: 1,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_009',
    question:
        'Aşağıdaki antihistaminik ilaçlardan hangisi aynı zamanda antiemetiktir?',
    options: [
      'Loratadin',
      'Prometazin',
      'Ranitidin',
      'Difenhidramin',
      'Setirizin',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Prometazin, H1 reseptör antagonistidir → sedatif ve antiemetik etkisi vardır, preanestezik olarak da kullanılır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_010',
    question:
        'Aşağıdaki antiemetik ajanlardan hangisinin ekstrapiramidal yan etkisi olabilir?',
    options: [
      'Ondansetron',
      'Deksametazon',
      'Metoklopramid',
      'Difenhidramin',
      'Skopolamin',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Metoklopramid, dopamin reseptör blokajı nedeniyle yüksek dozlarda ekstrapiramidal yan etkiler oluşturabilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_011',
    question: 'Deksametazon un antiemetik etkisi ne zaman başlar?',
    options: ['1–2 dakika', '15 dakika', '30–60 dakika', '2–3 saat', 'Hemen'],
    correctAnswerIndex: 2,
    explanation:
        'Deksametazon, antiemetik etki için 30–60 dakika önceden verilmelidir; etkisi gecikmelidir ama uzundur.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_012',
    question:
        'Metoklopramid, antiemetik etkisini hangi reseptör üzerinden sağlar?',
    options: [
      'H1 reseptör antagonizması',
      'M3 reseptör antagonizması',
      'D2 reseptör antagonizması',
      'NK1 reseptör blokajı',
      'GABA reseptör agonizması',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Metoklopramid, esas olarak dopamin D2 reseptörlerini bloke ederek antiemetik etki gösterir. Ayrıca mide boşaltımını da hızlandırır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_013',
    question:
        'Aşağıdaki antiemetiklerden hangisi antihistaminik ve antikolinerjik etki gösterir?',
    options: [
      'Ondansetron',
      'Deksametazon',
      'Skopolamin',
      'Prometazin',
      'Metoklopramid',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Prometazin, hem H1 antihistaminik hem de antikolinerjik etkili bir fenotiyazindir. Sedatif ve antiemetik olarak kullanılır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_014',
    question:
        'Aşağıdaki ilaçlardan hangisi aspirasyon pnömonisi riskini azaltmak için preoperatif dönemde kullanılabilir?',
    options: [
      'Ondansetron',
      'Prometazin',
      'Ranitidin',
      'Midazolam',
      'Fentanil',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Ranitidin, mide asiditesini azaltır → aspirasyon pnömonisi riski taşıyan hastalarda preoperatif kullanılır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_015',
    question:
        'Aşağıdaki ajanlardan hangisi benzodiazepin antagonisti olarak kullanılır?',
    options: [
      'Nalokson',
      'Neostigmin',
      'Flumazenil',
      'Deksametazon',
      'Metilen mavisi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Flumazenil, benzodiazepinlerin GABA-A reseptörlerine etkisini kompetitif olarak inhibe eder ve sedasyonun geri döndürülmesinde kullanılır.',
    difficulty: 1,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_016',
    question: 'Aşağıdakilerden hangisi opioid antagonisti olarak etki eder?',
    options: [
      'Deksametazon',
      'Neostigmin',
      'Midazolam',
      'Flumazenil',
      'Nalokson',
    ],
    correctAnswerIndex: 4,
    explanation:
        'Nalokson, tüm opioid reseptörlerine antagonistik etki göstererek opioid kaynaklı solunum depresyonunu tersine çevirebilir.',
    difficulty: 1,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_017',
    question:
        'Anestezide yardımcı ilaç olarak kullanılan deksametazonun en belirgin etkisi nedir?',
    options: [
      'İnotropik etki',
      'Bulantı-kusma önleme',
      'Sedasyon',
      'Kas gevşemesi',
      'Anksiyoliz',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Deksametazon, PONV profilaksisi için kullanılan steroid yapılı antiemetiktir. Ayrıca analjezik etkileri de vardır.',
    difficulty: 1,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_018',
    question:
        'Deksmedetomidin in en belirgin yan etkisi aşağıdakilerden hangisidir?',
    options: [
      'Taşikardi',
      'Hipertansiyon',
      'Bradikardi ve hipotansiyon',
      'Solunum depresyonu',
      'Disfori',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Alfa-2 agonist olan deksmedetomidin, sempatik tonusu azaltarak bradikardi ve hipotansiyona yol açabilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_019',
    question:
        'Flumazenil uygulamasında en dikkat edilmesi gereken durum hangisidir?',
    options: [
      'Hipotansiyon',
      'Bradikardi',
      'Geriye dönük amnezi',
      'Konvülsiyon',
      'Bulantı',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Flumazenil, benzodiazepin bağımlılığı olan hastalarda yoksunluk krizine ve nöbete neden olabilir. Bu yüzden dikkatle kullanılmalıdır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_020',
    question:
        'Flumazenil kullanımı ile ilgili aşağıdakilerden hangisi doğrudur?',
    options: [
      'Opioid etkilerini antagonize eder',
      'Etkisi uzun sürelidir',
      'Benzodiazepin reseptörlerine selektif antagonistik etki gösterir',
      'Antikolinerjik etkileri vardır',
      'Doğrudan dopaminerjik reseptörlere bağlanır',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Flumazenil, benzodiazepin reseptörlerine selektif antagonistik etki göstererek bu ilaçların etkilerini geri döndürür.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_021',
    question:
        'Aşağıdaki ilaçlardan hangisi M1 muskarinik reseptör blokajı ile antiemetik etki oluşturur?',
    options: [
      'Ondansetron',
      'Skopolamin',
      'Prometazin',
      'Deksametazon',
      'Droperidol',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Skopolamin, M1 reseptörlerini bloke ederek özellikle vestibüler kaynaklı bulantı-kusmaya karşı etkilidir. Transdermal formu vardır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_022',
    question: 'Ondansetronun yan etkilerinden biri aşağıdakilerden hangisidir?',
    options: [
      'QT aralığında kısalma',
      'Bradikardi',
      'QT uzaması',
      'Hipotermi',
      'Hiperglisemi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Ondansetron, nadiren QT aralığını uzatabilir → özellikle kardiyak hastalarda dikkatli kullanılmalıdır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_023',
    question:
        'Prometazin, aşağıdaki etki mekanizmalarından hangisi ile antiemetik etki sağlar?',
    options: [
      'H2 reseptör antagonizması',
      'D2 reseptör stimülasyonu',
      'H1 reseptör antagonizması',
      'NK1 antagonizması',
      'Muskarinik agonizm',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Prometazin, H1 reseptör antagonisti olarak çalışır ve antiemetik + sedatif etkiler gösterir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_024',
    question:
        'Aşağıdaki ilaçlardan hangisi postoperatif titreme (shivering) tedavisinde kullanılır?',
    options: [
      'Midazolam',
      'Meperidin',
      'Ondansetron',
      'Labetalol',
      'Deksametazon',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Meperidin, opioid olmasına rağmen titremeyi baskılayan etkisiyle benzersizdir. Bu durum muhtemelen alfa-2 agonist etkisine bağlıdır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_025',
    question:
        'Anestezide gastroözofageal reflüyü önlemek için kullanılan ajan hangisidir?',
    options: [
      'Deksametazon',
      'Sodyum sitrat',
      'Metoklopramid',
      'Ondansetron',
      'Midazolam',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Metoklopramid, alt özofagus sfinkter tonusunu artırarak reflüyü azaltır. Bu özelliği ile premedikasyonda kullanılır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_026',
    question:
        'Deksametazonun perioperatif kullanımı aşağıdakilerden hangisini önlemeye yardımcı olabilir?',
    options: [
      'Opioid toleransı',
      'Postoperatif ağrı',
      'Hipotermi',
      'Solunum depresyonu',
      'Refleks taşikardi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Deksametazon, antiinflamatuar etkisiyle postoperatif ağrıyı azaltabilir ve ayrıca PONV profilaksisinde de faydalıdır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_027',
    question:
        'Aşağıdaki ilaçlardan hangisi dopamin D2 reseptör antagonisti olup antiemetik etki gösterir?',
    options: [
      'Ondansetron',
      'Deksametazon',
      'Metoklopramid',
      'Skopolamin',
      'Ranitidin',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Metoklopramid, santral ve periferik dopamin D2 reseptörlerini bloke eder, bu yolla antiemetik ve gastrokinetik etki sağlar.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_028',
    question:
        'Postoperatif bulantı ve kusma (PONV) riskini en fazla artıran faktör hangisidir?',
    options: [
      'Yaşlı hasta olması',
      'Erkek cinsiyet',
      'Sigara kullanımı',
      'Kadın cinsiyet ve öyküde PONV olması',
      'Hızlı indüksiyon',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Kadın cinsiyet, PONV öyküsü, non-smoker olmak ve postoperatif opioid kullanımı, PONV için en güçlü risk faktörleridir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_029',
    question:
        'Opioidlerin neden olduğu bulantı ve kusma hangi reseptör aracılığıyla oluşur?',
    options: ['D2', '5-HT3', 'M1', 'NK1', 'Alfa-2'],
    correctAnswerIndex: 0,
    explanation:
        'Opioidler, kemoreseptör tetikleme bölgesinde (CTZ) D2 reseptörlerini uyararak bulantı ve kusmaya neden olur.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_030',
    question:
        'Anestezide kullanılan difenhidraminin antiemetik etkisi hangi mekanizmaya bağlıdır?',
    options: [
      '5-HT3 blokajı',
      'M1 blokajı',
      'H1 reseptör antagonizması',
      'D2 antagonizması',
      'NK1 antagonizması',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Difenhidramin, H1 reseptör antagonisti olup vestibüler sistem kaynaklı bulantı-kusmalarda etkilidir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_031',
    question:
        'Ondansetron un antiemetik etkisi hangi reseptör antagonizmasına bağlıdır?',
    options: ['D2', '5-HT3', 'H1', 'M1', 'NK1'],
    correctAnswerIndex: 1,
    explanation:
        'Ondansetron, 5-HT3 reseptör antagonisti olup kemoreseptör tetikleme bölgesi (CTZ) ve vagal afferentlerde etkilidir.',
    difficulty: 1,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_032',
    question:
        'Skopolaminin en sık görülen yan etkilerinden biri aşağıdakilerden hangisidir?',
    options: [
      'Hipersalivasyon',
      'Bulantı',
      'Sedasyon ve ağız kuruluğu',
      'Bradikardi',
      'Hipotansiyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Skopolamin, antikolinerjik etkisiyle ağız kuruluğu ve sedasyon oluşturabilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_033',
    question:
        'Aşağıdaki ilaçlardan hangisi histamin H2 reseptör antagonisti olup premedikasyonda mide asidini azaltmak için kullanılır?',
    options: [
      'Ranitidin',
      'Ondansetron',
      'Midazolam',
      'Deksametazon',
      'Metoklopramid',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Ranitidin, H2 reseptör antagonisti olup asit sekresyonunu azaltarak aspirasyon pnömonisi riskini düşürür.',
    difficulty: 1,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_034',
    question:
        'Deksametazon un antiemetik etkisinin mekanizması tam olarak bilinmemekle birlikte hangi özelliği katkıda bulunur?',
    options: [
      'Dopamin reseptör blokajı',
      'Kortikal eksitabiliteyi artırma',
      'Prostoglandin sentezini inhibe etme',
      'Serotonin antagonizması',
      'Parasempatik aktiviteyi artırma',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Deksametazon, muhtemelen prostoglandin sentezini inhibe ederek ve santral antiinflamatuvar etkilerle antiemetik etki gösterir.',
    difficulty: 3,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_035',
    question: 'Flumazenil in etki süresi genellikle ne kadardır?',
    options: [
      '2–4 dakika',
      '10–20 dakika',
      '30–60 dakika',
      '2–4 saat',
      '6–8 saat',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Flumazenil, benzodiazepin antagonisti olarak 30–60 dakika etkilidir; bu nedenle benzodiazepin etkisi uzun sürebilecek hastalarda tekrar doz gerekebilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_036',
    question:
        'PONV riski yüksek bir hastada en uygun antiemetik kombinasyonu hangisidir?',
    options: [
      'Ondansetron + midazolam',
      'Deksametazon + ondansetron',
      'Prometazin + flumazenil',
      'Ranitidin + parasetamol',
      'Skopolamin + atropin',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Deksametazon + ondansetron, farklı mekanizmalarla etki ederek PONV profilaksisinde sinerjistik etki sağlar.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_037',
    question:
        'Meperidin in postoperatif titreme üzerindeki etkisi hangi özelliğine bağlanır?',
    options: [
      'Opioid etkisi',
      'Antiserotonerjik aktivitesi',
      'Alfa-2 agonist benzeri etkisi',
      'NMDA antagonizması',
      'Dopamin blokajı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Meperidin, postoperatif titremeyi azaltır. Bu etki alfa-2 agonist benzeri santral etkisine atfedilir.',
    difficulty: 3,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_038',
    question:
        'Aşağıdaki ilaçlardan hangisi postoperatif opioid tüketimini azaltıcı yardımcı ajanlardan biridir?',
    options: [
      'Skopolamin',
      'Flumazenil',
      'Ondansetron',
      'Deksametazon',
      'Ranitidin',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Deksametazon, antiemetik etkisinin yanında analjezik etkisiyle postoperatif opioid ihtiyacını azaltabilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_039',
    question:
        'Aşağıdakilerden hangisi antimuskarinik olup premedikasyonda sekresyonları azaltmak için kullanılır?',
    options: [
      'Neostigmin',
      'Ranitidin',
      'Glycopyrrolate',
      'Ondansetron',
      'Midazolam',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Glycopyrrolate, kuaterner amin yapılı antimuskarinik bir ajandır, sekresyonları azaltmak amacıyla sık kullanılır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_040',
    question:
        'Flumazenil uygulamasında nüks sedasyon riski en çok hangi durumda görülür?',
    options: [
      'Opioid bağımlılığı',
      'Antikolinerjik zehirlenme',
      'Uzun etkili benzodiazepin kullanımı',
      'Propofol ile sedasyon',
      'Hipoglisemi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Flumazenil in etki süresi, bazı uzun etkili benzodiazepinlerden daha kısadır. Bu nedenle sedasyonun tekrarlama riski vardır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_041',
    question: 'Aşağıdakilerden hangisi midazolamın özelliklerinden biridir?',
    options: [
      'Antiemetik etkisi vardır',
      'Suda çözünür ve hızlı etkilidir',
      'Ağrı kesici özelliği vardır',
      'Histamin salınımı yapar',
      'Spinal kullanım için uygundur',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Midazolam, benzodiazepinler arasında suda çözünebilen ve hızlı etki başlangıcı olan tek ajandır. Bu da onu premedikasyonda avantajlı kılar.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_042',
    question:
        'Aşağıdaki ilaçlardan hangisinin premedikasyonda kullanımı antagonist gereksinimini doğurabilir?',
    options: [
      'Metoklopramid',
      'Deksametazon',
      'Ondansetron',
      'Midazolam',
      'Skopolamin',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Midazolam, aşırı sedasyon veya paradoksal reaksiyon durumunda flumazenil ile antagonize edilebilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_043',
    question:
        'Opioidlerin neden olduğu bulantı-kusmanın en iyi yönetimi için hangi antiemetik grubu seçilmelidir?',
    options: [
      'Antihistaminikler',
      'Antimuskarinikler',
      '5-HT3 antagonistleri',
      'NK1 antagonistleri',
      'Dopamin antagonistleri',
    ],
    correctAnswerIndex: 4,
    explanation:
        'Opioidler CTZ de dopamin reseptörlerini uyararak bulantı-kusmaya neden olur. Bu yüzden D2 antagonistleri (örneğin metoklopramid) etkili olur.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_044',
    question:
        'Aşağıdaki antiemetiklerden hangisi transdermal formda uygulanabilir?',
    options: [
      'Ondansetron',
      'Prometazin',
      'Skopolamin',
      'Metoklopramid',
      'Deksametazon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Skopolamin, transdermal yolla uygulanabilen nadir antiemetiklerden biridir; özellikle hareket hastalığına bağlı PONV için kullanılır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_045',
    question:
        'Aşağıdaki ilaçlardan hangisi aspirasyon pnömonisini önlemek amacıyla mide içeriğini nötralize etmek için premedikasyonda kullanılır?',
    options: [
      'Deksametazon',
      'Metoklopramid',
      'Ranitidin',
      'Sodyum sitrat',
      'Ondansetron',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Sodyum sitrat, mide içeriğinin pH sını hızla yükselterek asit aspirasyonuna bağlı akciğer hasarını önlemede etkilidir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_046',
    question:
        'Postoperatif bulantı ve kusma riski taşıyan bir hastada tek doz ondansetron genellikle ne zaman uygulanmalıdır?',
    options: [
      'Ameliyat öncesi gece',
      'İndüksiyon sırasında',
      'Ameliyat bitimine yakın',
      'Ameliyat sonrası PACU da',
      '1 gün önceden',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Ondansetron, genellikle ameliyat bitimine yakın uygulanır, çünkü etkisi kısa sürede başlar ve yaklaşık 4–6 saat sürer.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_047',
    question:
        'Aşağıdakilerden hangisi premedikasyonda kullanıldığında bradikardi riskini azaltır?',
    options: [
      'Metoklopramid',
      'Midazolam',
      'Skopolamin',
      'Sodyum sitrat',
      'Neostigmin',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Skopolamin, antimuskarinik etki ile vagal uyarıya bağlı bradikardi riskini azaltır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_048',
    question:
        'Benzodiazepinlerin GABA-A reseptörü üzerindeki etkisi aşağıdakilerden hangisidir?',
    options: [
      'Glutamat aktivitesini artırmak',
      'GABA salınımını inhibe etmek',
      'GABA nın affinitesini artırmak',
      'Dopamin reseptörlerine bağlanmak',
      'NMDA reseptörlerini bloke etmek',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Benzodiazepinler, GABA-A reseptörüne bağlanarak GABA nın bağlanma etkinliğini artırır, böylece inhibitör etkiyi güçlendirir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_049',
    question:
        'Deksametazon un anestezi sırasında analjezik etki göstermesinin nedeni nedir?',
    options: [
      'Serotonin antagonizması',
      'GABA agonizması',
      'Antiinflamatuvar etkisi',
      'Nöromodülasyon',
      'NMDA blokajı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Deksametazon, antiinflamatuvar etkisi ile hem postoperatif ağrıyı azaltabilir hem de opioid gereksinimini düşürebilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_050',
    question:
        'Aşağıdakilerden hangisi antimuskarinik ilaç grubundandır ve sedasyon yapmaz?',
    options: [
      'Skopolamin',
      'Midazolam',
      'Glycopyrrolate',
      'Atropin',
      'Prometazin',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Glycopyrrolate, kuaterner amin yapıda olduğu için kan beyin bariyerini geçmez, bu nedenle sedasyon oluşturmaz.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_051',
    question: 'Flumazenil in kontrendike olabileceği durum hangisidir?',
    options: [
      'Benzodiazepin ile aşırı sedasyon',
      'Benzodiazepin bağımlılığı olan hasta',
      'Solunum depresyonu gelişen hasta',
      'Kısa etkili benzodiazepin kullanımı',
      'Cerrahi öncesi anksiyetesi olan hasta',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Benzodiazepin bağımlılığı olan hastalarda flumazenil kullanımı yoksunluk ve nöbet riski nedeniyle kontrendikedir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_052',
    question:
        'Deksametazonun PONV üzerindeki etkisi en belirgin ne zaman ortaya çıkar?',
    options: [
      'Anestezi indüksiyonundan hemen sonra',
      'Anestezi bitiminde',
      'İlk postoperatif saatlerde',
      '12 saat sonra',
      'Sedasyon sonrası',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Deksametazon, ilk birkaç postoperatif saat içinde etkisini gösterir → bu yüzden anestezi indüksiyonu sırasında verilmesi idealdir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_053',
    question:
        'Aşağıdakilerden hangisi antihistaminik bir sedatif-antiemetik ilaçtır?',
    options: [
      'Loratadin',
      'Difenhidramin',
      'Ranitidin',
      'Ondansetron',
      'Domperidon',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Difenhidramin, birinci kuşak H1 antagonisti olup sedatif ve antiemetik etkilidir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_054',
    question:
        '5-HT3 reseptör antagonisti olan ve QT uzaması riski taşıyan antiemetik ajan hangisidir?',
    options: [
      'Prometazin',
      'Ondansetron',
      'Deksametazon',
      'Domperidon',
      'Difenhidramin',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Ondansetron, 5-HT3 reseptör antagonistidir → nadiren QT uzamasına yol açabilir → kardiyak hastalarda dikkatli olunmalıdır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_055',
    question:
        'Ranitidin, aşağıdakilerden hangisini azaltarak aspirasyon riskini düşürür?',
    options: [
      'Mide peristaltizmi',
      'Gastrik pH',
      'Gastrik volüm',
      'Safra akımı',
      'Pilor tonusu',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Ranitidin, mide asidi üretimini azaltarak gastrik volüm ve asiditeyi düşürür → aspirasyon riskini azaltır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_056',
    question:
        'Deksametazonun antiemetik etkisi için ideal uygulama zamanı nedir?',
    options: [
      'Cerrahiden 12 saat önce',
      'İndüksiyon sırasında',
      'Anestezi bitiminden hemen önce',
      'Postoperatif ilk 4 saatte',
      'Cerrahi sonrası 24. saatte',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Deksametazon, PONV profilaksisi için en etkili şekilde anestezi indüksiyonu sırasında verilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_057',
    question:
        'Aşağıdakilerden hangisi PONV gelişme riskini artıran faktörlerden biri değildir?',
    options: [
      'Kadın cinsiyet',
      'Opioid kullanımı',
      'Non-emetojenik anestezik kullanımı',
      'Sigara içmemek',
      'Anksiyete öyküsü',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Non-emetojenik anestezik kullanımı (ör. propofol) PONV riskini azaltır. Kadın cinsiyet, non-smoker olmak, anksiyete ve opioid kullanımı riski artırır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_058',
    question:
        'Aşağıdakilerden hangisi 5-HT3 antagonisti olmayan antiemetiktir?',
    options: [
      'Ondansetron',
      'Palonosetron',
      'Granisetron',
      'Metoklopramid',
      'Tropisetron',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Metoklopramid, D2 antagonisti olup antiemetiktir → diğerleri 5-HT3 antagonistleridir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_059',
    question: 'Flumazenilin aşırı dozda kullanımı hangi durumu tetikleyebilir?',
    options: [
      'Bradyaritmi',
      'Konvülsiyon',
      'Hipotermi',
      'Hipoglisemi',
      'QT kısalması',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Flumazenil, özellikle benzodiazepin bağımlılığı olanlarda ani reseptör blokajı yaparak nöbet (konvülsiyon) tetikleyebilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_060',
    question:
        'Aşağıdakilerden hangisi kortikosteroidlerin perioperatif kullanımı ile ilişkili değildir?',
    options: [
      'PONV önleme',
      'Postoperatif ağrı kontrolü',
      'Enfeksiyon riskinde azalma',
      'İnflamasyonu azaltma',
      'Ameliyat sonrası iştah artışı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Steroidler, antiinflamatuar etkileri nedeniyle enfeksiyon riskini artırabilir → azaltmazlar.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_061',
    question:
        'Aşağıdakilerden hangisi antiemetik ilaçların ortak etkilerinden biri değildir?',
    options: [
      'Bulantı kontrolü',
      'QT uzaması riski',
      'Sedasyon',
      'İştah baskılaması',
      'GİS motilitesinde değişiklik',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Antiemetikler, bulantı kontrolü yapar; bazıları QT uzatır, sedatiftir veya motiliteyi değiştirir, ancak iştah baskılamaz.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_062',
    question:
        'Aşağıdaki ilaçlardan hangisi PONV profilaksisinde üçlü kombinasyon tedavisinin bir parçası olabilir?',
    options: [
      'Ondansetron + Deksametazon + Metoklopramid',
      'Midazolam + Fentanil + Ketamin',
      'Ranitidin + Propofol + Diazepam',
      'Atropin + Fizyostigmin + Neostigmin',
      'Ketamin + Ondansetron + Flumazenil',
    ],
    correctAnswerIndex: 0,
    explanation:
        'PONV profilaksisinde farklı mekanizmalara etki eden ajanlar (5-HT3 antagonisti + steroid + D2 antagonisti) kombine kullanılır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_063',
    question:
        'Deksametazonun preoperatif kullanımı aşağıdaki sistemik etkilerden hangisini artırabilir?',
    options: [
      'Hipoglisemi',
      'İdrar retansiyonu',
      'Gastrik asit salgısı',
      'Hiperglisemi',
      'Solunum depresyonu',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Steroidler, glukoneogenez ve insülin antagonizması ile kan glukozunu artırır → hiperglisemi yapabilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_064',
    question: 'Aşağıdakilerden hangisi PONV için risk faktörü değildir?',
    options: [
      'Kadın cinsiyet',
      'Sigara içmeme',
      'Volatil anestezik kullanımı',
      'Propofol kullanımı',
      'Opioid kullanımı',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Propofol, PONV riskini azaltır → diğerleri PONV riskini artıran faktörlerdir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_065',
    question: 'Metoklopramid, hangi durumlarda kullanılmamalıdır?',
    options: [
      'Diabetik gastroparezi',
      'PONV profilaksisi',
      'Parkinson hastalığı',
      'Kemoterapi sonrası bulantı',
      'Yüksek aspirasyon riski',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Metoklopramid, dopamin antagonisti olduğu için Parkinson hastalarında semptomları kötüleştirebilir → kontrendikedir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_066',
    question:
        'Aşağıdakilerden hangisi antiemetik ilaçlara sekonder gelişen yaygın bir yan etkidir?',
    options: [
      'Hiperglisemi',
      'QT aralığı uzaması',
      'Bradikardi',
      'Hiperkalemi',
      'Hipotermi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Özellikle 5-HT3 antagonistleri (ör. ondansetron) QT uzamasına neden olabilir → yaygın ve önemli bir yan etkidir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_067',
    question: 'Premedikasyonun temel amaçları arasında hangisi yer almaz?',
    options: [
      'Anksiyete azaltılması',
      'Postoperatif ağrı kontrolü',
      'Aspirasyon riskinin azaltılması',
      'Antiemetik profilaksi',
      'Amnezi sağlanması',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Premedikasyon, anestezi öncesi hazırlık aşamasıdır. Postoperatif ağrı kontrolü, anestezi sonrası dönemin bir parçasıdır.',
    difficulty: 1,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_068',
    question:
        'Benzodiazepin premedikasyonunun en önemli avantajı aşağıdakilerden hangisidir?',
    options: [
      'Güçlü analjezi sağlaması',
      'Anksiyoliz ve amnezi',
      'Gastrik asiditeyi azaltması',
      'Bronkodilatör etkisi',
      'Kardiyovasküler stabilite',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Benzodiazepinler, GABA reseptör agonisti olarak anksiyolitik ve amnestik etki gösterir → premedikasyonun temel amacıdır.',
    difficulty: 1,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_069',
    question:
        'Midazolamın diazepama göre premedikasyonda tercih edilme nedeni hangisidir?',
    options: [
      'Daha uzun etki süresi',
      'Daha hızlı etki başlangıcı ve kısa yarı ömür',
      'Daha az amnestik etkisi',
      'İntramusküler enjeksiyon yapılamaması',
      'Aktif metabolit oluşturmaması',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Midazolam, hızlı etki başlangıcı ve kısa eliminasyon yarı ömrü nedeniyle premedikasyonda tercih edilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_070',
    question: 'Clonidinin premedikasyonda kullanılmasının temel nedeni nedir?',
    options: [
      'Güçlü amnestik etkisi',
      'Alfa-2 agonist etkisiyle sedasyon ve anksiyoliz',
      'Antikolinerjik etkisi',
      'Güçlü analjezi sağlaması',
      'Mide boşalmasını hızlandırması',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Clonidin, alfa-2 adrenerjik agonist olarak merkezi sedasyon, anksiyoliz ve analjezi sağlar.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_071',
    question:
        'Aşağıdaki ilaçlardan hangisi aspirasyon profilaksisinde kullanılmaz?',
    options: [
      'Ranitidin',
      'Metoklopramid',
      'Sodyum sitrat',
      'Ondansetron',
      'Omeprazol',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Ondansetron antiemetiktir, aspirasyon profilaksisinde kullanılmaz. Diğerleri mide asidite/motilitesini düzenler.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_072',
    question: 'H2 reseptör antagonistlerinin etki mekanizması nedir?',
    options: [
      'Gastrik parietal hücrelerde H2 reseptörlerini bloke ederek asit salınımını azaltır',
      'Proton pompasını inhibe eder',
      'Gastrin salınımını artırır',
      'Mide boşalmasını hızlandırır',
      'Mide mukozasını korur',
    ],
    correctAnswerIndex: 0,
    explanation:
        'H2 antagonistleri (ranitidin, famotidin), gastrik parietal hücrelerdeki H2 reseptörlerini bloke ederek asit sekresyonunu azaltır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_073',
    question:
        'Proton pompa inhibitörlerinin H2 antagonistlerine göre avantajı nedir?',
    options: [
      'Daha hızlı etki başlangıcı',
      'Daha güçlü ve uzun süreli asit baskılanması',
      'Daha az yan etki',
      'İntravenöz verilememesi',
      'Mide motilitesi üzerine etkisi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'PPI ler (omeprazol, pantoprazol), H+/K+ ATPaz enzimini doğrudan inhibe ederek daha güçlü ve uzun süreli asit baskılanması sağlar.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_074',
    question:
        'Antikolinerjik premedikasyonun günümüzde kullanılma sebebi aşağıdakilerden hangisidir?',
    options: [
      'Rutin premedikasyon',
      'Bradikardi ve aşırı salivasyon riski olan durumlarda',
      'Anksiyete kontrolü',
      'Postoperatif bulantı kontrolü',
      'Amnezi sağlamak',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Antikolinerjikler (atropin, skopolamin) günümüzde rutin kullanılmaz; sadece bradikardi riski ve aşırı salivasyon durumlarında tercih edilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_075',
    question: 'Skopolaminin atropine göre premedikasyonda avantajı nedir?',
    options: [
      'Daha az sedatif etkisi',
      'Amnestik ve antiemetik etkisi',
      'Daha kısa etki süresi',
      'Daha az antikolinerjik yan etki',
      'Kardiyovasküler etkileri daha az',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Skopolamin, atropinden farklı olarak amnestik ve antiemetik etki gösterir → bu nedenle premedikasyonda tercih edilebilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_076',
    question:
        'Preoperatif anti-aspirasyon protokolünde hangi kombinasyon en etkilidir?',
    options: [
      'Sadece H2 blokörü',
      'Sadece prokinetik ajan',
      'H2 blokörü + prokinetik ajan + antiasid',
      'Sadece antiasid',
      'Sadece proton pompa inhibitörü',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Aspirasyon riski yüksek hastalarda triple therapy (H2 blokörü + metoklopramid + sodyum sitrat) en etkili yöntemdir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_077',
    question:
        'Aşağıdakilerden hangisi PONV gelişimini azaltan anestezi tekniğidir?',
    options: [
      'Sevofluran anestezisi',
      'Nitröz oksit kullanımı',
      'TIVA (Total intravenöz anestezi)',
      'Desfluran anestezisi',
      'İzofluran anestezisi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'TIVA (propofol bazlı), volatil anestezikler ve N2O ya göre PONV insidansını önemli ölçüde azaltır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_078',
    question:
        'Ondansetronun PONV profilaksisinde etkinliğini azaltan faktör hangisidir?',
    options: [
      'Düşük risk hastası',
      'Kısa süreli cerrahi',
      'Kronik ondansetron kullanımı',
      'Genç yaş',
      'Erkek cinsiyet',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Kronik ondansetron kullanımı tolerans gelişimine neden olarak profilaktik etkinliği azaltabilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_079',
    question:
        'Apfel skorlamasında PONV risk faktörleri arasında hangisi yoktur?',
    options: [
      'Kadın cinsiyet',
      'Sigara içmeme',
      'PONV öyküsü',
      'Yaş (>65)',
      'Postoperatif opioid kullanımı',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Apfel skorunda: kadın cinsiyet, non-smoker, PONV/motion sickness öyküsü ve postoperatif opioid kullanımı yer alır. İleri yaş koruyucu faktördür.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_080',
    question:
        'Yüksek emetojenik riski olan cerrahiler arasında hangisi yer almaz?',
    options: [
      'Laparoskopik kolesistektomi',
      'Göz cerrahisi',
      'Orta kulak cerrahisi',
      'Kraniotomi',
      'Ginekolojik laparoskopi',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Kraniotomi, düşük-orta emetojenik risk taşır. Laparoskopik işlemler, göz ve kulak cerrahileri yüksek emetojenik risk taşır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_081',
    question:
        'Nöroleptanaljezi kombinasyonunda kullanılan nöroleptik ajan hangisidir?',
    options: [
      'Haloperidol',
      'Droperidol',
      'Prometazin',
      'Ondansetron',
      'Metoklopramid',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Droperidol, nöroleptanaljezi tekniğinde fentanil ile birlikte kullanılan butirofenon grubu nöroleptiktir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_082',
    question: 'Droperiduolun en önemli yan etkisi hangisidir?',
    options: [
      'Hipertansiyon',
      'Taşikardi',
      'QT uzaması ve ventriküler aritmiler',
      'Solunum depresyonu',
      'Hepatotoksisite',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Droperidol, QT uzaması yaparak torsades de pointes gibi hayatı tehdit eden aritmilere neden olabilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_083',
    question: 'Aşağıdaki antiemetiklerden hangisi NK1 reseptör antagonistidir?',
    options: [
      'Ondansetron',
      'Metoklopramid',
      'Aprepitant',
      'Deksametazon',
      'Prometazin',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Aprepitant, nörokinin-1 (NK1) reseptör antagonisti olup özellikle geç dönem PONV ve kemoterapi kaynaklı bulantıda etkilidir.',
    difficulty: 3,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_084',
    question:
        'Palonosetronun diğer 5-HT3 antagonistlerine göre avantajı nedir?',
    options: [
      'Daha hızlı etki başlangıcı',
      'Daha uzun yarı ömür',
      'Daha az QT uzaması',
      'Daha ucuz maliyet',
      'Oral kullanım imkanı',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Palonosetron, diğer 5-HT3 antagonistlerine göre daha uzun yarı ömre sahiptir (yaklaşık 40 saat) → tek doz daha uzun koruma sağlar.',
    difficulty: 3,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_085',
    question:
        'Aşağıdakilerden hangisi antiemetik doz deksametazonun olası yan etkisidir?',
    options: [
      'Hipoglisemi',
      'Hipokalemi',
      'Perineal yanma hissi',
      'Bradikardi',
      'Hipotansiyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Deksametazon enjeksiyonu sırasında hastalar perineal yanma ve batma hissinden şikayet edebilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_086',
    question:
        'Postoperatif bulantı kusmada kurtarma tedavisinde ilk tercih hangisidir?',
    options: [
      'Profilakside kullanılan ilacın tekrarı',
      'Farklı mekanizmalı antiemetik',
      'Deksametazon',
      'Metoklopramid',
      'Ondansetron',
    ],
    correctAnswerIndex: 1,
    explanation:
        'PONV kurtarma tedavisinde, profilakside kullanılandan farklı mekanizmaya sahip antiemetik tercih edilmelidir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_087',
    question:
        'Multimodal antiemetik yaklaşımın temel prensibi aşağıdakilerden hangisidir?',
    options: [
      'Aynı mekanizmalı ilaçların kombine kullanımı',
      'Farklı reseptör ve yolaklarını hedefleyen ilaçların kombinasyonu',
      'Yüksek doz tek ajan kullanımı',
      'Sadece profilaktik ilaç kullanımı',
      'Postoperatif başlangıç tedavisi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Multimodal antiemetik yaklaşım, farklı reseptör ve mekanizmaları hedefleyen ilaçların kombinasyonu ile sinerjistik etki sağlamayı amaçlar.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_088',
    question: 'Gabapentinin premedikasyonda kullanım amacı nedir?',
    options: [
      'Anksiyoliz',
      'Sedasyon',
      'Preemptif analjezi',
      'Amnezi',
      'Antiemetik etki',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Gabapentin, preoperatif dönemde preemptif analjezi amacıyla kullanılır → postoperatif ağrı ve opioid ihtiyacını azaltır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_089',
    question:
        'Pregarbalinin gabapentine göre premedikasyonda avantajı hangisidir?',
    options: [
      'Daha uzun etki süresi',
      'Daha az yan etki ve daha iyi biyoyararlanım',
      'Daha güçlü sedatif etki',
      'Daha ucuz maliyet',
      'Daha hızlı etki başlangıcı',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Pregabalin, gabapentine göre daha iyi oral biyoyararlanım (%90) ve daha az yan etki profiline sahiptir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_090',
    question:
        'Aşağıdakilerden hangisi gabapentinoid ilaçların olası yan etkisidir?',
    options: [
      'Hipertansiyon',
      'Diyare',
      'Vertigo ve somnolans',
      'Taşikardi',
      'Hiperglisemi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Gabapentinoidler (gabapentin, pregabalin) SSS yan etkileri yapabilir: vertigo, somnolans, ataksi gibi.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_091',
    question:
        'Acetaminofenin premedikasyonda kullanılmasının temel nedeni nedir?',
    options: [
      'Güçlü antiinflamatuar etki',
      'Sedasyon sağlaması',
      'Preemptif analjezi ve opioid ihtiyacını azaltması',
      'Antiemetik etkisi',
      'Anksiyolitik etkisi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Acetaminofen, preoperatif dönemde verilerek preemptif analjezi sağlar ve postoperatif opioid ihtiyacını azaltır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_092',
    question:
        'COX-2 selektif inhibitörlerinin geleneksel NSAİD lere göre avantajı nedir?',
    options: [
      'Daha güçlü analjezi',
      'Daha hızlı etki başlangıcı',
      'Gastrointestinal yan etki riski daha az',
      'Daha ucuz maliyet',
      'Renal yan etki yok',
    ],
    correctAnswerIndex: 2,
    explanation:
        'COX-2 selektif inhibitörleri (selekoksib), COX-1 i etkilemediği için gastrik mukozayı korur ve GİS yan etki riski daha azdır.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_093',
    question:
        'Meloksikamiun diğer NSAİD lere göre premedikasyonda tercih edilme nedeni nedir?',
    options: [
      'Daha kısa yarı ömür',
      'COX-2 selektif olması',
      'İntravenöz formunun olması',
      'Daha az maliyetli olması',
      'Antiemetik etkisi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Meloksikam, preferansiyel COX-2 inhibitörü olup gastrik yan etki riski daha düşük, antiinflamatuar ve analjezik etki gösterir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_094',
    question:
        'Sistemik steroidlerin perioperatif dönemde kullanım endikasyonları arasında hangisi yer almaz?',
    options: [
      'PONV profilaksisi',
      'Postoperatif ağrı azaltılması',
      'Antibakteriyel etki',
      'Laringeal ödem profilaksisi',
      'İnflamasyonu azaltma',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Steroidlerin antibakteriyel etkisi yoktur; aksine enfeksiyon riskini artırabilir. PONV, ağrı, ödem ve inflamasyonda etkilidir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_095',
    question:
        'Deksametazonun postoperatif ağrı üzerine etkisinin mekanizması nedir?',
    options: [
      'Opioid reseptör agonizması',
      'Na+ kanalı blokajı',
      'Antiinflamatuar etki ve prostaglandin sentezini azaltma',
      'GABA reseptör aktivasyonu',
      'NMDA reseptör blokajı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Deksametazon, fosfolipaz A2 inhibisyonu ile prostaglandin sentezini azaltarak antiinflamatuar ve analjezik etki gösterir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_096',
    question:
        'Preoperatif steroid uygulamasının hangi hasta grubunda kontrendikedir?',
    options: [
      'Diyabetik hastalar',
      'Hipertansif hastalar',
      'Kontrolsüz enfeksiyon varlığı',
      'Yaşlı hastalar',
      'Obez hastalar',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Aktif ve kontrolsüz enfeksiyon varlığında steroid uygulaması immünsüpresyon yaparak enfeksiyonu alevlendirebilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_097',
    question:
        'Alfa-2 agonistlerin anestezi üzerine en önemli etkisi hangisidir?',
    options: [
      'Anestezik ihtiyacını artırma',
      'Parasempatik aktivasyonu',
      'MAC değerini azaltma ve sedoanaljezi',
      'Histamin salınımını artırma',
      'QT uzamasına neden olma',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Alfa-2 agonistleri (deksmedetomidin, clonidin) MAC değerini azaltır, sedasyon ve analjezi sağlar.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_098',
    question:
        'Deksmedetomidinin clonidine göre premedikasyonda tercih edilme nedeni nedir?',
    options: [
      'Daha uzun etki süresi',
      'Daha selektif alfa-2 etkisi',
      'Oral kullanım avantajı',
      'Daha ucuz maliyeti',
      'Daha az sedasyon',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Deksmedetomidin, clonidine göre alfa-2 reseptörleri için daha selektif ve güçlü afiniteye sahiptir (α2:α1 = 1620:1).',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_099',
    question:
        'Deksmedetomidinin en sık görülen yan etkisi aşağıdakilerden hangisidir?',
    options: [
      'Hipertansiyon',
      'Taşikardi',
      'Bradikardi ve hipotansiyon',
      'Solunum depresyonu',
      'Bulantı kusma',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Deksmedetomidin, alfa-2 agonist etkisiyle merkezi sempatik aktiviteyi azaltarak bradikardi ve hipotansiyona neden olabilir.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),

  Question(
    id: 'aux_100',
    question:
        'Alfa-2 agonistlerin hangi özelliği anestezi yönetiminde avantaj sağlar?',
    options: [
      'Solunum depresyonu yapması',
      'Anksiyeti artırması',
      'Minimal solunum depresyonu ile sedasyon',
      'Hipnötik etki göstermesi',
      'Amnezi sağlamaması',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Alfa-2 agonistleri, respiratory center i direkt etkilemediği için minimal solunum depresyonu ile sedasyon sağlar.',
    difficulty: 2,
    category: 'Yardımcı İlaçlar',
  ),
];
