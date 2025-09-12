import '../models/question.dart';

final List<Question> adrenergicDrugsQuestions = [
  Question(
    question: "Aşağıdaki reseptörlerden hangisinin uyarılması bradikardi oluşturur?",
    options: [
      "Beta-1",
      "Alfa-1",
      "Beta-2",
      "Alfa-2 (presinaptik)",
      "Muskarinik M2",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Presinaptik alfa-2 reseptörleri, norepinefrin salınımını azaltarak sempatik tonu düşürür ve bradikardiye neden olabilir.",
  ),

  Question(
    question: "Beta-1 reseptörlerin uyarılmasıyla oluşan en belirgin etki aşağıdakilerden hangisidir?",
    options: [
      "Bronkodilatasyon",
      "Artmış kalp hızı ve inotropi",
      "Periferik vazodilatasyon",
      "Hipotansiyon",
      "Bradikardi",
    ],
    correctAnswerIndex: 1,
    difficulty: 1,
    explanation: "Beta-1 reseptörleri başlıca kalpte yer alır ve stimülasyonu pozitif inotrop ve kronotrop etki sağlar.",
  ),

  Question(
    question: "Beta-2 reseptör uyarımı aşağıdakilerden hangisine neden olur?",
    options: [
      "Koroner vazokonstriksiyon",
      "Bronkokonstriksiyon",
      "Uterin gevşeme",
      "Pupilla konstriksiyonu",
      "Bradikardi",
    ],
    correctAnswerIndex: 2,
    difficulty: 1,
    explanation: "Beta-2 stimülasyonu düz kas gevşemesi ile sonuçlanır. Bu nedenle uterin gevşeme, bronkodilatasyon, vazodilatasyon gibi etkiler oluşturur.",
  ),

  Question(
    question: "Aşağıdakilerden hangisi karaciğerde glukoneogenezi artırır?",
    options: [
      "Alfa-1 reseptör blokajı",
      "Beta-2 reseptör stimülasyonu",
      "Muskarinik reseptör stimülasyonu",
      "Nikotinik reseptör stimülasyonu",
      "Beta-1 reseptör blokajı",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Beta-2 reseptör aktivasyonu, hepatik glukoneogenez ve glikojenolizi artırır; bu da hiperglisemiye katkıda bulunur.",
  ),

  Question(
    question: "Fenilefrin'in temel etkisi aşağıdakilerden hangisidir?",
    options: [
      "Beta-2 agonizması",
      "Alfa-1 agonizması",
      "Beta-1 antagonizması",
      "Muskarinik antagonizması",
      "Dopaminerjik agonizma",
    ],
    correctAnswerIndex: 1,
    difficulty: 1,
    explanation: "Fenilefrin, saf alfa-1 agonisttir. Bu sayede vazokonstriksiyon yaparak kan basıncını artırır ve refleks bradikardiye neden olabilir.",
  ),

  Question(
    question: "Dopaminin düşük dozda etkisi nedir?",
    options: [
      "Alfa-1 stimülasyonu",
      "Beta-1 stimülasyonu",
      "Dopamin D1 reseptör stimülasyonu",
      "Beta-2 reseptör blokajı",
      "Muskarinik M3 aktivasyonu",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Düşük doz dopamin, D1 reseptörlerini aktive ederek renal ve mezenterik vazodilatasyon sağlar. Orta dozda B1 reseptör uyarılır.",
  ),

  Question(
    question: "Beta-blokerlerin en sık görülen yan etkisi aşağıdakilerden hangisidir?",
    options: [
      "Taşikardi",
      "Bronkodilatasyon",
      "Bradikardi",
      "Hiperglisemi",
      "Diyare",
    ],
    correctAnswerIndex: 2,
    difficulty: 1,
    explanation: "Beta-blokerler, kalpteki beta-1 reseptörlerini bloke ederek bradikardiye yol açabilir.",
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisi hem alfa hem beta reseptörleri bloke eder?",
    options: ["Metoprolol", "Atenolol", "Labetalol", "Esmolol", "Propranolol"],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Labetalol, alfa-1 ve beta reseptör blokajı yapan bir ajandır. Özellikle hipertansif acillerde kullanılır.",
  ),

  Question(
    question: "Beta-2 agonist ilaçlardan hangisi tokolitik (doğum eylemini geciktirici) olarak da kullanılır?",
    options: [
      "Fenilefrin",
      "Albuterol",
      "Salmeterol",
      "Terbutalin",
      "Dobutamin",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Terbutalin, uterus düz kaslarında gevşeme yaparak tokolitik etki oluşturur. Beta-2 agonisttir.",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi refleks bradikardiye neden olabilir?",
    options: [
      "Dobutamin",
      "Adrenalin",
      "İzoproterenol",
      "Fenilefrin",
      "Terbutalin",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Fenilefrin, güçlü alfa-1 agonistidir. Periferik vazokonstriksiyonla tansiyonu artırır ve baroreseptör cevabı ile refleks bradikardi gelişebilir.",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi selektif beta-1 adrenerjik agonisttir?",
    options: ["Dobutamin", "Fenilefrin", "Terbutalin", "Adrenalin", "Dopamin"],
    correctAnswerIndex: 0,
    difficulty: 1,
    explanation: "Dobutamin, özellikle kalp üzerine pozitif inotrop ve kronotrop etki gösteren beta-1 selektif agonisttir. Kardiyojenik şok ve kalp yetmezliğinde kullanılır.",
  ),

  Question(
    question: "Esmolol hakkında aşağıdakilerden hangisi doğrudur?",
    options: [
      "Uzun etkili beta-blokerdir",
      "Alfa-1 antagonisti etkisi vardır",
      "Kısa etkili, selektif beta-1 blokeridir",
      "Santral sinir sistemine geçer",
      "Bronkodilatör etki gösterir",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Esmolol, ultrakısa etkili, intravenöz kullanıma uygun, selektif beta-1 bloker bir ajandır. Cerrahi sırasında taşikardi kontrolünde kullanılır.",
  ),

  Question(
    question: "Aşağıdaki adrenerjik reseptörlerden hangisinin uyarılması mydriyazis (pupilla genişlemesi) oluşturur?",
    options: ["Alfa-1", "Alfa-2", "Beta-1", "Beta-2", "Muskarinik M3"],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Alfa-1 reseptörleri, iris dilatatör kaslarını uyararak midriyazis oluşturur. Bu etki ışık refleksinden bağımsızdır.",
  ),

  Question(
    question: "Beta-2 reseptör agonistlerinin aşağıdaki etkilerinden hangisi doğrudur?",
    options: [
      "Hipoglisemi yapar",
      "Uterin kontraksiyonları artırır",
      "Glukoz salınımını artırır",
      "Midriyazis oluşturur",
      "Bradikardi yapar",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Beta-2 stimülasyonu, hepatik glukoz salınımını artırarak hiperglisemi oluşturur. Bu nedenle diyabetik hastalarda dikkatle kullanılmalıdır.",
  ),

  Question(
    question: "Beta-blokerlerin kontrendike olduğu durum aşağıdakilerden hangisidir?",
    options: [
      "Hipertiroidi",
      "Stabil angina",
      "Astım",
      "Supraventriküler taşikardi",
      "Post-MI (miyokard enfarktüsü)",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Beta-2 reseptör blokajı, bronkokonstriksiyona neden olabilir. Bu nedenle astım hastalarında beta-bloker kullanımı kontrendikedir.",
  ),

  Question(
    question: "Alfa-1 reseptör agonistlerinin tipik etkisi aşağıdakilerden hangisidir?",
    options: [
      "Periferik vazodilatasyon",
      "Renal vazodilatasyon",
      "Pupilla konstriksiyonu",
      "Vazokonstriksiyon ve kan basıncında artış",
      "Bronkodilatasyon",
    ],
    correctAnswerIndex: 3,
    difficulty: 1,
    explanation: "Alfa-1 stimülasyonu, düz kas kontraksiyonuna yol açarak vazokonstriksiyon ve kan basıncında artış ile sonuçlanır.",
  ),

  Question(
    question: "Beta-2 agonistlerinin en sık görülen yan etkisi hangisidir?",
    options: ["Bradikardi", "Hipoglisemi", "Tremor", "İshal", "Miosis"],
    correctAnswerIndex: 2,
    difficulty: 1,
    explanation: "Beta-2 agonistler, iskelet kaslarında tremora neden olabilir. Bu, ilacın periferik etkilerinden biridir.",
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisi selektif beta-1 antagonistidir?",
    options: ["Propranolol", "Atenolol", "Labetalol", "Timolol", "Nadolol"],
    correctAnswerIndex: 1,
    difficulty: 1,
    explanation: "Atenolol, kardiyoselektif beta-1 bloker bir ajandır. Bronkospazm riski, non-selektif ajanlara göre daha düşüktür.",
  ),

  Question(
    question: "Beta-2 agonistlerinin aşağıdaki etkilerinden hangisi klinik olarak istenmeyen bir etkidir?",
    options: [
      "Bronkodilatasyon",
      "Uterus gevşemesi",
      "Tremor",
      "Glukoz düzeyinde artış",
      "Düz kas gevşemesi",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Tremor, iskelet kaslarına etki eden beta-2 agonistlerinin istenmeyen ancak sık görülen bir yan etkisidir.",
  ),

  Question(
    question: "Dopaminin orta dozlarda (3–10 mcg/kg/dk) etkisi aşağıdakilerden hangisidir?",
    options: [
      "Sadece dopaminerjik etki",
      "Beta-1 stimülasyonu",
      "Alfa-1 agonizması",
      "Beta-2 blokajı",
      "Muskarinik antagonizma",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Dopamin orta dozda beta-1 stimülasyonu ile kalp hızı ve kontraktiliteyi artırır. Bu, kardiyak debiyi yükseltir.",
  ),

  Question(
    question: "Aşağıdaki beta-blokerlerden hangisi non-selektif olup hem beta-1 hem beta-2 reseptörleri bloke eder?",
    options: ["Metoprolol", "Esmolol", "Atenolol", "Propranolol", "Nebivolol"],
    correctAnswerIndex: 3,
    difficulty: 1,
    explanation: "Propranolol, non-selektif bir beta-blokerdir. Hem beta-1 hem de beta-2 reseptörleri bloke eder; bu nedenle astımlı hastalarda dikkatli kullanılmalıdır.",
  ),

  Question(
    question: "Labetalol'ün IV formu en sık hangi klinik durumda tercih edilir?",
    options: [
      "Pulmoner emboli",
      "Hipertansif kriz",
      "Atrial fibrilasyon",
      "Septik şok",
      "Glokom krizi",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Labetalol, hem alfa-1 hem beta blokajı ile kan basıncını hızla düşürür. Bu etkisi sayesinde hipertansif acillerde intravenöz olarak tercih edilir.",
  ),

  Question(
    question: "Beta-bloker kullanımında aşağıdaki durumlardan hangisi gelişebilir?",
    options: ["Hiperglisemi", "AV blok", "Anksiyete", "Tremor", "Mydriyazis"],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Beta-blokerler atriyoventriküler iletimi yavaşlatır, bu da ileri derecede AV blok gelişimine neden olabilir.",
  ),

  Question(
    question: "Beta-2 agonistlerinin uzun süreli kullanımı aşağıdaki komplikasyonlardan hangisine neden olabilir?",
    options: [
      "Hiponatremi",
      "Rebound bronkokonstriksiyon",
      "Hipokalsemi",
      "Hipoglisemi",
      "Glomerüler filtrasyon artışı",
    ],
    correctAnswerIndex: 1,
    difficulty: 3,
    explanation: "Uzun süreli beta-2 agonist kullanımı reseptör desensitizasyonuna ve rebound bronkokonstriksiyona neden olabilir.",
  ),

  Question(
    question: "Aşağıdaki durumların hangisinde fenilefrin kullanımı endikedir?",
    options: [
      "Bradyaritmiler",
      "Hipotansiyon ve septik şok",
      "Atrial fibrilasyon",
      "Hipoglisemi",
      "Hipervolemi",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Fenilefrin, güçlü bir alfa-1 agonistidir. Vazokonstriktör etkisiyle sistemik vasküler direnci ve kan basıncını artırır, bu nedenle hipotansiyon ve septik şokta kullanılabilir.",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi beta-1 selektif olup kardiyoselektif olarak kabul edilir?",
    options: ["Timolol", "Propranolol", "Nadolol", "Metoprolol", "Labetalol"],
    correctAnswerIndex: 3,
    difficulty: 1,
    explanation: "Metoprolol, kardiyoselektif beta-1 blokerdir. Bu nedenle astım gibi beta-2 blokajının zararlı olabileceği durumlarda tercih edilir.",
  ),

  Question(
    question: "İzoproterenol hangi reseptörleri aktive eder?",
    options: [
      "Alfa-1",
      "Sadece beta-1",
      "Sadece beta-2",
      "Beta-1 ve beta-2",
      "Alfa-2",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "İzoproterenol, beta-1 ve beta-2 reseptörleri aktive eden non-selektif bir beta agonistidir. Pozitif inotrop, kronotrop ve bronkodilatör etkileri vardır.",
  ),

  Question(
    question: "Aşağıdaki beta-blokerlerden hangisi kısa etkili olup intraoperatif kullanım için uygundur?",
    options: ["Propranolol", "Atenolol", "Esmolol", "Nadolol", "Labetalol"],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Esmolol, kısa yarı ömrü (yaklaşık 9 dakika) nedeniyle intraoperatif taşikardi ve hipertansiyon kontrolünde kullanılır.",
  ),

  Question(
    question: "Aşağıdakilerden hangisi beta-2 agonistlerinin metabolik etkilerindendir?",
    options: [
      "Glikojen sentezini artırır",
      "Hipoglisemi oluşturur",
      "Lipolizi stimüle eder",
      "İnsülin sekresyonunu inhibe eder",
      "Hiperkalemiye neden olur",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Beta-2 agonistleri, yağ hücrelerinde lipolizi artırır, serbest yağ asidi düzeyini yükseltir.",
  ),

  Question(
    question: "Aşağıdaki beta-blokerlerden hangisi lipofilik olup santral sinir sistemine geçebilir?",
    options: ["Esmolol", "Atenolol", "Propranolol", "Labetalol", "Nadolol"],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Propranolol, lipofilik yapısı sayesinde kan-beyin bariyerini geçebilir ve santral yan etkiler (örneğin yorgunluk, depresyon) oluşturabilir.",
  ),

  Question(
    question: "Alfa-2 presinaptik reseptör aktivasyonu aşağıdakilerden hangisine neden olur?",
    options: [
      "Norepinefrin salınımının artması",
      "Parasempatik aktivitenin artması",
      "Sempatik aktivitenin baskılanması",
      "Kalp hızının artması",
      "Bronkodilatasyon",
    ],
    correctAnswerIndex: 2,
    difficulty: 3,
    explanation: "Alfa-2 presinaptik reseptörler, negatif geri bildirim mekanizmasıyla sempatik tonusu baskılar, norepinefrin salınımını azaltır.",
  ),

  Question(
    question: "Alfa-blokör kullanımına bağlı ilk doz hipotansiyonu en çok hangi ajanla ilişkilidir?",
    options: ["Tamsulosin", "Doksazosin", "Fenilefrin", "Esmolol", "Timolol"],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Doksazosin, alfa-1 blokajı ile periferik vazodilatasyon yapar. İlk doz hipotansiyonu riski yüksektir; yatarken başlanması önerilir.",
  ),

  Question(
    question: "Beta-2 agonistlerin potasyum üzerine etkisi aşağıdakilerden hangisidir?",
    options: [
      "Hiperkalemi yapar",
      "Potasyumu hücre dışına taşır",
      "Hipokalemi yapar",
      "Potasyumu arttırmaz",
      "Potasyum sekresyonunu azaltır",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Beta-2 agonistler, potasyumun hücre içine geçişini artırır ve hipokalemiye neden olabilir.",
  ),

  Question(
    question: "Aşağıdakilerden hangisi dobutamin kullanımı için tipik bir endikasyondur?",
    options: [
      "Hipertansif kriz",
      "Pulmoner emboli",
      "Kardiyojenik şok",
      "Bronkospazm",
      "Glokom atağı",
    ],
    correctAnswerIndex: 2,
    difficulty: 1,
    explanation: "Dobutamin, pozitif inotrop etkisi sayesinde kardiyojenik şokta kardiyak debiyi artırmak için kullanılır.",
  ),

  Question(
    question: "Alfa-1 reseptörlerin blokajı ile aşağıdaki etkilerden hangisi beklenir?",
    options: [
      "Periferik vazokonstriksiyon",
      "Kan basıncında artış",
      "Mesane boynunda kasılma",
      "Vazodilatasyon ve ortostatik hipotansiyon",
      "Pupilla dilatasyonu",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Alfa-1 blokajı, periferik damarları gevşeterek vazodilatasyon ve ortostatik hipotansiyon oluşturabilir.",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi beta-blokaj dışında NO (nitrik oksit) salınımı etkisi ile de antihipertansif etki gösterir?",
    options: ["Propranolol", "Metoprolol", "Labetalol", "Nebivolol", "Nadolol"],
    correctAnswerIndex: 3,
    difficulty: 3,
    explanation: "Nebivolol, beta-1 selektif bloker olmasının yanı sıra endotelden NO salınımını artırarak vazodilatasyon yapar.",
  ),

  Question(
    question: "Beta-blokörlerin kesilmesinden sonra görülebilecek en önemli klinik problem hangisidir?",
    options: [
      "Hipoglisemi",
      "Hipotermi",
      "Rebound taşikardi ve hipertansiyon",
      "Bradikardi",
      "Depresyon",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Uzun süreli beta-blokaj sonrası ani kesilme durumunda sempatik hiperaktivite gelişir. Bu da rebound taşikardi ve hipertansiyona yol açabilir.",
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisi selektif alfa-1 antagonisti olarak prostat hipertrofisinde kullanılır?",
    options: [
      "Fenilefrin",
      "Tamsulosin",
      "Doksazosin",
      "Labetalol",
      "Propranolol",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Tamsulosin, mesane boynu ve prostat düz kasındaki alfa-1A reseptörleri selektif olarak bloke eder ve idrar akışını kolaylaştırır.",
  ),

  Question(
    question: "Aşağıdakilerden hangisi alfa-2 agonist özelliği sayesinde santral sempatolitik etki gösterir?",
    options: [
      "Fenilefrin",
      "İzoproterenol",
      "Klonidin",
      "Adrenalin",
      "Propranolol",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Klonidin, santral alfa-2 agonisttir. Sempatik aktiviteyi azaltır ve antihipertansif olarak kullanılır.",
  ),

  Question(
    question: "Adrenalin kullanımında düşük dozlarda hangi reseptör etkisi baskındır?",
    options: [
      "Alfa-1",
      "Alfa-2",
      "Beta-1 ve beta-2",
      "Dopaminerjik",
      "Muskarinik",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Adrenalin düşük dozda öncelikle beta-1 ve beta-2 reseptörleri uyarır. Bu durum kardiyak output artışı ve vazodilatasyon ile sonuçlanabilir.",
  ),

  Question(
    question: "Aşağıdaki durumlardan hangisinde beta-bloker kullanımı daha avantajlıdır?",
    options: ["Astım", "AV blok", "Hipotansiyon", "Hipertiroidi", "Bradikardi"],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Hipertiroidide beta-blokerler taşikardi, tremor ve anksiyete gibi sempatik belirtileri baskılamakta oldukça etkilidir.",
  ),

  Question(
    question: "Beta-blokerlerin lokal anestezik özellik gösteren formu hangisidir?",
    options: ["Propranolol", "Atenolol", "Metoprolol", "Labetalol", "Esmolol"],
    correctAnswerIndex: 0,
    difficulty: 3,
    explanation: "Propranolol, membran stabilizan etkisi nedeniyle lokal anestezik özellik gösteren nadir beta-blokerlerden biridir.",
  ),

  Question(
    question: "Adrenalinin anafilaksi tedavisindeki rolü hangi etkisiyle ilişkilidir?",
    options: [
      "Alfa-2 stimülasyonu ile salivasyonu azaltması",
      "Beta-2 stimülasyonu ile bronkodilatasyon yapması",
      "Alfa-1 ile santral etkiler oluşturması",
      "Dopaminerjik etki ile renal kan akımını artırması",
      "Muskarinik etkiyle mukus üretimini artırması",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Anafilaksi tedavisinde adrenalin, beta-2 reseptörleri uyararak bronkodilatasyon sağlar; ayrıca alfa-1 etkisiyle damar geçirgenliğini azaltır.",
  ),

  Question(
    question: "Beta-blokerlerin antiaritmik etkileri en çok hangi özelliklerinden kaynaklanır?",
    options: [
      "AV nod iletimi artırmaları",
      "Sempatik tonusu artırmaları",
      "Kronotropiyi azaltmaları",
      "QT uzamasını engellemeleri",
      "Damar genişletici etkileri",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Beta-blokerler kalp hızını düşürerek, AV nod üzerinden iletimi yavaşlatarak antiaritmik etki sağlarlar. Bu özellik özellikle supraventriküler taşiaritmilerde etkilidir.",
  ),

  Question(
    question: "Aşağıdaki katekolaminlerden hangisi en güçlü beta-1 reseptör agonistidir?",
    options: [
      "Noradrenalin",
      "Adrenalin",
      "Dopamin",
      "Dobutamin",
      "Fenilefrin",
    ],
    correctAnswerIndex: 3,
    difficulty: 1,
    explanation: "Dobutamin, seçici β₁ agonisttir → kalp atım hacmini ve kontraktiliteyi artırır → özellikle kardiyojenik şokta tercih edilir.",
  ),

  Question(
    question: "Aşağıdaki katekolaminlerden hangisi doza bağlı reseptör etkisi gösterir (dopamin, beta, alfa)?",
    options: [
      "Dobutamin",
      "Fenilefrin",
      "Noradrenalin",
      "Dopamin",
      "Adrenalin",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Dopamin, düşük dozda dopaminerjik (renal vazodilatasyon), orta dozda beta-1, yüksek dozda alfa-1 etkisi yapar.",
  ),

  Question(
    question: "Beta-2 reseptör agonist etkisiyle bronkodilatasyon yapan ajan aşağıdakilerden hangisidir?",
    options: [
      "Noradrenalin",
      "Dopamin",
      "Salbutamol",
      "Fenilefrin",
      "Dobutamin",
    ],
    correctAnswerIndex: 2,
    difficulty: 1,
    explanation: "Salbutamol (albuterol), seçici β₂ agonisttir → bronş düz kaslarını gevşeterek bronkodilatasyon sağlar → astım tedavisinde kullanılır.",
  ),

  Question(
    question: "Noradrenalin'in belirgin refleks bradikardi yapmasının sebebi nedir?",
    options: [
      "Beta-2 aktivasyonu",
      "Kardiyak output azalması",
      "Sempatik sistem inhibisyonu",
      "Baroreseptör uyarımı",
      "Parasempatik tonus azalması",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Noradrenalin, güçlü alfa-1 vazokonstriksiyonu yapar → baroreseptörler uyarılır → refleks bradikardi gelişir.",
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisi hem tüm alfa hem tüm beta reseptörleri üzerinde etki gösterir?",
    options: ["Dopamin", "Fenilefrin", "Adrenalin", "Dobutamin", "Salbutamol"],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Adrenalin, α₁, α₂, β₁ ve β₂ reseptörlerinin tamamını uyarır → doz ve dokuya göre farklı klinik etkiler oluşturur.",
  ),

  Question(
    question: "Aşağıdakilerden hangisi beta-2 reseptör stimülasyonu sonucunda ortaya çıkan bir etkidir?",
    options: [
      "Miyozis",
      "Glikojenoliz",
      "Bradikardi",
      "Vazokonstriksiyon",
      "Mide motilitesinde artış",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "β₂ reseptör aktivasyonu, glikojen yıkımını (glikojenoliz) ve glukoneogenezi artırır → hiperglisemiye neden olabilir.",
  ),

  Question(
    question: "Klinikte akut anaflaksi tedavisinde tercih edilen katekolamin hangisidir?",
    options: [
      "Noradrenalin",
      "Fenilefrin",
      "Dopamin",
      "Adrenalin",
      "Dobutamin",
    ],
    correctAnswerIndex: 3,
    difficulty: 1,
    explanation: "Adrenalin, β₂ etkisiyle bronkodilatasyon, β₁ etkisiyle kardiyak destek ve α₁ ile vazokonstriksiyon sağlar → anafilaksi tedavisinde ilk tercih.",
  ),

  Question(
    question: "Beta-2 agonistlerin aşağıdaki etkilerinden hangisi istenmeyen yan etki olarak ortaya çıkabilir?",
    options: [
      "Hipotansiyon",
      "Hipokalemi",
      "Hipoglisemi",
      "Bradikardi",
      "Miyozis",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Beta-2 agonistler, potasyumu hücre içine alarak hipokalemi yapabilir → özellikle yüksek dozda salbutamol kullanımında dikkat edilmelidir.",
  ),

  Question(
    question: "Aşağıdakilerden hangisi alfa-1 reseptör antagonisti olarak kullanılır?",
    options: [
      "Propranolol",
      "Fenilefrin",
      "Fentolamin",
      "Atenolol",
      "Metoprolol",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Fentolamin, alfa-1 ve alfa-2 reseptörleri bloklar → vazodilatasyon sağlar → feokromositoma krizinde kullanılır.",
  ),

  Question(
    question: "Aşağıdaki beta blokerlerden hangisi seçici beta-1 antagonistidir?",
    options: [
      "Propranolol",
      "Labetalol",
      "Carvedilol",
      "Atenolol",
      "Timolol",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Atenolol, beta-1 selektif antagonistik etki gösterir → kalp üzerinde etkili, bronşlara daha az etkilidir → KOAH'ta daha güvenlidir.",
  ),

  Question(
    question: "Beta bloker kullanan bir hastada bronkospazm gelişti. En olası neden nedir?",
    options: [
      "Aşırı doz",
      "Beta-1 reseptör blokajı",
      "Beta-2 reseptör blokajı",
      "Parasempatik uyarı",
      "Alfa-1 aktivasyonu",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Beta-2 reseptörler bronş düz kaslarında bulunur → blokajı bronkospazma neden olabilir → özellikle propranolol gibi non-selektif ajanlarda görülür.",
  ),

  Question(
    question: "Aşağıdaki durumların hangisinde adrenalin kullanımı kontrendikedir veya dikkatli olunmalıdır?",
    options: [
      "Anaflaksi",
      "Kardiyojenik şok",
      "Glokom",
      "Asistol",
      "Lokal anestezikle birlikte kullanımı",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Adrenalin, göz içi basıncını artırabilir → glokomda kontrendikedir veya dikkatli kullanılmalıdır.",
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisi alfa ve beta antagonistidir?",
    options: [
      "Atenolol",
      "Propranolol",
      "Labetalol",
      "Esmolol",
      "Timolol",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Labetalol, alfa-1 + beta-1 + beta-2 reseptörleri antagonize eder → hipertansif krizlerde ve preeklampside tercih edilir.",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi yalnızca dopaminerjik reseptörlere etki eder?",
    options: [
      "Dopamin",
      "Dobutamin",
      "Fenoldopam",
      "Adrenalin",
      "Noradrenalin",
    ],
    correctAnswerIndex: 2,
    difficulty: 3,
    explanation: "Fenoldopam, D₁ dopamin reseptör agonistidir → renal vazodilatasyon yapar, antihipertansif olarak kullanılır.",
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisi beta-1 selektif bir ajandır?",
    options: [
      "Propranolol",
      "Labetalol",
      "Metoprolol",
      "Nadolol",
      "Carvedilol",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Metoprolol, kalp üzerindeki beta-1 reseptörleri selektif olarak inhibe eder → kardiyoselektif beta bloker olarak bilinir.",
  ),

  Question(
    question: "Adrenalin dozu ile ilgili olarak en düşük etkili dozda aşağıdaki reseptörlerden hangisi önce uyarılır?",
    options: ["Alfa-1", "Alfa-2", "Beta-1", "Beta-2", "Dopamin"],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Adrenalin, düşük dozda beta-2 aktivitesi baskındır → bronkodilatasyon ve vazodilatasyon gibi etkiler ön plandadır.",
  ),

  Question(
    question: "Beta bloker kullanımında hipoglisemi maskelenebilir. Bunun nedeni nedir?",
    options: [
      "Glukoz metabolizmasını artırması",
      "Beta-2 reseptör blokajı ile tremorun azalması",
      "Parasempatik aktiviteyi baskılaması",
      "Kortizol salınımını artırması",
      "Adrenalin salınımını uyarması",
    ],
    correctAnswerIndex: 1,
    difficulty: 3,
    explanation: "Hipogliseminin adrenerjik semptomları (ör. tremor, taşikardi) beta-2 blokajı ile maskelenebilir → özellikle diyabetiklerde önemli.",
  ),

  Question(
    question: "Beta-1 blokajı ile aşağıdaki hangi klinik etki görülür?",
    options: [
      "Kan basıncında artış",
      "İnme hacminde artış",
      "Renin salınımında azalma",
      "Bronkodilatasyon",
      "Kalp hızında artış",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Beta-1 blokajı, renin salınımını baskılar → bu da kan basıncının düşmesine katkıda bulunur.",
  ),

  Question(
    question: "Aşağıdakilerden hangisi alfa-2 agonisti olarak santral etkili bir antihipertansiftir?",
    options: [
      "Deksmedetomidin",
      "Fenilefrin",
      "Terbutalin",
      "Dobutamin",
      "Fenoldopam",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Deksmedetomidin, alfa-2 agonisttir → santral sempatik tonusu baskılayarak sedasyon ve antihipertansif etki oluşturur.",
  ),

  Question(
    question: "Beta blokerlerin antiaritmik etkisinin temel mekanizması nedir?",
    options: [
      "Na⁺ kanal blokajı",
      "K⁺ kanal açılımı",
      "AV nodal iletimi yavaşlatma",
      "Alfa-1 antagonizması",
      "QT süresini uzatma",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Beta blokerler, AV nodda iletimi yavaşlatarak supraventriküler taşiaritmileri kontrol altında tutar.",
  ),

  Question(
    question: "Beta-1 selektif blokerlerden biri olan bisoprolol'ün avantajı nedir?",
    options: [
      "Hipoglisemi riskini artırması",
      "Solunum sistemi yan etkisinin az olması",
      "Daha fazla vazodilatör etki",
      "Sempatik aktiviteyi artırması",
      "Renin salınımını artırması",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Bisoprolol, beta-1 selektif olduğu için bronşlarda beta-2'ye daha az etki eder → KOAH gibi durumlarda daha güvenlidir.",
  ),

  Question(
    question: "Adrenalin kullanımı sırasında sistolik basınç artarken diyastolik basınç düşüyorsa, bu durum hangi reseptör etkisine bağlıdır?",
    options: [
      "Alfa-1",
      "Beta-1",
      "Beta-2",
      "Dopaminerjik",
      "Alfa-2",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Beta-2 aktivasyonu, vazodilatasyon yapar → periferik direnç azalır → diyastolik basınç düşebilir.",
  ),

  Question(
    question: "Beta blokerlerin migren profilaksisinde etkili olmasının nedeni nedir?",
    options: [
      "Vazokonstriksiyon sağlaması",
      "Antikolinerjik etkileri",
      "NMDA blokajı",
      "Sempatik hiperaktiviteyi azaltması",
      "Prostaglandin inhibisyonu",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Migrenin bazı formlarında sempatik hiperaktivite rol oynar → beta blokerler, bu yolu baskılayarak profilaktik etki gösterir.",
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisi uzun etkili non-selektif beta blokerdir?",
    options: [
      "Esmolol",
      "Atenolol",
      "Propranolol",
      "Nadolol",
      "Labetalol",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Nadolol, hem beta-1 hem beta-2 reseptörlerini uzun süreli bloklar → etkisi günlerce sürebilir.",
  ),

  Question(
    question: "Labetalol'ün gebelikte tercih edilme nedeni nedir?",
    options: [
      "Sadece beta-1 blokajı yapması",
      "Hem alfa hem beta blokajı yapması",
      "Plasentadan geçmemesi",
      "Tokolitik etki göstermesi",
      "Kardiyotoksik olmaması",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Labetalol, alfa-1 ve beta reseptörlerini birlikte bloklar → gebelikteki hipertansiyonlarda ilk tercih edilen ajanlardandır.",
  ),

  Question(
    question: "Beta blokerlerin en ciddi yan etkilerinden biri aşağıdakilerden hangisidir?",
    options: [
      "Bradikardi",
      "Glukoz toleransında bozulma",
      "Pulmoner ödem",
      "AV Blok",
      "Tremor",
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "AV blok (kalp bloğu), yüksek dozda veya hassas hastalarda beta blokerlerin ciddi yan etkisidir → EKG takibi önemlidir.",
  ),

  Question(
    question: "Dopamin, renal perfüzyonu artırmak için hangi doz aralığında kullanılır?",
    options: [
      "0.5–2 mcg/kg/dk",
      "2–5 mcg/kg/dk",
      "5–10 mcg/kg/dk",
      "10–20 mcg/kg/dk",
      ">20 mcg/kg/dk",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Düşük doz dopamin (0.5–2 mcg/kg/dk), D₁ dopamin reseptörlerini uyararak renal vazodilatasyon sağlar → böbrek perfüzyonu artar.",
  ),

  Question(
    question: "Beta-2 agonistlerin kaslar üzerindeki etkilerinden biri aşağıdakilerden hangisidir?",
    options: [
      "Kas tonusunu azaltma",
      "Titreşim (tremor) oluşturma",
      "Hipotoni yapma",
      "Hiporefleksiye yol açma",
      "Rigor mortis oluşturma",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Beta-2 agonistler, iskelet kaslarında tremora (ince kas titremesi) neden olabilir → özellikle salbutamol gibi ajanlarla görülür.",
  ),

  Question(
    question: "Fenoldopam ile ilgili aşağıdaki ifadelerden hangisi doğrudur?",
    options: [
      "Beta-1 selektif antagonistik etkisi vardır",
      "Sadece oral kullanılır",
      "Akut hipertansif krizlerde kullanılabilir",
      "Bronkodilatör etki gösterir",
      "Kardiyak output'u artırır",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Fenoldopam, D₁ agonisti ve vazodilatördür → akut hipertansif acillerde IV yolla kullanılabilir.",
  ),

  Question(
    question: "Beta-2 agonist kullanımında en sık görülen EKG bulgusu hangisidir?",
    options: [
      "ST elevasyonu",
      "PR uzaması",
      "QT uzaması",
      "T dalgası düzleşmesi",
      "U dalgası belirginliği",
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Hipokalemi yapan beta-2 agonistler EKG'de U dalgası belirginliği, T dalgası düzleşmesi gibi bulgular yapabilir.",
  ),

  Question(
    question: "Beta-1 agonist ajan aşağıdakilerden hangisidir?",
    options: [
      "Fenilefrin",
      "Dopamin (düşük doz)",
      "Dobutamin",
      "Terbutalin",
      "Fenoldopam",
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Dobutamin, kardiyoselektif beta-1 agonisttir → kalp debisini artırmak için kullanılır.",
  ),

  Question(
    question: "Aşağıdakilerden hangisi beta blokerler için kontrendikasyon değildir?",
    options: [
      "Bradikardi",
      "AV blok",
      "Astım",
      "Hipotansiyon",
      "Hipertiroidi",
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Hipertiroidide beta blokerler (özellikle propranolol) semptomatik tedavide kullanılır → kontrendike değildir, hatta faydalıdır.",
  ),

  Question(
    question: "Aşağıdaki durumların hangisinde beta-2 agonistler tercih edilmez?",
    options: [
      "Astım",
      "Prematür doğum tehdidi",
      "Akut bronkospazm",
      "Hiperkalemi",
      "Hipertansif kriz",
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Beta-2 agonistler, sistemik vazodilatasyon ve taşikardi yaparak hipertansif krizi kötüleştirebilir, bu nedenle tercih edilmez.",
  ),

  Question(
    question: "Aşağıdakilerden hangisi non-selektif alfa antagonisti olarak bilinir?",
    options: [
      "Tamsulosin",
      "Fentolamin",
      "Metoprolol",
      "Doksazosin",
      "Esmolol",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Fentolamin, alfa-1 ve alfa-2 reseptörlerini bloke eder → feokromositoma ve vazospazm tedavisinde kullanılır.",
  ),

  Question(
    question: "Beta blokerlerin kalp dışı etkilerinden biri aşağıdakilerden hangisidir?",
    options: [
      "Bronkodilatasyon",
      "Tirotoksik kriz baskılama",
      "Kortizol salınımını artırma",
      "Hiponatremi",
      "İnsülin duyarlılığını artırma",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Propranolol, hipertiroidide periferik T4 → T3 dönüşümünü baskılar → tirotoksik kriz tedavisinde kullanılır.",
  ),

  Question(
    question: "Beta-2 agonistlerin kas gevşetici etkisi en çok hangi kas tipi üzerinde etkilidir?",
    options: [
      "Kalp kası",
      "Düz kas",
      "İskelet kası",
      "İntrakardiak kas",
      "Papiller kas",
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Beta-2 reseptörleri, bronş, uterus, damar gibi düz kaslarda gevşeme yapar → bu etkileriyle bronkodilatasyon ve tokolitik etki sağlar.",
  ),

  Question(
    question: "Epinefrinin yüksek dozda (>0.1 mcg/kg/dk) baskın etkisi nedir?",
    options: [
      "α1-adrenerjik vazokonstriksiyon",
      "β2-adrenerjik bronkodilatasyon",
      "Dopaminerjik renal vazodilatasyon",
      "Histamin salınımı",
      "Parasempatik aktivasyon",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Doz arttıkça α etkileri baskınlaşır; düşük dozda β etkileri ön plandadır.",
  ),

  Question(
    question: "Hangisi norepinefrinin temel klinik kullanım amacıdır?",
    options: [
      "Şiddetli hipotansiyon tedavisi",
      "Bradikardi tedavisi",
      "Astım atağı tedavisi",
      "Anafilakside ilk seçenek",
      "Hipertansiyon tedavisi",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Güçlü α agonisti olarak vazopresör etki gösterir; β1 etkisi ile kardiyak outputu artırır.",
  ),

  Question(
    question: "Fenilefrinin özellikle tercih edildiği durum hangisidir?",
    options: [
      "Spinal anesteziye bağlı hipotansiyon",
      "Kalp yetmezliği",
      "Bronşiyal astım",
      "Renal arter stenozu",
      "Hipertroidi",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Saf α1 agonistidir; refleks bradikardi yapabilir ancak kardiyak outputu etkilemez.",
  ),

  Question(
    question: "Hangisi karvedilolün özelliğidir?",
    options: [
      "Non-selektif β+α1 blokaj yapması",
      "Saf β1 selektif olması",
      "İntrinsik sempatomimetik aktivite (ISA) göstermesi",
      "Membran stabilize edici etki",
      "Sadece parenteral kullanılması",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Kalp yetmezliğinde kullanılır; ek α1 blokajı ile vazodilatasyon yapar.",
  ),

  Question(
    question: "Hangisi epinefrinin anafilaksi tedavisindeki rolünü açıklar?",
    options: [
      "α1 ile vazokonstriksiyon + β2 ile bronkodilatasyon",
      "Sadece histamin salınımını inhibe etme",
      "Kardiyak outputu azaltma",
      "SSS depresyonu yapma",
      "Koagülasyonu artırma",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Vasküler kaçağı ve bronkospazmı aynı anda düzeltir; IM 0.3-0.5 mg standart dozdur.",
  ),

  Question(
    question: "Hangisi klonidinin mekanizmasını tanımlar?",
    options: [
      "Santral α2 agonizmi ile sempatik aktiviteyi baskılama",
      "Periferik α1 blokajı",
      "β reseptör downregülasyonu",
      "Dopamin salınımını artırma",
      "Asetilkolin esteraz inhibisyonu",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Hipertansiyon, opioid yoksunluk ve premedikasyonda kullanılır; sedasyon yapar.",
  ),

  Question(
    question: "Hangisi adrenerjik agonistlerin yan etkilerinden değildir?",
    options: [
      "Hipoglisemi",
      "Taşikardi",
      "Miyokard iskemisi",
      "Anksiyete",
      "Tremor",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Adrenerjik agonistler glikojenoliz yaparak hiperglisemiye neden olur.",
  ),

  Question(
    question: "Hangisi β blokerlerin oftalmik kullanım endikasyonudur?",
    options: [
      "Glokom tedavisi",
      "Retinal dekolman",
      "Katarakt",
      "Konjonktivit",
      "Üveit",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Timolol gibi topikal β blokerler göz içi basıncını azaltır.",
  ),

  Question(
    question: "Hangisi esmololün özelliğidir?",
    options: [
      "Kısa etkili kardiyoselektif β1 bloker",
      "Güçlü α blokaj etkisi",
      "Oral kullanım",
      "İntrinsik sempatomimetik aktivite",
      "Bronkodilatör etki",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Yarı ömrü 9 dakikadır; intraoperatif taşikardi tedavisinde idealdir.",
  ),

  Question(
    question: "Hangisi adrenerjik agonistlerin renal etkisidir?",
    options: [
      "Renin salınımını artırma",
      "Diürezi artırma",
      "ADH salınımını baskılama",
      "Renal arter vazokonstriksiyonu",
      "Proteinüri yapma",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "β1 agonizmi juxtaglomerüler hücrelerden renin salınımını uyarır.",
  ),

  Question(
    question: "Hangisi fenoksibenzaminin özelliğidir?",
    options: [
      "İrreversibl α blokaj yapması",
      "β blokaj etkisi",
      "Kısa etkili olması",
      "Kardiyak outputu artırması",
      "Bronkodilatasyon yapması",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Feokromositoma cerrahisi öncesi kullanılır; 24-48 saat süren etkisi vardır.",
  ),

  Question(
    question: "Hangisi β blokerlerin kardiyoprotektif etki mekanizmasıdır?",
    options: [
      "Miyokard O₂ tüketimini azaltma",
      "Koroner vazodilatasyon",
      "Platelet inhibisyonu",
      "Antiinflamatuar etki",
      "Hipertrofiyi artırma",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Kalp hızı ve kontraktiliteyi düşürerek iskemiyi azaltır.",
  ),

  Question(
    question: "Hangisi prazosinin özelliğidir?",
    options: [
      "Selektif α1 bloker",
      "Non-selektif α bloker",
      "β blokaj etkisi",
      "ISA göstermesi",
      "Renin salınımını artırması",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Hipertansiyon ve benign prostat hipertrofisinde kullanılır; 'ilk doz etkisi' yapar.",
  ),

  Question(
    question: "Hangisi adrenerjik agonistlerin metabolik etkisidir?",
    options: [
      "Hiperglisemi",
      "Hipokalemi",
      "Lipoliz inhibisyonu",
      "Protein sentezini artırma",
      "Ürik asit atılımını azaltma",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "β2 agonizmi glikojenoliz ve glukoneogenezi artırır; insülin salınımını inhibe eder.",
  ),

  Question(
    question: "Hangisi β blokerlerin glokom tedavisindeki etki mekanizmasıdır?",
    options: [
      "Göz içi sıvı üretimini azaltma",
      "Siliyer kas kontraksiyonu",
      "Pupiller dilatasyon",
      "Göz yaşı salınımını artırma",
      "Korneal ödemi azaltma",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Timolol, siliyer cisimde β reseptörleri bloke ederek akuöz humor üretimini azaltır.",
  ),

  Question(
    question: "Hangisi adrenerjik agonistlerin hematolojik etkisidir?",
    options: [
      "Platelet agregasyonunu artırma",
      "Koagülasyon zamanını uzatma",
      "Fibrinolizi artırma",
      "Lökopeni",
      "Anemi",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "α2 agonizmi platelet agregasyonunu artırır; epinefrin hemostazı güçlendirir.",
  ),

  Question(
    question: "Hangisi metildopanın özelliğidir?",
    options: [
      "Santral α2 agonisti",
      "Periferik α1 bloker",
      "β blokaj etkisi",
      "Dopamin agonisti",
      "ACE inhibitörü",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Gebelikte hipertansiyon tedavisinde güvenle kullanılır; hemolitik anemi yapabilir.",
  ),

  Question(
    question: "Hangisi adrenerjik agonistlerin gastrointestinal etkisidir?",
    options: [
      "Motiliteyi azaltma",
      "Asit sekresyonunu artırma",
      "Safra kesesi kontraksiyonu",
      "Pankreatik enzim salınımı",
      "İshal",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "α2 agonizmi barsak motilitesini azaltır; klonidin ile konstipasyon görülebilir.",
  ),

  Question(
    question: "Hangisi β blokerlerin intoksikasyonunda kullanılan antidottur?",
    options: [
      "Glukagon",
      "Fizostigmin",
      "Nalokson",
      "Flumazenil",
      "Kalsiyum glukonat",
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "β reseptörlerinden bağımsız cAMP artışı sağlayarak kardiyak inotropiyi düzeltir.",
  ),
];
