import '../models/question.dart';

final List<Question> liverDiseaseAnesthesiaQuestions = [
  Question(
    question: "Aşağıdakilerden hangisi karaciğer hastalığı olan hastalarda anestezi açısından en ciddi risk faktörlerinden biridir?",
    options: [
      "Hipoalbuminemi",
      "Uzamış PT/INR",
      "Hiponatremi",
      "Ensefalopati",
      "Portal hipertansiyon"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Hepatik ensefalopati, santral sinir sistemi depresyonu oluşturur ve sedatif ajanlara karşı hassasiyeti artırır, bu da anestezi sırasında ciddi solunum depresyonuna neden olabilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi karaciğer sirozlu hastada perioperatif dönemde artmış mortalite ile en çok ilişkili olan parametredir?",
    options: [
      "Serum amonyak",
      "Serum albumin",
      "MELD skoru",
      "AST/ALT oranı",
      "Alkalin fosfataz"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "MELD (Model for End-stage Liver Disease) skoru, karaciğer hastalığında mortaliteyi tahmin etmede yaygın kullanılır. Yüksek skor, yüksek risk anlamına gelir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdaki anestezik ilaçlardan hangisi karaciğer hastalığı olan hastalarda en güvenli olarak kabul edilir?",
    options: [
      "Ketamin",
      "Midazolam",
      "Etomidat",
      "Morfin",
      "Halotan"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Etomidat, minimal hepatik metabolizmaya sahiptir ve hemodinamik stabilite sağladığı için karaciğer hastalarında güvenlidir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi karaciğer hastalarında kanama eğilimi ile en sık ilişkili bozukluktur?",
    options: [
      "Trombositopeni",
      "Fibrinolitik aktivitede azalma",
      "Protrombin zamanında kısalma",
      "Hematokrit düşüklüğü",
      "Hiperkalsemi"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Trombositopeni, portal hipertansiyona bağlı hipersplenizm sonucu gelişir ve kanama riskini belirgin şekilde artırır.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdaki laboratuvar testlerinden hangisi, karaciğer hastalarında cerrahi sonrası gelişebilecek enfeksiyon riski hakkında en fazla bilgi verir?",
    options: [
      "CRP",
      "WBC",
      "PT/INR",
      "Albumin",
      "Sedim"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Düşük serum albumin, bağışıklık fonksiyonunun ve beslenme durumunun göstergesidir. İnfeksiyon riskinin yüksek olduğunu gösterir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer sirozlu hastalarda pulmoner komplikasyonlardan hangisi en sık görülür?",
    options: [
      "Akciğer embolisi",
      "Hepatopulmoner sendrom",
      "Pulmoner hipertansiyon",
      "Pnömotoraks",
      "Atelektazi"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Hepatopulmoner sendrom, karaciğer sirozu ile ilişkili arteriyel oksijenasyon bozukluğudur ve intrapulmoner şantlarla karakterizedir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalığında gelişen hepatorenal sendromun en önemli tetikleyici faktörü nedir?",
    options: [
      "Hiperpotasemi",
      "Hiperkalsemi",
      "Hipotansiyon",
      "Diüretik kullanımı",
      "Sıvı yüklenmesi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Hipotansiyon, renal perfüzyonun azalmasına ve hepatorenal sendroma yol açabilir. Özellikle vazodilatasyonlu sirotik hastalarda sık görülür.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalığı olan bir hastada anestezi sırasında hipoglisemi geliştiğinde en uygun yaklaşım nedir?",
    options: [
      "Glukagon verilmesi",
      "Glukoz infüzyonu",
      "Kortikosteroid başlanması",
      "İnsülin verilmesi",
      "Sıvı kısıtlaması"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Karaciğerin glikojen depolama ve glukoneogenez kapasitesi bozulduğu için glukoz infüzyonu gerekir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi Child-Pugh skoru içinde yer almaz?",
    options: [
      "Bilirubin",
      "Albümin",
      "Protrombin zamanı",
      "Ensefalopati varlığı",
      "Serum kreatinin"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Child-Pugh skoru, karaciğer fonksiyonunu değerlendirmek için kullanılır. Skorlamada bilirubin, albümin, PT, ensefalopati ve asit dikkate alınır; kreatinin dahil değildir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer sirozu olan hastalarda epidural anestezi uygulaması neden risklidir?",
    options: [
      "Hiperpotasemi nedeniyle",
      "Hipokalsemi nedeniyle",
      "Koagülopati riski nedeniyle",
      "Hiponatremi nedeniyle",
      "Hipotansiyon nedeniyle"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Koagülopati, sirotik hastalarda yaygın olup epidural hematom gelişme riskini artırır. Bu nedenle epidural girişimler kontrendike olabilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer yetmezliği olan hastada görülen ensefalopati tedavisinde en önemli farmakolojik ajan aşağıdakilerden hangisidir?",
    options: [
      "Rifaksimin",
      "Flumazenil",
      "Furosemid",
      "Midazolam",
      "Nalokson"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Rifaksimin, bağırsakta amonyak üreten bakterilerin azaltılması yoluyla hepatik ensefalopati tedavisinde etkilidir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi karaciğer hastalığı olan hastada en iyi preoperatif risk tahminini sağlar?",
    options: [
      "AST/ALT oranı",
      "Serum bilirubin",
      "MELD skoru",
      "Trombosit sayısı",
      "Albumin düzeyi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "MELD skoru, kreatinin, bilirubin ve INR kullanılarak hesaplanır ve karaciğer hastalığı olan hastalarda mortalite riskini objektif olarak tahmin eder.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalığı olan bir hastada anestezi sonrası uzamış entübasyon süresi en çok hangi durumla ilişkilidir?",
    options: [
      "Hiperkalemi",
      "Hipotermi",
      "Ensefalopati",
      "Hipoglisemi",
      "Hematüri"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Hepatik ensefalopati, postoperatif bilinç düzeyini etkiler. Bu da ekstübasyonun gecikmesine neden olabilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalığı olan hastalarda kullanılan morfin ile ilgili en doğru ifade hangisidir?",
    options: [
      "Karaciğerde aktif metabolitlerine dönüşmez",
      "Güvenle kullanılabilir",
      "Uzamış sedasyon yapmaz",
      "Aktif metabolitleri böbrekle atılır, birikir",
      "Hepatik yetmezlikte etkisizdir"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Morfinin metabolitleri, karaciğerde oluşur ve renal yolla atılır. Böbrek fonksiyonu da bozulmuşsa, bu metabolitler birikerek toksisite yaratabilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalarında sedasyon amacıyla kullanılan ilaçlardan hangisi birikme riski en az olan ajandır?",
    options: [
      "Midazolam",
      "Diazepam",
      "Lorazepam",
      "Propofol",
      "Ketamin"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Propofol, hızlı dağılım ve kısa etki süresi sayesinde birikme riski azdır. Ancak doz titrasyonu dikkatle yapılmalıdır.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
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
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
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
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
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
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
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
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
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
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
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
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalığında görülen hipoalbuminemi, aşağıdaki komplikasyonlardan hangisine en çok zemin hazırlar?",
    options: [
      "Hiperkalemi",
      "Asit oluşumu",
      "Hipernatremi",
      "Hipoglisemi",
      "Trombositopeni"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Albumin, plazma onkotik basıncını sağlar. Düşük albumin düzeyi, sıvının damar dışına çıkmasına neden olur ve asit birikimine yol açar.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer sirozu olan hastalarda en sık görülen solunum komplikasyonu aşağıdakilerden hangisidir?",
    options: [
      "Akut bronkospazm",
      "Pulmoner emboli",
      "Atelektazi",
      "Hepatopulmoner sendrom",
      "ARDS"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Hepatopulmoner sendrom, sirozla ilişkili oksijenizasyon bozukluğudur. İntrapulmoner vasküler dilatasyonlar ve şantlara bağlı olarak gelişir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalarında kullanılan benzodiazepinlerin en önemli riski aşağıdakilerden hangisidir?",
    options: [
      "Hipotermi",
      "Hiperglisemi",
      "Prokonvülsif etki",
      "Solunum depresyonu ve ensefalopati",
      "Hipertansiyon"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Benzodiazepinler, sirotik hastalarda ensefalopatiyi ağırlaştırabilir ve solunum depresyonu yapabilir. Bu nedenle dikkatli kullanılmalıdır.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalığı olan bir hastada, sevofluran kullanımının avantajı aşağıdakilerden hangisidir?",
    options: [
      "Karaciğerde tamamen metabolize edilmesi",
      "Hepatotoksik metabolit oluşturmaması",
      "Uzun süreli sedasyon sağlaması",
      "Kardiyak depresyon yapması",
      "Böbrek üzerinden atılması"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Sevofluran, düşük oranda karaciğerde metabolize olur ve hepatotoksik metabolit oluşturma riski düşüktür. Bu nedenle karaciğer hastalarında güvenlidir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi karaciğer sirozlu bir hastada anestezi öncesi ensefalopati şüphesini destekleyen bulgudur?",
    options: [
      "Miosis",
      "Asteriksis",
      "Hipotermi",
      "Taşikardi",
      "Nistagmus"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Asteriksis (flapping tremor), hepatik ensefalopatinin tipik bir bulgusudur. Hastadan ellerini uzatması istendiğinde titreme benzeri hareketler görülür.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, Child-Pugh C skorlu bir hastada elektif cerrahinin ertelenmesini gerektiren bir durumdur?",
    options: [
      "Hafif asit",
      "INR 1.4",
      "Serum albumin >3.5 g/dL",
      "Ensefalopati varlığı",
      "Bilirubin 1.0 mg/dL"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Hepatik ensefalopati, ciddi hepatik disfonksiyonun belirtisidir. Bu hastalarda elektif cerrahi ertelenmeli, mümkünse karaciğer fonksiyonu stabilize edilmelidir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer sirozlu hastalarda, hiponatreminin en olası nedeni aşağıdakilerden hangisidir?",
    options: [
      "Hiperaldosteronizm",
      "Antidiüretik hormon (ADH) salınımı artışı",
      "Aşırı potasyum alımı",
      "Renin eksikliği",
      "Hipervolemi"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Sirozda vazodilatasyon ve hipoperfüzyona karşılık olarak ADH salınımı artar, bu da su tutulmasına ve dilüsyonel hiponatreminin gelişmesine neden olur.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalığı olan bir hastada, postoperatif dönemde hipoglisemi riski artmıştır. Bunun temel nedeni aşağıdakilerden hangisidir?",
    options: [
      "Artmış insülin sekresyonu",
      "Karaciğerin glikojen depolama ve glukoneogenez yeteneğinin bozulması",
      "Aşırı karbonhidrat alımı",
      "Artmış glukagon üretimi",
      "GİS motilitesinin artması"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Karaciğerin enerji metabolizmasındaki bozukluk, özellikle glukoneogenez ve glikojenoliz süreçlerinin etkilenmesi, hipoglisemi riskini artırır.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalarında elektif cerrahi planlanırken aşağıdaki durumların hangisi varsa cerrahi mutlaka ertelenmelidir?",
    options: [
      "Hafif asit",
      "INR 1.3",
      "Kompanse siroz",
      "Aktif hepatit bulguları",
      "Serum albümin >3.0 g/dL"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Aktif hepatit, karaciğerin akut enflamasyon içinde olduğunu gösterir. Bu durumda cerrahi komplikasyon riski çok yüksektir, bu nedenle işlem ertelenmelidir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Sirozlu bir hastada anestezi planlaması yapılmaktadır. Bu hastada preoperatif dönemde aşağıdakilerden hangisi en önemli mortalite belirtecidir?",
    options: [
      "Serum albumin düzeyi",
      "ALT/AST oranı",
      "Child-Turcotte-Pugh skoru",
      "Portal hipertansiyonun varlığı",
      "SpO₂ desatürasyonu"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Child-Turcotte-Pugh skoru, sirotik hastaların cerrahi riskini değerlendirmede yaygın olarak kullanılan klinik bir skorlama sistemidir. Bilirubin, albumin, INR, asit ve ensefalopati durumlarına göre değerlendirme yapılır. Bu skor preoperatif mortalite ile yakından ilişkilidir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi, hepatik kan akımını en az etkilediği için sirotik bir hastada tercih edilmesi gereken volatil anesteziklerdendir?",
    options: [
      "Halotan",
      "İzofluran",
      "Enfluran",
      "Metoksifluran",
      "Nitröz oksit"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "İzofluran ve sevofluran hepatik kan akımını en iyi koruyan ajanlardır. Halotan ise hepatotoksik riski nedeniyle sirotik hastalarda kontrendikedir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer transplantasyonunda 'anhepatik faz' aşağıdaki işlemlerden hangisini içerir?",
    options: [
      "Karaciğerin diseke edilmesi",
      "Greftin perfüze edilmesi",
      "Portal venin klemplenmesi",
      "Safra kanalının anastomozu",
      "Retroperitoneal diseksiyon"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Anhepatik fazda alıcı karaciğer çıkarılır ve bu sırada portal ven ile inferior vena kava klemp edilir. Bu dönemde hemodinamik instabilite görülebilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Hepatik ensefalopatili bir hastada anestezik ilaçların uygulanması ile ilgili hangisi doğrudur?",
    options: [
      "Benzodiazepinler ilk tercih edilen ajandır",
      "Opioid dozları artırılmalıdır",
      "Benzodiazepinler dikkatli kullanılmalı, gerekirse flumazenil hazır bulundurulmalıdır",
      "Premedikasyon mutlaka verilmelidir",
      "Flumazenil ensefalopatiyi kötüleştirir"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Hepatik ensefalopatili hastalarda benzodiazepin kullanımı dikkatle yapılmalıdır. Bu ajanlar ensefalopatiyi kötüleştirebilir. Flumazenil bazı durumlarda faydalı olabilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi karaciğer transplantasyonu sırasında 'reperfüzyon sendromu' ile ilişkili değildir?",
    options: [
      "Hipotansiyon",
      "Aritmiler",
      "Kardiyak arrest",
      "Hipertansiyon",
      "Asidoz"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Reperfüzyon sendromu, yeni karaciğer greftinin dolaşıma katılmasından sonra hipotansiyon, aritmi ve asidoz gibi ciddi hemodinamik değişikliklerle karakterizedir. Hipertansiyon tipik değildir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Hepatik ensefalopatide aşağıdaki tedavi yaklaşımlarından hangisi önceliklidir?",
    options: [
      "Kortikosteroid tedavisi",
      "Propofol infüzyonu",
      "Hiperventilasyon",
      "Hipokaleminin düzeltilmesi",
      "Antibiyotik verilmemesi"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Hipokalemi, amonyak üretimini artırarak ensefalopatiyi kötüleştirebilir. Düzgün elektrolit dengesi, ensefalopati yönetiminde önemlidir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Sirozda periferik vazodilatasyon ve artmış kardiyak output ile karakterize hemodinamik durum aşağıdakilerden hangisidir?",
    options: [
      "Hiperdinamik dolaşım",
      "Kardiyojenik şok",
      "Distributif şok",
      "Hipovolemik şok",
      "Obstrüktif şok"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Sirozlu hastalarda periferik vazodilatasyon, düşük SVR ve telafi edici artmış kardiyak output görülür. Bu tabloya 'hiperdinamik dolaşım' adı verilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer transplantasyonunun 'neo-hepatik faz'ı neyi ifade eder?",
    options: [
      "Donör karaciğerin çıkarılması",
      "Alıcının karaciğerinin eksize edilmesi",
      "Portal ven anastomozu",
      "Yeni karaciğerin perfüze edilmesi",
      "Safra kanalının bağlanması"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Neohepatik faz, yeni karaciğerin reperfüze edilip fonksiyon görmeye başladığı fazdır ve hemodinamik instabiliteye neden olabilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalarında volüm yönetimiyle ilgili olarak aşağıdakilerden hangisi doğrudur?",
    options: [
      "Sıvı yüklenmesi pulmoner hipertansiyonu azaltır",
      "Sıvı kısıtlaması hepatik perfüzyonu artırır",
      "Düşük santral venöz basınç hedeflenir",
      "Düşük portal basınç için sıvı yüklenmelidir",
      "Düşük sistemik vasküler direnç için diüretik verilmelidir"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Kanama riskini azaltmak için düşük santral venöz basınç tercih edilir. Bu aynı zamanda kan kaybını minimalize eder.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer transplantasyonu sırasında en fazla mortalite hangi fazda gözlenir?",
    options: [
      "Pre-anhepatik faz",
      "Anhepatik faz",
      "Reperfüzyon (neo-hepatik) faz",
      "İmmün supresyon fazı",
      "Postoperatif erken dönem"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Yeni greftin reperfüzyonundan sonra hiperkalemi, asidoz ve hipotansiyon gelişebilir. Bu dönem en fazla mortalite riskini taşır.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi hepatopulmoner sendromun tanı kriterlerinden biri değildir?",
    options: [
      "Portal hipertansiyon ve karaciğer hastalığı varlığı",
      "Alveoler-arteriyel O₂ gradiyentinde azalma",
      "Ortodeoksi ve platipne",
      "Kontrastlı ekokardiyografide geç sağ-sol şant bulgusu",
      "Oda havasında otururken SpO₂ < %96"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Hepatopulmoner sendromda alveoler-arteriyel oksijen gradiyenti artar, yani gaz değişiminde bozulma olur.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalığında uzamış protrombin zamanı (PT) ve düşük fibrinojen düzeyi en çok hangi durumu düşündürür?",
    options: [
      "K vitamini eksikliği",
      "DIC (yaygın damar içi pıhtılaşma)",
      "Trombotik trombositopenik purpura",
      "Antifosfolipid sendromu",
      "Von Willebrand hastalığı"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "DIC'de hem PT hem de fibrinojen düşer. K vitamini eksikliğinde fibrinojen genellikle normaldir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi transplantasyonun anhepatik fazında meydana gelen fizyolojik değişikliklerden biridir?",
    options: [
      "Artmış portal akım",
      "Hipotansiyon ve venöz dönüşte azalma",
      "Hiperkalsemi",
      "Artmış santral venöz basınç",
      "Artmış trombosit aktivitesi"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Anhepatik fazda IVC ve portal ven klemp edilir. Bu da venöz dönüşte azalma ve hipotansiyon yapar.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdaki durumlardan hangisi hepatik ensefalopatiyi kötüleştirmez?",
    options: [
      "Gastrointestinal kanama",
      "Hipokalemi",
      "Yüksek proteinli diyet",
      "Flumazenil kullanımı",
      "Benzodiazepin verilmesi"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Flumazenil, benzodiazepin kaynaklı ensefalopatide bilinç düzeyini geçici olarak düzeltebilir ve bu yönüyle ensefalopatiyi kötüleştirmez.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalığında viskoelastik pıhtılaşma testi olarak hangisi önerilir?",
    options: [
      "INR",
      "PT",
      "aPTT",
      "TEG veya ROTEM",
      "D-dimer"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "TEG ve ROTEM gibi viskoelastik testler, karaciğer hastalığında pıhtılaşmanın fonksiyonel değerlendirilmesi açısından daha uygundur.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer transplantasyonunun en tehlikeli evresi hangisidir?",
    options: [
      "Preoperatif değerlendirme",
      "Diseksiyon fazı",
      "Anhepatik faz",
      "Reperfüzyon (neohepatik) faz",
      "Postoperatif takip"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Bu fazda portal ven açılır, hipotansiyon, hiperkalemi ve aritmi riski artar. Reperfüzyon sendromu burada gözlenir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi karaciğer transplantasyonunun kesin kontrendikasyonudur?",
    options: [
      "Şiddetli obesite",
      "Yüksek viral yükle HIV pozitiflik",
      "Ekstrahepatik solid tümör varlığı",
      "Şiddetli kardiyomiyopati",
      "Otoimmün hepatit"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Metastatik tümör varlığı transplantasyona kesin kontrendikasyondur, çünkü sağkalım süresini anlamlı kısaltır.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi hepatik ensefalopatide karakteristik EEG bulgusudur?",
    options: [
      "Asimetrik delta dalgaları",
      "Spike-dalga aktivitesi",
      "Yavaş, simetrik yüksek voltajlı dalgalar",
      "Alfa dalgalarının artması",
      "Uykuda K-komplekslerinin kaybı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Hepatik ensefalopatide EEG'de simetrik yüksek voltajlı yavaş dalga aktivitesi görülür.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Sirozlu hastada ortodeoksi ve platipne gözleniyorsa hangi sendrom düşünülmelidir?",
    options: [
      "Portopulmoner hipertansiyon",
      "Hepatorenal sendrom",
      "Hepatopulmoner sendrom",
      "Pulmoner emboli",
      "Sirotik kardiyomiyopati"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Hepatopulmoner sendromda dik pozisyonda desatürasyon (ortodeoksi) ve düz pozisyonda rahatlama (platipne) tipiktir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Hepatorenal sendromun gelişiminde en önemli tetikleyici faktör aşağıdakilerden hangisidir?",
    options: [
      "Artmış portal akım",
      "Sodyum retansiyonu",
      "Splanknik vazodilatasyona yanıt olarak renal vazokonstriksiyon",
      "Hipoglisemi",
      "Hiperkalsemi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Hepatorenal sendrom, splanknik vazodilatasyonun tetiklediği renal vazokonstriksiyon, azalmış GFR ve su-sodyum retansiyonu ile karakterizedir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi volatil anestezikler arasında hepatik kan akımını en iyi koruyan ajanlardandır?",
    options: [
      "Halotan",
      "Desfluran",
      "İzofluran",
      "Sevofluran",
      "Enfluran"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Sevofluran ve izofluran hepatik kan akımını ve oksijen sunumunu en iyi koruyan ajanlardır.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi karaciğer hastalığında hipoalbüminemiye katkıda bulunmaz?",
    options: [
      "Kronik malnütrisyon",
      "Akut hepatit",
      "Uzun süreli karaciğer hastalığı",
      "Alkolik siroz",
      "Portal hipertansiyon"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Akut hepatitte hipoalbüminemi genellikle gözlenmez. Kronik durumlarda sentetik kapasite azalır ve albümin düşer.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdaki cerrahi işlemlerden hangisi karaciğer hastasında anaflaksi riskini artırabilir?",
    options: [
      "Splenektomi",
      "Hidatik kist drenajı",
      "Biliyer stent yerleştirilmesi",
      "Laparoskopik kolesistektomi",
      "Hemoroidektomi"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Hidatik kist açıldığında parazit antijenlerinin sistemik dolaşıma karışmasıyla anafilaksi riski doğar.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer transplantasyonu sırasında hipokalsemi sıklıkla hangi sebeple gelişir?",
    options: [
      "Sepsis",
      "Sitrat toksisitesi",
      "Hipoparatiroidizm",
      "Hiperventilasyon",
      "İyonize magnezyum artışı"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Transfüzyon sırasında verilen sitrat iyonize kalsiyumu bağlayarak hipokalsemiye neden olur.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi ozmotik demiyelinizasyon sendromuna yol açabilir?",
    options: [
      "Hızlı potasyum düzeltmesi",
      "Hızlı magnezyum düzeltmesi",
      "Hızlı sodyum düzeltmesi",
      "Yüksek doz diüretik",
      "Yüksek doz opioid"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Sirozlu hastalarda hızlı hiponatremi düzeltilmesi ozmotik demiyelinizasyon sendromuna neden olabilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi karaciğer transplantasyonu sonrası fibrinoliz ve kanama riskini artırabilir?",
    options: [
      "Yüksek fibrinojen düzeyi",
      "Yüksek albumin",
      "Düşük iyonize kalsiyum",
      "Hiperkalemi",
      "Düşük trombosit sayısı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "İyonize kalsiyum düşüklüğü pıhtılaşmayı bozar. Sitrat toksisitesi ve hipotermi ile birlikte kanamayı artırabilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Transversus abdominis plane (TAP) bloğu, sirotik hastalarda aşağıdakilerden hangisinin yerine tercih edilebilir?",
    options: [
      "Ketamin infüzyonu",
      "Sistemik opioid",
      "Epidural analjezi",
      "Propofol sedasyonu",
      "Tramadol"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Koagülopati nedeniyle epidural blok kontrendike olabilir. Bu durumda TAP bloğu etkili ve güvenli bir alternatiftir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer transplantasyonu sırasında hiperkalemi en çok hangi evrede gelişir?",
    options: [
      "Preanhepatik faz",
      "Anhepatik faz",
      "Reperfüzyon fazı",
      "İndüksiyon",
      "Postoperatif izlem"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Iskemik karaciğerden toksin ve potasyum salınımı bu fazda olur. Hipotansiyon ve aritmilere neden olabilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer transplantasyonunda 'piggy-back' tekniği ile ne amaçlanır?",
    options: [
      "Donör karaciğerin safra drenajının sağlanması",
      "Portal venin perfüze edilmesi",
      "Alıcının IVC'sinin tamamen korunması",
      "Portal sistemden kanın dışa akıtılması",
      "Greftin otoimmuniteye karşı korunması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "'Piggy-back' tekniğinde IVC tam olarak klemplenmez. Böylece venöz dönüş korunur, hemodinami daha stabil olur.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer sirozlu bir hastada cerrahi öncesi mortaliteyi tahmin etmede en objektif indeks hangisidir?",
    options: [
      "ASA skoru",
      "Child-Turcotte-Pugh (CTP) skoru",
      "MELD skoru",
      "APACHE II skoru",
      "SOFA skoru"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "MELD skoru daha objektif ve transplantasyon önceliğinde kullanılır. Hem CTP hem MELD önemli ancak MELD daha objektif ve transplantasyon önceliğinde kullanılır.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Portal hipertansiyonu olan bir hastada hangi anestezik teknikten kaçınılmalıdır?",
    options: [
      "Genel anestezi",
      "Spinal anestezi",
      "Epidural anestezi",
      "Kombine spinal-epidural",
      "Rejyonal bloklar"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Spinal anestezi ani hemodinamik değişikliklere yol açarak hepatik ensefalopati riskini artırır.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Hepatik ensefalopati riskini artıran anestezik ajan hangisidir?",
    options: [
      "Propofol (yüksek dozda)",
      "Benzodiazepinler (özellikle midazolam)",
      "Ketamin",
      "Etomidat",
      "Deksmedetomidin"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "GABAerjik etki ile ensefalopatiyi şiddetlendirir; propofol düşük dozda tercih edilebilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer transplantasyonu sırasında 'anhepatik faz'da görülen metabolik değişiklik hangisidir?",
    options: [
      "Metabolik asidoz ve hipokalsemi",
      "Solunum alkalozu",
      "Hiperglisemi",
      "Hipermagnezemi",
      "Hipokalemi"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Sitrat birikimi ve laktik asidoz gelişir; kalsiyum replasmanı gerekir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Hepatorenal sendrom tanısında hangi laboratuvar bulgusu beklenmez?",
    options: [
      "İdrarda sodyum >40 mEq/L",
      "Serum kreatinin artışı",
      "Oligüri",
      "İdrarda sodyum <10 mEq/L",
      "Hyalin silendirler"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Hepatorenal sendromda idrar sodyumu <10 mEq/L olur; >40 mEq/L prerenal yetmezlikte görülür.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Hangi durumda TDP transfüzyonu etkisiz kalır?",
    options: [
      "Faktör V eksikliği",
      "PT uzaması",
      "INR >1.5",
      "Fibrinojen <100 mg/dL",
      "Akut kanama"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Faktör V TDP'de bulunmaz; diğer durumlarda TDP endikedir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Wilson hastalığı olan bir hastada anestezi yönetiminde hangisine dikkat edilmelidir?",
    options: [
      "Nörotoksik etki nedeniyle bakır içeren solüsyonlardan kaçınılmalı",
      "Volüm yüklenmesi riski",
      "Hipernatremi gelişimi",
      "Kas gevşeticilere direnç",
      "Malign hipertermi riski"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Ringer laktat gibi bakır içeren sıvılar kontrendikedir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer sirozlu bir hastada hangi hemodinamik profil görülür?",
    options: [
      "Yüksek kardiyak output, düşük sistemik vasküler direnç",
      "Düşük kardiyak output, yüksek sistemik vasküler direnç",
      "Normal hemodinami",
      "Pulmoner hipertansiyon",
      "Sistemik hipertansiyon"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Sirozda hiperdinamik dolaşım vardır; arteriyel vazodilatasyon baskındır.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer transplantasyonunda 'reperfüzyon sendromu'nun en önemli belirtisi nedir?",
    options: [
      "Hipotansiyon, bradikardi ve hiperkalemi",
      "Hipertansiyon ve taşikardi",
      "Hipertermi",
      "Solunum alkalozu",
      "Hipoglisemi"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Aniden açılan portal dolaşıma asidotik, hiperkalemik kanın sistemik dolaşıma geçmesiyle oluşur.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalarında hangi opioidin kullanımı en güvenlidir?",
    options: [
      "Remifentanil",
      "Morfin",
      "Meperidin",
      "Fentanil",
      "Kodein"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Ekstrahepatik metabolizma ile kısa etkilidir; morfin/meperidin aktif metabolitleri birikir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Hepatopulmoner sendromun tanısında hangi yöntem altın standarttır?",
    options: [
      "Kontrast ekokardiyografi",
      "Akciğer grafisi",
      "Arteriyel kan gazı",
      "Solunum fonksiyon testleri",
      "Toraks BT"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Sağ-sol şantı gösterir; PaO2 <70 mmHg tipiktir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer disfonksiyonu olan bir hastada hangi lokal anestezik dozu azaltılmalıdır?",
    options: [
      "Lidokain",
      "Bupivakain",
      "Ropivakain",
      "Prilokain",
      "Mepivakain"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Karaciğerde metabolize olur; bupivakain/ropivakain daha güvenlidir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Portal hipertansiyona bağlı akut varis kanamasında ilk tedavi seçeneği nedir?",
    options: [
      "Endoskopik band ligasyonu + oktreotid infüzyonu",
      "Acil cerrahi şant",
      "TDP transfüzyonu",
      "Vitamin K uygulaması",
      "Balon tamponad (Sengstaken-Blakemore tüpü)"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Oktreotid portal basıncı düşürür; balon tamponad acil durumlarda kullanılır.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer sirozlu hastalarda hangi durum spontan bakteriyel peritonit (SBP) için tipiktir?",
    options: [
      "Asit sıvısında PMNL >250 hücre/mm3",
      "Asit sıvısında şeker düşüklüğü",
      "Asit sıvısında amilaz yüksekliği",
      "Asit sıvısında malign hücreler",
      "Asit sıvısında lipaz yüksekliği"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "SBP'de nötrofil hakimiyeti vardır; kültürde üreme olmayabilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer transplantasyonunda hangi koagülopati 'fibrinolizis' ile karakterizedir?",
    options: [
      "DIC (Dissemine intravasküler koagülasyon)",
      "Trombositopeni",
      "Vitamin K eksikliği",
      "Hiperfibrinojenemi",
      "Faktör VIII eksikliği"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Trombin zamanı uzar, fibrin yıkım ürünleri artar.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalarında hangi antibiyotik nöromiyopati riski nedeniyle dikkatli kullanılmalıdır?",
    options: [
      "Aminoglikozitler",
      "Sefalosporinler",
      "Penisilin",
      "Makrolidler",
      "Kinolonlar"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Nöromusküler blokajı potansiyalize eder; kas gevşetici dozları azaltılmalıdır.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer sirozlu bir hastada anestezi indüksiyonu için yaygın olarak kullanılan en uygun ajan hangisidir?",
    options: [
      "Propofol (düşük doz)",
      "Tiyopental",
      "Ketamin",
      "Etomidat",
      "Midazolam"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Propofol ve etomidat da hepatik yetmezlikte güvenle kullanılabilir, ancak propofol daha yaygındır.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer transplantasyonunda 'piggyback' tekniği hangi avantajı sağlar?",
    options: [
      "Vena kavanın tam kesilmesini önleyerek hemodinamik stabilite",
      "Daha kısa anhepatik faz",
      "Arteriyel anastomoz kolaylığı",
      "Biliyer rekonstrüksiyon avantajı",
      "İmmünosupresyon ihtiyacını azaltma"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Retrohepatik vena kava korunur, venöz dönüş daha iyi sağlanır.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalarında hangi kas gevşetici ajanın dozu azaltılmalıdır?",
    options: [
      "Süksinilkolin",
      "Rokuronyum",
      "Vekuronyum",
      "Atrakuryum",
      "Sisatrakuryum"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Plazma kolinesteraz düzeyi düşük olduğundan etki süresi uzar, doz azaltılması gerekebilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Hepatik ensefalopati tedavisinde hangisi kullanılmaz?",
    options: [
      "Opioidler",
      "Laktuloz",
      "Rifaksimin",
      "BCAA'lar (Dallı zincirli aminoasitler)",
      "Protein kısıtlaması"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Opioidler MSS depresyonu yaparak ensefalopatiyi kötüleştirir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer sirozlu bir hastada hangi durum hepatoselüler karsinom (HCC) için risk faktörüdür?",
    options: [
      "Hepatit B veya C enfeksiyonu",
      "Otoimmün hepatit",
      "Gilbert sendromu",
      "Alfa-1 antitripsin eksikliği",
      "Wilson hastalığı"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Kronik viral hepatitler HCC'nin en sık nedenidir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer transplantasyonunda 'primary non-function' (PNF) tanısı nasıl konur?",
    options: [
      "Postoperatif 48 saat içinde INR >3.0 ve AST >5000 IU/L",
      "Akut böbrek yetmezliği",
      "Pulmoner ödem",
      "Nörolojik defisit",
      "Sepsis bulguları"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Grafın hiç çalışmaması durumudur; acil retransplantasyon gerektirir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer hastalarında hangi durum 'hepatorenal sendrom tip 1' için tipiktir?",
    options: [
      "Hızlı progresif böbrek yetmezliği (2 haftada kreatinin 2 katına çıkması)",
      "İdrar sodyumu >40 mEq/L",
      "Proteinüri",
      "Hematüri",
      "Hipertansiyon"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Tip 1 HRS kötü prognozludur; terlipressin + albumin tedavi seçeneğidir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer sirozlu bir hastada hangi durum 'refrakter asit' tanımına girer?",
    options: [
      "Diüretiklere yanıtsız asit veya hızlı rekürrens",
      "Spontan bakteriyel peritonit",
      "Hiponatremi",
      "Hepatik hidrotoraks",
      "Umbilikal herni"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "TIPS veya peritonovenöz şant düşünülebilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Karaciğer transplantasyonunda hangi immünsupresif ajan nörotoksik etki yapar?",
    options: [
      "Tacrolimus",
      "Siklosporin",
      "Azatioprin",
      "Mikofenolat mofetil",
      "Sirolimus"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Tremor, baş ağrısı ve posterior reversibl ensefalopati sendromuna yol açabilir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),

  Question(
    question: "Akut karaciğer yetmezliğinde (asetaminofen toksisitesinde) hangi durum 'King's College kriterleri'ne göre transplantasyon endikasyonudur?",
    options: [
      "Arteriyel pH <7.3 (laktik asidoz) veya INR >6.5",
      "Serum bilirubin >10 mg/dL",
      "ALT >1000 IU/L",
      "Hiponatremi",
      "Trombositopeni"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Asetaminofen toksisitesinde pH <7.3, diğer nedenlerde INR >6.5 ölüm riskini gösterir.",
    category: "Karaciğer Hastalığı Olan Hastalarda Anestezi",
  ),
];
