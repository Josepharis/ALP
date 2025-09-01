import '../models/question.dart';

final List<Question> intravenousAnestheticsQuestions = [
  Question(
    question:
        "Aşağıdakilerden hangisi intravenöz indüksiyon ajanlarının ortak özelliğidir?",
    options: [
      "Yavaş beyin penetrasyonu",
      "Lipofilik olmaları",
      "Hepatik metabolizmadan kaçınmaları",
      "Renal atılım göstermeleri",
      "Uzun etki süreleri",
    ],
    correctAnswerIndex: 1,
    explanation:
        "İV anestezikler genellikle lipofilik olduklarından hızlı beyin penetrasyonu sağlarlar; bu da hızlı etki başlangıcına neden olur.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Etkisi en hızlı başlayan intravenöz anestetik hangisidir?",
    options: ["Ketamin", "Midazolam", "Propofol", "Etomidat", "Diazepam"],
    correctAnswerIndex: 2,
    explanation:
        "Propofol çok hızlı etki başlangıcına sahiptir (yaklaşık 30 saniye) ve indüksiyonda yaygın olarak kullanılır.",
    category: "intravenöz anestezikler",
    difficulty: 1,
  ),

  Question(
    question: "Propofol ile ilgili en doğru ifade aşağıdakilerden hangisidir?",
    options: [
      "Kan basıncını artırır",
      "Solunum stimülasyonu yapar",
      "Yağ emülsiyon içinde hazırlanır",
      "Uzun etkili bir ajandır",
      "Keton türevidir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Propofol, soyayağlı emülsiyon içinde sunulur; bu da kontaminasyon riskini artırır ve aseptik teknik gerektirir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisi en az kardiyovasküler depresyona neden olur?",
    options: ["Propofol", "Midazolam", "Tiopental", "Etomidat", "Diazepam"],
    correctAnswerIndex: 3,
    explanation:
        "Etomidat kardiyovasküler stabilitesiyle bilinir ve hemodinamik açıdan en güvenli intravenöz indüksiyon ajanlarından biridir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisi adrenokortikal baskılama yapabilir?",
    options: ["Ketamin", "Etomidat", "Propofol", "Midazolam", "Fentanil"],
    correctAnswerIndex: 1,
    explanation:
        "Etomidat tek dozda bile 24 saate kadar süren kortizol sentez baskılanmasına neden olabilir; kritik hastalarda dikkatli kullanılmalıdır.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question: "Tiopentalin etki süresinin kısa olmasının temel nedeni nedir?",
    options: [
      "Hızlı metabolizma",
      "Yüksek renal atılım",
      "Hızlı redistribüsyon",
      "Plazma proteinine zayıf bağlanma",
      "Düşük lipofilisite",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Tiopental, ultra-kısa etkili bir barbitürattır ve indüksiyon ajanı olarak kullanılır. Etki süresinin kısa olmasının sebebi metabolizması değil, ilacın hızla beyin gibi iyi perfüze olan organlardan kas ve yağ dokusu gibi daha az perfüze alanlara yeniden dağılmasıdır.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question:
        "Propofol infüzyon sendromu ile ilgili en tipik bulgu hangisidir?",
    options: [
      "Hiponatremi",
      "Hipoglisemi",
      "Metabolik asidoz",
      "Hipotermi",
      "Trombositopeni",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Uzun süreli yüksek doz propofol infüzyonuna bağlı olarak gelişen 'Propofol İnfüzyon Sendromu'nda en sık metabolik asidoz, rabdomiyoliz ve kardiyovasküler kollaps görülür.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisi anestezi indüksiyonunda çocuklarda sıklıkla tercih edilmez?",
    options: ["Ketamin", "Etomidat", "Propofol", "Midazolam", "Sevofluran"],
    correctAnswerIndex: 1,
    explanation:
        "Etomidat adrenokortikal baskılama ve myoklonik yan etkileri nedeniyle çocuklarda sıklıkla tercih edilmez.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Midazolam ile ilgili aşağıdaki ifadelerden hangisi doğrudur?",
    options: [
      "Etkisi non-GABAerjiktir",
      "Kısa etkili benzodiazepindir",
      "Ağrı giderici özelliği vardır",
      "Yağda çözünürlüğü düşüktür",
      "NMDA reseptörünü bloke eder",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Midazolam, kısa etkili bir benzodiazepin olup GABA-A reseptörünü modüle eder, ancak analjezik etkisi yoktur.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Tiopental ile ilgili hangisi doğrudur?",
    options: [
      "Solunumu stimüle eder",
      "Analjezik etkilidir",
      "Porfiri hastalarında güvenlidir",
      "GABA-A agonistidir",
      "Ketamin ile sinerjiktir",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Tiopental, barbitürat yapısında olup GABA-A reseptör agonistidir. Porfiri hastalarında kontrendikedir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Propofol kullanımında en sık görülen istenmeyen etki hangisidir?",
    options: [
      "Bradikardi",
      "Hipotansiyon",
      "Hipertermi",
      "Kas spazmı",
      "Laringospazm",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Propofol güçlü bir vazodilatördür; bu nedenle sistemik vasküler direnç düşer ve hipotansiyon sık görülür.",
    category: "intravenöz anestezikler",
    difficulty: 1,
  ),

  Question(
    question: "Ketaminin solunum sistemi üzerine etkisi nasıldır?",
    options: [
      "Solunumu belirgin baskılar",
      "Bronkokonstriktör etki yapar",
      "Apneye neden olur",
      "Solunumu minimal etkiler, bronkodilatasyon yapar",
      "Laringospazm oluşturur",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Ketamin, solunumu minimal baskılar, bronkodilatasyon yapar. Reaktif hava yolu hastalığında avantajlıdır.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Etomidatın en önemli nörolojik avantajı nedir?",
    options: [
      "EEG'de epileptiform aktivite oluşturması",
      "Serebral kan akımını artırması",
      "Serebral metabolizma ve intrakraniyal basıncı azaltması",
      "Sinir ileti hızını artırması",
      "Nöbet eşik düzeyini düşürmesi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Etomidat, serebral metabolizmayı azaltır ve ICP'yi düşürür; nöroanestezide bu nedenle tercih edilebilir.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question:
        "Propofol ile indüksiyon sonrası en hızlı uyanma hangi özelliğe bağlıdır?",
    options: [
      "Yüksek lipofilisite",
      "Hızlı hepatik metabolizma",
      "Yüksek plazma protein bağlanma oranı",
      "Hızlı renal atılım",
      "Enzim indüksiyonu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Propofol karaciğerde hızla metabolize olur. Bu özelliğiyle hızlı uyanma sağlar ve kısa prosedürlerde idealdir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Midazolamın su içinde çözünür olmasını sağlayan özellik aşağıdakilerden hangisidir?",
    options: [
      "Lipofilik zincir yapısı",
      "pH'ya duyarlı halka yapısı",
      "Yüksek plazma protein bağlanması",
      "GABA reseptör agonizmi",
      "NMDA blokajı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Midazolam imidazol halkası içerir ve düşük pH'da suda çözünür, fizyolojik pH'da lipofilik hale geçerek hızlı etki sağlar.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question:
        "Ketaminin neden olduğu psikomimetik etkiler hangisi ile en iyi baskılanır?",
    options: ["Atropin", "Morfin", "Propofol", "Midazolam", "Deksmedetomidin"],
    correctAnswerIndex: 3,
    explanation:
        "Ketaminin neden olduğu halüsinasyon ve disfori gibi psikomimetik etkiler, premedikasyon olarak verilen benzodiazepinlerle azaltılır.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Etomidatın kullanımı ile ilişkilendirilen geçici kasılmaların nedeni nedir?",
    options: [
      "Glutamat aktivasyonu",
      "Kortizol baskılanması",
      "GABA aktivasyonunda dengesizlik",
      "NMDA uyarılması",
      "Serebral perfüzyon artışı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Etomidat, GABA üzerinden etki ederken inhibisyon öncesi eksitatör yolların baskılanmaması nedeniyle geçici miyoklonik kasılmalara neden olabilir.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question: "Tiopental ile ilgili hangisi yanlıştır?",
    options: [
      "GABA-A agonistidir",
      "Serebral metabolizmayı azaltır",
      "Porfiri atağını tetikleyebilir",
      "Suda çözünür formdadır",
      "Anestezik ve antikonvülzan etkilidir",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Tiopental lipofilik yapısı nedeniyle yağda çözünür; suda çözünür değildir, alkali solüsyonda hazırlanır.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi propofolün kullanım alanlarından biri değildir?",
    options: [
      "Genel anestezi indüksiyonu",
      "Sedasyon",
      "Antiemetik etki",
      "Analjezi sağlamak",
      "Bilinçli sedasyon",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Propofol anestezik ve sedatif etkilidir, ancak analjezik özelliği yoktur. Gerektiğinde opioidle kombine edilir.",
    category: "intravenöz anestezikler",
    difficulty: 1,
  ),

  Question(
    question: "Midazolamın antagonist ilacı aşağıdakilerden hangisidir?",
    options: ["Flumazenil", "Nalokson", "Dantrolen", "Atropin", "Sugammadeks"],
    correctAnswerIndex: 0,
    explanation:
        "Flumazenil, benzodiazepin reseptör antagonisti olup midazolamın etkisini tersine çevirmek için kullanılır.",
    category: "intravenöz anestezikler",
    difficulty: 1,
  ),

  Question(
    question:
        "Propofol infüzyon sendromu gelişimini artıran en önemli faktör aşağıdakilerden hangisidir?",
    options: [
      "Düşük doz ve kısa süreli kullanım",
      "Erişkin yaş",
      "Yüksek doz ve uzun süreli infüzyon",
      "Eş zamanlı opioid kullanımı",
      "Kas gevşetici verilmesi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Uzun süreli (>48 saat) ve yüksek doz (>4 mg/kg/saat) propofol infüzyonu ciddi komplikasyonlara (asidoz, rabdomiyoliz) neden olabilir.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question:
        "Ketaminin neden olduğu 'disosiyatif anestezi' terimi neyi ifade eder?",
    options: [
      "Kas gevşemesi ile bilinç kaybı",
      "Bilinç açıkken motor kontrol kaybı",
      "Bilinç, duyusal algı ve motor yanıtların ayrılması",
      "Yüzeyel anestezi durumu",
      "Santral sinir sistemi baskılanması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Disosiyatif anestezi; çevresel uyaranlara ilgisizlik, bilinç bulanıklığı ve analjezinin eşlik ettiği özgün bir anestezi halidir.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question:
        "Tiopentalin indüksiyon sonrası hızlı etkisinin sona erme nedeni nedir?",
    options: [
      "Karaciğerde hızlı metabolizma",
      "Böbrekten hızlı atılım",
      "Redistribüsyon ile beyin konsantrasyonunun azalması",
      "NMDA antagonizması",
      "Plazma proteinine bağlanması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Etki süresinin kısa olması eliminasyondan değil, hızlı redistribüsyondan kaynaklanır. Beyinden kas ve yağ dokularına geçer.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question: "Hangisi propofolün antiemetik etkisine katkıda bulunur?",
    options: [
      "GABA-A inhibisyonu",
      "Dopamin antagonizmi",
      "Serotonin inhibisyonu",
      "Histamin blokajı",
      "Glukokortikoid etkisi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Propofol, serotonin (5-HT3) reseptörlerini inhibe ederek antiemetik etki gösterir; bu özelliğiyle postoperatif bulantı-kusmada avantajlıdır.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question: "Tiopental'in kontrendike olduğu hastalık hangisidir?",
    options: [
      "Epilepsi",
      "Myokard infarktüsü",
      "Porfiri",
      "Glokom",
      "İskemik inme",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Tiopental porfiri atağını tetikleyebilir, bu nedenle porfiri hastalarında kesinlikle kontrendikedir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Etomidat kullanımında adrenokortikal baskılanma hangi enzimin inhibisyonu ile ilişkilidir?",
    options: [
      "Aromataz",
      "11-beta hidroksilaz",
      "CYP3A4",
      "Renin",
      "5-alfa redüktaz",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Etomidat 11-beta hidroksilaz enzimini inhibe eder, bu da kortizol ve aldosteron üretimini bozar.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question: "Hangisi benzodiazepinlerin özelliklerinden biri değildir?",
    options: [
      "Anksiyolitik",
      "Amnestik",
      "Antikonvülsan",
      "Analjezik",
      "Sedatif",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Benzodiazepinler birçok merkezi etkiye sahiptir ancak analjezik etkileri yoktur.",
    category: "intravenöz anestezikler",
    difficulty: 1,
  ),

  Question(
    question:
        "Propofol hangi reseptör düzeyinde etki göstererek anestezik etki yapar?",
    options: [
      "NMDA antagonizması",
      "Dopamin agonizmi",
      "GABA-A agonizmi",
      "Serotonin blokajı",
      "AMPA inhibisyonu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Propofol, GABA-A reseptörlerini aktive ederek inhibitör sinaptik transmisyonu artırır, böylece sedatif ve anestezik etkisini gösterir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi propofol infüzyon sendromunun bir bulgusu değildir?",
    options: [
      "Metabolik asidoz",
      "Rabdomiyoliz",
      "Hiperkalemi",
      "Bradikardi",
      "Lökositoz",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Propofol infüzyon sendromunda metabolik asidoz, rabdomiyoliz, kardiyovasküler kollaps gibi ciddi bulgular görülür; lökositoz tipik bir özellik değildir.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question: "Midazolam'ın amnestik etkisinin nedeni nedir?",
    options: [
      "NMDA reseptör blokajı",
      "Dopamin düzeyini artırması",
      "Serebral kan akımını azaltması",
      "Hipokampustaki GABA-A etkisi",
      "Beta reseptör antagonizması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Midazolam hipokampusta GABA-A reseptörleri üzerinden etki ederek anterograd amnezi yapar; bu özelliğiyle endoskopi ve küçük işlemlerde yaygın kullanılır.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question:
        "Propofol uygulaması sırasında dikkat edilmesi gereken kontaminasyon riski aşağıdakilerden hangisinden kaynaklanır?",
    options: [
      "pH'sının çok düşük olması",
      "Şeker içermesi",
      "Yağ bazlı emülsiyon olması",
      "Renksiz olması",
      "Suda çözünür yapıda olması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Propofol, yağ emülsiyon içinde hazırlandığından bakteriyel üreme için uygun ortam sağlar. Tek kullanımlık ve aseptik uygulanmalıdır.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Etomidat'ın kortizol üretimini baskılaması ne zaman en önemli hale gelir?",
    options: [
      "Elektif cerrahide",
      "Kısa süreli prosedürlerde",
      "Kritik hastada, sepsis durumunda",
      "Sağlıklı bireylerde",
      "Yoğun bakım sedasyonunda",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kritik hastalarda stres yanıtı için kortizol gereklidir. Etomidat tek dozda bile adrenal supresyon yapabileceği için dikkatle kullanılmalıdır.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question:
        "Propofol infüzyon sendromunun en ciddi sonucu aşağıdakilerden hangisidir?",
    options: [
      "Antiemetik etki",
      "Rabdomiyoliz",
      "Nöbet",
      "Kardiyovasküler kollaps",
      "Hiperglisemi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Propofol infüzyon sendromu kardiyovasküler kollapsa yol açabilir ve mortalitesi yüksektir. Uzun süreli yüksek doz infüzyondan kaçınılmalıdır.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi ketaminin avantajlarından biri değildir?",
    options: [
      "Analjezik etki",
      "Spontan solunumu koruması",
      "Bronkodilatasyon",
      "Minimal serebral etkiler",
      "Kardiyovasküler stimülasyon",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Ketamin serebral kan akımı ve ICP'yi artırabilir; bu nedenle nörolojik etkileri belirgindir ve ICP yüksekliğinde tercih edilmez.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Tiopental kullanımı sonrası en sık görülen yan etki aşağıdakilerden hangisidir?",
    options: [
      "Hipertansiyon",
      "Laringospazm",
      "Hipotermi",
      "Hipoglisemi",
      "Nefrotoksisite",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Tiopental özellikle çocuklarda laringospazma neden olabilir. Derin sedasyon sağlanmadan yapılan girişimlerde bu risk artar.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Midazolam'ın farmakokinetik özelliklerinden biri aşağıdakilerden hangisidir?",
    options: [
      "Yavaş onset",
      "Uzun etki süresi",
      "Suda çözünür form",
      "Düşük metabolizma",
      "Renal atılım göstermemesi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Midazolam, imidazol halkası sayesinde suda çözünür; bu özelliği ile IV kullanıma uygundur. Etki başladıktan sonra lipofilik hale geçer.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisi intravenöz indüksiyonda en sık kullanılan ajandır?",
    options: ["Etomidat", "Propofol", "Ketamin", "Midazolam", "Tiopental"],
    correctAnswerIndex: 1,
    explanation:
        "Propofol, hızlı etki başlangıcı, hızlı derlenme ve antiemetik özellikleri nedeniyle genel anestezi indüksiyonunda en sık kullanılan IV ajandır.",
    category: "intravenöz anestezikler",
    difficulty: 1,
  ),

  Question(
    question:
        "Propofol'ün neden olduğu hipotansiyonun temel mekanizması nedir?",
    options: [
      "Renal vazodilatasyon",
      "Vagal aktivasyon",
      "Myokard depresyonu ve sistemik vazodilatasyon",
      "Sempatik aktivitenin artması",
      "Barorefleks uyarımı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Propofol hem kardiyak output'u düşürür (negatif inotrop) hem de sistemik vasküler direnci azaltır → hipotansiyon.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdaki durumların hangisinde ketamin tercih edilmez?",
    options: [
      "Astımlı hasta",
      "Hipovolemik şok",
      "Pediatrik hasta",
      "İskemik kalp hastalığı",
      "Yanıklı hasta",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Ketamin sempatik aktiviteyi artırır → kalp hızını ve oksijen tüketimini artırır → iskemik kalp hastalığında istenmeyen bir durumdur.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Etomidat'ın en belirgin avantajı aşağıdakilerden hangisidir?",
    options: [
      "Antiemetik etki",
      "Sempatik aktiviteyi artırması",
      "Hemodinamik stabilite sağlaması",
      "Amnezi yapması",
      "Analjezik etki göstermesi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Etomidat, kardiyovasküler etkileri minimal olan bir ajan olup, hemodinamik stabilite nedeniyle kardiyak riskli hastalarda tercih edilir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Barbitüratların (tiopental) nöroanestezide avantajlı özelliği hangisidir?",
    options: [
      "CMRO₂'yi artırması",
      "Beyin kan akımını artırması",
      "Nöbet eşiklerini düşürmesi",
      "Nöroprotektif etki göstermesi",
      "İntrakraniyal basıncı artırması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Barbitüratlar CMRO₂'yi ve beyin kan akımını azaltır → hipoksik/iskemik beyin koruması sağlar → nöroprotektif.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question: "Dexmedetomidin'in temel etki mekanizması nedir?",
    options: [
      "GABA-A agonizmi",
      "NMDA antagonizmi",
      "Alfa-2 agonizmi",
      "Muskarinik reseptör blokajı",
      "Beta-1 selektivitesi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Dexmedetomidin selektif alfa-2 agonist bir ajandır → sedasyon + analjezi sağlar, solunumu baskılamaz.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Propofol infüzyon sendromunun (PRIS) başlıca komplikasyonu aşağıdakilerden hangisidir?",
    options: [
      "Hipokalemi",
      "Metabolik alkaloz",
      "Bradiaritmi ve rabdomiyoliz",
      "Hipotermi",
      "Hipoglisemi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Propofol infüzyon sendromu; bradikardi, rabdomiyoliz, laktik asidoz ve kardiyak arrest gibi ciddi komplikasyonlarla seyreder → özellikle yüksek doz ve uzun süreli kullanımda.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question:
        "Midazolam'ın avantajlı özelliklerinden biri aşağıdakilerden hangisidir?",
    options: [
      "Analjezik etki",
      "Uzun etki süresi",
      "Antikonvülzan etki",
      "Kardiyak stimulasyon",
      "Spontan solunumu artırması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Midazolam, GABA-A agonisti olup sedasyon, amnezi ve antikonvülzan etkiler gösterir. Ancak analjezik değildir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki IV anesteziklerden hangisinin antiemetik etkisi mevcuttur?",
    options: ["Ketamin", "Etomidat", "Propofol", "Tiopental", "Midazolam"],
    correctAnswerIndex: 2,
    explanation:
        "Propofol postoperatif bulantı-kusma riskini azaltan antiemetik etki gösterir → TIVA'da da bu yüzden tercih edilir.",
    category: "intravenöz anestezikler",
    difficulty: 1,
  ),

  Question(
    question:
        "Etomidat kullanımından sonra en sık gözlenen geçici motor yan etki nedir?",
    options: [
      "Tremor",
      "Tonik-klonik nöbet",
      "Myoklonik kasılmalar",
      "Fascikülasyon",
      "Spastisite",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Etomidat sıklıkla myoklonik kasılmalara neden olur → istemsiz, geçici kas kasılmaları şeklindedir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Dexmedetomidin'in belirgin hemodinamik etkisi hangisidir?",
    options: [
      "Taşikardi",
      "Hipertansiyon",
      "Bradikardi",
      "Atriyal fibrilasyon",
      "Pulmoner hipertansiyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Alfa-2 agonist etkisiyle sempatik aktiviteyi azaltır → bradikardi ve hipotansiyon sık görülür.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Ketamin anestezisi sonrası en sık karşılaşılan psikotropik yan etki nedir?",
    options: [
      "Deliryum",
      "Sedasyon",
      "Anterograd amnezi",
      "Bradiaritmi",
      "İştah artışı",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Ketamin, uyanma döneminde halüsinasyon, ajitasyon, deliryum gibi psikotropik etkiler yapabilir → benzodiazepinlerle azaltılabilir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi total intravenöz anestezi (TIVA) için en uygun ajandır?",
    options: [
      "Ketamin",
      "Tiopental",
      "Propofol",
      "Midazolam",
      "Dexmedetomidin",
    ],
    correctAnswerIndex: 2,
    explanation:
        "TIVA'da en çok tercih edilen ajan propofoldür. Çünkü hızlı uyanma, antiemetik etki ve doz titrasyonu avantajları vardır.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisi spinal cord seviyesinde analjezi ve sedasyon sağlayarak solunumu baskılamadan etkili olur?",
    options: ["Ketamin", "Propofol", "Dexmedetomidin", "Etomidat", "Fentanil"],
    correctAnswerIndex: 2,
    explanation:
        "Dexmedetomidin, alfa-2 agonisttir → locus coeruleus ve spinal düzeyde sedasyon + analjezi sağlar → solunum depresyonu oluşturmaz.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question:
        "Propofolün preparatında yer alan lipid taşıyıcı emülsiyonun getirdiği en önemli risk nedir?",
    options: [
      "Hepatotoksisite",
      "Anafilaktik reaksiyon",
      "Hipoglisemi",
      "Hiponatremi",
      "Hipervolemi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Propofol formülasyonunda soya ve yumurta fosfolipidi bulunur → alerjisi olan hastalarda anafilaksi riski taşır.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisi minimal kardiyodepresan etkisi ile bilinir?",
    options: ["Propofol", "Midazolam", "Etomidat", "Ketamin", "Fentanil"],
    correctAnswerIndex: 2,
    explanation:
        "Etomidat kardiyovasküler sistemi minimal etkiler → hemodinamik olarak en stabil IV indüksiyon ajanıdır.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question:
        "Propofolün yağ bazlı içeriği nedeniyle hangi laboratuvar parametresi uzun infüzyonlarda artabilir?",
    options: ["Kreatinin", "Laktat", "Trigliserid", "AST", "Bilirubin"],
    correctAnswerIndex: 2,
    explanation:
        "Propofol uzun süreli kullanıldığında trigliserid düzeylerini yükseltebilir → takip edilmelidir.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  Question(
    question:
        "Dexmedetomidin'in sedasyon profili aşağıdakilerden hangisine en çok benzer?",
    options: [
      "Propofol ile oluşturulana",
      "Doğal uykuya",
      "Ketaminin oluşturduğu profile",
      "Derin hipnoza",
      "GABA agonistlerine",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Dexmedetomidin locus coeruleus üzerinden etki eder → doğal uykuya benzer sedasyon oluşturur. Hasta kolay uyanabilir.",
    category: "intravenöz anestezikler",
    difficulty: 3,
  ),

  // Eksik sorular ekleniyor
  Question(
    question: "Aşağıdaki intravenöz anesteziklerden hangisinin etki başlangıcı en hızlıdır?",
    options: [
      "Propofol",
      "Tiyopental",
      "Etomidat",
      "Ketamin",
      "Midazolam",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Tiyopental, bir beyin dolaşım zamanında (10-15 saniye) etki başlatır. Yüksek lipofilik özelliği sayesinde hızla SSS'ne geçer.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Benzodiazepinlerin antagonisti olarak kullanılan ajan hangisidir?",
    options: [
      "Nalokson",
      "Flumazenil",
      "Neostigmin",
      "Sugammadeks",
      "Atropin",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Flumazenil, GABA-A reseptörlerinde kompetitif antagonizm yaparak benzodiazepin etkilerini geri çevirir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Hangi IV anestezik intraoperatif hatırlamayı (awareness) en çok önler?",
    options: [
      "Propofol",
      "Tiyopental",
      "Etomidat",
      "Ketamin",
      "Dexmedetomidin",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Propofol, BIS (Bispectral Index) değerini güvenilir şekilde düşürerek intraoperatif farkındalık riskini azaltır.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "'Beyin koruyucu' etkisi en belirgin olan IV anestezik hangisidir?",
    options: [
      "Propofol",
      "Tiyopental",
      "Etomidat",
      "Ketamin",
      "Midazolam",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Tiyopental, CMRO2'yi %50-60 oranında azaltarak nöroprotektif etki gösterir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi dexmedetomidinin özelliklerinden biri değildir?",
    options: [
      "Alfa-2 adrenerjik agonist olması",
      "Solunum depresyonu yapmaması",
      "Analjezik etki göstermesi",
      "Hipotansiyon yapması",
      "Anksiyolitik etki",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Dexmedetomidin, bradikardi yapabilir ancak hipotansiyon beklenmez (alfa-2 selektivitesi nedeniyle).",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi IV anesteziklerin eliminasyon yollarından biri değildir?",
    options: [
      "Karaciğer metabolizması",
      "Böbreklerden atılım",
      "Ekstrahepatik ester hidrolizi",
      "Akciğerlerden ekshalasyon",
      "Plazma esterazları",
    ],
    correctAnswerIndex: 3,
    explanation:
        "IV anestezikler akciğerlerden atılmaz. Remifentanil gibi bazıları plazma esterazlarıyla metabolize olur.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi remifentanilin özelliklerinden biri değildir?",
    options: [
      "Ultra-kısa etki süresi",
      "Esterazlarla metabolizma",
      "Kontekst-duyarsız yarı ömür",
      "Postoperatif analjezi sağlaması",
      "Hemodinamik stabilite",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Remifentanil, hızlı metabolizması nedeniyle postop analjezi sağlamaz. Ek analjezi gereksinimi doğar.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Hangi intravenöz anestezik en belirgin kardiyovasküler depresyon yapar?",
    options: [
      "Ketamin",
      "Propofol",
      "Etomidat",
      "Midazolam",
      "Deksmedetomidin",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Propofol, sistemik vasküler direnç ve kardiyak outputta belirgin düşüşe neden olarak en fazla kardiyovasküler depresyon yapan ajandır.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi propofol infüzyon sendromunun özelliklerinden değildir?",
    options: [
      "Metabolik asidoz",
      "Rabdomiyoliz",
      "Hiperkalemi",
      "Hepatik yetmezlik",
      "Kardiyak disritmi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Propofol infüzyon sendromunda hepatik yetmezlik değil, hepatomegali görülebilir. Diğer bulgular tipiktir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Hangi intravenöz anestezik bronkodilatasyon yapar?",
    options: [
      "Propofol",
      "Tiyopental",
      "Ketamin",
      "Etomidat",
      "Midazolam",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Ketamin, sempatik sinir sistemi aktivasyonu yoluyla bronkodilatasyon yapar.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Hangi intravenöz anestezik en belirgin intrakraniyal basınç düşürücü etkiye sahiptir?",
    options: [
      "Ketamin",
      "Propofol",
      "Etomidat",
      "Tiyopental",
      "Midazolam",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Tiyopental, beyin metabolik hızını en fazla azaltarak intrakraniyal basıncı belirgin düşürür.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisi alfa-2 adrenerjik agonisttir?",
    options: [
      "Propofol",
      "Ketamin",
      "Etomidat",
      "Deksmedetomidin",
      "Midazolam",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Deksmedetomidin selektif alfa-2 adrenerjik agonisttir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Hangi intravenöz anestezik en düşük histamin salınımına neden olur?",
    options: [
      "Morfin",
      "Tiyopental",
      "Propofol",
      "Ketamin",
      "Etomidat",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Etomidat, histamin salınımına en az neden olan ajandır.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Hangi intravenöz anestezik en fazla enjeksiyon ağrısı yapar?",
    options: [
      "Propofol",
      "Tiyopental",
      "Etomidat",
      "Ketamin",
      "Midazolam",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Propofol, en fazla enjeksiyon ağrısı yapan ajandır.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Hangi intravenöz anestezik en fazla bulantı-kusmaya neden olur?",
    options: [
      "Propofol",
      "Tiyopental",
      "Etomidat",
      "Ketamin",
      "Midazolam",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Ketamin, postoperatif bulantı-kusma insidansını artırır.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi tiyopentalin farmakokinetik özelliklerinden değildir?",
    options: [
      "Yüksek protein bağlanma",
      "Hızlı beyin penetrasyonu",
      "Yağ dokusunda birikim",
      "Böbrek yoluyla atılım",
      "Yeniden dağılım",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Tiyopental karaciğerde metabolize olur, böbrek yoluyla atılmaz.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Hangi intravenöz anestezik en fazla hipotansiyon yapar?",
    options: [
      "Propofol",
      "Tiyopental",
      "Etomidat",
      "Ketamin",
      "Midazolam",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Propofol, sistemik vasküler direnci en fazla düşürerek belirgin hipotansiyon yapar.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Hangi intravenöz anestezik en az protein bağlanır?",
    options: [
      "Propofol",
      "Tiyopental",
      "Etomidat",
      "Ketamin",
      "Midazolam",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Ketamin %20-30 protein bağlanma oranıyla en az bağlanan ajandır.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi propofolün farmakokinetik özelliklerinden değildir?",
    options: [
      "Hızlı başlangıç",
      "Kısa etki süresi",
      "Karaciğer metabolizması",
      "Ekstrahepatik eliminasyon",
      "Aktif metabolit",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Propofolün aktif metaboliti yoktur.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Hangi intravenöz anestezik en fazla nöroprotektif etkiye sahiptir?",
    options: [
      "Propofol",
      "Tiyopental",
      "Etomidat",
      "Ketamin",
      "Midazolam",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Tiyopental, beyin metabolik hızını en fazla azaltarak nöroprotektif etki gösterir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi benzodiazepin zehirlenmesinde görülmez?",
    options: [
      "Solunum depresyonu",
      "Hipotansiyon",
      "Hipertansiyon",
      "Koma",
      "Konvülziyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Benzodiazepin zehirlenmesinde hipertansiyon görülmez, hipotansiyon görülebilir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi propofol infüzyon sendromunun (PRIS) bir belirtisi değildir?",
    options: [
      "Metabolik asidoz",
      "Bradikardi",
      "Rabdomiyoliz",
      "Hipotermi",
      "Kalp yetmezliği",
    ],
    correctAnswerIndex: 3,
    explanation:
        "PRIS; metabolik asidoz, bradikardi, rabdomiyoliz, hiperpotasemi ve kardiyak yetmezlik gibi ciddi tablolarla karakterizedir. Hipotermi tipik değildir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Etomidat ile anestezi indüksiyonu sırasında en çok karşılaşılan geçici hareket nedir?",
    options: [
      "Titreme",
      "Fascikülasyon",
      "Nistagmus",
      "Myoklonus",
      "Hıçkırık",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Etomidat sık olarak myoklonik kasılmalara neden olur. Bu durum kısa süreli ve geçicidir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  Question(
    question: "Midazolam kullanımı sonrası gelişen paradoksal ajitasyon durumunda ne yapılmalıdır?",
    options: [
      "Nalokson verilmelidir",
      "Ketamin ile devam edilir",
      "Flumazenil uygulanmalıdır",
      "Propofol başlanır",
      "Deksametazon verilir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Benzodiazepin kaynaklı ajitasyon veya aşırı sedasyon gelişirse flumazenil antidot olarak kullanılabilir.",
    category: "intravenöz anestezikler",
    difficulty: 2,
  ),

  // Bölüm 46 – Periferik Sinir Blokları
  Question(
    question:
        "Aşağıdaki bloklardan hangisi, omuz cerrahisinde en sık tercih edilen periferik sinir blokudur?",
    options: [
      "İnterskalen blok",
      "Supraklavikuler blok",
      "İnfraclavikuler blok",
      "Aksiller blok",
      "Paravertebral blok",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Omuz ve üst humerus cerrahileri için en sık tercih edilen blok interskalen brakiyal pleksus blokudur.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki sinirlerden hangisi, aksiller blokla etkili şekilde bloklanamaz ve ek blok gerekebilir?",
    options: [
      "N. medianus",
      "N. radialis",
      "N. musculocutaneus",
      "N. ulnaris",
      "N. interkostobrakialis",
    ],
    correctAnswerIndex: 4,
    explanation:
        "N. interkostobrakialis, brakiyal pleksusun dışında yer alır ve aksiller blokla etkilenmez → ek cilt infiltrasyonu gerekebilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki periferik sinir bloklarından hangisinde pnömotoraks riski en yüksektir?",
    options: [
      "İnterskalen blok",
      "Supraklavikuler blok",
      "Aksiller blok",
      "İnfraclavikuler blok",
      "Median sinir bloğu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Supraklavikuler blok, plevra ile yakın anatomik ilişkidedir → pnömotoraks riski en yüksek olan brakiyal pleksus blokudur.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki seçeneklerden hangisi, interskalen blok sonrası görülen Horner sendromu belirtilerinden biri değildir?",
    options: [
      "Pitozis",
      "Midriyazis",
      "Anhidrozis",
      "Miosis",
      "Enoftalmi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Horner sendromu, sempatik zincirin blokajıyla oluşur → miyozis (küçülmüş pupil) görülür. Midriyazis tersidir, beklenmez.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, infraclavikuler brakiyal pleksus blokunun avantajlarından biri değildir?",
    options: [
      "Plevra ile uzak mesafe",
      "Stabil iğne pozisyonu",
      "Koltuk altına göre daha proksimal blok",
      "İkili sinir blokajı gerektirmemesi",
      "Tüm pleksusun kolayca bloke edilmesi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "İnfraclavikuler blok her ne kadar geniş etki gösterse de, bazen n. musculocutaneus için ek blok gerekebilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aksiller blok uygulaması sırasında artan enjeksiyon basıncı hissedilirse, ilk yapılması gereken nedir?",
    options: [
      "Daha hızlı enjeksiyon yapmak",
      "İğnenin pozisyonunu değiştirmek",
      "Bloktan vazgeçmek",
      "Enjeksiyona devam etmek",
      "Lokal anesteziyi artırmak",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Yüksek enjeksiyon basıncı, iğnenin intranevral olduğunu gösterebilir → hasarı önlemek için pozisyon değiştirilmelidir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki sinirlerden hangisi, femoral sinir blokuyla etkili şekilde bloke edilemez?",
    options: [
      "N. femoralis",
      "N. saphenus",
      "N. obturatorius",
      "N. cutaneus femoris lateralis",
      "N. genitofemoralis",
    ],
    correctAnswerIndex: 2,
    explanation:
        "N. obturatorius, femoral sinir blokunun dışında kalabilir → kalça ve diz cerrahilerinde ayrıca bloke edilmesi gerekebilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki sinir bloklarından hangisi, önkol cerrahileri için distal bir blok tekniğidir?",
    options: [
      "İnterskalen blok",
      "Aksiller blok",
      "İnfraclavikuler blok",
      "Median sinir bloğu",
      "Supraklavikuler blok",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Median sinir bloğu, dirsek veya el bileği düzeyinde yapılan distal ekstremite sinir blokudur, önkol ve el cerrahilerinde kullanılır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Femoral sinir bloğu sonrası en sık görülen motor defisit aşağıdakilerden hangisidir?",
    options: [
      "Ayak bileği dorsifleksiyonu kaybı",
      "Diz ekstansiyonunda zayıflık",
      "Kalça abdüksiyonunda kısıtlılık",
      "Ayak plantar fleksiyon kaybı",
      "Kalça ekstansiyonunda kayıp",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Femoral sinir, diz ekstansiyonunu sağlayan quadriceps kaslarını innerve eder → blok sonrası diz ekstansiyonunda zayıflık oluşabilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki sinirlerden hangisi, femoral sinir bloğunun distal dalıdır?",
    options: [
      "N. obturatorius",
      "N. tibialis",
      "N. saphenus",
      "N. suralis",
      "N. peroneus",
    ],
    correctAnswerIndex: 2,
    explanation:
        "N. saphenus, femoral sinirin saf duyusal dalıdır → diz altı medial bacağın duyusunu sağlar.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Periferik sinir stimülatörü ile sinir blok yapılırken, uygun sinir yaklaşımı için hedeflenen kas cevabı hangi akım seviyesinde görülmelidir?",
    options: [
      "> 1 mA",
      "0.8–1.5 mA",
      "0.5–0.8 mA",
      "< 0.2 mA",
      "2 mA'dan büyük",
    ],
    correctAnswerIndex: 2,
    explanation:
        "0.5 mA civarındaki motor yanıt, iğnenin sinire yeterince yakın olduğunu gösterir ama intranevral risk oluşturmaz.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Popliteal blok sonrası ayakta dorsifleksiyon kaybı gelişmesi en çok hangi sinirin etkilenmesiyle ilişkilidir?",
    options: [
      "N. tibialis",
      "N. peroneus profundus",
      "N. saphenus",
      "N. suralis",
      "N. obturatorius",
    ],
    correctAnswerIndex: 1,
    explanation:
        "N. peroneus profundus, ayak bileği dorsifleksiyonunu sağlar → popliteal seviyedeki bloklarda bu sinir etkilenirse dorsifleksiyon kaybı olur.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki durumlardan hangisi, periferik sinir bloğu sonrası gelişen nöropatinin en olası nedenidir?",
    options: [
      "Sinir stimülatörünün kullanılmaması",
      "Enjeksiyon öncesi aspirasyon yapılması",
      "Lokal anestezik dozunun yetersiz olması",
      "Yüksek enjeksiyon basıncı",
      "Sedasyon verilmemesi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Yüksek basınçla enjeksiyon, sinir içine enjeksiyon ihtimalini artırır → nöropati riski yükselir. İğne pozisyonu mutlaka kontrol edilmelidir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki sinir bloklarından hangisi, posterior diz cerrahileri için genellikle femoral sinir bloğuna ek olarak uygulanır?",
    options: [
      "N. suralis bloğu",
      "N. obturatorius bloğu",
      "N. ischiadicus (siyatik) bloğu",
      "N. genitofemoralis bloğu",
      "N. peroneus communis bloğu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Posterior diz innervasyonu siyatik sinir kaynaklıdır. Femoral sinir bloğuna ek olarak siyatik blok gereklidir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki yöntemlerden hangisi, ultrason eşliğinde periferik sinir blok uygulamasında iğnenin sinir içine girmesini en güvenilir şekilde önler?",
    options: [
      "Ekspiryumda enjeksiyon yapılması",
      "Yavaş enjeksiyon yapılması",
      "Perinevrial enjeksiyonun tercih edilmesi",
      "Enjeksiyon sırasında basınç izlenmesi",
      "Tek el ile iğne yönlendirmesi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Enjeksiyon basıncının izlenmesi, yüksek direnç varsa uyarıcıdır → sinir içi enjeksiyon önlenir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, ultrason görüntüsünde siyatik siniri tanımlamada yardımcı anatomik yapılardan biridir?",
    options: [
      "Femur başı",
      "Popliteal arter",
      "Gluteus minimus kası",
      "Ischial tüberozite",
      "Obturator internus",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Ischial tüberozite, gluteal yaklaşımda siyatik siniri bulmak için kullanılan önemli bir anatomik referanstır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki sinir blokları ve endikasyon eşleştirmelerinden hangisi yanlıştır?",
    options: [
      "İnterskalen blok – Omuz cerrahisi",
      "Femoral blok – Diz artroskopisi",
      "Aksiller blok – El cerrahisi",
      "Popliteal blok – Ayak bileği cerrahisi",
      "Supraklavikuler blok – Servikal disk hernisi",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Supraklavikuler blok, brakiyal pleksusu hedef alır → servikal disk hernisi için bir endikasyon değildir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Ultrason altında yapılan sinir bloklarında kullanılan iğne tipiyle ilgili olarak aşağıdaki ifadelerden hangisi doğrudur?",
    options: [
      "Keskin uçlu iğneler önerilir",
      "Eğri iğneler sinir bulmayı kolaylaştırır",
      "Ekojenik iğneler görüntüleme avantajı sağlar",
      "İğne çapı ne kadar büyükse o kadar iyidir",
      "Standart spinal iğne kullanımı tercih edilir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Ekojenik iğneler, ultrason görüntüsünde daha kolay görünür → iğne ucunun takibi kolaylaşır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, brakiyal pleksusun medial kordundan çıkan sinirlerden biri değildir?",
    options: [
      "N. ulnaris",
      "N. medianus (medial kökeni)",
      "N. cutaneus brachii medialis",
      "N. musculocutaneus",
      "N. cutaneus antebrachii medialis",
    ],
    correctAnswerIndex: 3,
    explanation:
        "N. musculocutaneus, lateral kordun dalıdır. Diğerleri medial korddan çıkar.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Popliteal sinir blokları için ultrason kılavuzluğunda en önemli referans yapılar hangileridir?",
    options: [
      "Femur ve patella",
      "M. biceps femoris ve popliteal arter",
      "Fibula ve tibia",
      "Gluteus medius ve piriformis",
      "Femoral arter ve femoral sinir",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Popliteal bölgede siyatik sinirin dalları, popliteal arter ve m. biceps femoris ile ilişkilidir → bu yapılar rehber alınır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki periferik sinir bloklarından hangisi sadece duyusal innervasyonu hedef alır?",
    options: [
      "Median sinir bloğu",
      "Radial sinir bloğu",
      "Femoral sinir bloğu",
      "Saphenous sinir bloğu",
      "Obturator sinir bloğu",
    ],
    correctAnswerIndex: 3,
    explanation:
        "N. saphenus, saf duyusal bir sinirdir → motor lif içermez, bu nedenle sadece duyusal blok yapar.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, obturator sinir bloğu için klinik endikasyonlardan biridir?",
    options: [
      "Popliteal fossa cerrahisi",
      "TUR-P (Transüretral Prostat Rezeksiyonu)",
      "Ön kol cerrahisi",
      "Ayak bileği ameliyatı",
      "Kalça çıkığı redüksiyonu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "TUR-P sırasında mesane duvarına elektrik akımı verilmesi, obturator siniri uyararak adduktor kas spazmına yol açabilir → obturator blok ile bu önlenebilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Supraklavikuler blok uygulaması sırasında hangi yapıların görselleştirilmesi en kritik öneme sahiptir?",
    options: [
      "Subklavian arter ve brakiyal pleksus",
      "A. axillaris ve v. cephalica",
      "Trakea ve plevra",
      "Clavicula ve m. deltoideus",
      "A. carotis ve v. jugularis",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Supraklavikuler blok, subklavian arterin etrafındaki brakiyal pleksus trunkuslarını hedef alır → bu yapıların net görüntülenmesi kritik önemdedir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, periferik sinir bloğu sonrası geç ortaya çıkan sinir hasarının en sık nedenidir?",
    options: [
      "Lokal enfeksiyon",
      "Hematom",
      "İntranevral enjeksiyon",
      "İntratekal enjeksiyon",
      "İğne ucunun kemik teması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İğne ucunun sinir içine girmesi (intranevral) ve oraya enjeksiyon yapılması, geçici ya da kalıcı nöropatilerin en sık nedenidir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki sinir bloklarının hangisinde diyafram paralizisi riski en yüksektir?",
    options: [
      "Aksiller blok",
      "İnfraclavikuler blok",
      "İnterskalen blok",
      "Popliteal blok",
      "Saphenous blok",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İnterskalen blok, n. phrenicus'u da bloke edebilir → özellikle KOAH'lılarda bu risk önemlidir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "İki loplu 'kukuleta' görünümü (donut sign) ultrason altında neyi gösterir?",
    options: [
      "İğnenin sinirin içine girdiğini",
      "Kas içine enjeksiyon yapıldığını",
      "Sinirin çevresel olarak lokal anestezik ile sarıldığını",
      "Sinirin bası altında kaldığını",
      "Sinirin ödemli olduğunu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Donut sign, sinirin çevresel (circumferansiyel) lokal anestezik dağılımı ile optimal blok pozisyonu anlamına gelir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Ultrason eşliğinde sinir bloklarında 'double-contour' görüntüsü genellikle neyin göstergesidir?",
    options: [
      "Kas içine enjeksiyon",
      "Arter içi enjeksiyon",
      "Epinevral enjeksiyon",
      "Sinirin dışında ama çok yakın enjeksiyon",
      "Kemik korteks yansıması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Double-contour, sinirin dışındaki lokal anestezik birikimini gösterir → sinire çok yakın ama güvenli mesafede enjeksiyon yapıldığını gösterir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "İnterskalen blok uygulamasında sinir stimülatörü ile elde edilmesi beklenen motor cevap hangisidir?",
    options: [
      "Parmak fleksiyonu",
      "Dirsek ekstansiyonu",
      "Deltoid kas kasılması",
      "Trapez kas kasılması",
      "Diafragma kontraksiyonu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İnterskalen blok, C5–C7 seviyelerini hedefler → deltoid kas kasılması, uygun yerleşimin göstergesidir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki durumlardan hangisi, siyatik sinirin en distal dalıdır ve topuk bölgesinin duyusunu iletir?",
    options: [
      "N. tibialis",
      "N. suralis",
      "N. peroneus communis",
      "N. saphenus",
      "N. femoralis",
    ],
    correctAnswerIndex: 1,
    explanation:
        "N. suralis, siyatik sinirin bir dalıdır ve topuk ile lateral ayak bölgesinin duyusunu sağlar.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki periferik sinir bloklarından hangisi, ayakta yalnızca medial plantar yüzeyin duyusunu bloke etmek amacıyla uygulanır?",
    options: [
      "N. peroneus superficialis bloğu",
      "N. saphenus bloğu",
      "N. suralis bloğu",
      "N. tibialis bloğu",
      "N. obturatorius bloğu",
    ],
    correctAnswerIndex: 3,
    explanation:
        "N. tibialis, ayakta medial ve plantar yüzeyin duyusunu iletir. Blokajı bu bölgedeki cerrahilerde kullanılır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aksiller blok sırasında blok başarısını artırmak için N. musculocutaneus aşağıdaki kasların hangisinin içinde aranmalıdır?",
    options: [
      "M. triceps brachii",
      "M. coracobrachialis",
      "M. biceps brachii",
      "M. deltoideus",
      "M. brachialis",
    ],
    correctAnswerIndex: 1,
    explanation:
        "N. musculocutaneus, genellikle m. coracobrachialis kasının içindedir → aksiller blok sırasında ayrıca bloke edilmelidir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki sinirlerden hangisinin blokajı, el bileği cerrahisi için yeterlidir?",
    options: [
      "N. radialis",
      "N. medianus",
      "N. ulnaris",
      "Tüm brakiyal pleksus",
      "N. medianus + n. ulnaris + n. radialis",
    ],
    correctAnswerIndex: 4,
    explanation:
        "El bileği cerrahisinde üç ana sinirin birlikte blokajı gerekir (median, ulnar, radial). Tek sinir yeterli olmaz.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, siyatik sinirin infragluteal yaklaşımıyla blokajında kullanılan yüzey anatomisi yapılandırmalarından biridir?",
    options: [
      "Spina iliaca anterior superior",
      "Trokanter major ve iskiyal tüber",
      "Femoral arter",
      "A. profunda femoris",
      "M. sartorius",
    ],
    correctAnswerIndex: 1,
    explanation:
        "İnfragluteal siyatik blokta, trokanter major ve iskiyal tüber arasında sinir lokalize edilir → bu anatomik işaretler kritiktir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Popliteal sinir bloğu için en uygun pozisyon aşağıdakilerden hangisidir?",
    options: [
      "Lateral dekübit",
      "Supin",
      "Trendelenburg",
      "Prone",
      "Oturur",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Popliteal blok genellikle prone pozisyonda ya da diz fleksiyonda lateral dekübitte uygulanır → sinir yüzeyel olur.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, n. saphenus blokajı için uygun tekniklerden biridir?",
    options: [
      "Femoral üçgen düzeyinde yapılan blok",
      "Popliteal fossa'da blok",
      "Ayak bileği medialinde blok",
      "Gluteal bölgede blok",
      "El bileği düzeyinde blok",
    ],
    correctAnswerIndex: 2,
    explanation:
        "N. saphenus, ayak bileği seviyesinde medial malleol hizasında yüzeyelleşir → burada kolayca bloke edilebilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, brakiyal pleksus supraklavikuler blok sonrası gelişen Horner sendromunun nedenidir?",
    options: [
      "N. frenikus'un direkt blokajı",
      "Stellat gangliyonun blokajı",
      "Medulla spinalisin etkilenmesi",
      "N. vagus'un uyarılması",
      "Karotid sinüs refleksi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Stellat gangliyon, sempatik zincirin bir parçasıdır → supraklavikuler blokla etkilenirse Horner sendromu ortaya çıkabilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, periferik sinir bloğu sonrası nörolojik defisit geliştiğinde izlenecek en doğru yaklaşımdır?",
    options: [
      "Bekleyip gözlem",
      "Oral steroid başlamak",
      "Sadece ağrı kesici vermek",
      "Nöroloji konsültasyonu ve EMG planı",
      "Lokal anesteziyi tekrarlamak",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Nörolojik defisit gelişmişse, mutlaka nöroloji konsültasyonu istenir, gerekirse EMG yapılır, altta yatan komplikasyon araştırılır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "İnterskalen blok sonrası ani gelişen solunum sıkıntısı ve tek taraflı akciğer seslerinin azalması en olası olarak hangi komplikasyonu düşündürür?",
    options: [
      "Diyafram paralizisi",
      "İntratekal enjeksiyon",
      "Pnömotoraks",
      "Bronkospazm",
      "LAST",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Supraklavikuler ve interskalen bloklar, plevraya yakın yapıldığı için pnömotoraks riski taşır → solunum sıkıntısı ve tek taraflı bulgular tipiktir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "İntranevral enjeksiyon şüphesi varsa ilk yapılması gereken işlem nedir?",
    options: [
      "Blok devam ettirilir",
      "Ağrı kontrolü için opioid verilir",
      "Enjeksiyona ara verilir ve iğne geri çekilir",
      "Lokal anestezik dozu artırılır",
      "Aspirasyon yapılmaz",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İğne sinir içine girmişse, enjeksiyona devam edilmesi kalıcı hasara yol açabilir → hemen durdurulmalı, iğne pozisyonu değiştirilmelidir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Periferik sinir stimülasyonu kullanılırken motor yanıt 0.1 mA akımda bile devam ediyorsa, bu durum neyi düşündürmelidir?",
    options: [
      "Sinir yeterince yakın",
      "Blok başarısız",
      "İğne intranevral yerleşimli",
      "Stimülasyon etkisiz",
      "Sinir uzakta",
    ],
    correctAnswerIndex: 2,
    explanation:
        "0.2 mA altındaki motor yanıt, iğne ucunun sinir içinde olabileceğini gösterir → risklidir, enjeksiyon yapılmamalıdır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Popliteal blokta sinirler arasındaki ayrılma seviyesi kişiden kişiye değişkenlik gösterir. Bu nedenle hangi yaklaşım daha güvenlidir?",
    options: [
      "Tek enjeksiyon",
      "Yüzeysel enjeksiyon",
      "Trunkus seviyesinde blok",
      "Derin interfasiyal enjeksiyon",
      "Medialden yaklaşım",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Popliteal fossa'da siyatik sinirin tibial ve peroneal dallara ayrılmadan önceki trunkus düzeyi, blok başarısı açısından idealdir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki periferik sinir bloklarından hangisi, motor fonksiyona minimal etkisiyle postoperatif mobilizasyonu en az engeller?",
    options: [
      "Femoral sinir bloğu",
      "İnterskalen blok",
      "Saphenous sinir bloğu",
      "Supraklavikuler blok",
      "Obturator sinir bloğu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "N. saphenus saf duyusal sinirdir → motor fonksiyonları etkilemez → özellikle diz cerrahisinde mobilizasyonu engellemez.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Periferik sinir bloğu sonrası gelişen geçici sinir hasarında genellikle hangi semptom ön plandadır?",
    options: [
      "Ateş",
      "Hipotansiyon",
      "Hiperaljezi",
      "Parestezi",
      "Bradikardi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Geçici sinir hasarlarında en sık görülen semptom parestezi ve hafif güç kaybıdır → çoğu zaman günler içinde geriler.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki sinirlerden hangisi, kalça cerrahisi için yapılan periferik bloklarda mutlaka hedeflenmesi gereken sinirlerdendir?",
    options: [
      "N. suralis",
      "N. axillaris",
      "N. femoralis",
      "N. medianus",
      "N. peroneus superficialis",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kalça cerrahilerinde en çok uyarılan sinirlerden biri n. femoralis'tir → blok başarısı için hedeflenmelidir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "İnfraklavikuler brakiyal pleksus blokunda hangi yapının tanınması blok başarısını artırır?",
    options: [
      "A. subklavia",
      "A. axillaris",
      "Trakea",
      "A. thoracica interna",
      "V. jugularis externa",
    ],
    correctAnswerIndex: 1,
    explanation:
        "İnfraklavikuler yaklaşımda brakiyal pleksus a. axillaris'in etrafında yer alır → bu arterin görüntülenmesi yön bulmak için kritiktir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Periferik sinir bloğu sonrası gelişen geç solunum depresyonu, en olası hangi durumla ilişkilidir?",
    options: [
      "LAST",
      "Diyafram paralizisi",
      "İntratekal opioid geçişi",
      "İntravenöz sedatif kullanımı",
      "Alerjik reaksiyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Eğer opioid blok solüsyonuna eklenmişse → intratekal geçiş durumunda geç başlayan solunum depresyonu oluşabilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Kombine femoral + siyatik blok, hangi bölge cerrahileri için en uygundur?",
    options: [
      "El bileği",
      "Omuz",
      "Kalça",
      "Dorsal toraks",
      "Abdominal duvar",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kalça cerrahilerinde, hem anterior (femoral) hem de posterior (siyatik) innervasyon gerekir → bu nedenle kombine blok uygulanır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisi, periferik sinir bloklarında lokal anesteziğe eklenerek geç başlangıçlı nörotoksisiteye neden olabilir?",
    options: [
      "Epinefrin",
      "Deksametazon",
      "Klorheksidin",
      "Midazolam",
      "Ketamin",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Klorheksidin, cilt dezenfektanı olarak kullanılırken sinir dokusuna teması durumunda geç nörotoksisite oluşturabilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, n. peroneus communis için en yüzeyel anatomik lokalizasyondur?",
    options: [
      "Tibial tüberozite",
      "Fibula başı",
      "Femur kondili",
      "Patella lateral kenarı",
      "Tarsal tünel",
    ],
    correctAnswerIndex: 1,
    explanation:
        "N. peroneus communis, fibula başında çok yüzeyeldir → burada kolayca palpe ve bloke edilebilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, periferik sinir bloklarında motor blok geri dönüş sıralaması açısından doğrudur?",
    options: [
      "En proksimalden distale",
      "Duyusal liflerden motorlara",
      "En distaldeki kaslar önce",
      "Sempatik sinirler son",
      "Motor blok tamamen sabittir",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Sinir iyileşmesi ve blok çözülmesi sıklıkla en proksimal kaslardan başlar ve distale doğru ilerler.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Popliteal blokta sinirler arasındaki ayrılma seviyesi kişiden kişiye değişkenlik gösterir. Bu nedenle hangi yaklaşım daha güvenlidir?",
    options: [
      "Tek enjeksiyon",
      "Yüzeysel enjeksiyon",
      "Trunkus seviyesinde blok",
      "Derin interfasiyal enjeksiyon",
      "Medialden yaklaşım",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Popliteal fossa'da siyatik sinirin tibial ve peroneal dallara ayrılmadan önceki trunkus düzeyi, blok başarısı açısından idealdir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Popliteal sinir bloğu sonrası hasta ayak bileğini fleksiyona getiremiyor. En olası etkilenen sinir hangisidir?",
    options: [
      "N. suralis",
      "N. femoralis",
      "N. tibialis",
      "N. peroneus profundus",
      "N. obturatorius",
    ],
    correctAnswerIndex: 2,
    explanation:
        "N. tibialis, ayak bileği plantar fleksiyonunu sağlar → bu fonksiyon kaybı varsa bu sinir etkilenmiş demektir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Ultrasonla sinir görüntüleme kalitesini artıran teknik faktör aşağıdakilerden hangisidir?",
    options: [
      "Düşük frekanslı prob",
      "Damarların baskılanması",
      "Gain ayarını artırmak",
      "Geniş açılı transdüser kullanmak",
      "Dondurma modunu kullanmak",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Gain ayarının artırılması, ekojenik yapıları daha net gösterir → sinir dokusunun daha iyi tanımlanmasına yardımcı olur.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi interskalenik blok için en olası endikasyondur?",
    options: [
      "El cerrahisi",
      "Dirsek cerrahisi",
      "Omuz artroskopisi",
      "Karpal tünel cerrahisi",
      "Brakiyal arter kateterizasyonu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İnterskalenik blok, omuz ve üst kol cerrahileri için en uygun blok tekniğidir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "İnterskalenik blok uygulamasında en sık etkilenmeyen sinir aşağıdakilerden hangisidir?",
    options: [
      "N. supraskapularis",
      "N. musculocutaneus",
      "N. ulnaris",
      "N. medianus",
      "N. axillaris",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Ulnar sinir, C8–T1 kökenlidir. İnterskalenik blok C5–C7 düzeyine etki ettiği için ulnar sinirin bloğu yetersiz kalabilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki periferik sinir bloklarından hangisi diyafragma paralizisine en sık neden olur?",
    options: [
      "İnterskalenik blok",
      "Supraklavikuler blok",
      "İnfraklavikuler blok",
      "Aksiller blok",
      "Radial sinir blokajı",
    ],
    correctAnswerIndex: 0,
    explanation:
        "İnterskalenik blok sırasında n. phrenicus (C3–C5) etkilenebilir ve bu durum geçici diyafragma paralizisine neden olabilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki sinirlerden hangisi aksiller blok sırasında genellikle ayrı olarak bloke edilmelidir?",
    options: [
      "N. ulnaris",
      "N. radialis",
      "N. medianus",
      "N. musculocutaneus",
      "N. axillaris",
    ],
    correctAnswerIndex: 3,
    explanation:
        "N. musculocutaneus, brakiyal pleksustan erken ayrıldığı için aksiller blokta ayrıca bloke edilmelidir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Femoral sinir bloğu için en uygun anatomik referans aşağıdakilerden hangisidir?",
    options: [
      "İnguinal ligamentin ortası",
      "Femur başı",
      "Anterior superior iliak spine",
      "Popliteal çukur",
      "Pubik simfiz",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Femoral sinir bloğu, inguinal ligamentin ortasında femoral arter lateralinde yapılır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Popliteal sinir bloğu ile hangi sinirlerin blokajı hedeflenir?",
    options: [
      "N. femoralis ve n. obturatorius",
      "N. ischiadicus'un tibial ve peroneal dalları",
      "N. suralis ve n. saphenus",
      "N. tibialis ve n. femoralis",
      "N. genitofemoralis",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Popliteal blok, siyatik sinirin tibial ve peroneal dallarını hedefler.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Bier blok (IV rejyonal anestezi) sırasında kullanılan tourniquet süresi en az ne kadar olmalıdır?",
    options: [
      "5 dakika",
      "10 dakika",
      "20 dakika",
      "30 dakika",
      "45 dakika",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Bier blokta tourniquet en az 20 dakika tutulmalıdır, aksi takdirde sistemik toksisite riski vardır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki periferik sinir bloklarından hangisinde pnömotoraks riski en yüksektir?",
    options: [
      "İnterskalenik blok",
      "Supraklavikuler blok",
      "İnfraklavikuler blok",
      "Aksiller blok",
      "Median sinir bloğu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Supraklavikuler blok pleuraya çok yakın bir bölgeden yapılır ve pnömotoraks riski en yüksektir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Ultrason eşliğinde sinir bloklarında 'kar yağışı' görünümü aşağıdaki durumlardan hangisini gösterir?",
    options: [
      "Sinir liflerinin kalsifikasyonu",
      "Lokal anesteziğin sinir etrafında yayılması",
      "Hava embolisi",
      "Enfeksiyon",
      "Sinir yaralanması",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Lokal anestezik, sinir etrafında yayılırken ultrason ekranında 'kar yağışı' benzeri bir görüntü oluşturur.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Femoral sinir bloğu sonrası aşağıdakilerden hangisi beklenir?",
    options: [
      "Uyluk adduksiyonunda artış",
      "Uyluk fleksiyonunda zayıflık",
      "Ayak bileği dorsifleksiyonunda artış",
      "Kalça ekstansiyonunda artış",
      "Uyluk ekstansiyon gücünde artış",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Femoral sinir, uyluk ön grup kaslarını (özellikle quadriceps) innerve eder. Blok sonrası bu kaslarda zayıflık olur.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Supraklavikuler blok hangi düzeyde yapılır?",
    options: [
      "Kök düzeyi (roots)",
      "Trunkus düzeyi (trunks)",
      "Divizyon düzeyi",
      "Kord düzeyi",
      "Periferik sinir düzeyi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Supraklavikuler blok, brakiyal pleksusun trunkus düzeyinde uygulanır. Sinirler birbirine çok yakındır, bu nedenle güçlü bir blok sağlar.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi ulnar sinirin bloke edildiğini gösterir?",
    options: [
      "El başparmak fleksiyonu kaybı",
      "El bileği ekstansiyonu kaybı",
      "4. ve 5. parmakta duyu kaybı",
      "Önkol supinasyonunda azalma",
      "El bileği fleksiyonunda artış",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Ulnar sinir 4. ve 5. parmakların palmar ve dorsal duyusunu sağlar. Blok sonrası bu bölgelerde duyu kaybı olur.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki sinirlerden hangisi infraklavikuler blokta genellikle yeterli şekilde bloke edilmez?",
    options: [
      "N. musculocutaneus",
      "N. medianus",
      "N. ulnaris",
      "N. axillaris",
      "N. thoracodorsalis",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Musculocutaneus sinir pleksustan erken ayrıldığı için bloktan kaçabilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Bier blok için en uygun lokal anestezik hangisidir?",
    options: [
      "Bupivakain",
      "Ropivakain",
      "Lidokain",
      "Prilokain",
      "Levobupivakain",
    ],
    correctAnswerIndex: 2,
    explanation:
        "IVRA (Bier Blok) için kısa etkili ve kardiyotoksik olmayan lidokain tercih edilir. Bupivakain gibi uzun etkili ajanlar kontrendikedir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki bloklardan hangisi ayak sırtında duyuyu en iyi bloke eder?",
    options: [
      "N. saphenus bloğu",
      "N. tibialis bloğu",
      "N. suralis bloğu",
      "N. peroneus superficialis bloğu",
      "N. obturatorius bloğu",
    ],
    correctAnswerIndex: 3,
    explanation:
        "N. peroneus superficialis, ayak sırtının büyük kısmını innerve eder. Bu bölgedeki cerrahiler için hedef sinirdir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi interkostal sinir bloğunun en sık komplikasyonudur?",
    options: [
      "Enfeksiyon",
      "Hipotansiyon",
      "Pnömotoraks",
      "Hipoestezi",
      "İdrar retansiyonu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İğne pleuraya çok yakın olduğundan interkostal bloklarda pnömotoraks riski yüksektir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "İnfraklavikuler blok sonrası tüm üst ekstremitede motor blok oluşması aşağıdaki yapının etkilenmesine bağlıdır?",
    options: [
      "Supraklavikuler sinirler",
      "Brachial plexus cords",
      "N. intercostobrachialis",
      "Plevra",
      "N. thoracicus longus",
    ],
    correctAnswerIndex: 1,
    explanation:
        "İnfraklavikuler blok, brakiyal pleksusun medial, lateral ve posterior kordlarını hedef alır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "El bileği cerrahisi için yapılan periferik sinir bloklarında aşağıdaki kombinasyonlardan hangisi gereklidir?",
    options: [
      "Yalnızca median sinir",
      "Median + radial sinir",
      "Ulnar + radial sinir",
      "Median + ulnar + radial sinir",
      "Sadece ulnar sinir",
    ],
    correctAnswerIndex: 3,
    explanation:
        "El bileğinde cerrahi için tüm duyusal innervasyon hedeflenmelidir: median, ulnar ve radial sinirler birlikte bloklanmalıdır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi radial sinir bloğu sonrası gözlenmez?",
    options: [
      "El bileği ekstansiyon kaybı",
      "Başparmak abdüksiyon zayıflığı",
      "Arka kol yüzeyinde duyu kaybı",
      "El bileği fleksiyonu kaybı",
      "Düşük el deformitesi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Radial sinir ekstansörleri innerve eder; fleksiyon fonksiyonu median ve ulnar sinire aittir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "N. saphenus bloğu, hangi sinirin dalıdır?",
    options: [
      "N. tibialis",
      "N. peroneus",
      "N. femoralis",
      "N. obturatorius",
      "N. ischiadicus",
    ],
    correctAnswerIndex: 2,
    explanation:
        "N. saphenus, femoral sinirin saf duyusal bir dalıdır ve diz ile iç bacak bölgesinin duyusunu sağlar.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Horner sendromu gelişmesi hangi periferik blokla ilişkilidir?",
    options: [
      "Femoral blok",
      "İnterskalenik blok",
      "Popliteal blok",
      "Radial sinir bloğu",
      "Median sinir bloğu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "İnterskalenik blok sırasında servikal sempatik zincirin etkilenmesi Horner sendromuna neden olabilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Periferik sinir bloğu sırasında sinirin iç kısmına yapılan enjeksiyonun en ciddi sonucu nedir?",
    options: [
      "Parestezi",
      "Sinir irritasyonu",
      "Kalıcı sinir hasarı",
      "Sinir çevresi hematomu",
      "Motor blok artışı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sinir içine enjeksiyon ciddi nörotoksisiteye yol açabilir ve kalıcı sinir hasarı gelişebilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "N. obturatorius bloğu en çok hangi girişimde tamamlayıcı blok olarak yapılır?",
    options: [
      "Popliteal sinir bloğu",
      "Femoral sinir bloğu",
      "İnguinal herni onarımı",
      "Transüretral rezeksiyon (TUR)",
      "Aksiller sinir bloğu",
    ],
    correctAnswerIndex: 3,
    explanation:
        "TUR işlemlerinde obturator sinir refleksini önlemek için obturator sinir bloğu eklenebilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Lidokain ile yapılan bir sinir bloğunun etkisi genellikle ne kadar sürer?",
    options: [
      "15–30 dakika",
      "30–60 dakika",
      "90–120 dakika",
      "2–4 saat",
      "6–8 saat",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Lidokain orta etkili bir lokal anesteziktir, genellikle etkisi 30–60 dakika sürer.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Peroneal sinir bloğu aşağıdakilerden hangisi için özellikle kullanışlıdır?",
    options: [
      "Diz artroskopisi",
      "Ayak bileği cerrahisi",
      "Kalça protezi",
      "Uyluk kas biyopsisi",
      "Bel fıtığı cerrahisi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Peroneal sinir ayak bileği ve ayağın dış kısmında duyuyu sağlar. Bu bölge cerrahileri için kullanılır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki periferik bloklardan hangisi brakiyal pleksusun en distaldeki dal düzeyini hedef alır?",
    options: [
      "İnterskalenik blok",
      "Supraklavikuler blok",
      "İnfraklavikuler blok",
      "Aksiller blok",
      "Median sinir bloğu",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Aksiller blok, brakiyal pleksusun periferik dal düzeyinde yapılır (n. medianus, ulnaris, radialis, musculocutaneus).",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi n. musculocutaneus'un duyu sağladığı bölgedir?",
    options: [
      "El sırtı",
      "Önkol radial taraf",
      "4. parmak palmar yüz",
      "Kol medial yüzü",
      "El palmar yüzü",
    ],
    correctAnswerIndex: 1,
    explanation:
        "N. musculocutaneus, dirsekten sonra lateral önkol derisinin duyusunu sağlar.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki kombinasyonlardan hangisi tam üst ekstremite blokajı sağlar?",
    options: [
      "Median + radial",
      "Median + ulnar + radial",
      "Supraklavikuler blok",
      "Aksiller blok + musculocutaneus bloğu",
      "İnterskalenik blok + ulnar sinir bloğu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Supraklavikuler blok, brakiyal pleksusun trunkus düzeyini hedefler ve tüm üst ekstremiteyi etkili şekilde bloke eder.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Radial sinir bloğu en iyi nerede yapılır?",
    options: [
      "Deltoid kas altında",
      "Humerus spiral oluğunda",
      "Klavikula altında",
      "El bileği seviyesinde",
      "Aksiller bölgede",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Radial sinir, humerusun spiral oluğunda yüzeyeldir ve bu bölgede kolaylıkla bloke edilebilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "N. obturatorius bloğu sırasında motor uyarının devam etmesi aşağıdaki komplikasyona neden olabilir?",
    options: [
      "Pnömotoraks",
      "İntranevral enjeksiyon",
      "Aritmi",
      "İstemsiz kas kasılması (addüktör spazmı)",
      "Bradikardi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Obturator sinir, addüktör kasları uyardığından blok eksikse cerrahi sırasında ani kas kontraksiyonu olabilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki periferik sinirlerden hangisinin bloğu diz altı cerrahisinde tek başına yeterli değildir?",
    options: [
      "N. tibialis",
      "N. saphenus",
      "N. peroneus communis",
      "N. femoralis",
      "N. suralis",
    ],
    correctAnswerIndex: 3,
    explanation:
        "N. femoralis uyluğun ön yüzünü innerve eder; diz altı için genellikle saphenus, tibialis ve peroneal dallar gerekir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki sinir bloklarından hangisi, elin ulnar innervasyonunu sağlayan sinirin blokajı için en uygun yaklaşımı ifade eder?",
    options: [
      "Aksiller blok",
      "İnterskalen blok",
      "Supraklavikular blok",
      "Median sinir bloku",
      "Radial sinir bloku",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Aksiller blok, ulnar sinirin blokajı için uygundur çünkü brakial pleksusun terminal dalları bu bölgede bloke edilebilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Brakial pleksus bloğunda 'hissedilen düşme' (pop) hissi hangi yapının geçilmesi sırasında hissedilir?",
    options: [
      "Skalen kaslar",
      "Klikavikula",
      "Aksiller kılıf",
      "Plevra",
      "Subklavian arter",
    ],
    correctAnswerIndex: 0,
    explanation:
        "İnterskalen blokta iğne skalen kasların fasyasını geçerken 'pop' hissi alınır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "'Wrist bloğu' yapılırken aşağıdaki sinirlerden hangisi bloke edilmez?",
    options: [
      "Median sinir",
      "Ulnar sinir",
      "Radial sinir",
      "Müskülokütan sinir",
      "Lateral antebrakiyal kutanöz sinir",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Lateral antebrakiyal kutanöz sinir dirsek seviyesinde innervasyon sağlar, el bileği bloğunda etkisi yoktur.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "İnterskalen brakial pleksus bloğunda en sık görülen komplikasyon nedir?",
    options: [
      "Pnömotoraks",
      "Frenik sinir bloğu",
      "Total spinal anestezi",
      "Kardiyak arrest",
      "Horner sendromu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Frenik sinir bloğu (%100'e yakın oranda görülür, diyafram paralizisine yol açabilir).",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki bloklardan hangisinde ultrason eşliğinde transversus abdominis planı (TAP) bloğu uygulanır?",
    options: [
      "Torakal epidural",
      "Abdomen cerrahisinde analjezi",
      "Lumbar pleksus bloğu",
      "Siyatik sinir bloğu",
      "Servikal pleksus bloğu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "TAP bloğu, abdominal duvar cerrahilerinde analjezi sağlar.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Supraklavikular blokta iğnenin hedef aldığı ana yapı nedir?",
    options: [
      "Subklavian arter",
      "Brakial pleksusun trunkusları",
      "Aksiller sinir",
      "Vertebral arter",
      "Sternokleidomastoid kas",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Supraklavikular blokta brakial pleksusun trunkusları hedeflenir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki yöntemlerden hangisi siyatik sinir bloğu için kullanılan yaklaşımlardan biri değildir?",
    options: [
      "Labat yaklaşımı",
      "Anterior yaklaşım",
      "Lateral yaklaşım",
      "Subgluteal yaklaşım",
      "Supraklavikular yaklaşım",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Supraklavikular yaklaşım brakial pleksus içindir, siyatik sinirle ilgisi yoktur.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "'Ankle bloğu' hangi sinirlerin blokajını içerir?",
    options: [
      "Radial, median, ulnar",
      "Tibial, süperfisyel peroneal, derin peroneal, sural",
      "Femoral, obturator",
      "İlioinguinal, genitofemoral",
      "Siyatik, pudendal",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Ayak bileği bloğunda tibial, süperfisyel peroneal, derin peroneal ve sural sinirler bloke edilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "'Psoas kompartman bloğu' hangi sinir pleksusunu bloke eder?",
    options: [
      "Brakial pleksus",
      "Lumbar pleksus",
      "Servikal pleksus",
      "Sakral pleksus",
      "Torakal pleksus",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Psoas kompartman bloğu lumbar pleksusu bloke eder (femoral, lateral femoral kutanöz ve obturator sinirler).",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "'Axiller brakial pleksus bloğu'nda hangi sinir en geç bloke olur?",
    options: [
      "Median sinir",
      "Ulnar sinir",
      "Radial sinir",
      "Müskülokütan sinir",
      "Medial antebrakiyal kutanöz sinir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Radial sinir kılıfın posteriyorunda yer alır ve en geç bloke olur.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "'Süperfisyel servikal pleksus bloğu' hangi cerrahide kullanılır?",
    options: [
      "Tiroidektomi",
      "Kalça protezi",
      "Laparoskopik kolesistektomi",
      "Kraniotomi",
      "Üst ekstremite cerrahisi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Tiroid ve boyun cerrahisinde süperfisyel servikal pleksus bloğu kullanılır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "'Femoral sinir bloğu' sonrası hangi kasın güçsüzlüğü beklenir?",
    options: [
      "Gastroknemius",
      "Tibialis anterior",
      "Kuadriseps femoris",
      "Gluteus maksimus",
      "Hamstringler",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Femoral sinir kuadriseps kasını innerve eder, blok sonrası güçsüzlük olur.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi 'infraklavikular blok' için doğrudur?",
    options: [
      "Pnömotoraks riski yüksektir",
      "Sadece el cerrahisinde kullanılır",
      "Kordlar seviyesinde brakial pleksus bloke edilir",
      "Horner sendromu sık görülür",
      "Femoral siniri de bloke eder",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İnfraklavikular blokta brakial pleksusun kordları bloke edilir.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "'TAP bloğu' hangi sinirleri bloke eder?",
    options: [
      "Torakal spinal sinirlerin anterior dalları",
      "Brakial pleksus",
      "Lumbar pleksus",
      "Siyatik sinir",
      "Pudendal sinir",
    ],
    correctAnswerIndex: 0,
    explanation:
        "TAP bloğu, torakal spinal sinirlerin anterior dallarını (T6-L1) bloke eder.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

  Question(
    question:
        "Periferik sinir bloğunda adjuvan olarak kullanılan ajan hangisidir?",
    options: [
      "Propofol",
      "Dekstroz",
      "Dexmedetomidin",
      "Heparin",
      "Mannitol",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Dexmedetomidin, lokal anesteziklerin etki süresini uzatmak için adjuvan olarak kullanılır.",
    category: "Periferik Sinir Blokları",
    difficulty: 2,
  ),

];
