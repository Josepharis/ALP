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
];
