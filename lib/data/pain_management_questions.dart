import '../models/question.dart';

final List<Question> painManagementQuestions = <Question>[
  Question(
    question:
        "Aşağıdakilerden hangisi akut ağrı ile kronik ağrının temel farkıdır?",
    options: [
      "Akut ağrı genellikle doku hasarına bağlı ve kısa sürelidir, kronik ağrı ise 3 aydan uzun sürer.",
      "Kronik ağrı sadece duygusal kaynaklıdır.",
      "Akut ağrı tedavi edilmezse kronikleşmez.",
      "Kronik ağrı genellikle kısa sürelidir.",
      "Akut ağrı psikolojik kökenlidir.",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Akut ağrı çoğunlukla doku hasarıyla ilişkilidir ve süresi kısadır. Kronik ağrı ise 3 aydan uzun süren, bazen doku hasarı olmadan devam eden ağrıdır.",
    category: "Algoloji",
    difficulty: 1,
  ),
  Question(
    question:
        "Neuropatik ağrının özellikleri arasında aşağıdakilerden hangisi yer almaz?",
    options: [
      "Yanıcı ve batıcı karakterde olması",
      "Allodini ve hiperaljezi varlığı",
      "Sinir hasarına bağlı oluşması",
      "Ağrının sadece inflamasyona bağlı olması",
      "Elektrik çarpması gibi hislerin olması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Neuropatik ağrı sinir hasarına bağlıdır, inflamasyon ise daha çok nosiseptif ağrının sebebidir.",
    category: "Algoloji",
    difficulty: 2,
  ),
  Question(
    question:
        "Algoloji alanında kullanılan gabapentin aşağıdaki hangi mekanizma ile ağrı kontrolü sağlar?",
    options: [
      "NMDA reseptör antagonizması",
      "Kalsiyum kanal blokajı",
      "Opioid reseptör agonizması",
      "Serotonin geri alım inhibitörü",
      "COX inhibitörü",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Gabapentin, kalsiyum kanalının alfa-2-delta alt birimine bağlanarak sinir uyarılarını azaltır.",
    category: "Algoloji",
    difficulty: 2,
  ),
  Question(
    question:
        "Kronik ağrının psikososyal boyutlarını değerlendirmek için en yaygın kullanılan ölçeklerden biri aşağıdakilerden hangisidir?",
    options: [
      "Visual Analog Scale (VAS)",
      "McGill Ağrı Ölçeği",
      "Beck Depresyon Envanteri",
      "Brief Pain Inventory (BPI)",
      "Glasgow Koma Skalası",
    ],
    correctAnswerIndex: 3,
    explanation:
        "BPI hem ağrının şiddetini hem de ağrının fonksiyonel etkilerini değerlendirir.",
    category: "Algoloji",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi opioidlere karşı gelişen toleransla ilgili doğru bir ifadedir?",
    options: [
      "Tolerans, opioidlerin yan etkilerinin azalması anlamına gelir.",
      "Tolerans, ağrı kontrolünün azalmasıdır.",
      "Tolerans, ilacın etkinliğinin artmasıdır.",
      "Tolerans, sadece fizyolojik bağımlılıkla ilgilidir.",
      "Tolerans, tedavinin kesilmesi ile kalıcı olarak kaybolur.",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Tolerans, aynı etkiyi sağlamak için ilacın dozunun artırılması ihtiyacıdır.",
    category: "Algoloji",
    difficulty: 2,
  ),
  Question(
    question:
        "Algoloji pratiğinde \"multimodal analjezi\" yaklaşımı neyi ifade eder?",
    options: [
      "Tek bir ağrı kesici kullanmak",
      "Farklı mekanizmalara etki eden birden fazla ajan kullanmak",
      "Sadece cerrahi yöntemlerle ağrıyı kesmek",
      "Psikolojik terapi yapmak",
      "Ağrıyı gözlemlemek ve müdahale etmemek",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Multimodal analjezi, ağrıyı farklı mekanizmalar üzerinden kontrol etmek için çeşitli ilaçların birlikte kullanılmasını ifade eder.",
    category: "Algoloji",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki ajanlardan hangisi nöropatik ağrının tedavisinde ilk basamak olarak önerilir?",
    options: [
      "NSAİİ",
      "Opioidler",
      "Antidepresanlar (örneğin, amitriptilin)",
      "Lokal anestezikler",
      "Steroidler",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Nöropatik ağrıda trisiklik antidepresanlar ve gabapentinoidler ilk basamak tedavi olarak kullanılır.",
    category: "Algoloji",
    difficulty: 2,
  ),
  Question(
    question:
        "Kompleks bölgesel ağrı sendromunda (CRPS) hangi bulgu karakteristiktir?",
    options: [
      "Simetrik ağrı",
      "Otonomik değişiklikler (terleme, renk değişikliği)",
      "Lokalize kas güçsüzlüğü olmaması",
      "Sadece bir ekstremitede sinir hasarı",
      "Mutlak ağrısızlık",
    ],
    correctAnswerIndex: 1,
    explanation:
        "CRPS'de otonomik değişiklikler, inflamasyon ve ağrı bir aradadır.",
    category: "Algoloji",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi opioid analjeziklerin yan etkilerinden biri değildir?",
    options: [
      "Kabızlık",
      "Solunum depresyonu",
      "Hipotansiyon",
      "Hiperaktivite",
      "Bulantı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Hiperaktivite opioidlerin yan etkisi değildir, aksine sedasyon yaparlar.",
    category: "Algoloji",
    difficulty: 1,
  ),
  Question(
    question:
        "Postherpetik nöralji tedavisinde tercih edilen ilaçlardan biri hangisidir?",
    options: [
      "Metformin",
      "Gabapentin",
      "İnsülin",
      "Furosemid",
      "Prednizolon",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Gabapentin postherpetik nöraljide etkili bir tedavi ajanıdır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi ağrının nosiseptif türünde sıklıkla görülür?",
    options: [
      "Keskin, lokalize ağrı",
      "Yaygın, yanıcı ağrı",
      "Elektrik çarpması hissi",
      "Allodini",
      "Anestezi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Nosiseptif ağrı genellikle doku hasarına bağlı, keskin ve lokalizedir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Trigeminal nevraljide ilk basamak tedavi aşağıdakilerden hangisidir?",
    options: [
      "Karbamazepin",
      "Gabapentin",
      "Opioidler",
      "Steroidler",
      "NSAİİ",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Karbamazepin trigeminal nevraljide etkili ilk basamak tedavidir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi ağrının multidisipliner yönetiminin bir parçası değildir?",
    options: [
      "Farmakoterapi",
      "Fizik tedavi",
      "Psikoterapi",
      "Cerrahi girişim",
      "Diyet planlaması",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Diyet ağrının doğrudan tedavisinde rol oynamaz.",
    category: "Algoloji",
    difficulty: 1,
  ),

  Question(
    question:
        "Aşağıdaki durumların hangisinde epidural steroid enjeksiyonu ağrı tedavisinde kullanılır?",
    options: [
      "Disk hernisi",
      "Akut miyokard enfarktüsü",
      "Migren",
      "Fibromiyalji",
      "Postoperatif ateş",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Disk hernisinde epidural steroid enjeksiyonu inflamasyonu azaltmak için kullanılır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Opioid tedavisinde \"hiperaljezi\" neyi ifade eder?",
    options: [
      "Opioidlerin ağrıyı tamamen kesmesi",
      "Opioidlere bağlı ağrının artması",
      "Opioidlere tolerans gelişmemesi",
      "Opioid kullanımının bırakılması",
      "Opioidlerin yan etkisi olmaması",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Hiperaljezi, opioidlerin ağrı eşiğini düşürerek ağrının artmasına yol açmasıdır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Fibromiyaljide ağrı tipi genellikle nasıldır?",
    options: [
      "Yaygın ve kronik",
      "Keskin ve lokalize",
      "Sadece gece ortaya çıkan",
      "Nöropatik",
      "Aralıklı ve kısa süren",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Fibromiyalji yaygın ve kronik ağrı ile karakterizedir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi ağrıda \"allodini\" teriminin açıklamasıdır?",
    options: [
      "Normalde ağrısız uyaranlara ağrı cevabı",
      "Ağrının artması",
      "Ağrının azalması",
      "Ağrının lokalizasyonu",
      "Ağrının kesilmesi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Allodini, normalde ağrısız olan uyaranların ağrıya neden olmasıdır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Opioid kullanımına bağlı en sık görülen yan etki hangisidir?",
    options: [
      "Hipertansiyon",
      "Kabızlık",
      "Hiperglisemi",
      "İştahsızlık",
      "Hiperkalemi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Kabızlık opioidlerin en sık görülen yan etkisidir.",
    category: "Algoloji",
    difficulty: 1,
  ),

  Question(
    question:
        "Kronik ağrıda tedaviye psikolojik destek neden önemlidir?",
    options: [
      "Ağrıyı tamamen ortadan kaldırır",
      "Ağrı algısını ve hastanın yaşam kalitesini iyileştirir",
      "İlaç dozunu artırır",
      "Ağrı sebebini düzeltir",
      "Tedavi süresini kısaltır",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Psikolojik destek ağrı algısını azaltır, hastanın işlevselliğini artırır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi nonsteroidal antiinflamatuar ilaçların (NSAİİ) ağrıyı azaltma mekanizmasıdır?",
    options: [
      "COX enzim inhibisyonu",
      "NMDA blokajı",
      "Opioid reseptör agonizması",
      "Serotonin geri alım inhibisyonu",
      "GABA agonizması",
    ],
    correctAnswerIndex: 0,
    explanation:
        "NSAİİ'ler prostaglandin sentezini azaltmak için COX enzimini inhibe eder.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Postherpetik nevraljide hangisi ilk basamak tedavidir?",
    options: [
      "Antikonvülzanlar (gabapentin/pregabalin)",
      "Kortikosteroidler",
      "Opioidler",
      "NSAİİ",
      "Antibiyotikler",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Postherpetik nevraljide antikonvülzanlar sıkça ilk basamak tedavidir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi ağrı algısının merkezsel modülasyonunda rol alan beyin yapısıdır?",
    options: [
      "Talamus",
      "Pankreas",
      "Kalp",
      "Akciğer",
      "Mide",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Talamus ağrı sinyallerinin beyne iletiminde merkezi bir yapıdır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi kronik ağrı hastalarında sıkça karşılaşılan psikolojik bozukluktur?",
    options: [
      "Depresyon",
      "Şizofreni",
      "Bipolar bozukluk",
      "Panik atak",
      "Obsesif kompulsif bozukluk",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Depresyon kronik ağrı hastalarında en sık görülen psikiyatrik durumdur.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi nonsteroidal antiinflamatuar ilaçların (NSAİİ) en ciddi yan etkisidir?",
    options: [
      "Mide kanaması",
      "Kilo alma",
      "Baş ağrısı",
      "Uyku bozukluğu",
      "Saç dökülmesi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "NSAİİ'ler mide kanaması ve ülser gibi ciddi yan etkilere yol açabilir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi intratekal ilaç uygulamasının komplikasyonlarından biridir?",
    options: [
      "Menenjit",
      "Hipoglisemi",
      "Hipertansiyon",
      "Hiperkalemi",
      "Pnömoni",
    ],
    correctAnswerIndex: 0,
    explanation:
        "İntratekal uygulama menenjit riskini artırabilir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki tedavi yöntemlerinden hangisi kronik ağrıda psikolojik destek sağlar?",
    options: [
      "Bilişsel davranışçı terapi",
      "Opioid analjezikler",
      "Lokal anestezik bloklar",
      "Cerrahi müdahale",
      "Kortikosteroid enjeksiyonu",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Bilişsel davranışçı terapi kronik ağrıda psikolojik destek sağlar ve ağrı yönetimine katkıda bulunur.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki ağrı iletim liflerinden hangisi, hızlı iletim yaparak keskin, lokalize ve kısa süreli ağrı sinyallerini taşır?",
    options: [
      "C lifleri",
      "Aδ (A-delta) lifleri",
      "Aβ lifleri",
      "B lifleri",
      "Gamma lifleri",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Aδ lifleri ince miyelinli lifler olup, hızlı iletim hızına sahiptirler (yaklaşık 5-30 m/s). Keskin, iyi lokalize ve kısa süreli ağrı duyusunu taşırlar.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki ağrı liflerinden hangisi yavaş iletim yapar ve donuk, yaygın, uzun süreli ağrıyı iletir?",
    options: [
      "Aβ lifleri",
      "Aδ lifleri",
      "C lifleri",
      "B lifleri",
      "Alfa lifleri",
    ],
    correctAnswerIndex: 2,
    explanation:
        "C lifleri miyelinsizdir, iletim hızı düşüktür (0.5-2 m/s) ve yanıcı, donuk, yaygın ağrıyı taşır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki liflerden hangisi mekanik ve termal ağrı uyaranlarını hızlı bir şekilde ileten ince miyelinli liflerdir?",
    options: [
      "Aβ lifleri",
      "C lifleri",
      "Aδ lifleri",
      "Gamma lifleri",
      "B lifleri",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Aδ lifleri ince miyelinlidir, hızlı iletim yapar ve keskin, iyi lokalize ağrıyı taşır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki liflerden hangisi ağrı iletiminde rol oynamaz?",
    options: [
      "Aβ lifleri",
      "Aδ lifleri",
      "C lifleri",
      "D lifleri",
      "Hepsi ağrı iletiminde rol alır",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Aβ lifleri kalın miyelinlidir ve dokunma, basınç gibi duyuları taşır; ağrı iletiminde ana rolü yoktur.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrı iletiminde C liflerinin özelliklerinden biri aşağıdakilerden hangisidir?",
    options: [
      "Hızlı iletim",
      "Keskin ağrıyı iletme",
      "Miyelinli yapıda olma",
      "Miyelinsiz ve yavaş iletim",
      "Yalnızca motor iletimde rol alma",
    ],
    correctAnswerIndex: 3,
    explanation:
        "C lifleri miyelinsizdir ve yavaş iletim yapar, donuk, yanıcı ağrı sinyallerini taşır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki sinir liflerinden hangisi primer ağrı duyusunu ileten ince miyelinli lif grubudur?",
    options: [
      "Aβ lifleri",
      "C lifleri",
      "Aδ lifleri",
      "B lifleri",
      "Gamma lifleri",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Aδ lifleri ince miyelinli, ağrı ve sıcaklık iletiminde hızlı liflerdir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi ağrı iletiminde en yavaş iletim hızına sahiptir?",
    options: [
      "Aβ lifleri",
      "Aδ lifleri",
      "C lifleri",
      "B lifleri",
      "Alfa lifleri",
    ],
    correctAnswerIndex: 2,
    explanation:
        "C lifleri miyelinsiz olduğu için en yavaş iletim hızına sahiptir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrının ilk keskin ve lokalize hissedilmesinden sorumlu olan lif tipi hangisidir?",
    options: [
      "Aβ lifleri",
      "C lifleri",
      "Aδ lifleri",
      "Gamma lifleri",
      "B lifleri",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Aδ lifleri hızlı iletim yaparak keskin ve lokalize ağrıyı taşır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki ağrı liflerinden hangisi miyelinsizdir?",
    options: [
      "Aβ lifleri",
      "Aδ lifleri",
      "C lifleri",
      "Hepsi miyelinlidir",
      "Hepsi miyelinsizdir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "C lifleri miyelinsizdir, yavaş iletim yapar.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi Aδ liflerinin temel özelliğidir?",
    options: [
      "Yavaş iletim",
      "Miyelinsiz",
      "Keskin ve lokalize ağrı iletimi",
      "Basınç ve dokunma iletimi",
      "Otonomik işlevler",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Aδ lifleri ince miyelinlidir, hızlı iletim yapar ve keskin ağrıyı taşır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrı iletiminde hangi lif tipi, yanıcı, donuk, yaygın ve uzun süren ağrı duyusunu taşır?",
    options: [
      "Aβ lifleri",
      "Aδ lifleri",
      "C lifleri",
      "B lifleri",
      "Alfa lifleri",
    ],
    correctAnswerIndex: 2,
    explanation:
        "C lifleri yavaş iletim yapar, donuk ve uzun süreli ağrıyı taşır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrı duyusunun periferal sinir sisteminden merkezi sinir sistemine iletilmesinde birinci nöron olarak görev yapan hücre tipi aşağıdakilerden hangisidir?",
    options: [
      "Dorsal kök ganglionu nöronları",
      "Spinal motor nöronları",
      "Beyin korteks nöronları",
      "Otonom ganglion nöronları",
      "Glia hücreleri",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Ağrı uyaranları ilk olarak dorsal kök ganglionunda bulunan primer afferent nöronlar tarafından algılanır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrı iletiminde periferik sensitizasyonu en çok artıran mediyatör aşağıdakilerden hangisidir?",
    options: [
      "Prostaglandinler",
      "Dopamin",
      "Serotonin",
      "GABA",
      "Asetilkolin",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Prostaglandinler inflamasyon bölgesinde ağrı reseptörlerinin duyarlılığını artırarak periferik sensitizasyona neden olur.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrı algısında spinotalamik yolun görevi aşağıdakilerden hangisidir?",
    options: [
      "Ağrının lokalizasyonu ve şiddetinin beyne iletimi",
      "Hareket kontrolü",
      "Otonom reflekslerin kontrolü",
      "Motor koordinasyon",
      "Hafıza",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Spinotalamik yol, ağrı ve sıcaklık duyusunun beyne iletilmesinde temel yoldur.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki ağrı tiplerinden hangisi doku hasarına bağlı gelişen akut ağrıya örnektir?",
    options: [
      "Nöropatik ağrı",
      "İnflamatuar ağrı",
      "Fantom ağrısı",
      "Psikojenik ağrı",
      "Kronik ağrı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "İnflamatuar ağrı, doku hasarına bağlı olarak ortaya çıkan akut ağrı tipidir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrı yolunda modülasyonun gerçekleştiği temel merkez aşağıdakilerden hangisidir?",
    options: [
      "Periaqueductal gri madde (PAG)",
      "Medulla oblongata",
      "Hipotalamus",
      "Cerebellum",
      "Pons",
    ],
    correctAnswerIndex: 0,
    explanation:
        "PAG, ağrı sinyalinin modülasyonunda ve ağrının inhibisyonunda kritik rol oynar.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Nöropatik ağrının temel nedeni aşağıdakilerden hangisidir?",
    options: [
      "Sinir sistemi hasarı",
      "Doku inflamasyonu",
      "Psikolojik nedenler",
      "Kas spazmı",
      "Vasküler hastalıklar",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Nöropatik ağrı, sinir sistemi yaralanması veya disfonksiyonuna bağlı gelişir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrının spinal kord seviyesinde iletimini sağlayan nörotransmitterlerden biri aşağıdakilerden hangisidir?",
    options: [
      "Glutamat",
      "Dopamin",
      "Serotonin",
      "GABA",
      "Noradrenalin",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Glutamat, spinal kord dorsal boynuzunda ağrı iletiminde başlıca eksitatör nörotransmitterdir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi ağrı reseptörlerinin (noksiseptörlerin) uyarılmasına neden olmaz?",
    options: [
      "Mekanik hasar",
      "Kimyasal irritanlar",
      "Isı",
      "Işık",
      "Doku inflamasyonu",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Işık, ağrı reseptörlerini doğrudan uyaramaz.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrı algısında \"gate control theory\" modelinde \"gate\" işlevi gören spinal kord yapısı aşağıdakilerden hangisidir?",
    options: [
      "Dorsal boynuz",
      "Ventral boynuz",
      "Beyin sapı",
      "Talamus",
      "Hipotalamus",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Gate control teorisine göre, dorsal boynuzda ağrı sinyallerinin iletimi modüle edilir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki mediyatörlerden hangisi ağrı yolunda hem periferik hem de merkezi sensitizasyona katkıda bulunur?",
    options: [
      "Substans P",
      "Dopamin",
      "Serotonin",
      "GABA",
      "Glutamat",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Substans P, ağrı sinyallerinin iletimini ve inflamasyonu artırır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrı iletiminde C lifleri için doğru olan ifade hangisidir?",
    options: [
      "Miyelinlidir ve hızlı iletim yapar",
      "Miyelinsizdir ve yavaş iletim yapar",
      "Ağrı iletiminde rolü yoktur",
      "Yalnızca basınç duyusunu taşır",
      "Sadece otonom sinir sistemiyle ilgilidir",
    ],
    correctAnswerIndex: 1,
    explanation:
        "C lifleri miyelinsiz ve yavaş iletimlidir, donuk ve yanıcı ağrıyı taşır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi ağrı modülasyonunda endojen opioidlerin etkili olduğu merkezlerden biridir?",
    options: [
      "Periaqueductal gri madde (PAG)",
      "Hipokampus",
      "Primer motor korteks",
      "Medulla spinalis ventral boynuzu",
      "Cerebellum",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Endojen opioidler PAG'da ağrı iletimini inhibe eder.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrının kronikleşmesinde en önemli rolü oynayan süreç aşağıdakilerden hangisidir?",
    options: [
      "Merkezi sensitizasyon",
      "Periferik inflamasyonun azalması",
      "Doku rejenerasyonu",
      "Psikojenik stresin azalması",
      "Sinir iletim hızının artması",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Merkezi sensitizasyon, ağrının sürekliliği ve şiddetinde artışa neden olur.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrı iletiminde kullanılan aşağıdaki nörotransmitterlerden hangisi inhibitör (baskılayıcı) etkidedir?",
    options: [
      "GABA",
      "Substans P",
      "Glutamat",
      "Nöropeptid Y",
      "Asetilkolin",
    ],
    correctAnswerIndex: 0,
    explanation:
        "GABA, ağrı iletimini inhibe eden ana inhibitör nörotransmitterdir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Periferik sinir yaralanması sonrası gelişen ağrı tipi aşağıdakilerden hangisidir?",
    options: [
      "Nöropatik ağrı",
      "İnflamatuar ağrı",
      "Akut ağrı",
      "Psikojenik ağrı",
      "Vasküler ağrı",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Sinir hasarı sonrası gelişen ağrı nöropatik ağrıdır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki yapılardan hangisi ağrı algısında \"duyusal-diskriptif\" bileşeni ile ilişkilidir?",
    options: [
      "Somatosensoryel korteks",
      "Limbik sistem",
      "Hipotalamus",
      "Beyin sapı",
      "Serebellum",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Somatosensoryel korteks ağrının lokalizasyonu ve şiddetinin bilinçli algılanmasından sorumludur.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrı iletiminde periferik nociseptörlerin uyarılmasında aşağıdaki iyon kanallarından hangisi önemli rol oynar?",
    options: [
      "TRPV1 kanalları",
      "Kalsiyum kanalları",
      "Sodyum kanalları",
      "Potasyum kanalları",
      "Klor kanalları",
    ],
    correctAnswerIndex: 0,
    explanation:
        "TRPV1 (Transient Receptor Potential Vanilloid 1) kanalları ısı ve kimyasal uyarılara duyarlıdır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki mediyatörlerden hangisi inflamasyon bölgesinde ağrıyı artırıcı etkisiyle bilinir?",
    options: [
      "Bradykinin",
      "Dopamin",
      "Serotonin",
      "GABA",
      "Adenozin",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Bradykinin inflamasyon bölgesinde ağrı reseptörlerini uyarır ve ağrıyı artırır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrı algısında \"descendent inhibitory pathways\" ile ilişkili nörotransmitter aşağıdakilerden hangisidir?",
    options: [
      "Serotonin",
      "Glutamat",
      "Substans P",
      "Histamin",
      "Asetilkolin",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Descendent yollar serotonin ve noradrenalin aracılığıyla ağrı iletimini baskılar.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki yapılar ağrı iletimi sırasında ağrının bilinçli olarak algılanmasında en önemli rolü oynar?",
    options: [
      "Talamus",
      "Medulla oblongata",
      "Periaqueductal gri madde",
      "Hipotalamus",
      "Spinal kord ventral boynuzu",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Talamus ağrı duyusunun kortekse iletilmesinde ara istasyon görevi görür.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrının afferent sinirler aracılığıyla iletilmesinde aşağıdaki iyon kanallarından hangisi ağrının başlamasında kritik rol oynar?",
    options: [
      "Voltaj kapılı sodyum kanalları",
      "Kalsiyum kanalları",
      "Potasyum kanalları",
      "Klor kanalları",
      "Kalsiyum ATPaz",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Voltaj kapılı sodyum kanalları sinir impulsunun başlatılmasında kritik önemdedir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrı iletiminde spinal kord dorsal boynuzunda bulunan ve ağrıyı ileten nörotransmitter aşağıdakilerden hangisidir?",
    options: [
      "Substans P",
      "Dopamin",
      "Serotonin",
      "Asetilkolin",
      "GABA",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Substans P ağrı sinyallerinin iletiminde eksitatör rol oynar.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki seçeneklerden hangisi ağrının emosyonel (duygusal) bileşeninden sorumlu beyin yapısıdır?",
    options: [
      "Limbik sistem",
      "Primer somatosensoryel korteks",
      "Talamus",
      "Medulla spinalis",
      "Beyincik",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Limbik sistem ağrının duygusal yanıtını yönetir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Periferik sinir yaralanması sonrası gelişen hiperaljezi aşağıdaki mekanizmalardan hangisiyle açıklanır?",
    options: [
      "Periferik sensitizasyon",
      "Merkezi inhibisyon artışı",
      "Myelin sentezi artışı",
      "Nöronal apoptoz",
      "Sinaptik plastikliğin azalması",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Periferik sensitizasyon, ağrıya karşı artmış duyarlılıkla hiperaljezinin temel mekanizmasıdır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrıda \"central sensitization\" ile ilgili olarak aşağıdaki ifadelerden hangisi yanlıştır?",
    options: [
      "Spinal kord dorsal boynuzunda sinapsların etkinliği artar",
      "Ağrı eşiği düşer",
      "Normalde ağrısız uyaranlar ağrılı algılanabilir",
      "Ağrı algısı sadece periferik reseptörlerden bağımsızdır",
      "Merkezi sinir sistemi ağrıyı tamamen bloke eder",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Merkezi sensitizasyon ağrının artmasına neden olur, tam blokaj yapmaz.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrı iletimi sırasında en önemli ilk kimyasal uyarıcı hangisidir?",
    options: [
      "Bradykinin",
      "Dopamin",
      "Serotonin",
      "GABA",
      "Noradrenalin",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Bradykinin doku hasarı sonrası ağrıyı tetikleyen temel mediyatördür.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki yapılardan hangisi ağrı algısında \"duyusal-diskriptif\" bileşeni ile ilişkilidir?",
    options: [
      "Somatosensoryel korteks",
      "Limbik sistem",
      "Hipotalamus",
      "Beyin sapı",
      "Serebellum",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Somatosensoryel korteks ağrının lokalizasyonu ve şiddetinin bilinçli algılanmasından sorumludur.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki hücre tiplerinden hangisi periferik dokuda inflamasyon sırasında ağrı mediyatörlerini salgılar?",
    options: [
      "Mast hücreleri",
      "Nöronlar",
      "Astrositler",
      "Mikroglia",
      "Oligodendrositler",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Mast hücreleri histamin gibi ağrı mediyatörlerini salgılar.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrı iletimi sırasında periferik sensörlerden CNS'ye bilgi taşıyan lifler aşağıdaki seçeneklerden hangisidir?",
    options: [
      "Primer afferent lifler",
      "Sekonder afferent lifler",
      "Motor nöronlar",
      "Otonom efferent lifler",
      "Internöronlar",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Primer afferent lifler periferden CNS'ye ağrı ve diğer duyuları taşır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrının psiko-duygusal bileşenini etkileyen beyin bölgesi aşağıdakilerden hangisidir?",
    options: [
      "Prefrontal korteks",
      "Primer somatosensoryel korteks",
      "Hipotalamus",
      "Medulla spinalis",
      "Beyincik",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Prefrontal korteks ağrının anlamlandırılması ve duygusal yanıtında rol oynar.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Ağrı algısında \"allodini\" terimi ne anlama gelir?",
    options: [
      "Normalde ağrısız bir uyaranın ağrılı algılanması",
      "Ağrı eşik değerinin artması",
      "Ağrının azalması",
      "Ağrının lokalize olmaması",
      "Ağrının kronikleşmesi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Allodini, normalde ağrısız uyaranların ağrılı uyaran gibi algılanmasıdır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Periferik sinir blokları hangi durumlarda kontrendikedir?",
    options: [
      "Lokal enfeksiyon, pıhtılaşma bozukluğu",
      "Kronik ağrı",
      "Postoperatif ağrı",
      "Kafa travması",
      "Migrain",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Enfeksiyon veya koagülasyon bozukluklarında blok kontrendikedir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Siyatik sinir bloğunda kullanılan en sık yaklaşım hangisidir?",
    options: [
      "Popliteal yaklaşım",
      "İnterskalen yaklaşım",
      "Supraklaviküler yaklaşım",
      "İnguinal yaklaşım",
      "Sakral yaklaşım",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Siyatik sinir için popliteal yaklaşım sık tercih edilir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "N. medianus bloğu hangi klinik durumda tercih edilir?",
    options: [
      "Karpal tünel sendromu",
      "Siyatik ağrı",
      "Faset eklem ağrısı",
      "Postherpetik nevralji",
      "Bel ağrısı",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Median sinir bloğu el ve önkol ağrısında kullanılır.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "N. occipitalis bloğu hangi tip ağrılarda kullanılır?",
    options: [
      "Migren ve servikal baş ağrısı",
      "Siyatik ağrısı",
      "Pelvik ağrı",
      "Karın ağrısı",
      "Faset ağrısı",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Occipital sinir blokları baş ağrısında etkilidir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "İnfraorbital sinir bloğu hangi alanda ağrıyı azaltır?",
    options: [
      "Üst çene, burun ve yanak bölgesi",
      "Alt çene",
      "Alt ekstremite",
      "Boyun",
      "Göğüs",
    ],
    correctAnswerIndex: 0,
    explanation:
        "İnfraorbital sinir üst yüzün duyusunu sağlar.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "İliohypogastrik blok hangi sinirleri bloke edebilir?",
    options: [
      "N. İlioinguinal ve iliohipogastrik",
      "N. femoralis ve obturator",
      "N. medianus ve ulnar",
      "Siyatik sinir",
      "N. glossopharyngeal",
    ],
    correctAnswerIndex: 0,
    explanation:
        "İliohypogastrik blok bu sinirlerin ağrısını kontrol eder.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Paravertebral blok hangi ağrılarda sıklıkla uygulanır?",
    options: [
      "Torakal duvar ağrıları ve postherpetik nevralji",
      "Alt ekstremite ağrısı",
      "Boyun ağrısı",
      "Yüz ağrısı",
      "Pelvik ağrılar",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Paravertebral blok torakal bölge ağrılarında etkilidir.",
    category: "Algoloji",
    difficulty: 2,
  ),

  Question(
    question:
        "Supraklaviküler blok sırasında hangi sinir veya damar yaralanabilir?",
    options: [
      "Pleura ve subklavian arter",
      "N. vagus",
      "A. carotis",
      "N. medianus",
      "N. femoralis",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Supraklaviküler blokta pleura delinmesi ve subklavian arter hasarı riski vardır.",
    category: "Algoloji",
    difficulty: 2,
  ),
];
