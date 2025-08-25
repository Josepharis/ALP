import '../models/question.dart';

final List<Question> spinalEpiduralCaudalBlocksQuestions = <Question>[
  Question(
    question:
        "Aşağıdakilerden hangisi, spinal anestezinin en sık görülen komplikasyonudur?",
    options: [
      "Epidural hematom",
      "Sinir hasarı",
      "Postdural ponksiyon baş ağrısı (PDPH)",
      "Kardiyak arrest",
      "Alerjik reaksiyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "PDPH, özellikle genç kadınlarda ve ince iğnelerle yapılan girişimlerde daha sık görülür. Dural delinme sonrası BOS sızıntısı ile oluşur.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, spinal anestezinin yüksek blok oluşturmasına en çok katkıda bulunan faktördür?",
    options: [
      "Yaşın ileri olması",
      "İnce iğne kullanılması",
      "Hipobarik solüsyon kullanılması",
      "Lokal anestezi volümünün düşük olması",
      "Hastanın Trendelenburg pozisyonuna alınması",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Ağır (hiperbarik) solüsyon kullanıldığında, yerçekimi etkisiyle yüksek blok gelişebilir → Trendelenburg pozisyonu bunu artırır",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, epidural blok sonrası hipotansiyon gelişme mekanizmasıyla en doğrudan ilişkilidir?",
    options: [
      "Kardiyak output artışı",
      "Sempatik tonusun inhibisyonu",
      "Parasempatik aktivitenin artması",
      "Hipovolemi",
      "Artmış venöz dönüş",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural blok, semptomatik sinirlerin blokajı nedeniyle vazodilatasyon ve hipotansiyon oluşturur.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki anatomik yapılar içinde, spinal anestezi uygulanırken en son geçilen yapı hangisidir?",
    options: [
      "Ligamentum flavum",
      "Dura mater",
      "Arachnoid mater",
      "Epidural boşluk",
      "Pia mater",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Spinal boşluk, dura ve araknoid zarlar geçildikten sonra ulaşılır. Pia mater delinmez",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, kaudal anestezi için doğru anatomik işaretleme yöntemidir?",
    options: [
      "L3–L4 intervertebral aralık",
      "Sakral kornular arasında palpasyon",
      "Spina iliaca anterior superior hattı",
      "T10 dermatomu",
      "Sakrumun lateral kenarları",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Sakral hiatus, sakral kornular arasında palpasyonla bulunur → kaudal blok için kritik anatomik işarettir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural blok sonrası, hasta bacaklarını kıpırdatamıyor ve 4 saat geçmesine rağmen motor fonksiyonlar geri dönmüyor. Bu durumda öncelikle düşünülmesi gereken komplikasyon hangisidir?",
    options: [
      "Normal rejyonel blok süresi",
      "Lokal anestezik toksisitesi",
      "Epidural hematom",
      "Kauda ekuina sendromu",
      "İlaç alerjisi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Motor blok uzun sürüyorsa, özellikle ağrı, kas güçsüzlüğü varsa → epidural hematom düşünülmeli → acil görüntüleme ve cerrahi gerekebilir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, spinal anestezide kullanılan lokal anesteziklerin barisitesini artırır?",
    options: [
      "Dekstroz eklenmesi",
      "Solüsyonun ısıtılması",
      "Düşük pH",
      "Düşük konsantrasyon",
      "Yavaş enjeksiyon",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Hiperbarik solüsyonlar, BOS'tan daha yoğun yapılır → bu da genellikle %8–10 dekstroz eklenerek sağlanır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumlardan hangisi, epidural anestezide lokal anestezik dozunun spinal anesteziye göre daha yüksek olmasının nedenidir?",
    options: [
      "BOS ile seyrelme olması",
      "Epidural boşlukta negatif basınç olması",
      "Diffüzyon mesafesinin daha kısa olması",
      "Sinir liflerinin dura dışında olması",
      "Etki süresinin daha kısa olması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Epiduralde lokal anesteziklerin sinir köklerine ulaşması için dura mater'i geçmeleri gerekir → bu nedenle daha yüksek doz gereklidir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası bradikardi ve hipotansiyon gelişen bir hastada ilk yapılması gereken müdahale nedir?",
    options: [
      "Trendelenburg pozisyonu",
      "Propofol verilmesi",
      "Epinefrin uygulanması",
      "Atropin ve sıvı verilmesi",
      "Spinal blok tekrarı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Bradikardi + hipotansiyon → vagal tonus artışı ve sempatik blok göstergesidir. Atropin ve volüm desteği ilk müdahaledir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, spinal anestezide lokal anestezik etkisinin süresini uzatmak için en sık eklenen ilaçlardan biridir?",
    options: [
      "Atropin",
      "Fentanil",
      "Sodyum bikarbonat",
      "Midazolam",
      "Diazepam",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Opioidlerin (özellikle fentanil veya morfin) lokal anesteziklere intratekal olarak eklenmesi, analjezi süresini uzatır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, kaudal anestezide lokal anesteziklerin kraniyal yayılımını sınırlayan faktörlerden biridir?",
    options: [
      "Volümün artırılması",
      "Hiperbarik solüsyon kullanımı",
      "Sıvının ısıtılması",
      "Sakrokoksigeal bağ dokusu",
      "Hastanın yaşının ileri olması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Sakrokoksigeal ligaman ve çevre anatomik yapı, kaudal enjeksiyonun kraniyal yayılımını sınırlayabilir → özellikle erişkinlerde etkisi kısıtlıdır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası persistan parestezi gelişirse, aşağıdaki komplikasyonlardan hangisinden şüphelenilmelidir?",
    options: [
      "İlaç alerjisi",
      "Enfeksiyon",
      "Sinir travması",
      "PDPH",
      "Yetersiz dozlama",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Spinal anestezide iğne ucu doğrudan sinir liflerine temas ettiyse, özellikle intranevral yerleşimde uzamış parestezi ve nörolojik bulgular oluşabilir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, epidural alanın anatomik sınırlarından biri değildir?",
    options: [
      "Ligamentum flavum",
      "Vertebra korpusu posterioru",
      "Dura mater",
      "Subaraknoid boşluk",
      "Pedikül",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Subaraknoid boşluk, epidural alanın dışında ve dura materin altında yer alır → anatomik sınır sayılmaz.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi uygulanan bir hastada ağrı duyusunun geri dönmesi, aşağıdaki fonksiyonlardan hangisinden sonra olur?",
    options: [
      "Sempatik tonusun geri dönüşü",
      "Motor fonksiyonun geri kazanılması",
      "Vibrasyon hissinin geri gelmesi",
      "İdrar yapabilme yetisi",
      "Duyusal bloğun tamamen çözülmesi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Fonksiyonlar geri dönerken sırasıyla: sempatik → ağrı → ısı → dokunma → motor → önce sempatik blok çözülür, en son motor fonksiyon geri döner.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sırasında 'paraestesia' hissedilmesi aşağıdakilerden hangisini düşündürür?",
    options: [
      "BOS'a girildiğini",
      "İğne ucunun sinir lifine temas ettiğini",
      "Lokal anestezi etkisinin başladığını",
      "Araknoid boşluğa girildiğini",
      "Enjeksiyonun intravasküler olduğunu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Parestezi hissi, iğne ucunun sinir köklerine temas ettiğini gösterir → kalıcı hasarı önlemek için iğne yönü değiştirilmeli, enjeksiyon yapılmamalıdır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki lokal anesteziklerden hangisinin epidural anestezide sensoriyel–motor ayrımı daha belirgindir ve daha az motor blok oluşturur?",
    options: [
      "Bupivakain",
      "Ropivakain",
      "Lidokain",
      "Prilokain",
      "Prokain",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Ropivakain, bupivakaine kıyasla daha az motor blok yapar, bu da postoperatif mobilizasyonu kolaylaştırır → epidural analjezide sık tercih edilir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezide kateterin subaraknoid alana yerleştiğini gösteren en önemli bulgu hangisidir?",
    options: [
      "İntravenöz sıvının yavaş ilerlemesi",
      "İnjeksiyon sonrası tek taraflı motor blok",
      "Kateterden BOS gelmesi",
      "SpO₂ düşmesi",
      "Deri döküntüsü oluşması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kateterden BOS gelmesi, intratekal yerleşimi gösterir → epidural ilaç verilmeden önce mutlaka kontrol edilmelidir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal blok sırasında 'yüksek blok' geliştiğinde en erken görülen bulgu hangisidir?",
    options: [
      "Apne",
      "Hipoestezi",
      "Hipotansiyon",
      "Boğazda dolgunluk hissi ve dispne",
      "Midriyazis",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Blok C3–C5 seviyesine ulaştığında, diafragma paralizisi ve boğulma hissi görülebilir → bu durum acil müdahale gerektirir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi uygulanan bir hastada işlem sonrası idrar yapamama gelişti. En olası neden aşağıdakilerden hangisidir?",
    options: [
      "Spinal enfeksiyon",
      "Epidural hematom",
      "Düşük spinal blok seviyesi",
      "S2–S4 düzeyinde parasempatik liflerin blokajı",
      "Lokal anestezik toksisitesi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Mesane kas kontraksiyonu, S2–S4 düzeyindeki parasempatik liflerle sağlanır. Spinal blok bu bölgeyi etkilerse → üriner retansiyon olabilir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezide en sık tercih edilen iğne türü aşağıdakilerden hangisidir?",
    options: [
      "Tuohy",
      "Quincke",
      "Whitacre",
      "Huber",
      "Crawford",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Whitacre ve Sprotte, kalem ucu (pencil-point) iğnelerdir → dura materde daha az travma oluşturur, PDPH riski düşüktür → modern spinal anestezide sıklıkla tercih edilir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural blok uygulanan bir hastada, başlangıçta yeterli anestezi sağlanırken 30 dakika sonra motor blokta asimetri gelişti. En olası neden hangisidir?",
    options: [
      "Lokal anestezik dozu yetersizdir",
      "Kateterin bir tarafta lateral yerleşimi",
      "İlaç yanlışlıkla intratekal verilmiştir",
      "Test dozu atlanmıştır",
      "Lokal anestezik absorpsiyonu artmıştır",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Kateterin epidural boşluk içinde tek taraflı yerleşmesi, lokal anesteziğin simetrik yayılımını engeller → asimetrik blok oluşur.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki kombinasyonlardan hangisi, intratekal morfin sonrası geç solunum depresyonunu en az tetikler?",
    options: [
      "Yüksek doz morfin",
      "Morfin + midazolam",
      "Düşük doz morfin + lokal anestezik",
      "Morfin + fentanil",
      "Morfin + ketamin",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Düşük doz morfin, lokal anestezikle birlikte kullanıldığında analjezi süresini uzatır ancak solunum depresyonu riski düşer.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, spinal hematom gelişimini takiben en sık gözlenen ilk klinik belirtidir?",
    options: [
      "İdrar kaçırma",
      "Kalça ağrısı",
      "Alt ekstremitede ani motor kayıp",
      "Bradikardi",
      "Bilinç kaybı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Epidural/spinal hematom, özellikle motor defisit (özellikle alt ekstremite) ile kendini gösterir → acil görüntüleme ve dekompresyon gerektirir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumlardan hangisinde kaudal blok erişkin hastada uygulanması uygun değildir?",
    options: [
      "Hemoroid cerrahisi",
      "Kronik perianal ağrı",
      "Sakral kanal stenozu",
      "Alt ekstremite tendoplasti",
      "Perianal fistül onarımı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sakral kanal stenozu, kaudal enjeksiyonun yayılımını engeller → blok başarısız olabilir → kontrendikasyon oluşturabilir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural kateter yerleştirilen hastada kateterden kan aspirasyonu gelirse en uygun yaklaşım nedir?",
    options: [
      "İşleme devam edilir",
      "Kateter çekilir, farklı seviyeden tekrar denenir",
      "Kateter yıkanır ve sabitlenir",
      "Doz azaltılarak verilir",
      "Antikoagülasyon başlanır",
    ],
    correctAnswerIndex: 1,
    explanation:
        "İntravasküler yerleşim şüphesinde kateter geri çekilmelidir → kan aspirasyonu varsa işlem tekrarlanmalıdır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki ilaçlardan hangisinin intratekal uygulanması kontrendikedir?",
    options: [
      "Bupivakain",
      "Fentanil",
      "Ketamin (koruyucusuz)",
      "Morfin",
      "Lidokain",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Koruyuculu ketamin nörotoksik olabilir → intratekal kullanımda ciddi nörolojik hasara yol açabilir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, epidural blokta lokal anestezik yayılımını en çok etkileyen faktörlerden biridir?",
    options: [
      "Cinsiyet",
      "Vücut ısısı",
      "Enjeksiyon hızı",
      "Epidural alanın segmental anatomisi",
      "Enjeksiyonun derinliği",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Epidural alanın anatomik varyasyonları, ilaç yayılımını doğrudan etkiler → özellikle torakal ve sakral bölgelerde yayılım farklılık gösterir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural kateter yerleştirilen bir hasta, işlem sonrası yavaş yavaş başlayan sırt ağrısı ve alt ekstremitede güçsüzlük tarifliyor. Öncelikle ne düşünülmelidir?",
    options: [
      "Anksiyete",
      "PDPH",
      "Epidural apseler",
      "Geç blok etkisi",
      "ROP komplikasyonu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Epidural apseler, sinsi başlangıçlıdır → sırt ağrısı, ateş, motor defisit ile başlar → gecikmeden MRI istenmelidir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural blok sonrası hastada injektat volümüne rağmen yetersiz blok oluştuysa en olası neden nedir?",
    options: [
      "İlaç etkisinin geç başlaması",
      "Kateterin subdural yerleşimi",
      "İğnenin çok kısa olması",
      "Hastanın sıvı açığı",
      "İlacın hipotonik olması",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Subdural yerleşim, epidural ve subaraknoid arasındadır → atipik yayılım ve yetersiz blok ile sonuçlanabilir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası ağrısız, fakat motor fonksiyonları tam olan bir hasta ne tür bir blok yaşar?",
    options: [
      "Selektif sensitif blok",
      "Tam motor blok",
      "Kauda ekuina sendromu",
      "Epidural hematom",
      "Lokal anestezik toksisitesi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Selektif sensitif blokta, motor lifler etkilenmeden sadece duyusal sinir lifleri bloke edilir → özellikle düşük konsantrasyonla oluşur.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki spinal iğnelerden hangisi PDPH riskini en fazla artırır?",
    options: [
      "25G Whitacre",
      "27G Sprotte",
      "22G Quincke",
      "27G Pencil-point",
      "25G atraumatik",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Quincke tipi iğneler, keskin uçlu olduğundan dura yırtığını artırır → kalın çaplı olması PDPH riskini daha da yükseltir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, epidural alanın tanımlanmasında en önemli anatomik belirteçtir?",
    options: [
      "Ligamentum supraspinale",
      "Ligamentum interspinale",
      "Ligamentum flavum",
      "Araknoid membran",
      "Pia mater",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Ligamentum flavum, epidural boşluktan hemen önce gelir → rezistans kaybı bu seviyede hissedilir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal blok sonrası iskemik nöropati gelişiminin en sık nedeni nedir?",
    options: [
      "Yüksek doz opioid",
      "Direkt sinir travması",
      "İğne içinde pıhtı oluşumu",
      "Uzamış hipotansiyon",
      "Enfeksiyon",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Uzun süren hipotansiyon, spinal perfüzyonu bozar → iskemik sinir hasarı gelişebilir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural blokta kullanılan ilaçlardan hangisinin intratekal uygulanması halinde en yüksek nörotoksisite riskine sahiptir?",
    options: [
      "Lidokain",
      "Ropivakain",
      "Levobupivakain",
      "Prilokain",
      "Tetrakain",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Lidokain, intratekal yolla yüksek konsantrasyonlarda uygulandığında geçici nörolojik semptomlar (TNS) ile ilişkilidir → dikkatli olunmalıdır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi için en uygun girişim aralığı aşağıdakilerden hangisidir?",
    options: [
      "L1–L2",
      "T12–L1",
      "L3–L4",
      "T10–T11",
      "L1–L3",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Spinal kord genellikle L1'de sonlandığı için, L3–L4 veya L4–L5 aralığı güvenlidir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumlardan hangisi, kaudal blok uygulamasında sık yapılan teknik hatalardan biridir?",
    options: [
      "Solüsyonun vücut ısısında verilmesi",
      "Derin iğne yerleştirilmesi",
      "Aspiration yapılması",
      "Sakral kornuların palpe edilmesi",
      "Supin pozisyonda uygulama",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Kaudal blokta fazla derine girilmesi, dural delinmeye ya da intravasküler enjeksiyona neden olabilir. Anatomik sınırlar dikkatle belirlenmelidir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumlardan hangisi, epidural anestezide 'loss of resistance' (rezistansın kaybı) yöntemi hangi yapının geçildiğini gösterir?",
    options: [
      "Ligamentum flavum",
      "Dura mater",
      "Arachnoid membran",
      "Subaraknoid boşluk",
      "Pia mater",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Ligamentum flavum geçildikten sonra iğne ucu epidural boşluğa girer → bu sırada rezistans kaybı hissedilir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki tekniklerden hangisi, spinal anestezide PDPH gelişme riskini azaltır?",
    options: [
      "Geniş çaplı Quincke iğne kullanmak",
      "Orta hat dışında girişim",
      "Yan pozisyonda uygulama",
      "İnce, kalem ucu (pencil-point) iğne kullanmak",
      "Yüksek volüm lokal anestezik kullanmak",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Kalem ucu iğneler (ör. Whitacre, Sprotte) durada daha az travma oluşturur → PDPH riski belirgin azalır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sırasında intravasküler enjeksiyon şüphesi olan hastada aşağıdaki bulgulardan hangisi görülmesi beklenir?",
    options: [
      "Derin spinal blok",
      "Ani taşikardi ve hipertansiyon",
      "Motor blok gelişmemesi",
      "İdrar retansiyonu",
      "Hipotermi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Eğer epinefrinli test dozu intravasküler alana verilirse → taşikardi, hipertansiyon ve bazen titreme görülür.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki faktörlerden hangisi, kaudal blokta başarısızlığa en sık neden olur?",
    options: [
      "Hiperbarik solüsyon kullanımı",
      "Sakral hiatusun bulunamaması",
      "İğne kalınlığının az olması",
      "Dekstroz eklenmesi",
      "Yavaş enjeksiyon yapılması",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Kaudal blokun başarısı, sakral hiatusun doğru lokalize edilmesine bağlıdır. Anatomik varyasyonlar başarısızlık sebebi olabilir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Kaudal anestezi için en uygun endikasyon aşağıdakilerden hangisidir?",
    options: [
      "Karaciğer rezeksiyonu",
      "Alt ekstremite kırık cerrahisi",
      "Perianal cerrahi (özellikle çocuklarda)",
      "Toraks drenajı",
      "Açık mide cerrahisi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kaudal anestezi, özellikle çocuklarda perianal ve alt abdominal cerrahilerde tercih edilir. Sakral düzeyde etkili bir blok sağlar.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası Horner sendromu gelişmesinin nedeni aşağıdakilerden hangisidir?",
    options: [
      "T4'ün üstünde sempatik blok oluşması",
      "T10 düzeyinde blok",
      "Parasempatik sistem aktivasyonu",
      "Epidural hematom",
      "T1–T4 blok oluşmaması",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Horner sendromu (ptozis, miozis, anhidroz), T1 düzeyindeki sempatik liflerin blokajı ile ortaya çıkar → yüksek spinal blok sonucu oluşabilir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural kateter yerleştirildikten sonra test dozu olarak hangi kombinasyon önerilir?",
    options: [
      "İzotonik NaCl + Fentanil",
      "Lidokain + Epinefrin",
      "Ropivakain + Morfin",
      "Bupivakain + Deksametazon",
      "İzobarik bupivakain + Midazolam",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Test dozu, yanlışlıkla intravasküler ya da subaraknoid yerleşimi tespit etmek için yapılır. Lidokain + Epinefrin kullanılır → hızlı taşikardi varsa intravasküler yerleşim düşünülür.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi epidural boşluk içeriğinde yer almaz?",
    options: [
      "Yağ dokusu",
      "Lenfatik damarlar",
      "Spinal sinir kökleri",
      "Spinal korda ait BOS",
      "Venöz pleksus",
    ],
    correctAnswerIndex: 3,
    explanation:
        "BOS, subaraknoid boşlukta bulunur. Epidural boşlukta yağ dokusu, sinir kökleri, venöz pleksus ve lenf damarları yer alır",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal blok sonrası hipotansiyon riski en yüksek olan hasta grubu hangisidir?",
    options: [
      "Hipertansif hastalar",
      "Astımlı hastalar",
      "Gebeler",
      "Diyabetik hastalar",
      "Obez bireyler",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Gebelerde vena cava kompresyonu ve artmış venöz kapasite nedeniyle, spinal anesteziye bağlı hipotansiyon riski daha fazladır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezide lokal anestezik dozunun spinale göre daha yüksek olmasının temel nedeni nedir?",
    options: [
      "Daha hızlı etki sağlamak için",
      "Subaraknoid boşluğun genişliği",
      "Epidural boşlukta ilaç difüzyonunun sınırlı olması",
      "BOS'ta seyreltme ihtiyacı",
      "Dura geçirgenliği",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Epidural boşlukta ilaç doğrudan sinirlerle temas etmez, diffüzyon yoluyla etki eder. Bu yüzden daha yüksek doz gereklidir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal blok sırasında blok seviyesi T4'e ulaşırsa aşağıdakilerden hangisi görülmesi muhtemeldir?",
    options: [
      "Belirgin kas güçsüzlüğü",
      "Yüksek taşikardi",
      "Solunum depresyonu",
      "Bradikardi ve hipotansiyon",
      "Horner sendromu",
    ],
    correctAnswerIndex: 3,
    explanation:
        "T4 düzeyi, kalp sempatik innervasyonunun bloke edildiği seviyedir → bradikardi ve hipotansiyon gelişebilir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sırasında baş ağrısı riski en fazla olan hasta grubu hangisidir?",
    options: [
      "Erkekler",
      "Yaşlılar",
      "Gebeler",
      "Diyabetikler",
      "Hipertansifler",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Genç yaş, kadın cinsiyet ve gebelik, postdural ponksiyon baş ağrısı riskini artıran faktörlerdendir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal blok uygulaması sırasında T10 ve altı seviyelerde blok oluşuyorsa, aşağıdaki işlemlerden hangisi için uygundur?",
    options: [
      "Torakotomi",
      "Laparotomi",
      "Sezaryen",
      "Perianal cerrahi",
      "Açık kolesistektomi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Perianal cerrahi gibi alt segment işlemleri için T10 ve altı spinal blok yeterlidir. Daha yüksek seviyeler intraabdominal cerrahiler için gerekir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezide barisiteyi belirleyen en önemli faktör aşağıdakilerden hangisidir?",
    options: [
      "Viskozite",
      "Solüsyonun hacmi",
      "İlaç konsantrasyonu",
      "Glukoz miktarı",
      "pH",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Barisite, solüsyonun özgül ağırlığıyla ilgilidir ve genellikle glukoz içeriği ile ayarlanır. Hiperbarik çözeltiler glukoz içerir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural blok sonrası 'patchy block' (yama tarzında blok) görülmesinin en olası nedeni nedir?",
    options: [
      "Aşırı ilaç verilmesi",
      "Tek seviyeye sınırlı dağılım",
      "Epidural hematom",
      "İlaç enjeksiyonunun subaraknoid boşluğa olması",
      "Kateterin dural aralığa yerleşmesi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural boşlukta lokal anesteziğin yayılımı sınırlı kalırsa, yetersiz ve bölgesel (patchy) blok gelişebilir. Yeterli hacimle yayılım sağlanmalıdır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezide kullanılan iğnelerden hangisi en az postdural ponksiyon baş ağrısına neden olur?",
    options: [
      "Quincke",
      "Tuohy",
      "Crawford",
      "Whitacre",
      "Hustead",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Whitacre (ve benzeri pencil-point iğneler) BOS kaçağını minimalize ederek postdural baş ağrısı riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumlardan hangisi epidural anestezi için relatif kontrendikasyon sayılır?",
    options: [
      "Septik şok",
      "Koagülopati",
      "Lokal enfeksiyon",
      "Bilinç bulanıklığı",
      "Antikoagülan kullanım öyküsü",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Antikoagülan kullanım öyküsü, epidural hematom riski nedeniyle relatif kontrendikasyon kabul edilir. Zamanlamaya dikkat edilmelidir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen PDPH'nin en etkili tedavi yöntemi aşağıdakilerden hangisidir?",
    options: [
      "Oral analjezikler",
      "Epidural kan yaması (blood patch)",
      "İntravenöz sıvı tedavisi",
      "Yatak istirahati",
      "Kafein",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural kan yaması, postdural ponksiyon baş ağrısının en etkili tedavi yöntemidir. %90'ın üzerinde başarı oranı vardır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumlardan hangisi epidural anestezi için mutlak kontrendikasyon sayılmaz?",
    options: [
      "Septisemi",
      "Lokal enfeksiyon",
      "Koagülopati",
      "Hasta reddi",
      "Bilinç bulanıklığı",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Bilinç bulanıklığı, epidural anestezi için mutlak kontrendikasyon değildir. Diğer seçenekler mutlak kontrendikasyonlardır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sırasında 'total spinal' geliştiğinde en erken görülen bulgu hangisidir?",
    options: [
      "Apne",
      "Bilinç kaybı",
      "Kardiyak arrest",
      "Tam motor blok",
      "Yüksek blok seviyesi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Total spinal anestezide, blok C3-C5 seviyesine ulaştığında diafragma paralizisi ve apne gelişir → acil entübasyon gerekir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'breakthrough pain' (ani ağrı) için en uygun yaklaşım nedir?",
    options: [
      "Hasta pozisyonunu değiştirmek",
      "Epidural dozu artırmak",
      "Oral analjezik vermek",
      "Kateteri çekmek",
      "Spinal anestezi yapmak",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Breakthrough pain, epidural analjezinin yetersiz olduğunu gösterir. Epidural doz artırılmalı veya kateter pozisyonu kontrol edilmelidir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'shivering' (titreme) için en etkili tedavi yöntemi hangisidir?",
    options: [
      "Morfine",
      "Meperidin",
      "Diazepam",
      "Atropin",
      "Epinefrin",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Meperidin, spinal anestezi sonrası gelişen shivering için en etkili tedavi yöntemidir. %95 başarı oranı vardır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki lokal anesteziklerden hangisinin epidural anestezide en uzun etki süresine sahiptir?",
    options: [
      "Lidokain",
      "Prilokain",
      "Bupivakain",
      "Ropivakain",
      "Levobupivakain",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Bupivakain, epidural anestezide en uzun etki süresine sahiptir (4-8 saat). Diğerleri daha kısa etki süresine sahiptir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'urinary retention' (idrar retansiyonu) için en uygun yaklaşım nedir?",
    options: [
      "Foley kateter takmak",
      "Diüretik vermek",
      "Sıvı kısıtlaması yapmak",
      "Mesane masajı yapmak",
      "Beklemek",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Spinal anestezi sonrası idrar retansiyonu gelişirse, mesane distansiyonunu önlemek için Foley kateter takılmalıdır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'catheter migration' (kateter yer değiştirmesi) için en uygun yaklaşım nedir?",
    options: [
      "Kateteri daha derine itmek",
      "Kateteri çekmek",
      "Kateteri sabitlemek",
      "Yeni kateter takmak",
      "Beklemek",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural kateter yer değiştirirse, yanlış pozisyonda ilaç verilme riski nedeniyle çekilmelidir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'postdural puncture headache' (PDPH) için en uygun önleyici yaklaşım nedir?",
    options: [
      "Kalın iğne kullanmak",
      "İnce, kalem ucu iğne kullanmak",
      "Hızlı enjeksiyon yapmak",
      "Yan pozisyonda uygulamak",
      "Yüksek doz lokal anestezik kullanmak",
    ],
    correctAnswerIndex: 1,
    explanation:
        "İnce, kalem ucu iğneler (Whitacre, Sprotte) kullanmak, PDPH riskini azaltan en etkili önleyici yaklaşımdır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural abscess' (epidural apse) için en uygun tanı yöntemi hangisidir?",
    options: [
      "X-ray",
      "CT scan",
      "MRI",
      "Ultrasonografi",
      "Laboratuvar testleri",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Epidural apse tanısı için en duyarlı ve özgül yöntem MRI'dır. Erken tanı ve tedavi nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'transient neurologic symptoms' (TNS) için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Steroid",
      "NSAID",
      "Antibiyotik",
      "Antikoagülan",
      "Beklemek",
    ],
    correctAnswerIndex: 1,
    explanation:
        "TNS için en uygun tedavi NSAID'dir. Semptomlar genellikle 1-2 gün içinde kendiliğinden düzelir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural hematoma' için en uygun tanı yöntemi hangisidir?",
    options: [
      "X-ray",
      "CT scan",
      "MRI",
      "Ultrasonografi",
      "Laboratuvar testleri",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Epidural hematoma tanısı için en duyarlı ve özgül yöntem MRI'dır. Acil tanı ve tedavi nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'cauda equina syndrome' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi dekompresyon",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Cauda equina sendromu için en uygun tedavi cerrahi dekompresyondur. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural fibrosis' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Cerrahi tedavi",
      "Steroid enjeksiyonu",
      "Fizik tedavi",
      "Antibiyotik tedavisi",
      "Beklemek",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Epidural fibrosis için en uygun tedavi fizik tedavidir. Cerrahi tedavi sadece ciddi vakalarda düşünülür.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'arachnoiditis' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Cerrahi tedavi",
      "Fizik tedavi",
      "Beklemek",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Arachnoiditis için en uygun tedavi steroid tedavisidir. Erken tanı ve tedavi nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space infection' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Antibiyotik tedavisi",
      "Cerrahi drenaj",
      "Steroid tedavisi",
      "Fizik tedavi",
      "Beklemek",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Epidural space enfeksiyonu için en uygun tedavi antibiyotik tedavisidir. Ciddi vakalarda cerrahi drenaj gerekebilir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'meningitis' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Antibiyotik tedavisi",
      "Steroid tedavisi",
      "Cerrahi tedavi",
      "Fizik tedavi",
      "Beklemek",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Meningitis için en uygun tedavi antibiyotik tedavisidir. Erken tanı ve tedavi mortalite riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space bleeding' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Antikoagülan tedavisi",
      "Cerrahi drenaj",
      "Steroid tedavisi",
      "Fizik tedavi",
      "Beklemek",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space kanaması için en uygun tedavi cerrahi drenajdır. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'spinal cord injury' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Spinal kord yaralanması için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space tumor' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Kemoterapi",
      "Radyoterapi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Beklemek",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Epidural space tümörü için en uygun tedavi cerrahi tedavidir. Erken tanı ve tedavi prognozu iyileştirir.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space cyst' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space kisti için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space granuloma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space granüloma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space lipoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space lipoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space hemangioma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space hemanjioma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space meningioma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space meningioma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space neurofibroma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space nörofibroma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space ependymoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space ependymoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space astrocytoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space astrositoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space oligodendroglioma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space oligodendroglioma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space medulloblastoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space medulloblastoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space glioblastoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space glioblastoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space chordoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space chordoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space teratoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space teratoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space dermoid cyst' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space dermoid kisti için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space epidermoid cyst' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space epidermoid kisti için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space arachnoid cyst' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space araknoid kisti için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space colloid cyst' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space kolloid kisti için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space pineal cyst' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space pineal kisti için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space Rathke's cleft cyst' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space Rathke's cleft kisti için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space craniopharyngioma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space kraniofaringioma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space pituitary adenoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space hipofiz adenomu için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space acoustic neuroma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space akustik nöroma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space vestibular schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space vestibüler schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space trigeminal schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space trigeminal schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space facial nerve schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space fasiyal sinir schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space glossopharyngeal schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space glossofaringeal sinir schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space vagus nerve schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space vagus sinir schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space accessory nerve schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space aksesuar sinir schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space hypoglossal nerve schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space hipoglossal sinir schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space optic nerve glioma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space optik sinir glioması için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space oculomotor nerve schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space okülomotor sinir schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space trochlear nerve schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space troklear sinir schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space abducens nerve schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space abdusens sinir schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space trigeminal nerve schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space trigeminal sinir schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space facial nerve schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space fasiyal sinir schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası gelişen 'epidural space vestibulocochlear nerve schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space vestibülokoklear sinir schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space glossopharyngeal nerve schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space glossofaringeal sinir schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
  Question(
    question:
        "Epidural anestezi sonrası gelişen 'epidural space vagus nerve schwannoma' için en uygun tedavi yöntemi hangisidir?",
    options: [
      "Konservatif tedavi",
      "Cerrahi tedavi",
      "Steroid tedavisi",
      "Antibiyotik tedavisi",
      "Fizik tedavi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural space vagus sinir schwannoma için en uygun tedavi cerrahi tedavidir. Erken müdahale nörolojik sekel riskini azaltır.",
    category: "Spinal, Epidural ve Kaudal Bloklar",
    difficulty: 2,
  ),
];
