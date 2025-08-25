import '../models/question.dart';

final List<Question> geriatricAnesthesiaQuestions = <Question>[
  Question(
    question:
        "Yaşlı bireylerde anestezik ajanlara artan duyarlılık aşağıdakilerden hangisiyle en iyi açıklanabilir?",
    options: [
      "Beyin kitlelerinin küçülmesi",
      "Artan santral sinir sistemi geçirgenliği",
      "Azalmış nörotransmitter düzeyleri",
      "Artmış kas–yağ oranı",
      "Artmış kan hacmi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "GABA gibi nörotransmitter düzeylerinde azalma, anestezik ilaçlara karşı duyarlılığı artırır. Yaşla birlikte ilaç gereksinimi azalır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, yaşlılarda MAC (Minimum Alveolar Konsantrasyon) ile ilgili doğrudur?",
    options: [
      "Yaşla birlikte MAC artar",
      "40 yaşından sonra her dekadda %6 artar",
      "MAC yaşla birlikte %30 oranında artar",
      "40 yaş sonrası her dekadda %6 azalır",
      "Yaş MAC'ı etkilemez",
    ],
    correctAnswerIndex: 3,
    explanation:
        "40 yaş sonrası her 10 yılda MAC yaklaşık %6 azalır. Yaşlı hastalarda daha az inhalasyon ajanı yeterli olur.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Geriatrik hastalarda spinal anestezi sonrası hipotansiyon riskini artıran en önemli faktör nedir?",
    options: [
      "Yağ dokusunun azalması",
      "Yüksek BOS basıncı",
      "Azalmış baroreseptör duyarlılığı",
      "Artmış intravasküler volüm",
      "Düşük lokal anestezik duyarlılığı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Baroreseptör reflekslerinin zayıflaması, spinal anestezi sonrası kompansatuar yanıtları yavaşlatır, bu da hipotansiyona yatkınlık yaratır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlılarda postoperatif bilişsel disfonksiyon (POCD) ile ilgili aşağıdakilerden hangisi yanlıştır?",
    options: [
      "Genellikle geçici ve düzelebilir bir tablodur",
      "Yaş arttıkça risk artar",
      "İntraoperatif hipotansiyon riski artırır",
      "Nörodejeneratif hastalıklar predispozisyon oluşturabilir",
      "Sevofluran kullanımı kesin olarak koruyucudur",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Sevofluranın POCD üzerine koruyucu etkisi kanıtlanmamıştır. Tüm volatil ajanlar potansiyel risk taşıyabilir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, yaşlı bireylerde renal fonksiyon değişikliği ile doğrudan ilişkilidir?",
    options: [
      "Glomerüler filtrasyon artar",
      "Kreatinin düzeyi her zaman yükselir",
      "Serum kreatinin normal olsa bile GFR düşük olabilir",
      "Renal perfüzyon artar",
      "Tubüler fonksiyonlar artar",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaşlılarda kas kütlesi azaldığı için kreatinin düzeyi normal görünebilir, fakat GFR düşmüş olabilir. Bu nedenle eGFR hesaplaması önemlidir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlılarda inhalasyon anestezi kullanımı sırasında en çok dikkat edilmesi gereken durum aşağıdakilerden hangisidir?",
    options: [
      "Yüksek ventilasyon ihtiyacı",
      "Artmış MAC ihtiyacı",
      "Hızlı eliminasyon",
      "Kümülatif kardiyodepresif etki",
      "Azalmış pulmoner emilim",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Volatil ajanların kardiyodepresif etkisi, yaşlı bireylerde birikir ve belirgin hale gelir → düşük dozda dikkatli kullanım gerekir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlı bireylerde nöromüsküler blokerlerin etkisinin uzamasına en çok neden olan durum aşağıdakilerden hangisidir?",
    options: [
      "Kas kitlesinin artması",
      "Artmış plazma esteraz aktivitesi",
      "Azalmış hepatik ve renal klirens",
      "Yüksek plazma protein düzeyi",
      "Artmış nöromüsküler duyarlılık",
    ],
    correctAnswerIndex: 2,
    explanation:
        "NMB ajanlarının atılımı, karaciğer ve böbrek fonksiyonlarına bağlıdır → yaşlılarda bu organların yavaş çalışması, etki süresini uzatır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, geriatrik hastalarda spinal anestezide lokal anestezik dozunun azaltılmasının en temel nedenidir?",
    options: [
      "BOS basıncının artması",
      "Subaraknoid alanın genişlemesi",
      "Dural geçirgenliğin azalması",
      "Vertebral kemiklerde skleroz",
      "Subaraknoid alanda volüm azalması",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Yaşla birlikte epidural ve subaraknoid alanlar daralır, bu da aynı dozun daha yaygın blok oluşturmasına neden olur → doz düşürülmelidir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, geriatrik hastada postoperatif deliryum riskini azaltabilecek bir yaklaşımdır?",
    options: [
      "Derin anestezi sağlamak",
      "Preop benzodiazepin vermek",
      "Hızlı ekstübasyon",
      "Kafein yüklemesi",
      "Ağrının yeterince kontrolü",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Ağrının kontrol edilmemesi, deliryumu tetikler. Multimodal analjezi ve iyi ağrı yönetimi deliryum riskini azaltır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, yaşlılarda serebral otoregülasyonun bozulmasının sonucu olarak ortaya çıkabilir?",
    options: [
      "Renal perfüzyonda artış",
      "Bilinç değişikliği ve serebral iskemiler",
      "Hipotansiyona karşı kompansasyon",
      "Arteriyel tonus artışı",
      "Göz içi basıncında artış",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Otokontrolün bozulması, ani basınç düşüşlerinde serebral perfüzyonun azalmasına neden olur → iskemi ve konfüzyon gelişebilir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, yaşlı hastalarda total intravenöz anestezi (TIVA) uygulamasında doz ayarlamasında en önemli faktördür?",
    options: [
      "Plazma pH'ı",
      "Kan/yağ dağılım katsayısı",
      "İlaçların santral dağılım volümü",
      "Kardiyak output",
      "Nefron sayısı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Kardiyak output azalırsa, ilaçların santral sinir sistemine ulaşımı ve dağılımı etkilenir → doz ve hız yavaş verilmelidir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, yaşlı bireyde bupivakain toksisitesi riskini artıran bir özelliktir?",
    options: [
      "Artmış karaciğer enzim aktivitesi",
      "Artmış myelin kılıf kalınlığı",
      "Azalmış protein bağlanması",
      "Azalmış BOS pH'ı",
      "Artmış kan hacmi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaşlılarda plazma protein düzeyleri azalır → serbest bupivakain fraksiyonu artar → toksisite riski yükselir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlı bireylerde anestezi sonrası ateşli olmayan konfüzyon, yönelim bozukluğu, halüsinasyon gibi belirtiler en olası olarak hangi duruma işaret eder?",
    options: [
      "Sepsis",
      "Postdural ponksiyon baş ağrısı",
      "Postoperatif deliryum",
      "Metabolik ensefalopati",
      "Parkinson krizi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Postoperatif deliryum, yaşlılarda çok sık görülür → ani başlayan, genellikle ateşsiz, fluktuan bilinç bozukluğu ile seyreder.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, yaşlı hastalarda inhalasyon anesteziklerinin etki süresinin uzamasının en olası nedenidir?",
    options: [
      "Artmış akciğer kompliansı",
      "Yüksek FRC",
      "Azalmış alveoler ventilasyon",
      "Artmış difüzyon kapasitesi",
      "Solunum hızında artış",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaşlılarda alveoler ventilasyon azalır, bu da inhalasyon anesteziklerinin alveolden kana geçişini ve atılımını geciktirir → etki süresi uzar.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlılarda hipotermiye yatkınlık en çok hangi fizyolojik değişiklikle ilişkilidir?",
    options: [
      "Artmış periferal kan akımı",
      "Azalmış kas kütlesi",
      "Artmış metabolik hız",
      "Tirotropin düzeylerinde artış",
      "Deri altı yağ dokusunda artış",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Kas kitlesinin azalması, ısı üretimini azaltır ve ısıyı koruma kapasitesini bozar → yaşlılar hipotermiye daha yatkındır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, geriatrik hastada preoperatif değerlendirme sırasında mutlaka sorgulanmalıdır?",
    options: [
      "Oksijen doygunluğu",
      "Kas kuvveti",
      "Günlük yaşam aktiviteleri (ADL)",
      "Vücut kitle indeksi",
      "Deri turgoru",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaşlılarda fonksiyonel kapasite (ör. merdiven çıkabilme, günlük aktiviteler) perioperatif riskin önemli göstergesidir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, yaşlı bireylerde farmakodinamik değişikliklerden biri olarak kabul edilir?",
    options: [
      "Artmış gastrointestinal emilim",
      "Artmış reseptör duyarlılığı",
      "Karaciğerde artmış enzim aktivitesi",
      "Azalmış lipofilik ilaç dağılımı",
      "İlaçların bağlanma oranının artması",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Yaşlılarda bazı reseptör sistemlerinde (ör. GABA, opioid) duyarlılık artabilir, bu da daha düşük dozda etki alınmasına neden olur.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki ilaçlardan hangisinin, yaşlılarda deliryum riskini artırma potansiyeli en yüksektir?",
    options: [
      "Fentanil",
      "Parasetamol",
      "Deksametazon",
      "Midazolam",
      "Ondansetron",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Benzodiazepinler, özellikle yaşlı bireylerde postoperatif deliryum riskini artırır → mümkünse kaçınılmalıdır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, yaşlılarda anestezik ajanların dağılım hacmini değiştiren faktörlerden biridir?",
    options: [
      "Azalmış plazma hacmi",
      "Artmış total vücut suyu",
      "Artmış kas kütlesi",
      "Azalmış yağ dokusu",
      "Artmış plazma proteini",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Plazma hacmi azalır, lipofilik ilaçlar yağ dokusunda birikir, hidrofilik ilaçlar ise daha sınırlı dağılım gösterir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, geriatrik hastalarda opioidlerin dikkatli kullanılmasını gerektiren başlıca risklerden biridir?",
    options: [
      "Uzun etki süreleri",
      "Hiperkalemiye yol açmaları",
      "Rebound ağrı yapmaları",
      "Nefrotoksik etkileri",
      "Solunum depresyonuna yatkınlık",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Yaşlılarda solunum rezervi düşüktür, opioidler ise doz bağımlı solunum depresyonu yapabilir → dikkatli doz titrasyonu gerekir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki anestezik ilaçlardan hangisi, yaşlı bireylerde daha az kardiyodepresif etkiye sahip olması nedeniyle tercih edilir?",
    options: [
      "Propofol",
      "Ketamin",
      "Sevofluran",
      "Halotan",
      "Etomidat",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Etomidat, hemodinamik stabiliteyi korur, özellikle yaşlı ve kardiyovasküler riski yüksek hastalarda güvenle kullanılabilir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Geriatrik bireylerde anestezi sonrası serebral fonksiyonların geç toparlanmasının nedeni en olası olarak hangisidir?",
    options: [
      "Artmış BOS sirkülasyonu",
      "Nöronal plastisitenin artması",
      "Azalmış beyin hacmi ve metabolizması",
      "Hipoglisemiye tolerans artışı",
      "Arttırılmış GABA reseptör sayısı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaşla birlikte beyin hacmi ve metabolik aktivite azalır → ilaçlara daha duyarlı hale gelir ve toparlanma süreci uzar.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlı bireylerde görülen postoperatif idrar retansiyonu en çok hangi faktörle ilişkilidir?",
    options: [
      "İntraoperatif hipotermi",
      "Epidural analjezi uygulanması",
      "Azalmış ADH düzeyi",
      "Artmış kreatinin klirensi",
      "Hipoalbuminemi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural ve spinal anesteziler, parasempatik inhibisyonla detrusor kas aktivitesini baskılar → idrar retansiyonuna neden olabilir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki fizyolojik parametrelerden hangisi, yaşla birlikte anlamlı olarak artmaz?",
    options: [
      "Yağ dokusu",
      "Lipofilik ilaçların dağılım hacmi",
      "Total vücut suyu",
      "İlaçların yarılanma ömrü",
      "Reseptör duyarlılığı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaşla birlikte total vücut suyu azalır. Diğer seçenekler yaşla birlikte artabilir ya da etkilenebilir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, geriatrik hastada epidural kateter yerleştirilmesini zorlaştırabilecek anatomik değişikliklerden biridir?",
    options: [
      "Ligamentum flavum kalınlaşması",
      "İntervertebral disk yüksekliğinin artması",
      "Artmış spinal kan akımı",
      "Vertebral osteofit ve dejeneratif değişiklikler",
      "Lomber lordozun artması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Dejeneratif değişiklikler ve osteofitler, vertebral aralıkların daralmasına neden olur → epidural giriş zorlaşır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumlardan hangisinde, yaşlı bireyde spinal anesteziden sonra yüksek blok riski artar?",
    options: [
      "Epidural hematom",
      "Lomber disk hernisi",
      "Azalmış BOS volümü",
      "Multipl skleroz",
      "Hiperhidratasyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaşlılarda BOS hacmi azalır → aynı miktarda lokal anestezik daha yüksek seviyelere ulaşabilir → yüksek blok riski artar.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, geriatrik hastalarda anestezik ilaçlara artmış duyarlılığı açıklayan farmakodinamik bir değişikliktir?",
    options: [
      "Azalmış santral sinir sistemi geçirgenliği",
      "Artmış kan hacmi",
      "Reseptör sayısının azalması",
      "Azalmış reseptör regülasyonu",
      "Reseptör düzeyinde artmış yanıt",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Yaşlılarda reseptör düzeyinde artmış yanıt, yani farmakodinamik duyarlılık artışı, birçok ilaç için doz ihtiyacını azaltır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlı hastada epidural anestezi sonrası hipotansiyon gelişirse, ilk müdahale aşağıdakilerden hangisi olmalıdır?",
    options: [
      "Dopamin infüzyonu",
      "Trendelenburg pozisyonu",
      "IV sıvı yüklemesi",
      "Adrenalin bolus",
      "Deksametazon verilmesi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Epidural blok sonrası vazodilatasyon olur, yaşlılarda tolerans düşük olabilir → ilk adım sıvı yüklemesidir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, yaşlılarda inhalasyon anestezisi sırasında alveoler gaz değişimini olumsuz etkileyen bir faktördür?",
    options: [
      "Artmış tidal volüm",
      "Azalmış ölü boşluk",
      "Artmış alveol–arteriyel oksijen gradienti",
      "Artmış vital kapasite",
      "Artmış akciğer elastikiyeti",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaşla birlikte alveol–arteriyel O₂ gradyenti artar → oksijen değişimi bozulur.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, geriatrik hastalarda postoperatif komplikasyon riskini öngörmede en yararlı klinik ölçütlerden biridir?",
    options: [
      "Kan grubu",
      "Hastanın yaşı",
      "Günlük yaşam aktiviteleri ve kırılganlık değerlendirmesi",
      "Ağırlık boy oranı",
      "Operasyonun süresi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Frailty (kırılganlık) ve fonksiyonel kapasite, yaşlılarda komplikasyon riskini en iyi yansıtan parametrelerdendir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi yaşlanma ile birlikte kardiyovasküler sistemde görülen değişikliklerden biridir?",
    options: [
      "Artmış β-adrenerjik yanıt",
      "Ejektif fraksiyon artışı",
      "Arteriyel elastisite artışı",
      "Diastolik disfonksiyon",
      "Kalp atım hızında artış",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Yaşlanmayla birlikte myokardiyal gevşeme azalır, bu da diastolik disfonksiyona yol açar. Sistolik fonksiyon genellikle korunur.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Geriatrik hastada baroreseptör yanıtı nasıl etkilenir?",
    options: [
      "Artar",
      "Değişmez",
      "Azalır",
      "Hipotansiyon riskini azaltır",
      "Kalp hızına etkisi yoktur",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaşlanmayla birlikte baroreseptör hassasiyeti azalır, bu da ortostatik hipotansiyon ve hemodinamik dengesizlik riskini artırır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlılarda solunum sistemi ile ilgili aşağıdakilerden hangisi doğrudur?",
    options: [
      "Vital kapasite artar",
      "FRC azalır",
      "Anesteziye tolerans artar",
      "Akciğer kompliyansı artar",
      "Oksijen difüzyonu artar",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Yaşlanma ile akciğer elastikiyeti azalır, kompliyansı artar, ancak gaz değişim kapasitesi azalır → hipoksemi riski yükselir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi yaşlı hastalarda opioid kullanımında artmış duyarlılığın temel nedenidir?",
    options: [
      "Artmış plazma protein düzeyi",
      "Artmış renal klirens",
      "Azalmış hepatik metabolizma",
      "Artmış GABA aktivitesi",
      "Artmış kas kitlesi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Hepatik metabolizma yaşla azalır, bu da opioidlerin yarı ömrünü uzatır ve etkilerine karşı duyarlılığı artırır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi yaşlılarda hipotermiye yatkınlığın artmasının bir nedenidir?",
    options: [
      "Termoregülatuvar merkez duyarlılığının artması",
      "Deri altı yağ dokusunun artması",
      "Periferik vazokonstriksiyonun etkinliği azalması",
      "Tiroksin düzeyinin artması",
      "Hipermetabolizma",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaşla birlikte periferik vazokonstriksiyon cevabı zayıflar, bu da ısı kaybını artırır ve hipotermiye yatkınlığı artırır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlı bireylerde midazolam gibi benzodiazepinlerin kullanımında aşağıdakilerden hangisi doğrudur?",
    options: [
      "Eliminasyon hızlanır",
      "Tolerans gelişimi hızlıdır",
      "Etki süresi kısadır",
      "Sedatif etkiye duyarlılık artar",
      "Doz ihtiyacı artar",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Yaşlı hastalar benzodiazepinlerin sedatif etkilerine daha duyarlıdır, bu nedenle doz azaltılmalıdır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi yaşlılarda FRC (fonksiyonel rezidüel kapasite) ile ilgili doğrudur?",
    options: [
      "Azalır",
      "Artar",
      "Değişmez",
      "Vital kapasite ile ters orantılıdır",
      "Yaşla azalır, eforla artar",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Yaşla birlikte akciğer dokusunda elastisite azalır, bu durum FRC'nin artmasına neden olur. Ancak gaz değişimi bozulur.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Geriatrik hastalarda kas kitlesinin azalması aşağıdaki durumların hangisine neden olur?",
    options: [
      "Artmış kas gevşetici ihtiyacı",
      "Artmış metabolizma hızı",
      "İlaçların plazma konsantrasyonunun azalması",
      "Suda çözünen ilaçların dağılım hacminin azalması",
      "Artmış kreatinin üretimi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Kas kitlesi azaldıkça, suda çözünen ilaçların dağılım hacmi de azalır, bu da ilaç konsantrasyonunu artırabilir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlı hastalarda nöroaksiyel blok sırasında daha yaygın blok oluşmasının en önemli nedeni nedir?",
    options: [
      "Sinirlerin direncinin artması",
      "Yağ doku hacminin artması",
      "BOS hacminin azalması",
      "Epidural aralığın daralması",
      "Epidural venöz dolgunluğun azalması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "BOS hacminin azalması, lokal anesteziklerin daha geniş yayılımına ve yaygın blok oluşmasına neden olur.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlı bireylerde spinal anestezi sonrası hipotansiyon gelişme riski neden artar?",
    options: [
      "Sempatik tonusun artması",
      "Parasempatik sistemin baskın olması",
      "Baroreflekslerin zayıf olması",
      "Sistolik fonksiyonun azalması",
      "Sinüs düğümünün hiperaktif olması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Barorefleks cevabı yaşla azalır, bu da hipotansiyona karşı kompansatuar mekanizmaları zayıflatır → spinal sonrası hipotansiyon riski artar.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi yaşlı hastalarda anesteziye bağlı bradikardi riskini artıran faktörlerden biridir?",
    options: [
      "Artmış sempatik yanıt",
      "Kolinerjik reseptör azalması",
      "Parasempatik aktivitenin artması",
      "Azalmış vagal tonus",
      "Atriyal reseptörlerin artması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaşlanmayla birlikte parasempatik baskınlık artabilir, bu da bradikardiye eğilim yaratabilir. Özellikle refleks cevaplardaki değişimler etkilidir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Geriatrik hastada anesteziye bağlı olarak görülen deliryumun yönetiminde ilk basamak hangisidir?",
    options: [
      "Antipsikotik başlamak",
      "Yoğun sedasyon sağlamak",
      "Altta yatan nedeni düzeltmek",
      "Spinal anesteziye geçmek",
      "GABA agonisti vermek",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Deliryum genellikle multifaktöriyeldir. Öncelikle hipoksi, hipoglisemi, elektrolit dengesizliği, enfeksiyon gibi nedenler araştırılmalı ve tedavi edilmelidir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi yaşlı bireyde en sık görülen postoperatif solunum komplikasyonudur?",
    options: [
      "Pulmoner emboli",
      "Bronkospazm",
      "Atelektazi",
      "Laringospazm",
      "Hiperventilasyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Atelektazi, yaşla birlikte azalan solunum rezervleri ve azalmış öksürük refleksi nedeniyle yaşlılarda en sık görülen postoperatif solunum komplikasyonudur.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi yaşlı bireyde sistemik opioid kullanımının en sık yan etkisidir?",
    options: [
      "İshal",
      "Hipotermi",
      "Solunum depresyonu",
      "Kas rijiditesi",
      "Polidipsi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Opioidler, yaşlılarda daha belirgin solunum depresyonuna neden olabilir. Bu nedenle doz titrasyonu önemlidir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi yaşlı bireylerde kas içi enjeksiyonların tercih edilmemesinin en önemli nedenidir?",
    options: [
      "Kas kitlesinin artmış olması",
      "Enjeksiyon sonrası hipotermi riski",
      "Emilim yavaş ve düzensiz olması",
      "Alerjik reaksiyon gelişme olasılığı",
      "Damar içi enjeksiyon riski",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaşla birlikte kas kitlesi ve kan akımı azalır, bu da kas içi enjeksiyonların emilimini yavaşlatır ve etkisiz hale getirebilir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi yaşlı bireylerde entübasyonu zorlaştıran anatomik bir değişikliktir?",
    options: [
      "Hyoid kemiğin yukarı yerleşmesi",
      "Boyun fleksibilitesinin artması",
      "Dişsizlik",
      "Boyun hareket açıklığının azalması",
      "Trakeanın öne yer değişimi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Yaşla birlikte servikal omurga fleksibilitesi azalır, bu da boyun ekstansiyonu ve entübasyon pozisyonunun alınmasını zorlaştırır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki ilaçlardan hangisi yaşlılarda deliryum riskini artırabilir?",
    options: [
      "Parasetamol",
      "Morfin",
      "Sevofluran",
      "Antikolinerjikler",
      "Lidokain",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Antikolinerjik ilaçlar, asetilkolin inhibisyonu yaparak deliryumu tetikleyebilir, özellikle yaşlı ve bilişsel bozukluğu olan bireylerde dikkat edilmelidir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi yaşla birlikte daha az değişiklik gösteren  bir fizyolojik özelliktir?",
    options: [
      "Böbrek fonksiyonu",
      "Serebral kan akımı",
      "Karaciğer kan akımı",
      "Plazma protein seviyesi",
      "MAC değeri",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Plazma protein seviyesi (özellikle albümin) yaşla minimal değişiklik gösterir, diğer parametreler ise genellikle azalır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Sevofluran kullanımı yaşlılarda hangisiyle daha yakından ilişkilidir?",
    options: [
      "Yüksek MAC ihtiyacı",
      "Renal toksisite",
      "Uzamış ajitasyon",
      "Daha hızlı uyanma",
      "Postoperatif tremor",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Sevofluran, düşük çözünürlük katsayısı sayesinde yaşlılarda hızlı uyanma sağlar. Bu da yaşlı popülasyon için avantaj sağlar.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Geriatrik hastalarda mortaliteyle en çok ilişkili postoperatif komplikasyon aşağıdakilerden hangisidir?",
    options: [
      "Deliryum",
      "Solunum depresyonu",
      "Pulmoner emboli",
      "Postoperatif bilişsel disfonksiyon",
      "Sepsis",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Postoperatif deliryum, hem kısa hem uzun dönem mortaliteyle güçlü şekilde ilişkilidir ve sık görülür → erken tanı ve önlem hayati önem taşır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlanma ile en belirgin değişen solunum parametresi hangisidir?",
    options: [
      "PaO₂",
      "FEV₁",
      "FVC",
      "FRC",
      "Solunum sayısı",
    ],
    correctAnswerIndex: 0,
    explanation:
        "PaO₂ = 100 - (yaş/3) formülüyle hesaplanır, diğerleri daha yavaş değişir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Geriatrik hastalarda en sık görülen perioperatif kardiyak komplikasyon hangisidir?",
    options: [
      "Ventriküler taşikardi",
      "Atriyal fibrilasyon",
      "Komplet kalp bloğu",
      "Miyokard enfarktüsü",
      "Kardiyak tamponad",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Postoperatif AF insidansı %10-20 ile en sık görülendir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlı hastada opioid kullanımında hangisi yanlıştır?",
    options: [
      "Başlangıç dozu %50 azaltılmalı",
      "Titrasyonla doz ayarlanmalı",
      "Morfin yerine fentanil tercih edilmeli",
      "Renal klirens kontrol edilmeli",
      "Oral yoldan kaçınılmalı",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Oral opioidler güvenle kullanılabilir, doz ayarlaması gerekir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Frailty indeksi hangi parametreyi içermez?",
    options: [
      "Yürüme hızı",
      "Kas gücü",
      "Kan basıncı",
      "Fiziksel aktivite",
      "Yorgunluk hissi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kan basıncı frailty kriterlerinde yer almaz.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Geriatrik hastalarda en sık görülen elektrolit bozukluğu hangisidir?",
    options: [
      "Hipernatremi",
      "Hiponatremi",
      "Hiperkalemi",
      "Hipokalsemi",
      "Hipermagnezemi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Hiponatremi yaşlılarda %15-30 sıklıkla görülür.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlı hastada postoperatif mortaliteyi en güçlü öngören faktör hangisidir?",
    options: [
      "ASA fiziksel durum sınıfı",
      "Cerrahi süresi",
      "Anestezi tekniği",
      "Preoperatif albumin düzeyi",
      "Hastanede kalış süresi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "ASA III-IV hastalarda mortalite riski 10 kat artar.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Geriatrik hastalarda inhalasyon anestezikleri ile ilgili hangisi doğrudur?",
    options: [
      "MAC değerleri artar",
      "Kardiyak depresyon riski azalır",
      "İndüksiyon süresi uzar",
      "Bronkodilatasyon etkisi kaybolur",
      "Nörotoksisite riski yoktur",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaşa bağlı azalmış alveoler ventilasyon nedeniyle indüksiyon uzar.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Geriatrik hastalarda en sık görülen böbrek fonksiyon bozukluğu hangisidir?",
    options: [
      "Akut tübüler nekroz",
      "Prerenal azotemi",
      "Glomerülonefrit",
      "Nefrotik sendrom",
      "Renal arter stenozu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Hipovolemi ve ilaç toksisitesine bağlı prerenal yetmezlik sıktır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlı hastada propofol ile ilgili hangisi yanlıştır?",
    options: [
      "İndüksiyon dozu %30-50 azaltılmalı",
      "Kardiyak depresyon yapabilir",
      "Enjeksiyon ağrısı gençlere göre daha fazladır",
      "Postoperatif bulantı-kusmayı azaltır",
      "Yağ dokusunda birikim yapar",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaşlılarda enjeksiyon ağrısı daha az görülür.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Geriatrik hastalarda en sık görülen endokrinopatı hangisidir?",
    options: [
      "Diabetes mellitus",
      "Hipertiroidi",
      "Addison hastalığı",
      "Cushing sendromu",
      "Feokromositoma",
    ],
    correctAnswerIndex: 0,
    explanation:
        "65 yaş üstünde DM prevalansı %20-30'dur.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlı hastada postoperatif ağrı kontrolünde hangisi kontrendikedir?",
    options: [
      "Asetaminofen",
      "NSAİİ'ler",
      "Opioidler",
      "Rejyonel teknikler",
      "Gabapentinoidler",
    ],
    correctAnswerIndex: 1,
    explanation:
        "NSAİİ'ler böbrek fonksiyonları ve GİS için risk oluşturur.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlı hastada anestezi derinliği monitorizasyonunda hangisi kullanılabilir?",
    options: [
      "BIS",
      "Entropi",
      "SPI",
      "Narcotrend",
      "Hepsi",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Tüm monitorizasyon yöntemleri yaşlılarda kullanılabilir.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Geriatrik hastalarda sıvı tedavisinde hangisi doğrudur?",
    options: [
      "Agresif volüm yüklemesi yapılmalı",
      "Kristalloid yerine sadece kolloid kullanılmalı",
      "Dinamik parametrelere göre titrasyon yapılmalı",
      "Sıvı kısıtlaması uygulanmalı",
      "Hipertonik solüsyonlar tercih edilmeli",
    ],
    correctAnswerIndex: 2,
    explanation:
        "SVV, PPV gibi dinamik parametrelerle sıvı yönetimi yapılmalı.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlı hastada opioid seçiminde hangisi tercih edilmelidir?",
    options: [
      "Morfin",
      "Fentanil",
      "Remifentanil",
      "Meperidin",
      "Kodein",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Fentanil kısa etkili ve hemodinamik olarak daha stabil.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Geriatrik hastalarda en sık görülen gastrointestinal komplikasyon hangisidir?",
    options: [
      "Peptik ülser",
      "Akut kolesistit",
      "Postoperatif bulantı-kusma",
      "İleus",
      "Pankreatit",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Postoperatif ileus insidansı %10-30'dur.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlı hastada postoperatif mortaliteyi en çok artıran cerrahi türü hangisidir?",
    options: [
      "Katarakt cerrahisi",
      "Total kalça artroplastisi",
      "Abdominal aort anevrizma cerrahisi",
      "Transüretral rezeksiyon",
      "Meme cerrahisi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Major damar cerrahilerinde mortalite riski 5-10 kat artar.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Geriatrik hastalarda anestezi premedikasyonunda hangisi tercih edilmelidir?",
    options: [
      "Midazolam",
      "Diazepam",
      "Lorazepam",
      "Deksmedetomidin",
      "Premedikasyondan kaçınılmalı",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Benzodiazepinler deliryum riskini artırdığından kaçınılmalıdır.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yaşlı hastada en sık görülen postoperatif komplikasyon hangisidir?",
    options: [
      "Kardiyak arrest",
      "Pulmoner emboli",
      "Enfeksiyon",
      "Deliryum",
      "Yara iyileşme problemi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Postoperatif deliryum %15-50 ile en sık görülen komplikasyondur.",
    category: "Geriatrik Anestezi",
    difficulty: 2,
  ),
];
