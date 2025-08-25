import '../models/question.dart';

final List<Question> obstetricAnesthesiaQuestions = [
  Question(
    question: "Aşağıdaki anestezik ajanlardan hangisi, uterin tonusu belirgin şekilde azaltabilir ve postpartum hemoraji riskini artırabilir?",
    options: [
      "Sevofluran",
      "Lidokain",
      "Ketamin",
      "Fentanil",
      "Etomidat"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "İnhalasyon ajanları (özellikle sevofluran) uterin gevşeme yapar → kanama riski artar. Bu nedenle doğum sonrası dikkatle kullanılmalıdır.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdaki durumların hangisinde gebeye genel anestezi ile sezaryen uygulanması en uygundur?",
    options: [
      "Elektif sezaryen",
      "Epidural kateter mevcutsa",
      "Aktif kanama + şok tablosu",
      "Doğum analjezisi planlanan olgu",
      "Spinal anestezi başarısız olmuşsa ve vakit bolsa"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Hipotansiyon ve hipovolemi durumunda rejyonel anestezi kontrendikedir. Bu durumlarda genel anestezi tercih edilmelidir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Gebelerde mide boşalmasının gecikmesinden sorumlu olan ana mekanizma nedir?",
    options: [
      "Pilor spazmı",
      "Azalmış peristaltizm",
      "Artmış progesteron düzeyi",
      "Artmış parasempatik tonus",
      "Trombosit aktivasyonu"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Progesteron, düz kasları gevşetir → mide boşalması yavaşlar. Bu durum aspirasyon riskini artırır, özellikle genel anestezide dikkat gerektirir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, gebede hızlı entübasyon (RSI) uygulamasının gerekçelerinden biri değildir?",
    options: [
      "Artmış aspirasyon riski",
      "Hızlı oksijen tüketimi",
      "Artmış mide içeriği",
      "Azalmış dakik hacim",
      "Zor hava yolu riski"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Gebelikte dakik hacim artmıştır. RSI, artmış aspirasyon riski ve zor entübasyon ihtimali nedeniyle gebelerde yaygın olarak uygulanır.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Spinal anestezi sonrası hipotansiyon gelişen gebe hastada ilk yaklaşım aşağıdakilerden hangisi olmalıdır?",
    options: [
      "Dopamin başlamak",
      "Trendelenburg pozisyonu",
      "IV sıvı ve sol lateral tilt",
      "Furosemid vermek",
      "İntravenöz dekstroz"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Sıvı yüklemesi + uterusu vena kava basısından kurtarmak için sol lateral pozisyon, spinal hipotansiyon tedavisinin ilk basamağıdır.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, doğum sırasında epidural anesteziyle birlikte opioid kullanımının avantajlarından biridir?",
    options: [
      "Hipotansiyonu azaltır",
      "Doğum süresini kısaltır",
      "Lokal anestezik dozunu azaltır",
      "Uterin kontraksiyonları artırır",
      "Sezaryen oranını azaltır"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Opioid eklenmesi, lokal anestezik ihtiyacını azaltır, motor blok riskini düşürür ve daha konforlu analjezi sağlar.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdaki durumlardan hangisi, epidural anestezi için göreceli kontrendikasyon sayılır?",
    options: [
      "Sepsis",
      "Enfekte cilt bölgesi",
      "Koagülopati",
      "Trombositi 110.000/mm³ olan gebe",
      "Hasta reddi"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Trombosit sayısı >100.000/mm³ olduğunda çoğu kaynakta epidural yapılabilir denir. Ancak dikkatle izlenmesi gerekir → göreceli kontrendikasyon.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, gebelerde pulmoner aspirasyon riskini azaltmak için en yaygın kullanılan yöntemlerden biri değildir?",
    options: [
      "Sodyum sitrat verilmesi",
      "H2 reseptör antagonisti verilmesi",
      "Metoklopramid uygulanması",
      "Trendelenburg pozisyonu",
      "Hızlı entübasyon uygulanması"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Trendelenburg pozisyonu, intraabdominal basıncı artırır → aspirasyon riskini artırabilir. Diğer seçenekler koruyucu yöntemlerdir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, doğum eylemi sırasında epidural analjezinin doğum süreci üzerindeki etkilerinden biri değildir?",
    options: [
      "Birinci evrede ağrıyı azaltır",
      "Uterin kasılmaları baskılar",
      "Sezaryen oranını artırmaz",
      "Fetal oksijenasyonu bozulmaz",
      "Doğum eylemini kabul edilebilir düzeyde uzatabilir"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Epidural analjezi, uterin kasılmaları baskılamaz; doğum eylemi üzerinde doğrudan inhibe edici etkisi yoktur. Hafif uzatma olabilir ama tolere edilebilir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, obstetrik epidural analjezi sırasında en sık kullanılan opioid ajanlardan biridir?",
    options: [
      "Remifentanil",
      "Sufentanil",
      "Meperidin",
      "Alfentanil",
      "Tramadol"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Sufentanil, etkili, hızlı başlangıçlı ve düşük dozlarda güvenli olduğu için epidural analjezide sık kullanılır.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, intrapartum dönemde epidural analjezi sonrası geçici motor blok gelişiminin en muhtemel nedenidir?",
    options: [
      "Epidural hematom",
      "Lokal anesteziğin yüksek konsantrasyonu",
      "Kateterin subaraknoid yerleşmesi",
      "Nörojenik şok",
      "Enfeksiyon"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Lokal anesteziklerin yüksek konsantrasyonu, motor sinir liflerini de bloke edebilir → geçici motor blok yapabilir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, preterm eylemde anestezik yönetimi etkileyebilecek önemli bir faktördür?",
    options: [
      "Azalmış uterin duyarlılık",
      "Artmış fetal oksijen ihtiyacı",
      "Plasental yetersizlik",
      "Fetal immün sistem aktivasyonu",
      "Amniyotik sıvının artması"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Preterm fetüs, daha duyarlıdır ve daha yüksek oksijen ihtiyacı vardır. Bu nedenle oksijenizasyon ve uteroplasental perfüzyon çok önemlidir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, epidural anestezi sonrası intravasküler enjeksiyonun erken belirtisidir?",
    options: [
      "Hipotermi",
      "Taşikardi ve kulakta çınlama",
      "Bradikardi",
      "Kas rijiditesi",
      "Mide bulantısı"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Lokal anesteziğin intravasküler verilmesi, santral sinir sistemi uyarı semptomlarına neden olur: metal tat, tinnitus, baş dönmesi, taşikardi.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Spinal anestezide kullanılan adrenalin katkısının en önemli etkisi aşağıdakilerden hangisidir?",
    options: [
      "Kan basıncını yükseltmek",
      "Motor blok süresini kısaltmak",
      "Sistemik toksisiteyi artırmak",
      "Lokal anesteziğin etkisini uzatmak",
      "Solunum depresyonu oluşturmak"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Adrenalin, vazokonstriktif etkisiyle lokal anesteziğin sistemik emilimini azaltır, böylece etki süresini uzatır.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, gebelikte mide asiditesini azaltmak için kullanılan ajanlardan biridir?",
    options: [
      "Metoklopramid",
      "Sodyum sitrat",
      "Sukralfat",
      "Halotan",
      "Atropin"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Sodyum sitrat, hızlı etkiyle mide içeriğini alkalileştirir → aspirasyon sırasında pulmoner asit hasarını azaltır.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisinin, gebelikte intratekal kullanımı nörotoksisite açısından risklidir ve önerilmez?",
    options: [
      "Lidokain",
      "Bupivakain",
      "Tetrakain",
      "Klorprokain",
      "Benzokain"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Benzokain, özellikle methemoglobinemi ve nörotoksisite riski nedeniyle intratekal kullanımı önerilmez.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Obstetrik anestezide kullanılan opioidlerle ilgili hangisi doğrudur?",
    options: [
      "Sistemik kullanımları sedasyon yapmaz",
      "Epidural opioidler fetal kalp hızını düşürür",
      "Epidural opioidler, lokal anesteziğin gereksinimini azaltır",
      "Spinal opioidlerin etkisi 30 saniye içinde başlar",
      "Epidural opioidler taşikardi yapar"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Opioidler, epidural anesteziye eklendiğinde lokal anesteziğin ihtiyacını azaltır ve daha etkili analjezi sağlar.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, gebede solunum fizyolojisinde görülen değişikliklerden biri değildir?",
    options: [
      "Artmış oksijen tüketimi",
      "Artmış tidal volüm",
      "Artmış rezidüel volüm",
      "Artmış dakika ventilasyonu",
      "Azalmış FRC"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Gebelikte diafram yukarı itilir, bu nedenle rezidüel volüm azalır. Diğer tüm seçenekler gebelikte gözlenen değişikliklerdir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, gebede artmış oksijen gereksiniminin en önemli nedenlerinden biridir?",
    options: [
      "Metabolik hızın artması",
      "Mide hacminin büyümesi",
      "Böbrek fonksiyonlarının azalması",
      "Akciğer kompliansının artması",
      "Artmış hematokrit"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Gebelikte metabolik hız %20–30 artar → oksijen ihtiyacı artar, bu durum anestezide oksijen desteğini kritik hale getirir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, doğum sırasında epidural anestezi sonrası motor blok derinleşmesinin en olası nedenidir?",
    options: [
      "Dilüe lokal anestezik kullanılması",
      "Epidural alana opioid verilmesi",
      "Kateterin subaraknoid alana kaçması",
      "Preeklampsi varlığı",
      "Epidural yerleşimin yetersiz olması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Epidural kateterin subaraknoid alana girmesi, spinal anesteziye benzer derin motor blok ile sonuçlanabilir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Obstetrik analjezi amacıyla epidural uygulamada en sık kullanılan kateter yerleştirme aralığı hangisidir?",
    options: [
      "T12–L1",
      "T10–T11",
      "L2–L3",
      "L3–L4",
      "L1–L2"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "L3–L4 aralığı, hem anatomik erişim kolaylığı sağlar hem de spinal kordun yukarıda olması nedeniyle güvenli giriş noktasıdır.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, epidural anestezi sonrası gelişen dural ponksiyona bağlı komplikasyonlardan biridir?",
    options: [
      "Motor blok derinliği azalması",
      "Postdural ponksiyon baş ağrısı",
      "Sezaryen oranında artış",
      "Hipoglisemi",
      "Uterin kasılma artışı"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Dura ponksiyonu sonrası BOS kaçağı olur → dural ponksiyon baş ağrısı en sık komplikasyondur.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, epidural analjezi uygulanmış bir doğum eyleminde maternal ateş artışına neden olabilir?",
    options: [
      "Lokal anestezik alerjisi",
      "Sefalopelvik uyumsuzluk",
      "Epidural uygulamanın kendisi",
      "Amniyotik sıvı artışı",
      "Epizyotomi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Bazı çalışmalarda epidural analjezinin doğrudan maternal ateş artışı ile ilişkili olduğu gösterilmiştir; mekanizma tam bilinmemekle birlikte proinflamatuvar yanıt olabilir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Epidural anestezi sonrası hipotansiyon gelişen gebede en uygun ilk vazopresör ajan hangisidir?",
    options: [
      "Dopamin",
      "Adrenalin",
      "Noradrenalin",
      "Fenilefrin",
      "Dobutamin"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Fenilefrin, uteroplasental perfüzyonu bozmadan arteriyel basıncı artırır, gebelikte hipotansiyon tedavisinde tercih edilir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Maternal hipotansiyonun fetal etkisi aşağıdakilerden hangisidir?",
    options: [
      "Fetal hipoksemi ve bradikardi",
      "Fetal taşikardi",
      "Fetal hiperkapni",
      "Fetal hipertansiyon",
      "Fetal konvülziyon"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Maternal hipotansiyon, uteroplasental perfüzyonun azalmasına, dolayısıyla fetal hipoksi ve bradikardiye yol açabilir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Epidural analjezi uygulanmış bir doğumda doğum ilerlemesi yavaşlarsa en olası neden nedir?",
    options: [
      "Servikal stenoz",
      "Uterin aşırı kontraktilite",
      "Anestezik maddenin uterin kas tonusunu azaltması",
      "Artmış oksitosin salınımı",
      "Fetal distres"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Epidural anestezi, sempatik blok ile birlikte rahim kas tonusunda azalma yapabilir. Bu da doğumun ikinci evresinin uzamasına neden olabilir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Eklampsi tedavisinde kullanılan ve anestezi yönetimini de etkileyen en önemli ilaç aşağıdakilerden hangisidir?",
    options: [
      "Diazepam",
      "Labetalol",
      "Hidralazin",
      "Magnezyum sülfat",
      "Furosemid"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Magnezyum sülfat, konvülziyonları önlemek ve nöroprotektif etki sağlamak amacıyla kullanılır. Ancak nöromüsküler blokaj ajanlarının etkisini artırır, bu nedenle anestezi sırasında dikkat gerektirir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Spinal anestezi sonrası gelişen bradikardinin temel nedeni nedir?",
    options: [
      "Ağrı kesilmesi",
      "Parasempatik aktivitenin artması",
      "Kardiyak outputun artması",
      "Venöz dönüşün azalması",
      "Respiratuvar alkaloz"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Spinal blok, venöz tonusu azaltır, venöz dönüş düşer ve bu durum baroreseptör yanıtı baskılanarak bradikardiye neden olabilir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Sezaryen sonrası postdural ponksiyon baş ağrısı en sık ne zaman ortaya çıkar?",
    options: [
      "İlk 6 saatte",
      "İlk 12 saatte",
      "24–48 saat içinde",
      "3–5 gün içinde",
      "1 hafta sonra"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Postdural ponksiyon baş ağrısı, tipik olarak 24–48 saat içinde ortaya çıkar ve ayağa kalkmakla artan, yatınca azalan karakterdedir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Epidural analjezi sırasında verilen ilaçların fetüs üzerine etkisini azaltmak için hangisi en etkilidir?",
    options: [
      "Doz aralıklarını azaltmak",
      "Adrenalin ile kombine etmek",
      "Lipofilik ilaçlar seçmek",
      "Yalnız opioid kullanmak",
      "İlaçları intratekal vermek"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Adrenalin, lokal anesteziklerin sistemik emilimini azaltır ve plasentaya geçişi düşürür.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Epidural anestezi ile spinal anesteziyi ayıran temel fark nedir?",
    options: [
      "Epiduralde daha hızlı etki başlar",
      "Spinal daha uzun etkilidir",
      "Epidural doz titrasyonu yapılabilir",
      "Spinalde daha az komplikasyon görülür",
      "Spinalde test dozu gereklidir"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Epidural anestezi, kateter üzerinden doz ayarlamaya olanak sağlar. Bu da kontrollü ve uzun süreli analjezi sağlar.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi spinal anestezide bacaklarda his kaybının yayılımını belirleyen en önemli faktördür?",
    options: [
      "Anestezik ajanın pH'ı",
      "Enjeksiyonun süresi",
      "BOS'un hacmi ve barisitesi",
      "Spinal sinirlerin çapı",
      "Kateterin uzunluğu"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Barisite (özgül ağırlık) ve BOS hacmi, spinal anestezide ilacın yayılımını etkileyen en önemli faktörlerdir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Spinal anestezide kullanılan lokal anesteziklerin etkisini uzatmak için en sık hangi ajan eklenir?",
    options: [
      "Atropin",
      "Midazolam",
      "Epinefrin",
      "Neostigmin",
      "Diazepam"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Epinefrin, vazokonstriktör etkisiyle lokal anesteziğin emilimini yavaşlatır ve etkisini uzatır. Özellikle spinal ve epidural anestezide sık kullanılır.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Doğumda epidural anestezi uygulanan bir hasta 10 cm dilate olduktan sonra ne zaman ıkınmaya yönlendirilmelidir?",
    options: [
      "Hemen",
      "30 dakika sonra",
      "Doğum ağrısı başlayınca",
      "Uterus kasılmaları zirvedeyken",
      "Fetal baş tam inmeden sonra"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Serviks tam dilate olduktan sonra hasta iknamaya başlanmalıdır. Epidural analjezi, bu süreçte aktif ıkınmayı engellemez.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Spinal anestezide hipotansiyonun önlenmesinde hangisi en etkili farmakolojik ajan olarak kullanılır?",
    options: [
      "Adrenalin",
      "Dopamin",
      "Efedrin",
      "Fenilefrin",
      "Noradrenalin"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Fenilefrin, saf alfa agonist etkisiyle arteriyel vazokonstriksiyon yaparak spinal anestezi sonrası oluşan hipotansiyonu etkili şekilde önler.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Epidural analjezi sırasında 'patchy block' (bölgesel etkisiz blok) gelişmesinin en olası nedeni nedir?",
    options: [
      "Yetersiz lokal anestezik doz",
      "Epidural hematom",
      "Kateterin doğru yerleştirilmemesi",
      "Lokal anestezik toksisitesi",
      "Annenin sol lateral pozisyonda olması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Epidural kateterin yanlış yerleştirilmesi, bazı dermatomlara etkisiz kalıp 'patchy block' gelişmesine neden olabilir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Obstetrik genel anestezide inhalasyon anesteziklerinin yüksek dozda kullanılması aşağıdaki risklerden hangisini artırır?",
    options: [
      "Fetal bradikardi",
      "Uterin kontraktilitenin artması",
      "Plasental perfüzyonun artması",
      "Uterin atoni ve postpartum hemoraji",
      "Hiperventilasyon"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Volatil anestezikler (özellikle halotan, sevofluran) yüksek dozlarda uterin gevşeme yapar, bu da postpartum kanama riskini artırır.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Preeklamptik bir hastada sezaryen planlanıyor. Trombosit sayısı 65.000/mm³ olan hastada en uygun anestezi yöntemi hangisidir?",
    options: [
      "Spinal anestezi",
      "Epidural anestezi",
      "Lokal infiltrasyon",
      "Genel anestezi",
      "İntratekal opioid"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Trombosit sayısı <75.000/mm³ olan hastalarda nöroaksiyel bloklar risklidir. Bu nedenle genel anestezi tercih edilir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Acil sezaryen gereken bir hastada hızlı entübasyon yapılacaksa, en uygun indüksiyon ajanı hangisidir?",
    options: [
      "Propofol",
      "Etomidat",
      "Ketamin",
      "Tiyopental",
      "Midazolam"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Tiyopental, hızlı etki başlangıcı ve kısa süresi nedeniyle acil sezaryenlerde tercih edilen klasik indüksiyon ajanıdır.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Obstetrik hastada hipotansiyona bağlı gelişen fetal bradikardide ilk müdahale nedir?",
    options: [
      "Oksijen verilmesi ve pozisyon değişikliği",
      "Atropin uygulanması",
      "Efedrin verilmesi",
      "Sezaryene geçmek",
      "Doğumu hızlandırmak"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Fetal bradikardi varsa öncelikle uteroplasental perfüzyon desteklenmeli, yani sol lateral pozisyon ve oksijen verilmelidir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdaki komplikasyonlardan hangisi epidural kan yaması (blood patch) sonrası en sık görülür?",
    options: [
      "Meningit",
      "İntrakraniyal kanama",
      "Enfeksiyon",
      "Bel ağrısı",
      "Koma"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Epidural blood patch sonrası bel ağrısı en sık görülen ama genellikle kendiliğinden geçen bir yan etkidir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Mekonyumlu amniyotik sıvı varlığında doğum sonrası bebeğe hangi komplikasyon açısından dikkat edilmelidir?",
    options: [
      "Hiperbilirubinemi",
      "Hipoglisemi",
      "Mekonyum aspirasyon sendromu",
      "Konjenital pnömoni",
      "Hipokalsemi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Mekonyum aspirasyon sendromu, doğumda mekonyumla kontamine sıvının solunmasıyla oluşur. Neonatal ventilasyon desteği gerekebilir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi nöroaksiyel blok sonrası geçici idrar retansiyonu gelişmesine en fazla neden olur?",
    options: [
      "Lokal anestezik konsantrasyonunun yüksek olması",
      "İlaçların adrenalinle verilmesi",
      "Epidural alanın geniş olması",
      "Spinal sinirlerin az uyarılması",
      "Hastanın aşırı susuz kalması"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Yüksek konsantrasyonlu lokal anestezikler, sakral sinirleri etkileyerek detrüsor kasının inhibisyonuna ve geçici idrar retansiyonuna neden olabilir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Obstetrik anestezide kullanılan bupivakainin toksisitesi en çok hangi sistemi etkiler?",
    options: [
      "Solunum",
      "Gastrointestinal",
      "Kardiyovasküler",
      "Hematolojik",
      "Endokrin"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Bupivakain, yüksek dozda veya yanlış yerleşimde kardiyotoksisiteye (aritmi, kardiyak arrest) neden olabilir. Toksisite durumunda lipid tedavisi uygulanmalıdır.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "İdeal epidural kateter yerleşim seviyesi aşağıdakilerden hangisidir?",
    options: [
      "T4",
      "T6",
      "T10–L1",
      "L2–L3",
      "S1–S2"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Epidural doğum analjezisi için ideal dermatomal blokaj seviyesi, T10–L1 arasıdır. Sezaryen için ise T4'e kadar çıkması gerekir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Gebelikte 'en erken değişen solunum parametresi' hangisidir?",
    options: [
      "Tidal volüm",
      "Solunum sayısı",
      "Fonksiyonel rezidüel kapasite",
      "PaO₂",
      "PaCO₂"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Tidal volüm 1. trimesterde %40 artar, FRC 2. trimesterde azalır.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Gebelikte 'minimum alveolar konsantrasyon (MAC)' nasıl değişir?",
    options: [
      "%40 artar",
      "%20 artar",
      "Değişmez",
      "%20 azalır",
      "%40 azalır"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Progesteron etkisiyle MAC %40 azalır.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "Epidural anestezide 'test dozu' için ideal lokal anestezik hangisidir?",
    options: [
      "%0.5 bupivakain",
      "%2 lidokain + epinefrin",
      "%0.75 ropivakain",
      "%0.25 levobupivakain",
      "%1 prilokain"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Epinefrinle birlikte %2 lidokain intravasküler enjeksiyonu tespit eder.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "'Aortokaval kompresyon' kaçıncı haftadan itibaren önem kazanır?",
    options: [
      "8. hafta",
      "12. hafta",
      "20. hafta",
      "28. hafta",
      "36. hafta"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "20. haftadan sonra belirginleşir, sol lateral dekübit zorunludur.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "'Postdural ponksiyon baş ağrısı (PDPH)' riskini en çok artıran faktör hangisidir?",
    options: [
      "22G spinal iğne",
      "25G Whitacre iğne",
      "27G Quincke iğne",
      "18G epidural iğne",
      "29G Sprotte iğne"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Kesici uçlu (Quincke) iğnelerde risk daha yüksektir.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "'Gebelikte kontrendike' olan ilaç hangisidir?",
    options: [
      "Ondansetron",
      "Metoklopramid",
      "NSAİİ (3. trimester)",
      "Ranitidin",
      "Heparin"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "NSAİİ'ler ductus arteriozusun erken kapanmasına neden olur.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "'Eklampsi' tedavisinde ilk seçenek hangisidir?",
    options: [
      "Diazepam",
      "Fenitoin",
      "Magnezyum sülfat",
      "Labetalol",
      "Hidralazin"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Magnezyum sülfat nöbet profilaksisi ve tedavisinde altın standart.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "'Plasenta previa'da kontrendike olan anestezi yöntemi hangisidir?",
    options: [
      "Genel anestezi",
      "Spinal anestezi",
      "Epidural anestezi",
      "Kombine spinal-epidural",
      "Rejyonel anestezi kontrendike değildir"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Kanama riski yüksekse genel anestezi tercih edilir, mutlak kontrendikasyon yoktur.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "'Uterin atoni' tedavisinde ilk seçenek hangisidir?",
    options: [
      "Metilergonovin",
      "Karboprost",
      "Oksitosin",
      "Misoprostol",
      "Traneksamik asit"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Oksitosin ilk basamak tedavidir, 5-10 IU IV bolus.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "'Gebelikte fizyolojik anemi' hangi dönemde belirginleşir?",
    options: [
      "4-8. haftalar",
      "10-14. haftalar",
      "20-24. haftalar",
      "28-32. haftalar",
      "36-40. haftalar"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Plazma volümü artışı 28-32. haftalarda pik yapar.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "'Epidural analjezi'nin doğum süresine etkisi nasıldır?",
    options: [
      "1. evreyi uzatır",
      "2. evreyi uzatır",
      "Her iki evreyi kısaltır",
      "Sadece 3. evreyi etkiler",
      "Hiçbir etkisi yoktur"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Epidural analjezi 2. evreyi ortalama 15-30 dakika uzatır.",
    category: "Obstetrik Anestezi",
  ),

  Question(
    question: "'Gebelikte en sık görülen ritim bozukluğu' hangisidir?",
    options: [
      "Atriyal fibrilasyon",
      "Ventriküler taşikardi",
      "Prematür ventriküler kontraksiyonlar",
      "Sinüs taşikardisi",
      "AV blok"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "PVC'ler gebelikte en sık görülen aritmidir.",
    category: "Obstetrik Anestezi",
  ),
];
