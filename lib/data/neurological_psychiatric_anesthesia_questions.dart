import '../models/question.dart';

final List<Question> neurologicalPsychiatricAnesthesiaQuestions = <Question>[
  Question(
    question:
        "Nörolojik hastalığı olan bir hastada anestezi yönetiminin en büyük zorluklarından biri aşağıdakilerden hangisidir?",
    options: [
      "Solunum depresyonu",
      "Serebral perfüzyonun korunması",
      "Hipertermi",
      "Kas gevşetici kullanımının sınırlanması",
      "İntravenöz anestezi gereksinimi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Nörolojik hastalığı olan hastalarda, serebral perfüzyonun korunması kritik önemdedir çünkü beyin fonksiyonları zaten bozulmuş olabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi Parkinson hastalığı olan bir hastada anestezi yönetiminde dikkat edilmesi gereken bir durumdur?",
    options: [
      "L-DOPA tedavisinin durdurulması",
      "Dopaminerjik ajanların sürekli verilmesi",
      "Sadece lokal anestezi kullanımı",
      "Kas gevşetici kullanımının azaltılması",
      "Hiperkapniye izin verilmesi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Parkinson hastalığında dopaminerjik ilaçların devam etmesi, motor fonksiyonların korunması için önemlidir. Tedavinin kesilmesi akut parkinsonizm riskini artırabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumlardan hangisi nörolojik hastalığı olan hastalarda genel anestezi sırasında en fazla görülen komplikasyonlardan biridir?",
    options: [
      "Solunum depresyonu",
      "Hipovolemi",
      "Hiperkalemi",
      "Atelektazi",
      "İntraoperatif nöbetler",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Nörolojik hastalıklarda, solunum depresyonu, merkezi sinir sisteminin zaten etkilenmiş olması nedeniyle en sık görülen komplikasyonlardan biridir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki hastalıklar arasında hangisinde generalize nöbetlere en sık rastlanır?",
    options: [
      "Alzheimer hastalığı",
      "Parkinson hastalığı",
      "Multiple skleroz",
      "Epilepsi",
      "Huntington hastalığı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Epilepsi, genel nöbetlerin en sık görüldüğü hastalıktır, beyin elektriksel aktivitesindeki düzensizlikler nedeniyle.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nörolojik hastalığı olan bir hastada anestezi sırasında nörolojik statusun korunması için aşağıdakilerden hangisi uygulanmaz?",
    options: [
      "Serebral perfüzyon basıncının korunması",
      "Nöromüsküler blokajın azaltılması",
      "Derin anestezi kullanımı",
      "Hipotermi uygulaması",
      "İntravenöz anestezi kullanımı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Hipotermi, serebral metabolizmayı azaltır fakat nörolojik hastalıkları olan hastalarda dikkatli kullanılmalıdır. Ayrıca, serebral perfüzyon ve oksijenizasyon da etkilenebilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Alzheimer hastalığı olan bir hastada anestezi yönetimi için aşağıdaki faktörlerden hangisi özellikle önemlidir?",
    options: [
      "Anestezi derinliğinin minimumda tutulması",
      "Kas gevşetici kullanımının artması",
      "Sadece lokal anestezi kullanımı",
      "Anestezi ajanlarının kısa etkili olması",
      "Derin sedasyon uygulanması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Alzheimer hastalığı, anesteziklerin etkilerini uzatabilir. Kısa etkili ajanlar kullanmak, beyin fonksiyonlarını daha iyi korur.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastalığı olan bir hastada anestezi sırasında en büyük risklerden biri aşağıdakilerden hangisidir?",
    options: [
      "Hiperkapni",
      "Hipertermi",
      "Hipotansiyon",
      "Solunum depresyonu",
      "Kas gevşeticiye yanıtın değişmesi",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Parkinson hastalığı, kas tonusunda değişiklikler yapabilir ve kas gevşetici ilaçların yanıtını etkileyebilir. Bu, nörolojik hastalıklarda anestezi yönetimi açısından dikkat edilmesi gereken bir durumdur.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Multiple skleroz hastasında anestezi yönetimi sırasında hangi ilaç kullanımı özellikle dikkat gerektirir?",
    options: [
      "Nitröz oksit",
      "Midazolam",
      "Etomidat",
      "Ketamin",
      "Sevofluran",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Ketamin, multiple skleroz hastalarında, santral sinir sistemi üzerindeki etkileri nedeniyle dikkatle kullanılmalıdır, çünkü excitotoksik etki riski taşır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nörolojik hastalığı olan bir hastada anestezi sırasında aşağıdaki faktörlerden hangisi en önemli risk faktörlerinden biridir?",
    options: [
      "Hiperkalemi",
      "Hiperkapni",
      "Solunum depresyonu",
      "Kas gevşetici kullanımının uzun süre devam etmesi",
      "İlaç etkileşimleri",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Nörolojik hastalığı olan hastalarda, ilaç etkileşimleri çok önemli olabilir çünkü nörolojik ilaçlar ve anestezikler arasında etkileşimler beyin fonksiyonlarını etkileyebilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi Alzheimer hastalığı olan bir hastada anestezi yönetimi için en önemli önceliktir?",
    options: [
      "Anestezi derinliğinin minimumda tutulması",
      "Nöromüsküler blokajın uygulanması",
      "Solunum desteği sağlanması",
      "İlaç etkileşimlerinin dikkate alınması",
      "Kas gevşetici kullanımı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Alzheimer hastalığında, ilaç etkileşimleri beyin fonksiyonlarını bozabilir, bu yüzden nörolojik ilaçların anestezi ile etkileşimi dikkate alınmalıdır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastalığı olan bir hastada anestezi yönetimi için aşağıdaki faktörlerden hangisi en büyük önceliktir?",
    options: [
      "Kas tonusunun korunması",
      "Hipotansiyonun önlenmesi",
      "Kas gevşetici kullanımının arttırılması",
      "Yüksek doz analjezi uygulanması",
      "Nöromüsküler blokajın sınırlanması",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Parkinson hastalığı, kas tonusunu etkileyebilir; bu yüzden kas tonusunun korunması anestezi yönetiminin önemli bir parçasıdır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Multiple skleroz hastasında anestezi sırasında hangi durum özellikle dikkat gerektirir?",
    options: [
      "Kas gevşetici kullanımının sınırlanması",
      "Solunum depresyonunun önlenmesi",
      "Anestezi derinliğinin minimumda tutulması",
      "Hipotansiyona izin verilmesi",
      "Akut nöbetlerin izlenmesi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Multiple skleroz hastalarında, kas gevşetici kullanımı dikkatle yapılmalı, çünkü bu hastalar kas tonusunda değişiklikler gösterebilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nörolojik hastalığı olan bir hastada anestezi yönetimi sırasında serebral perfüzyon basıncı (CPP) ile ilgili aşağıdakilerden hangisi yanlıştır?",
    options: [
      "CPP'nin korunması, beyin dokusunun oksijenlenmesi için önemlidir.",
      "CPP, MAP ile ICP arasındaki farkla hesaplanır.",
      "CPP'yi artırmak için hipervolemi uygulanabilir.",
      "CPP'nin düşürülmesi, serebral ödemi artırır.",
      "CPP'nin korunması için hiperkapniye izin verilebilir.",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Hiperkapni, serebral vazodilatasyona yol açarak ICP'yi artırabilir ve CPP'yi olumsuz etkileyebilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Psikiyatrik hastalıkları olan bir hastada anestezi yönetimi için en büyük dikkat gerektiren durum aşağıdakilerden hangisidir?",
    options: [
      "İlaç etkileşimleri",
      "Yüksek anestezi derinliği",
      "Solunum desteği sağlanması",
      "Nöromüsküler blokajın artması",
      "Anestezi ajanlarının hızlı atılımı",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Psikiyatrik hastalıklarda, ilaç etkileşimleri çok büyük bir öneme sahiptir çünkü antipsikotik ilaçlar ve anestezikler arasında ciddi etkileşimler olabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Alkol bağımlılığı olan bir hastada anestezi yönetimi sırasında aşağıdakilerden hangisi özellikle dikkat edilmesi gereken bir durumdur?",
    options: [
      "Alkol yoksunluğu semptomları",
      "Yüksek doz kas gevşetici kullanımı",
      "Hipotansiyonun teşvik edilmesi",
      "Nöromüsküler blokajın azaltılması",
      "Anestezi derinliğinin aşırı düşürülmesi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Alkol bağımlılığında, alkol yoksunluğu semptomları anestezi yönetimini zorlaştırabilir. Bu nedenle preoperatif alkol yoksunluğu riski iyi değerlendirilmelidir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi Parkinson hastalığı olan bir hastada anestezi yönetiminde en dikkat edilmesi gereken durumdur?",
    options: [
      "L-DOPA tedavisinin kesilmesi",
      "Hiperkapniye izin verilmesi",
      "Dopaminerjik tedavinin kesilmesi",
      "Kas gevşetici ilaçların dikkatle kullanılması",
      "Alkol tedavisinin başlanması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Parkinson hastalığı, kas tonusunu etkileyebilir, bu yüzden kas gevşetici ilaçların dikkatle kullanılması önemlidir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Alzheimer hastalığı olan hastalarda anestezi yönetiminde aşağıdaki durumlardan hangisi en fazla komplikasyona yol açar?",
    options: [
      "Yüksek anestezi derinliği",
      "Kısa etkili anestezik ajan kullanımı",
      "Kas gevşetici kullanımı",
      "Derin analjezi sağlanması",
      "Hiperkapniye izin verilmesi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Alzheimer hastalığında yüksek anestezi derinliği beyin fonksiyonlarını daha fazla baskılayabilir ve komplikasyonlara yol açabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nörolojik hastalığı olan hastalarda anestezi sırasında serebral kan akımının korunması amacıyla aşağıdakilerden hangisi yapılır?",
    options: [
      "Hiperkapni sağlanır",
      "Hipovolemi uygulanır",
      "Derin anestezi yapılır",
      "Solunum depresyonu teşvik edilir",
      "Normovolemi sağlanır",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Normovolemi, serebral kan akımının korunmasını sağlar, hipovolemi ve hiperkapni gibi durumlar serebral perfüzyonu olumsuz etkileyebilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nörolojik hastalığı olan hastalar için anestezi sırasında nöromüsküler blokajın kullanımı ile ilgili hangisi doğrudur?",
    options: [
      "Her durumda nöromüsküler blokaj tercih edilir",
      "Kas gevşetici kullanılmamalıdır",
      "Nöromüsküler blokajın dozajı dikkatle ayarlanmalıdır",
      "Nöromüsküler blokaj her hastada aynıdır",
      "Kas gevşetici kullanımı kesinlikle yasaktır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Nöromüsküler blokajın dozajı, nörolojik hastalıklarda dikkatle ayarlanmalı ve kas tonusunu etkilememek için kullanılmalıdır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nörolojik hastalığı olan hastalarda anestezi yönetimi sırasında aşağıdakilerden hangisi en önemli komplikasyonlardan biridir?",
    options: [
      "Solunum depresyonu",
      "Kanama riski",
      "Nöbet aktivitesi",
      "Hipertermi",
      "Atelektazi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Nörolojik hastalıklarda, nöbet aktivitesi en sık karşılaşılan ve en ciddi komplikasyonlardan biridir, çünkü beyin fonksiyonları zaten etkilenmiştir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi nörolojik hastalığı olan hastalarda anestezi yönetiminde genellikle kaçınılası bir durumdur?",
    options: [
      "Kas gevşetici kullanımı",
      "Derin analjezi sağlanması",
      "Hiperventilasyon",
      "Nöromüsküler blokajın artırılması",
      "Hipokapniye izin verilmesi",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Hipokapni, serebral vazokonstriksiyon yaparak ICP'yi artırabilir. Hiperventilasyon dikkatle yapılmalıdır ve genellikle hipokapniye izin verilmemelidir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nörolojik hastalığı olan hastalarda anestezi sırasında nörolojik fonksiyonların izlenmesi için en önemli yöntemlerden biri hangisidir?",
    options: [
      "EEG izleme",
      "BIS izleme",
      "Motor evoked potential (MEP) izleme",
      "EtCO₂ takibi",
      "PaO₂ düzeyi ölçümü",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Motor evoked potential (MEP), özellikle nörolojik hastalarda motor fonksiyonları izlemek için kullanılan önemli bir nöromonitörizasyon yöntemidir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nörolojik hastalığı olan bir hastada anestezi yönetiminde aşağıdakilerden hangisi en önemli parametrelerden biridir?",
    options: [
      "Kas gevşetici kullanımının azaltılması",
      "Solunum yolu yönetimi",
      "Hiperkapniye izin verilmesi",
      "Anestezi derinliğinin artırılması",
      "Yüksek doz opioid verilmesi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Solunum yolu yönetimi, nörolojik hastalıklar olan hastalarda anestezi yönetiminde kritik öneme sahiptir çünkü beyin fonksiyonları bozulmuş olabilir ve solunum yolu tıkanıklığı ciddi komplikasyonlara yol açabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Multiple skleroz hastasında anestezi yönetiminde aşağıdaki durumlardan hangisi özellikle dikkatle izlenmelidir?",
    options: [
      "Yüksek doz opioid kullanımı",
      "Kas gevşetici kullanımı",
      "Anestezi derinliğinin artırılması",
      "Solunum yolu yönetimi",
      "Hiperkapniye izin verilmesi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Multiple skleroz hastalarında kas gevşetici kullanımı, santral sinir sistemi üzerindeki etkiler nedeniyle dikkatle izlenmelidir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nörolojik hastalığı olan bir hastada anestezi yönetiminde inhalasyon anesteziği kullanımı ile ilgili hangisi doğrudur?",
    options: [
      "İnhalasyon anesteziği her zaman tercih edilmelidir",
      "İnhalasyon anesteziği, nörolojik hastalıkları olan hastalarda etkilidir",
      "İnhalasyon anesteziği, nörolojik hastalıkları olan hastalarda genellikle kaçınılmalıdır",
      "İnhalasyon anesteziği, kas tonusunu artırır",
      "İnhalasyon anesteziği ile ağrı yönetimi sağlanamaz",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İnhalasyon anesteziği, nörolojik hastalıklarda genellikle tercih edilmez, çünkü serebral perfüzyonu ve beyin fonksiyonlarını daha fazla etkileyebilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nörolojik hastalığı olan bir hastada anestezi sırasında solunum depresyonu riski ile ilgili olarak hangi önlem alınmalıdır?",
    options: [
      "Hiperkapniye izin verilmesi",
      "Kas gevşetici kullanımının azaltılması",
      "Derin anestezi sağlanması",
      "Spinal anestezi uygulanması",
      "Etomidat kullanımına odaklanılması",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Kas gevşetici kullanımının azaltılması, solunum depresyonu riskini önler, özellikle nörolojik hastalıklarda.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastasında anestezide en çok dikkat edilmesi gereken ilaç etkileşimi hangisidir?",
    options: [
      "L-dopa ile opioid kombinasyonu",
      "MAO inhibitörü ile meperidin kullanımı",
      "Antikolinerjik ile ketamin kombinasyonu",
      "Propofol ile benzodiazepin kombinasyonu",
      "Sevofluran ile deksametazon kullanımı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "MAO inhibitörleri ile meperidin birlikte kullanıldığında hipertansif kriz ve serotonin sendromu riski artar.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Alzheimer hastasında postoperatif deliryum riskini artıran en olası etken nedir?",
    options: [
      "Kısa cerrahi süresi",
      "Derin anestezi",
      "Yüksek doz opioid kullanımı",
      "Antipsikotiklerin kesilmesi",
      "Antikolinerjik ilaç kullanımı",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Alzheimer hastalarında kolinerjik aktivitenin azalması söz konusudur. Antikolinerjikler deliryumu artırabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastasında dopamin agonistlerinin kesilmesiyle ortaya çıkabilecek sendrom hangisidir?",
    options: [
      "Serotonin sendromu",
      "Malign nöroleptik sendrom",
      "Antikolinerjik sendrom",
      "Deliryum tremens",
      "Katekolamin kriz",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Dopaminerjik ilaçların ani kesilmesi Malign Nöroleptik Sendrom'a neden olabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Antidepresan kullanan bir hastada anestezi indüksiyonunda dikkat edilmesi gereken en önemli risk nedir?",
    options: [
      "Aritmi gelişimi",
      "Hipotansiyon",
      "Hipoglisemi",
      "Bradipne",
      "Hipotermi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Trisiklik antidepresanlar ve bazı SSRI'lar QT uzaması ve aritmi riskini artırabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastalarında nöromüsküler blokaj ajanı olarak hangisinin kullanımı önerilmez?",
    options: [
      "Roküronyum",
      "Süksinilkolin",
      "Veküronyum",
      "Cisatrakuryum",
      "Atrakurium",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Parkinson hastalarında nöromüsküler blokaj ajanı seçerken dikkatli olunmalıdır çünkü bu hastalarda kas kitlesi azalabilir, denervasyon artabilir ve bazı ilaçlara karşı aşırı duyarlılık gelişebilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Antipsikotik kullanan hastalarda intraoperatif dönemde aşağıdaki komplikasyonlardan hangisi daha sık görülür?",
    options: [
      "Hipotansiyon",
      "Taşikardi",
      "Hiperglisemi",
      "Hipertermi",
      "Bradikardi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Antipsikotikler alfa adrenerjik blokaj yaparak hipotansiyona eğilim oluşturabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Antiepileptik ilaç kullanan bir hastada anestezi sırasında dikkat edilmesi gereken en önemli etkileşim hangisidir?",
    options: [
      "Etomidat ile nöbet riskinde artış",
      "Propofol ile hepatotoksisite",
      "Anesteziklerin metabolizmasının hızlanması",
      "İntrakraniyal basınçta artış",
      "Kas gevşeticilere aşırı duyarlılık",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Antiepileptikler karaciğer enzimlerini indükler ve anestezik ilaçların metabolizmasını hızlandırabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Psikiyatrik bozukluğu olan hastada postoperatif ajitasyon gelişmemesi için aşağıdaki önlemlerden hangisi alınmalıdır?",
    options: [
      "Derin anestezi uygulamak",
      "Premedikasyon verilmemesi",
      "Elektrolit takibi yapılmaması",
      "Uyandırma sırasında çevresel uyaranları azaltmak",
      "Nitröz oksit kullanmak",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Uyanma döneminde düşük ışık ve ses gibi çevresel uyaranların azaltılması ajitasyonu önlemede etkilidir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastasında levodopa tedavisi anestezi öncesi neden kesilmemelidir?",
    options: [
      "Hipertansiyon gelişir",
      "Kas rijiditesi artar",
      "Aritmiye neden olur",
      "Tremor azalır",
      "Bradikardi olur",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Levodopa kesilirse motor semptomlar alevlenir; kas rijiditesi artarak entübasyon ve ventilasyon zorlaşabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Alzheimer hastasında kolinesteraz inhibitörlerinin anestezi ile etkileşimi nasıldır?",
    options: [
      "Kas gevşetici etkisini artırır",
      "Parasempatik aktiviteyi azaltır",
      "Kolinerjik yan etkiler görülür",
      "Anestezi süresini kısaltır",
      "Etomidat etkisini artırır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kolinesteraz inhibitörleri, bradikardi ve bronkospazm gibi kolinerjik yan etkiler oluşturabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastasında preoperatif dönemde hangi ilaç kontrendikedir?",
    options: [
      "Midazolam",
      "Atropin",
      "Metoklopramid",
      "Ondansetron",
      "Fentanil",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Metoklopramid dopamin antagonisti olup ekstrapiramidal semptomları kötüleştirebilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Antidepresan kullanan hastada postoperatif dönemde en sık görülen psikiyatrik durum hangisidir?",
    options: [
      "Euforia",
      "Ajitasyon",
      "Hipoglisemi",
      "Bradikardi",
      "Deliryum",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Antidepresan kullanan hastalar postoperatif dönemde ajitasyona daha yatkın olabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "SSRI kullanan hastada serotonin sendromu riskini artıran anestezik ajan hangisidir?",
    options: [
      "Propofol",
      "Midazolam",
      "Meperidin",
      "Sevofluran",
      "Fentanil",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Meperidin, serotonerjik etki gösterdiğinden SSRI ile birlikte serotonin sendromu riskini artırır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Epilepsili bir hastada sevofluran kullanımına bağlı hangi durum gözlenebilir?",
    options: [
      "Nöbet eşiğinin yükselmesi",
      "EEG baskılanması",
      "Nöbet indüksiyonu",
      "CMRO₂ azalması",
      "Hipokalemi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sevofluran nadir durumlarda epileptiform EEG aktivitesi ve nöbet tetikleyebilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Şizofreni hastalarında preoperatif değerlendirmede en çok dikkat edilmesi gereken durum hangisidir?",
    options: [
      "QT uzaması",
      "Hipokalemi",
      "Hipoglisemi",
      "Hipotermi",
      "Serebral kan akımı",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Antipsikotik ilaçların çoğu QT uzamasına neden olabilir, preoperatif EKG gereklidir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Alzheimer hastasında benzodiazepin kullanımı hangi riski artırır?",
    options: [
      "Hipertansiyon",
      "Uyanıklığın artması",
      "Deliryum",
      "Kas sertliği",
      "Tremor",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Alzheimer hastalarında benzodiazepinler postoperatif deliryum riskini artırabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastalığında kullanılan levodopa tedavisinin intraoperatif etkisi hangisidir?",
    options: [
      "Bradikardi yapar",
      "Anestezi süresini uzatır",
      "Disritmiye yatkınlık oluşturur",
      "Solunum depresyonu yapar",
      "Hipotermiye neden olur",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Levodopa kardiyak disritmi riskini artırabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "SSRI kullanan bir hastada opioid kullanımı sonrası hangi sendrom gelişebilir?",
    options: [
      "Neuroleptik malign sendrom",
      "Propofol infüzyon sendromu",
      "Serotonin sendromu",
      "Antikolinerjik sendrom",
      "Reye sendromu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "SSRI + meperidin veya fentanil gibi opioidlerin kombinasyonu serotonin sendromuna neden olabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastalığında dopamin agonistleri anestezi sırasında hangi yan etkiye yol açabilir?",
    options: [
      "Hipotermi",
      "Halüsinasyon",
      "Bradikardi",
      "Hiperkalemi",
      "Uykusuzluk",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Dopamin agonistleri santral sinir sistemi üzerinde halüsinasyon gibi psikotik semptomlara neden olabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Alzheimer hastalarında kolinesteraz inhibitörleri ile etkileşime girerek kas gevşetici etkisini uzatan ajan hangisidir?",
    options: [
      "Süksinilkolin",
      "Veküronyum",
      "Süksinilkolin",
      "Atrakurium",
      "Midazolam",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Kolinesteraz inhibitörleri, aminosteroid yapılı veküronyum gibi ajanların etkisini uzatabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastasında cerrahi sonrası ekstübasyon sırasında en çok dikkat edilmesi gereken durum hangisidir?",
    options: [
      "Tremorun artması",
      "Salivasyon ve aspirasyon riski",
      "Hipotansiyon",
      "Hiperkapni",
      "Bulantı ve kusma",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Parkinson hastalarında disfaji ve hipersalivasyon aspirasyon riskini artırır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nöroleptik malign sendrom gelişme riski en fazla hangi ilaç grubuyla ilişkilidir?",
    options: [
      "SSRI",
      "TCA",
      "Antipsikotikler",
      "Benzodiazepinler",
      "Antihistaminikler",
    ],
    correctAnswerIndex: 2,
    explanation:
        "D2 reseptör blokajı yapan antipsikotik ilaçlar, nöroleptik malign sendromla ilişkilidir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Trisiklik antidepresan (TCA) kullanan bir hastada hipotansiyon gelişirse hangi ilaç tercih edilmelidir?",
    options: [
      "Fenilefrin",
      "Efedrin",
      "Adrenalin",
      "Dobutamin",
      "İzoproterenol",
    ],
    correctAnswerIndex: 0,
    explanation:
        "TCA kullanan hastalarda indirekt etkili ajanlar etkisiz olabilir. Fenilefrin gibi direkt etkili vazopressörler tercih edilmelidir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Epilepsi hastasında en uygun indüksiyon ajanı hangisidir?",
    options: [
      "Ketamin",
      "Etomidat",
      "Sevofluran",
      "Propofol",
      "Nitröz oksit",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Propofol antikonvülzan özelliğe sahiptir, epilepsi hastalarında güvenle kullanılabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "SSRI kullanan hastada opioid olarak hangisi serotonin sendromu açısından en risklidir?",
    options: [
      "Fentanil",
      "Tramadol",
      "Morfin",
      "Sufentanil",
      "Remifentanil",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Tramadol SSRI ile birlikte serotonin sendromu riskini artıran güçlü bir serotonerjik etkendir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastasında dopamin antagonisti antiemetik verilmesi hangi sonucu doğurabilir?",
    options: [
      "Tremor azalması",
      "Ajitasyon",
      "Ekstrapiramidal semptomlar",
      "Analjezi artışı",
      "Serebral perfüzyon artışı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Metoklopramid ve proklorperazin gibi dopamin antagonisti antiemetikler Parkinson hastalarında ekstrapiramidal semptomları şiddetlendirebilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Psikotik bozukluğu olan bir hasta postoperatif deliryum geçirirse en uygun ilk tedavi yaklaşımı nedir?",
    options: [
      "Benzodiazepin verilmesi",
      "SSRI başlanması",
      "Düşük doz antipsikotik verilmesi",
      "Beta bloker verilmesi",
      "Trisiklik antidepresan verilmesi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Postoperatif deliryum tedavisinde düşük doz haloperidol gibi tipik antipsikotikler tercih edilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastasında dopamin agonistleriyle uzun süreli tedavinin anestezi açısından önemi nedir?",
    options: [
      "Kardiyoselektif etki gösterirler",
      "Kas gevşetici etki oluştururlar",
      "Ajitasyon ve deliryuma neden olabilirler",
      "Antikonvülzan etki yaparlar",
      "Anesteziye karşı direnç geliştirirler",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Uzun süreli dopamin agonisti kullanımı psikotik semptomları tetikleyebilir, anestezi sonrası ajitasyon gelişebilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Trisiklik antidepresanların (TCA) anestezik ajanlarla etkileşiminde en çok hangi komplikasyon gözlenir?",
    options: [
      "Alerjik reaksiyon",
      "Hiponatremi",
      "Hipotansiyon",
      "Hipertermi",
      "Bradikardi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "TCA'lar alfa reseptör blokajı ile hipotansiyon eğilimini artırır, özellikle indirekt sempatomimetiklerle kullanıldığında bu risk artar.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastasında Süksinilkolin kullanımı hangi komplikasyona yol açabilir?",
    options: [
      "Hipokalemi",
      "Hiponatremi",
      "Hiperkalemi",
      "Bradikardi",
      "Hiperglisemi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Parkinson hastalarında kas yıkımı sonucu ekstrasellüler potasyum artışı ile hiperkalemi gelişebilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Bipolar bozukluğu olan hastada lityum tedavisinin anestezik etkileşimi nasıldır?",
    options: [
      "Kas gevşetici direnci artırır",
      "Anesteziye karşı tolerans geliştirir",
      "Kas gevşetici etkisini artırır",
      "Antagonist etki oluşturur",
      "Postoperatif bulantıyı azaltır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Lityum, depolarizan ve non-depolarizan kas gevşeticilerin etkisini uzatabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastasında intraoperatif hipotansiyonu yönetmek için en uygun ajan hangisidir?",
    options: [
      "Efedrin",
      "Dopamin",
      "Fenilefrin",
      "Adrenalin",
      "İzoproterenol",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Fenilefrin, doğrudan alfa agonist etkisi ile hipotansiyonda güvenle kullanılabilir; dopaminerjik sistemle etkileşimi düşüktür.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "SSRI kullanan hastalarda hangi opioid ile birlikte serotonin sendromu riski daha fazladır?",
    options: [
      "Fentanil",
      "Morfin",
      "Sufentanil",
      "Meperidin",
      "Remifentanil",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Meperidin serotonerjik etkisi nedeniyle SSRI ile birlikte serotonin sendromu riskini artırır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastasında propofol infüzyonu sonrası aşağıdakilerden hangisi daha sık görülür?",
    options: [
      "Aritmi",
      "Ajitasyon",
      "Tremor azalması",
      "Disfaji",
      "Bulantı-kusma",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Propofol, dopamin düzeylerini geçici olarak dengeleyerek tremorları azaltabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Antipsikotik ilaç kullanan hastalarda anestezi sonrası en çok hangi tablo beklenmelidir?",
    options: [
      "Hipotermi",
      "Uzamış uyanma süresi",
      "Hiperglisemi",
      "Hipokalsemi",
      "Hipotansiyon",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Antipsikotiklerin sedatif etkisi postoperatif dönemde uyanmanın gecikmesine neden olabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastalarında intraoperatif bulantı-kusma profilaksisinde hangi ajan tercih edilmelidir?",
    options: [
      "Metoklopramid",
      "Domperidon",
      "Deksametazon",
      "Droperidol",
      "Ondansetron",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Dopamin antagonisti olmayan ondansetron, Parkinson hastalarında güvenle kullanılabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Alzheimer hastasında propofol ile anestezi sonrası en yaygın görülen durum hangisidir?",
    options: [
      "Postoperatif ağrı artışı",
      "Uzamış kas gevşekliği",
      "Bilişsel bozulma",
      "Tremor artışı",
      "Hipertansiyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Alzheimer hastaları propofole karşı daha duyarlı olabilir; postoperatif bilişsel bozulma riski artar.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Parkinson hastasında levodopa tedavisinin intraoperatif kesilmesinin en olası komplikasyonu nedir?",
    options: [
      "Hipotermi",
      "Tremorun azalması",
      "Kas rijiditesi ve ventilasyon güçlüğü",
      "Anksiyete",
      "Hipotansiyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Levodopa tedavisinin kesilmesi kas rijiditesini artırarak havayolu yönetimini ve ventilasyonu zorlaştırabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "SSRI kullanan hastalarda anestezik ajan olarak en güvenli opioid hangisidir?",
    options: [
      "Meperidin",
      "Tramadol",
      "Fentanil",
      "Morfin",
      "Kodein",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Fentanil, meperidin veya tramadol gibi güçlü serotonerjik etki göstermediğinden SSRI ile birlikte daha güvenlidir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Psikiyatrik hastalığı olan bireylerde postoperatif deliryumu en aza indirmek için aşağıdakilerden hangisi önerilir?",
    options: [
      "Yüksek doz opioid kullanımı",
      "Uyanıklık sırasında parlak ışık",
      "Çevresel uyaranların azaltılması",
      "Derin sedasyon",
      "Sık uyarı ve müdahale",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Postoperatif deliryumu önlemek için sessiz, düşük ışıklı ve sakin bir ortam sağlanmalıdır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Alzheimer hastalarında tercih edilmeyen anestezik ajan hangisidir?",
    options: [
      "Propofol",
      "Sevofluran",
      "Midazolam",
      "Fentanil",
      "Deksmedetomidin",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Midazolam, bilişsel bozukluğu olan hastalarda postoperatif deliryum riskini artırabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Epilepsi tanılı bir hastada anestezi indüksiyonunda hangi ajan nöbet eşiğini düşürür?",
    options: [
      "Etomidat",
      "Propofol",
      "Tiyopental",
      "Ketamin",
      "Deksmedetomidin",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Etomidat nöbet eşiğini düşürürken; propofol, tiyopental ve benzodiazepinler yükseltir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Alzheimer hastalığı olan bir hastada hangi anestezik ajan postoperatif deliryum riskini artırır?",
    options: [
      "Antikolinerjikler (örn. atropin)",
      "Propofol",
      "Deksmedetomidin",
      "Remifentanil",
      "Sevofluran",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Merkezi antikolinerjik etki ile deliryumu şiddetlendirir; deksmedetomidin koruyucudur.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Şizofreni tedavisinde kullanılan antipsikotiklerle hangi anestezik ajan etkileşime girerek QT uzaması yapar?",
    options: [
      "Droperidol",
      "Propofol",
      "Ropivakain",
      "Neostigmin",
      "Sugammadeks",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Haloperidol/droperidol gibi antipsikotiklerle birlikte kullanımı torsades de pointes riskini artırır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Migren öyküsü olan bir hastada hangi ajan baş ağrısını tetikleyebilir?",
    options: [
      "Nitröz oksit",
      "Remifentanil",
      "Ropivakain",
      "Deksmedetomidin",
      "Sevofluran",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Serebral vazodilatasyon yaparak migreni provoke edebilir; diğerleri nötr veya koruyucudur.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Trisiklik antidepresan (TCA) kullanan bir hastada hangi anestezik komplikasyon beklenir?",
    options: [
      "Hipertansif kriz (indirekt sempatomimetiklerle)",
      "Hipokalemi",
      "Metabolik alkaloz",
      "Bradikardi",
      "Hiperglisemi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "TCA'lar norepinefrin geri alımını inhibe eder; ephedrin gibi ajanlarla ciddi hipertansiyon gelişir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Selektif serotonin geri alım inhibitörü (SSRI) kullanan bir hastada hangi perioperatif risk artar?",
    options: [
      "Kanama",
      "Malign hipertermi",
      "Hiperglisemi",
      "Hipotermi",
      "Metabolik alkaloz",
    ],
    correctAnswerIndex: 0,
    explanation:
        "SSRI'lar trombosit fonksiyonunu bozarak kanama riskini artırır; özellikle spinal anestezide dikkat!",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Beyin ödemi olan bir hastada hangi intravenöz sıvı kontrendikedir?",
    options: [
      "%5 Dekstroz",
      "%0.9 NaCl",
      "İzotonik bikarbonat",
      "Ringer laktat",
      "Hidroksietil nişasta",
    ],
    correctAnswerIndex: 0,
    explanation:
        "%5 Dekstroz (D5W), damar içine verildiğinde hızla glukoza ve suya ayrılır. Ortaya çıkan serbest su, hücre içine girerek beyin hücrelerinde şişmeye (sitotoksik ödem) neden olabilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Santral antikolinerjik sendrom bulgularından biri değildir?",
    options: [
      "Hipertansiyon",
      "Deliryum",
      "Ateş",
      "Kuru cilt",
      "Taşikardi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Hipotansiyon görülür; fizostigmin antidottur.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Monoamin oksidaz inhibitörü (MAOI) kullanan bir hastada hangi opioid kontrendikedir?",
    options: [
      "Meperidin",
      "Morfin",
      "Fentanil",
      "Remifentanil",
      "Tramadol",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Serotonin sendromuna yol açabilir; MAOI'ler 2 hafta önce kesilmelidir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nöroleptik malign sendrom (NMS) tedavisinde hangisi kullanılmaz?",
    options: [
      "Kalsiyum glukonat",
      "Dantrolen",
      "Bromokriptin",
      "Sıvı replasmanı",
      "Dopamin agonistleri",
    ],
    correctAnswerIndex: 0,
    explanation:
        "NMS'de kas gevşetici (dantrolen) ve dopamin agonistleri verilir; hipertermi tedavi edilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi postoperatif kognitif disfonksiyon (POCD) risk faktörlerinden değildir?",
    options: [
      "Genç yaş",
      "İleri yaş",
      "Uzun cerrahi süresi",
      "Düşük eğitim düzeyi",
      "Alkol öyküsü",
    ],
    correctAnswerIndex: 0,
    explanation:
        "65 yaş üstü, hipoksi ve sistemik inflamasyon POCD riskini artırır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi serotonin sendromu bulgularından değildir?",
    options: [
      "Bradikardi",
      "Hipertermi",
      "Klonus",
      "Ajitasyon",
      "Terleme",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Taşikardi, hiperrefleksi ve kas rijiditesi tipiktir; SSRI + MAOI kombinasyonunda görülür.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Elektrokonvülsif tedavi (EKT) sonrası en sık görülen kardiyak komplikasyon nedir?",
    options: [
      "Taşikardi ve hipertansiyon",
      "Bradikardi",
      "QT uzaması",
      "Ventriküler fibrilasyon",
      "Pulmoner ödem",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Sempatik aktivasyon nedeniyle; beta blokerlerle kontrol edilebilir.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi postoperatif deliryum riskini azaltır?",
    options: [
      "Deksmedetomidin",
      "Antikolinerjikler",
      "Yüksek doz opioid",
      "Midazolam",
      "Ketamin",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Alfa-2 agonistleri deliryumu önler; antikolinerjikler ve benzodiazepinler riski artırır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi nöropatik ağrı tedavisinde kullanılan ilaçlardan değildir?",
    options: [
      "Asetaminofen",
      "Gabapentin",
      "Pregabalin",
      "Amitriptilin",
      "Karbamazepin",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Nöropatik ağrıda antikonvülzanlar (gabapentin) ve TCA'lar (amitriptilin) kullanılır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi postoperatif görme kaybı (POVL) risk faktörlerinden değildir?",
    options: [
      "Genç yaş",
      "Uzun süreli prone pozisyon",
      "Anemi",
      "Hipovolemi",
      "Kardiyopulmoner bypass",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Risk faktörleri: >6 saat cerrahi, kan kaybı >1 L, obezite ve vasküler hastalıklardır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi bipolar bozukluk tedavisinde kullanılan lityumun yan etkilerinden değildir?",
    options: [
      "Hiperkalemi",
      "Nefrojenik diabetes insipidus",
      "Hipotiroidi",
      "QT uzaması",
      "Tremor",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Lityum toksisitesinde bulantı, konfüzyon ve böbrek yetmezliği görülür; Na⁺ kısıtlaması riski artırır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi postoperatif psikoz için risk faktörü değildir?",
    options: [
      "Genç yaş",
      "Demans öyküsü",
      "Alkol yoksunluğu",
      "Uzun süreli yoğun bakım",
      "İşitme engeli",
    ],
    correctAnswerIndex: 0,
    explanation:
        "İleri yaş, organ yetmezliği ve duyusal deprivasyon riski artırır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi opioid yoksunluk bulgularından değildir?",
    options: [
      "Miyozis",
      "Taşikardi",
      "Terleme",
      "Hipertansiyon",
      "Esneme",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Opioid yoksunluğunda midriazis, burun akıntısı ve ajitasyon görülür.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi kompleks bölgesel ağrı sendromu (CRPS) tedavisinde kullanılmaz?",
    options: [
      "Beta blokerler",
      "Steroidler",
      "Gabapentin",
      "Sempatik blokaj",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Tedavide antikonvülzanlar, NMDA antagonistleri ve spinal kord stimülasyonu kullanılır.",
    category: "Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
];
