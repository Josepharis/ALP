import '../models/question.dart';

final List<Question> anticholinergicDrugsQuestions = [
  Question(
    id: 'anti_1',
    question: 'Aşağıdaki ilaçlardan hangisi antikolinerjik etki gösterir?',
    options: [
      'Neostigmin',
      'Fentanil',
      'Atropin',
      'Süksinilkolin',
      'Midazolam',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Atropin, muskarinik reseptörleri bloke eden bir antikolinergiktir ve parasempatik etkileri azaltır.',
    difficulty: 1,
  ),
  Question(
    id: 'anti_2',
    question:
        'Aşağıdakilerden hangisi antikolinerjik etkilerden biri değildir?',
    options: [
      'Midriyazis',
      'Ağız kuruluğu',
      'Bradikardi',
      'İdrar retansiyonu',
      'Azalmış bağırsak sesleri',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Antikolinerjikler taşikardi yapar. Bradikardi kolinerjik etkidir. Antikolinerjikler gastrointestinal motiliteyi ve sekresyonları azaltır.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_3',
    question:
        'Aşağıdaki antikolinerjik ilaçlardan hangisi santral sinir sistemine geçebilir?',
    options: [
      'Glikopirolat',
      'Neostigmin',
      'Atropin',
      'Sugammadeks',
      'Vekuronyum',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Atropin tertiyer amin yapısındadır ve kan-beyin bariyerini geçebilir, santral etkiler oluşturabilir.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_4',
    question: 'Aşağıdakilerden hangisi glikopirolatın özelliğidir?',
    options: [
      'Tersiyer amin yapıda',
      'Santral etkisi yüksektir',
      'Muskarinik reseptör antagonisti',
      'Solunum depresyonu yapar',
      'Hipotansiyon oluşturur',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Glikopirolat bir kuarterner amin antimuskariniktir. Santrale geçmez, periferik muskarinik etkileri azaltır (örn. bradikardi, hipersalivasyon).',
    difficulty: 2,
  ),
  Question(
    id: 'anti_5',
    question: 'Atropin dozuna bağlı olarak hangi etki ilk sırada ortaya çıkar?',
    options: [
      'Görme bozukluğu',
      'Salivasyon azalması',
      'Taşikardi',
      'İdrar retansiyonu',
      'Bronkodilatasyon',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Atropinle ilk etkilenen sistem genellikle ekzokrin bezlerdir; bu da salivasyonun azalmasına neden olur.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_6',
    question: 'Antikolinerjik ilaçlar aşağıdaki etkilerden hangisini gösterir?',
    options: [
      'Bronkokonstriksiyon',
      'Pupilla konstriksiyonu',
      'Salivasyon artışı',
      'Bradikardi',
      'Sekresyon azalması',
    ],
    correctAnswerIndex: 4,
    explanation:
        'Antimuskarinik ilaçlar, parasempatik sistemi baskılayarak bronkodilatasyon, sekresyon azalması, taşikardi gibi etkiler oluşturur.',
    difficulty: 1,
  ),
  Question(
    id: 'anti_7',
    question:
        'Aşağıdakilerden hangisi santral antikolinerjik sendrom bulgularından biridir?',
    options: [
      'Pupilla miosis',
      'Huzursuzluk, deliryum',
      'Aşırı salivasyon',
      'Bronkospazm',
      'Kas spazmları',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Santral antikolinerjik sendromda ajitasyon, konfüzyon, halüsinasyon gibi santral belirtiler görülür. Atropin veya skopolamin gibi ilaçlarla tetiklenebilir.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_8',
    question:
        'Santral antikolinerjik sendrom tedavisinde hangi ajan kullanılır?',
    options: [
      'Atropin',
      'Neostigmin',
      'Fizostigmin',
      'Glikopirolat',
      'Rokuronyum',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Fizostigmin, kan-beyin bariyerini geçebilen tek antikolinesterazdır ve santral antikolinerjik sendromun tedavisinde etkilidir.',
    difficulty: 3,
  ),
  Question(
    id: 'anti_9',
    question:
        'Aşağıdaki antimuskarinik ajanlardan hangisi en uzun etkili olanıdır?',
    options: [
      'Atropin',
      'Glikopirolat',
      'Skopolamin',
      'İpratropium',
      'Tropikamid',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Glikopirolat, yaklaşık 2–4 saat süren etkisiyle klinikte daha uzun etkili bir antimuskariniktir.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_10',
    question:
        'Aşağıdaki antikolinerjiklerden hangisi en fazla santral sedasyon yapar?',
    options: [
      'Skopolamin',
      'Glikopirolat',
      'İpratropium',
      'Oksibutinin',
      'Atropin',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Skopolaminin santral etkisi oldukça belirgindir; sedasyon, amnezi ve antinausea etkisi nedeniyle tercih edilebilir.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_11',
    question:
        'Aşağıdaki antikolinerjik ilaçlardan hangisi postoperatif salivasyon kontrolü için sıkça kullanılır?',
    options: [
      'Skopolamin',
      'Neostigmin',
      'Glikopirolat',
      'Fizostigmin',
      'Edrofonyum',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Glikopirolat, santrale geçmez ve periferik antimuskarinik etkileri güçlüdür. Bu nedenle salivasyon ve sekresyon kontrolü amacıyla sıklıkla kullanılır.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_12',
    question:
        'Atropin zehirlenmesinin en tipik bulgularından biri aşağıdakilerden hangisidir?',
    options: [
      'Hipotermi',
      'Miosis',
      'Aşırı sekresyon',
      'Taşikardi ve sıcak, kuru cilt',
      'Bradikardi ve soğuk cilt',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Atropin toksisitesinde "kuru, sıcak cilt", taşikardi, midriyazis, deliryum gibi klasik antikolinerjik bulgular ortaya çıkar.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_13',
    question:
        'Skopolaminin antiemetik etkisi hangi reseptör blokajı ile ilişkilidir?',
    options: ['Dopamin', 'Histamin', 'Muskarinik', 'Serotonin', 'NMDA'],
    correctAnswerIndex: 2,
    explanation:
        'Skopolaminin antiemetik etkisi, vestibüler sistemdeki muskarinik reseptörlerin blokajına dayanır. Seyahat bulantısında da etkilidir.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_14',
    question:
        'Hangisi antikolinerjik ilaçların kullanımına bağlı olarak gelişebilecek göz içi basınç artışı riski taşır?',
    options: ['Glokom', 'Katarakt', 'Üveit', 'Konjonktivit', 'Miyop'],
    correctAnswerIndex: 0,
    explanation:
        'Antikolinerjikler, pupilla dilatasyonuna ve açı kapanması glokomu riskine yol açabilir. Glokomlu hastalarda dikkatle kullanılmalıdır.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_15',
    question: 'Antikolinerjik ilaçlar aşağıdaki hangi duruma neden olabilir?',
    options: [
      'İshal',
      'Bradikardi',
      'Sekresyon artışı',
      'Üriner retansiyon',
      'Kas spazmı',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Antimuskarinikler, mesane detrusor kasının kontraktilitesini azaltarak üriner retansiyona neden olabilir.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_16',
    question:
        'Aşağıdaki antimuskarinik ilaçlardan hangisi en az santral etkiye sahiptir?',
    options: [
      'Atropin',
      'Skopolamin',
      'Glikopirolat',
      'Oksibutinin',
      'Tropikamid',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Glikopirolat kuarterner amin yapısı nedeniyle kan-beyin bariyerini geçemez ve santral yan etkileri düşüktür.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_17',
    question:
        'Antikolinerjiklerin kontrendike olduğu en önemli klinik durum aşağıdakilerden hangisidir?',
    options: ['Aritmi', 'Astım', 'Glokom', 'Diyabet', 'Hipotansiyon'],
    correctAnswerIndex: 2,
    explanation:
        'Antikolinerjikler midriyazis yaparak göz içi basıncını artırır. Bu nedenle açı kapanması glokomu olan hastalarda kontrendikedir.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_18',
    question:
        'Antikolinerjiklerin gastrointestinal sistem üzerindeki etkisi nasıldır?',
    options: [
      'Motiliteyi artırır',
      'Sekresyonu artırır',
      'Motiliteyi azaltır',
      'Asit üretimini uyarır',
      'Peristaltizmi artırır',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Antikolinerjikler, motilite ve sekresyonu azaltır; bu nedenle bağırsaklarda yavaşlama, konstipasyon ve gaz birikimi görülebilir.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_19',
    question: 'Skopolaminin transdermal kullanımı en çok hangi amaçla yapılır?',
    options: [
      'Antikonvülsan olarak',
      'İdrar kaçırmayı önlemek için',
      'Hareket hastalığını önlemek için',
      'Bradikardiyi önlemek için',
      'İştah artırıcı olarak',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Skopolamin transdermal olarak seyahat hastalığı (motion sickness) profilaksisinde kullanılır. Etkisi uzun sürelidir.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_20',
    question: 'Antikolinerjik ilaçların temel etki mekanizması nedir?',
    options: [
      'Muskarinik reseptör antagonizması',
      'Nikotinik reseptör agonizması',
      'Asetilkolin esteraz inhibisyonu',
      'GABA reseptör aktivasyonu',
      'Adrenerjik reseptör blokajı',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Antikolinerjikler, parasempatik sinir sisteminin muskarinik reseptörlerini kompetitif olarak bloke eder.',
    difficulty: 1,
  ),
  Question(
    id: 'anti_21',
    question: 'Hangisi atropinin kardiyak etkilerindendir?',
    options: [
      'Başlangıçta paradoksal bradikardi',
      'QT kısalması',
      'PR aralığında uzama',
      'Ventriküler taşikardi',
      'AV blok gelişimi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Düşük doz atropin, santral vagal stimülasyon yaparak paradoksal bradikardiye neden olabilir.',
    difficulty: 3,
  ),
  Question(
    id: 'anti_22',
    question:
        'Preanestezik medikasyon olarak sekresyon azaltmak amacıyla en sık kullanılan antimuskarinik ajan hangisidir?',
    options: [
      'Atropin',
      'Skopolamin',
      'Glikopirolat',
      'Deksmedetomidin',
      'Fenilefrin',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Glikopirolat, salivasyonu azaltır, bradikardi riski düşüktür ve santral etkisi yoktur → preanestezik olarak en sık tercih edilir.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_23',
    question:
        'Aşağıdaki antimuskariniklerden hangisi üriner inkontinans tedavisinde kullanılır?',
    options: [
      'Atropin',
      'Glikopirolat',
      'Skopolamin',
      'Oksibutinin',
      'İpratropium',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Oksibutinin, mesane düz kası üzerindeki muskarinik reseptörleri bloke ederek üriner urgency ve inkontinansı azaltır.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_24',
    question:
        'Aşağıdaki antimuskariniklerden hangisi inhaler bronkodilatör olarak kullanılır?',
    options: [
      'Atropin',
      'Oksibutinin',
      'Skopolamin',
      'İpratropium',
      'Glikopirolat',
    ],
    correctAnswerIndex: 3,
    explanation:
        'İpratropium, inhalasyon yoluyla verilen M3 reseptör antagonisti → bronkodilatör etki sağlar, KOAH\'ta yaygındır.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_25',
    question:
        'Antikolinerjik ilaçların gözde neden olduğu tipik yan etki aşağıdakilerden hangisidir?',
    options: [
      'Miosis',
      'Görme keskinliğinin artması',
      'Midriyazis ve akomodasyon bozukluğu',
      'Glokom tedavisine yardımcı olma',
      'Göz kuruluğunu azaltma',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Antikolinerjikler silia kası gevşetir, pupilla dilate olur (midriyazis), akomodasyon bozulur ve yakını görme zorlaşır.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_26',
    question: 'Skopolaminin hangi formu en uzun süreli antiemetik etki sağlar?',
    options: ['Oral', 'İntramüsküler', 'İntravenöz', 'Transdermal', 'Rektal'],
    correctAnswerIndex: 3,
    explanation:
        'Transdermal skopolamin, 72 saate kadar süren etkisiyle en uzun etkili antiemetik formdur.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_27',
    question:
        'Antikolinerjik ilaçlar ile ilişkili deliryum en çok hangi hasta grubunda görülür?',
    options: [
      'Sağlıklı gençler',
      'Astımlı hastalar',
      'Yaşlı bireyler',
      'Sporcular',
      'Hipotansif hastalar',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Yaşlı hastalar, antikolinerjik ilaçların santral etkilerine daha duyarlıdır. Deliryum, konfüzyon riski artar.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_28',
    question:
        'Antikolinerjik ilaçların çocuklarda en sık yaptığı istenmeyen etki nedir?',
    options: [
      'Bradikardi',
      'Konvülsiyon',
      'İshal',
      'Ateş',
      'Salivasyon artışı',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Antikolinerjikler, çocuklarda terlemeyi baskılar → vücut ısısı regülasyonunu bozar → ateş (hipertermi) görülebilir.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_29',
    question:
        'Aşağıdaki hastalıklardan hangisi antikolinerjik ilaçlar için göreli kontrendikasyon oluşturur?',
    options: [
      'Parkinson hastalığı',
      'Hipotansiyon',
      'Aritmi',
      'Hipoglisemi',
      'Prostat hipertrofisi',
    ],
    correctAnswerIndex: 4,
    explanation:
        'Antikolinerjik ilaçlar, mesane sfinkterini gevşetir ve idrar çıkışını zorlaştırır → prostat hipertrofisinde dikkatli kullanılmalıdır.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_30',
    question:
        'Atropinin antidot etkisi gösterdiği zehirlenme durumu hangisidir?',
    options: [
      'Organofosfat zehirlenmesi',
      'Demir zehirlenmesi',
      'Kurşun zehirlenmesi',
      'Opioid intoksikasyonu',
      'Siyanür zehirlenmesi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Atropin, organofosfat ve diğer kolinerjik zehirlenmelerde antimuskarinik antidot olarak kullanılır. Pralidoksim ile kombine edilir.',
    difficulty: 3,
  ),
  Question(
    id: 'anti_31',
    question:
        'Antikolinerjik ilaçların gebelikte kullanımı ile ilgili olarak hangisi doğrudur?',
    options: [
      'Hepsi güvenlidir',
      'Mutlak kontrendikedir',
      'Glikopirolat plasentayı geçemez',
      'Skopolamin fetal bradikardiye neden olur',
      'Atropin fetal kalp hızını azaltır',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Glikopirolat, kuarterner yapısı sayesinde plasentayı geçmez ve fetal etki oluşturmaz. Bu da onu gebelikte daha güvenli kılar.',
    difficulty: 3,
  ),
  Question(
    id: 'anti_32',
    question:
        'Aşağıdaki etkilerden hangisi antikolinerjik ilaçlara sekonder olarak gelişebilir?',
    options: [
      'Bradikardi',
      'Bulantı',
      'Termoregülasyon bozukluğu (hipertermi)',
      'Bronkospazm',
      'İshal',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Antikolinerjikler terlemeyi inhibe eder; bu durum özellikle çocuklarda hipertermiye yol açabilir.',
    difficulty: 3,
  ),
  Question(
    id: 'anti_33',
    question:
        'Hangisi antikolinerjik ilaçların kardiyovasküler etkilerindendir?',
    options: [
      'Vazokonstriksiyon',
      'Koroner arter spazmı',
      'Periferik vazodilatasyon',
      'Hipertansiyon',
      'Myokard depresyonu',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Antikolinerjikler vazomotor tonusu azaltarak periferik vazodilatasyon yapar.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_34',
    question:
        'Hangisi antikolinerjik ilaçların kontrendike olduğu durumlardan değildir?',
    options: [
      'Hipotiroidi',
      'Glokom',
      'Prostat hipertrofisi',
      'Myastenia gravis',
      'İleus',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Antikolinerjikler glokom, prostat hipertrofisi, myastenia gravis ve ileusta kontrendikedir.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_35',
    question:
        'Tiotropium hangi reseptör üzerinde etkili bir antimuskariniktir?',
    options: ['M1 ve M2', 'M1 ve M3', 'M2 ve M4', 'Sadece M3', 'M1, M2 ve M3'],
    correctAnswerIndex: 1,
    explanation:
        'Tiotropium, uzun etkili bir M1 ve M3 selektif muskarinik antagonistidir → özellikle KOAH tedavisinde kullanılır.',
    difficulty: 3,
  ),
  Question(
    id: 'anti_36',
    question:
        'Aşağıdaki hangi ilaç bronkodilatör etkisini muskarinik reseptör blokajı ile sağlar?',
    options: ['Salbutamol', 'Teofilin', 'İpratropium', 'Fenoterol', 'Ketamin'],
    correctAnswerIndex: 2,
    explanation:
        'İpratropium, M3 reseptör blokajı ile bronş düz kaslarında gevşeme sağlar → KOAH ve astımda destek tedavisidir.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_37',
    question:
        'Aşağıdakilerden hangisi santral antikolinerjik sendromu düşündürür?',
    options: [
      'Miyozis, bradikardi, solunum depresyonu',
      'Midriyazis, taşikardi, deliryum',
      'Kuru cilt, hipoglisemi, tremor',
      'Hipotansiyon, kas rijiditesi, pupil refleksi kaybı',
      'Piloereksiyon, taşipne, bilinç kaybı',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Santral antikolinerjik sendrom, midriyazis, taşikardi, konfüzyon, kuru cilt ile karakterizedir.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_38',
    question:
        'Aşağıdaki antimuskarinik ilaçlardan hangisi gebelik kategorisi açısından en güvenli olanlardan biridir?',
    options: [
      'Skopolamin',
      'Atropin',
      'Glikopirolat',
      'İpratropium',
      'Oksibutinin',
    ],
    correctAnswerIndex: 3,
    explanation:
        'İpratropium, inhalasyonla verildiğinden sistemik emilim azdır ve gebelikte genellikle güvenli kabul edilir (Kategori B).',
    difficulty: 2,
  ),
  Question(
    id: 'anti_39',
    question:
        'Aşağıdakilerden hangisi antikolinerjik ilaçların periferik etkileri arasında yer almaz?',
    options: [
      'Ağız kuruluğu',
      'Terleme artışı',
      'İdrar retansiyonu',
      'Midriyazis',
      'Kabızlık',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Antikolinerjikler, ter bezlerindeki muskarinik reseptörleri bloke ederek terlemeyi azaltır → terleme artışı görülmez.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_40',
    question:
        'Antikolinerjik ilaçlar aşağıdaki hangi sistem üzerinde dolaylı olarak hipertermi yapabilir?',
    options: [
      'Renal',
      'Kardiyovasküler',
      'Termoregülasyon (deri-ter bezleri)',
      'Endokrin',
      'Hepatik',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Ter bezleri muskarinik reseptörle uyarılır → antikolinerjik ilaçlar bu uyarıyı engelleyerek terlemeyi azaltır → vücut ısısı artabilir (özellikle çocuklarda).',
    difficulty: 2,
  ),
  Question(
    id: 'anti_41',
    question:
        'Antikolinerjik ilaçlar hangi durumda relaksan etkili olarak kullanılabilir?',
    options: [
      'Postoperatif ağrı',
      'Düz kas spazmları',
      'İskelet kas spazmları',
      'Hiperkalemi',
      'Aritmi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Antimuskarinikler, visseral düz kas spazmlarını azaltmak için kullanılır (örneğin bağırsak veya mesane spazmları).',
    difficulty: 2,
  ),
  Question(
    id: 'anti_42',
    question:
        'Aşağıdakilerden hangisi antikolinerjiklerin kullanım alanlarından biri değildir?',
    options: [
      'İdrar retansiyonu tedavisi',
      'Hareket hastalığı profilaksisi',
      'Salivasyon kontrolü',
      'Bradikardi tedavisi',
      'Preoperatif sekresyon azaltma',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Antikolinerjikler idrar retansiyonuna neden olur, tedavisinde kullanılmazlar.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_43',
    question:
        'Skopolaminin antiemetik etkisi hangi sistemin baskılanması ile ilgilidir?',
    options: [
      'Kemoreseptör tetik bölge',
      'Vestibüler sistem',
      'GİS motilitesi',
      'Medüller solunum merkezi',
      'Proprioseptif yollar',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Skopolamin vestibüler sistem üzerinden etkili olur ve özellikle hareket hastalığında etkilidir.',
    difficulty: 2,
  ),
  Question(
    id: 'anti_44',
    question:
        'Santral antikolinerjik toksisitenin tedavisinde en uygun farmakolojik ajan aşağıdakilerden hangisidir?',
    options: [
      'Neostigmin',
      'Edrofonyum',
      'Glikopirolat',
      'Fizostigmin',
      'Atropin',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Fizostigmin, kan-beyin bariyerini geçen tek antikolinesterazdır ve santral antikolinerjik toksisite tedavisinde etkilidir.',
    difficulty: 3,
  ),
  Question(
    id: 'anti_45',
    question:
        'Aşağıdaki ilaçlardan hangisinin antimuskarinik yan etki oluşturma riski en düşüktür?',
    options: [
      'Atropin',
      'Amitriptilin',
      'Skopolamin',
      'Glikopirolat',
      'Biperiden',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Glikopirolat, santrale geçmez ve periferik muskarinik reseptörlere selektif etkili olduğundan yan etki profili düşüktür.',
    difficulty: 2,
  ),
];
