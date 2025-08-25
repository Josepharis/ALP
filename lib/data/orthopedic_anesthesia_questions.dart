import '../models/question.dart';

final List<Question> orthopedicAnesthesiaQuestions = <Question>[
  Question(
    question:
        "Ortopedik cerrahilerde emboli riski en çok hangi işlem sırasında artar?",
    options: [
      "Tenotomi",
      "Kalça protezi replasmanı",
      "Artroskopi",
      "Sinovektomi",
      "Radius fraktürü onarımı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Kalça protezi cerrahisinde kemik içi manipülasyon ve sementasyon, yağ veya kemik iliği embolisi riskini artırır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi turnike uygulaması sırasında en sık görülen sistemik etkilerden biridir?",
    options: [
      "Hipoglisemi",
      "Hiperkapni",
      "Metabolik asidoz",
      "Hipotermi",
      "Respiratuvar alkaloz",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Turnike çözülmesi sonrası, ekstremitedeki laktat, potasyum ve karbondioksit kana karışır; bu da metabolik asidoza neden olabilir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Cement reaksiyonu (kemik çimentosu sendromu) sırasında aşağıdaki bulgulardan hangisi en sık görülür?",
    options: [
      "Hipertansiyon",
      "Bradikardi",
      "Hipoksemi ve hipotansiyon",
      "Hiperglisemi",
      "Taşikardi ve ateş",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kemik çimentosu sendromu, pulmoner vazokonstriksiyon ve emboliye bağlı hipotansiyon, hipoksemi ve aritmi ile karakterizedir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi kemik iliği embolisinin klinik bulgularından biri değildir?",
    options: [
      "Akut hipoksemi",
      "Peteşi",
      "Nörolojik bozukluk",
      "Yüksek vücut sıcaklığı",
      "Hiperkalemi",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Kemik iliği embolisi, hipoksemi, peteşi ve nörolojik semptomlar ile kendini gösterir. Hiperkalemi tipik bir bulgu değildir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Turnike süresi için genel olarak önerilen maksimum süre nedir?",
    options: [
      "30 dakika",
      "45 dakika",
      "60 dakika",
      "90 dakika",
      "120 dakika",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Turnike uygulaması, 90 dakikayı geçmemelidir. Uzun süreli turnike doku iskemisi ve reperfüzyon hasarına yol açabilir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki ilaçlardan hangisi turnike açıldıktan sonra gelişen hipotansiyon tedavisinde en uygun seçenektir?",
    options: [
      "Furosemid",
      "Esmolol",
      "Fenilefrin",
      "Atropin",
      "Ketamin",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Turnike açıldıktan sonra periferik vazodilatasyon gelişebilir. Bu durumda alfa agonist (fenilefrin) kullanımı etkili olur.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumlardan hangisi, çimento sendromu gelişme riskini artıran faktörlerden biridir?",
    options: [
      "Düşük yaş",
      "Osteoporotik kemik yapısı",
      "Kısa süren ameliyatlar",
      "Non-semente protez kullanımı",
      "Hipotansiyon öyküsü olmaması",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Osteoporotik kemikler, çimentonun kemik içine yayılımını kolaylaştırır ve kemik iliği embolisi riskini artırır. Bu da çimento sendromu için predispozan bir durumdur.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yağ embolisi sendromunda görülen triad aşağıdakilerden hangisidir?",
    options: [
      "Taşikardi, ateş, baş dönmesi",
      "Hipoglisemi, peteşi, koma",
      "Hipoksemi, nörolojik bulgular, peteşi",
      "Hipotermi, taşikardi, bilinç kaybı",
      "Oligüri, ateş, sarılık",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yağ embolisi sendromu, genellikle uzun kemik kırıkları sonrası görülür. Triadı: hipoksemi, peteşi ve nörolojik değişiklikler.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki sinir bloklarından hangisi, kalça cerrahilerinde etkili analjezi sağlar?",
    options: [
      "İnterskalen blok",
      "Femoral sinir bloğu",
      "Aksiller blok",
      "Radial sinir bloğu",
      "Median sinir bloğu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Femoral sinir bloğu, özellikle kalça cerrahisi sonrası ağrının azaltılmasında etkilidir. Gerekirse lumbal pleksus bloğu ile kombine edilir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Turnike açılması sonrası aşağıdaki laboratuvar değişikliklerinden hangisi beklenir?",
    options: [
      "Hipokapni",
      "Hiponatremi",
      "Hipokalsemi",
      "Asidoz ve hiperkalemi",
      "Hipoglisemi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "İskemik kas dokusundan salınan metabolitler, özellikle potasyum ve asit metabolitleri, turnike açıldığında kana karışır ve asidoz + hiperkalemi görülür.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, interskalen blok sonrası gelişebilecek bir komplikasyon değildir?",
    options: [
      "Horner sendromu",
      "Frenik sinir paralizisi",
      "Kontrlateral ekstremitede duyu kaybı",
      "Diyafram hareketlerinde azalma",
      "Ses kısıklığı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İnterskalen blok, ipsilateral etkilidir. Bu nedenle kontrlateral ekstremiteyi etkilemesi beklenmez. Diğer komplikasyonlar sık görülür.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yağ embolisi şüphesi olan bir hastada aşağıdakilerden hangisi tanıya yardımcı olur?",
    options: [
      "Lökopeni",
      "Hiponatremi",
      "Hiperglisemi",
      "Diffüz alveoler infiltratlar (akciğer grafisinde)",
      "Hepatomegali",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Yağ embolisinde, akciğer kapillerlerine yağ damlacıkları yerleşir. Göğüs grafisinde diffüz infiltratlar, hipoksemiye eşlik eder.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, turnike sendromunun klinik bulgularından biri olabilir?",
    options: [
      "Kas rijiditesi ve ağrı",
      "Hipotermi",
      "Poliüri",
      "Bradikardi",
      "Anemi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Turnike sendromu, uzun süreli basıya bağlı kas iskemisi, ağrı ve rijidite ile ortaya çıkar. Ciddi bir komplikasyondur.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahilerde özellikle yaşlı hastalarda postoperatif dönemde en sık karşılaşılan solunumsal komplikasyon hangisidir?",
    options: [
      "Pnömotoraks",
      "Pulmoner emboli",
      "Bronkospazm",
      "Atelektazi",
      "Laringospazm",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Atelektazi, özellikle yaşlı ve mobilitesi azalmış hastalarda sık görülür. Ağrılı solunum ve yetersiz inspirasyon başlıca nedenlerdendir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi turnike açıldıktan sonra gelişen sistemik etkilerden biri değildir?",
    options: [
      "Hiperkalemi",
      "Laktik asidoz",
      "Hipotansiyon",
      "Hipokapni",
      "Taşikardi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Turnike açılması, periferik metabolitlerin kana geçmesiyle hiperkalemi, asidoz ve taşikardi yapabilir. Hipokapni görülmez; aksine hiperkapni olabilir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki yöntemlerden hangisi, yağ embolisi sendromu gelişme riskini azaltmada etkilidir?",
    options: [
      "Yüksek doz opioid verilmesi",
      "Kalça protezinde sement kullanımı",
      "Cerrahi sürenin uzatılması",
      "İntraoperatif sıvı yönetiminin iyi yapılması",
      "Aralıklı pozisyon değişikliği",
    ],
    correctAnswerIndex: 3,
    explanation:
        "İntravasküler hacim dengesinin sağlanması, emboli oluşma riskini azaltır. Volüm eksikliği emboli riskini artırabilir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi interskalen sinir bloğunun tipik komplikasyonlarından biridir?",
    options: [
      "Glottik ödem",
      "Horner sendromu",
      "Median sinir felci",
      "Kalp bloğu",
      "Retroperitoneal hematom",
    ],
    correctAnswerIndex: 1,
    explanation:
        "İnterskalen blok sırasında servikal sempatik zincirin etkilenmesiyle ptozis, miyozis, anhidroz (Horner sendromu) ile sonuçlanır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumların hangisi spinal anestezi için göreceli kontrendikasyon sayılır?",
    options: [
      "Septik şok",
      "Koagülopati",
      "Lokal enfeksiyon",
      "Hafif trombositopeni (100.000/mm³ üstü)",
      "Antikoagülan kullanımı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Trombosit sayısı >100.000/mm³ ise, çoğu kaynakta rejyonel anestezi yapılabilir. Ancak dikkatli olunmalıdır; bu durum göreceli kontrendikasyon sayılır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahilerde rejyonel anestezinin aşağıdakilerden hangisi üzerinde olumlu etkisi yoktur?",
    options: [
      "Derin ven trombozu riski",
      "Postoperatif ağrı kontrolü",
      "Postoperatif bilişsel disfonksiyon",
      "Perioperatif kan kaybı",
      "Hipovolemiye bağlı şok",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Rejyonel anestezi, kan kaybı, DVT ve ağrı kontrolü gibi durumlarda avantaj sağlar; ancak hipovolemik şoku önleyemez, hatta sempatik blok ile ağırlaştırabilir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumlardan hangisi, turnike açıldıktan sonra gelişen reperfüzyon sendromunun bir parçası değildir?",
    options: [
      "Metabolik asidoz",
      "Hiperkalemi",
      "Myoglobulinemi",
      "Hipoglisemi",
      "Hipotansiyon",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Turnike açılması sonrası iskemik dokulardan potasyum, laktat, myoglobin kana karışır → asidoz, hiperkalemi, hipotansiyon gelişebilir; hipoglisemi bu tabloda yer almaz.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Rejyonel anestezi sonrası geçici duyu kaybının uzaması aşağıdakilerden hangisini düşündürmelidir?",
    options: [
      "Lokal anestezik metabolizmasının hızlanması",
      "Sinir hasarı",
      "Hiponatremi",
      "Anestezik ajanın yetersizliği",
      "Blok başarısızlığı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Normal süreyi aşan duyu veya motor kaybı, özellikle parestezi, ağrı veya kas güçsüzlüğü ile birlikteyse sinir hasarı olasılığı düşünülmelidir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumların hangisi kemik çimentosu sendromunun oluşma riskini azaltır?",
    options: [
      "Aşırı sedasyon",
      "İntramedüller basıncın azaltılması",
      "Yüksek doz propofol verilmesi",
      "Uzamış cerrahi süre",
      "Hipovolemi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "İntramedüller basınç ne kadar yüksekse, emboli ve çimento sendromu riski o kadar fazladır. Bu nedenle basıncın azaltılması koruyucudur.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Total diz protezi yapılan hastada, postoperatif ilk 24 saat içinde en etkili analjezi yöntemi hangisidir?",
    options: [
      "Parenteral opioid",
      "Epidural infüzyon",
      "Oral NSAİİ",
      "Transdermal fentanil",
      "Lokal soğuk uygulama",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural analjezi, diz cerrahilerinde hem ağrıyı en etkin azaltır hem de erken mobilizasyona olanak sağlar.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki hastalıklardan hangisinde rejyonel anestezi tercih edilmemelidir?",
    options: [
      "Diyabetik nöropati",
      "Atriyal fibrilasyon",
      "Hipertansiyon",
      "Spinal stenoz",
      "Serebral palsi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Diyabetik nöropatisi olan hastalarda rejyonel anestezi sonrası nörolojik değerlendirme zorlaşır ve sinir hasarı riski artar. Bu nedenle dikkatli olunmalıdır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi yağ embolisi sendromu için tanıda kullanılmaz?",
    options: [
      "Akciğer grafisi",
      "Arter kan gazı",
      "CPK düzeyi",
      "Nörolojik muayene",
      "Deri muayenesi (peteşi)",
    ],
    correctAnswerIndex: 2,
    explanation:
        "CPK, kas hasarını gösterir. Yağ embolisi tanısında kullanılmaz. Tanı; klinik triad, hipoksemi, akciğer grafisi ve peteşiler ile konur.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, total kalça artroplastisinde intraoperatif emboli riskini azaltmak için önerilen yöntemlerden biridir?",
    options: [
      "İntramedüller kanalın sıkı çimentolanması",
      "Yüksek doz opioid verilmesi",
      "Femur kanalının lavajı",
      "Uzun cerrahi süresi",
      "Düşük vücut sıcaklığı sağlanması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Femur kanalının lavajı, partikül yükünü ve basıncı azaltarak emboli riskini düşürür.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Femoral sinir bloğu sonrası aşağıdaki bulgulardan hangisi beklenmez?",
    options: [
      "Patellar refleks azalması",
      "Diz ekstensiyon gücünün azalması",
      "Anterior uylukta duyu kaybı",
      "Ayağın eversiyonunda azalma",
      "Quadriseps kasında güçsüzlük",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Ayağın eversiyonu peroneal sinir ile ilgilidir. Femoral sinir bloğu, bu hareketi etkilemez.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki seçeneklerden hangisi interskalen sinir bloğu için mutlak kontrendikasyonlardan biridir?",
    options: [
      "KOAH hastası",
      "Astım öyküsü",
      "Göz içi basıncı yüksek hasta",
      "Tek akciğerli hasta",
      "Alerjik rinit",
    ],
    correctAnswerIndex: 3,
    explanation:
        "İnterskalen blok, sıklıkla frenik siniri etkiler → diyafram hemiparezisi yapar. Tek akciğerli hastalarda bu durum ciddi solunum yetmezliğine yol açabilir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahilerde postoperatif dönemde en yaygın nörolojik komplikasyon hangisidir?",
    options: [
      "Koma",
      "Nöbet",
      "Sinir hasarına bağlı duyu-motor kaybı",
      "Parkinsonizm",
      "Guillain-Barré sendromu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Özellikle sinir bloklarının uygulandığı hastalarda, nadiren de olsa geçici veya kalıcı sinir hasarına bağlı motor-duyu kayıpları oluşabilir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki ajanlardan hangisi interskalen blok sonrası Horner sendromu gelişimini açıklayan temel mekanizma ile ilişkilidir?",
    options: [
      "Medulla spinalis hasarı",
      "Frenik sinir aktivasyonu",
      "Sempatik zincirin bloke edilmesi",
      "Vagal sinirin hiperaktivasyonu",
      "Sinüs karotikus stimülasyonu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İnterskalen blok sırasında servikal sempatik zincir etkilenebilir. Bu da ptozis, miyozis, anhidroz (Horner sendromu) ile sonuçlanır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, kırık cerrahisinde yağ embolisi geliştiğini düşündüren erken bulgudur?",
    options: [
      "Ateş",
      "Peteşi",
      "Lökositoz",
      "Hipoglisemi",
      "Hipotermi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Yağ embolisi sendromu triadının bir parçası olan peteşi, özellikle üst gövde ve konjonktiva üzerinde ortaya çıkar ve tanı koydurucudur.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Turnike uygulamasında manşon basıncı aşağıdakilerden hangisine göre ayarlanır?",
    options: [
      "Kalp hızı",
      "Hastanın yaşı",
      "Sistolik arter basıncının 100 mmHg üzeri",
      "Diastolik basıncın 2 katı",
      "Ortalama arter basıncı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Turnike basıncı genellikle sistolik basıncın 100 mmHg üzerinde olacak şekilde ayarlanır (alt ekstremite için). Bu yeterli iskemiyi sağlar.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahilerde kullanılan traneksamik asidin etki mekanizması nedir?",
    options: [
      "Trombosit agregasyonunu artırır",
      "Fibrinolizi inhibe eder",
      "Protrombin aktivasyonunu artırır",
      "Antikoagülan etki gösterir",
      "Kan viskozitesini artırır",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Traneksamik asit, plazminojenin plazmine dönüşmesini inhibe ederek fibrinolizi engeller ve kan kaybını azaltır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, spinal anestezi sonrası gelişen paraplejinin en olası nedenlerinden biridir?",
    options: [
      "Anestezik maddenin hızlı emilmesi",
      "Epidural hematom oluşumu",
      "Hiponatremi",
      "Spinal anestezide düşük doz kullanımı",
      "Lumbal ponksiyon sonrası BOS kaybı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Epidural hematom, sinir köklerine bası yaparak geri dönüşümsüz paraplejiye neden olabilir. Acil tanı ve drenaj gereklidir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, interskalen sinir bloğu uygulanan bir hastada solunum sıkıntısının en olası nedenidir?",
    options: [
      "Horner sendromu",
      "Frenik sinir blokajı",
      "Aort diseksiyonu",
      "Bronkospazm",
      "Hipoglossal sinir zedelenmesi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Frenik sinirin istemsiz olarak bloke edilmesi, özellikle tek akciğerli veya KOAH'lı hastalarda ciddi solunum sıkıntısına neden olabilir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki anestezik ajanlardan hangisi, kemik çimentosu sendromu olan hastada pulmoner hipertansiyonu daha da kötüleştirebilir?",
    options: [
      "Sevofluran",
      "İzofluran",
      "Nitröz oksit",
      "Propofol",
      "Ketamin",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Nitröz oksit, kapalı hava boşluklarına girer → pulmoner vasküler direnci artırır → çimento sendromunda risk oluşturur.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki sinirlerden hangisinin blokajı, ayak bileği cerrahisi için yeterli duyusal blok sağlayamaz?",
    options: [
      "Tibial sinir",
      "Sural sinir",
      "Safen sinir",
      "Superficial peroneal sinir",
      "Median sinir",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Median sinir, el bileğini innerve eder; ayak bileğiyle ilişkili değildir. Diğer dört sinir, ayak ve bilek cerrahileri için kritiktir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki yöntemlerden hangisi, intraoperatif yağ embolisi geliştiğinde ilk uygulanması gereken destektir?",
    options: [
      "Diüretik tedavi",
      "Oksijen verilmesi ve destek ventilasyon",
      "Antibiyotik başlanması",
      "Antikoagülasyon",
      "Bronkodilatör verilmesi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Hipoksemi, yağ embolisinin en ciddi sonucudur. Hemen oksijen desteği ve gerekirse mekanik ventilasyon sağlanmalıdır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Kemik çimentosu implantasyon sendromu ile ilişkili en sık görülen klinik bulgu aşağıdakilerden hangisidir?",
    options: [
      "Hiperglisemi",
      "Hipotansiyon",
      "Hipokalsemi",
      "Hipotermi",
      "Hipernatremi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Kemik çimentosu polimerizasyonu sırasında sistemik vazodilatasyon ve pulmoner şant gelişebilir. Bu durum hipotansiyon, aritmi, hipoksi gibi bulgularla karakterizedir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Total kalça artroplastisinde çimento implantasyonu sırasında gelişebilecek emboli tiplerinden biri değildir?",
    options: [
      "Yağ embolisi",
      "Hava embolisi",
      "Kemik iliği embolisi",
      "Trombüs embolisi",
      "Kalsiyum embolisi",
    ],
    correctAnswerIndex: 4,
    explanation:
        "İntramedüller basınç artışı sonucu venöz sisteme yağ, hava, çimento ve kemik iliği embolleri geçebilir ancak kalsiyum embolisi tanımlanmış değildir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi postoperatif düşme riskini en aza indirir?",
    options: [
      "Yüksek doz opioid verilmesi",
      "Sedatif premedikasyon",
      "Periferik sinir bloğu ile analjezi",
      "İntratekal morfin kullanımı",
      "Geç mobilizasyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Etkili ve hedefe yönelik ağrı kontrolü sağlayan sinir blokları, opioid kullanımını azaltarak bilinç bozukluğu ve düşme riskini azaltır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Postoperatif analjezi için intratekal morfin kullanıldığında en dikkat edilmesi gereken komplikasyon hangisidir?",
    options: [
      "Alerji",
      "İdrar retansiyonu",
      "Gecikmiş solunum depresyonu",
      "Bulantı-kusma",
      "Hipotansiyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İntratekal morfinin etki süresi uzun olduğundan solunum depresyonu gecikmiş olarak ortaya çıkabilir. Bu nedenle yoğun izlem gerekir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Kalça artroplastisi sonrası dislokasyon riskini azaltmak için aşağıdaki pozisyonlardan hangisinden kaçınılmalıdır?",
    options: [
      "Hafif ekstansiyon",
      "Hafif abduksiyon",
      "Aşırı fleksiyon ve internal rotasyon",
      "Nötral pozisyon",
      "Dorsifleksiyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kalça protezli hastalarda bu pozisyon dislokasyon riskini artırır, dikkatle kaçınılmalıdır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangi ortopedik cerrahi sırasında spinal anesteziye intratekal opioid eklenmesi analjeziyi uzatır ama solunumu etkileyebilir?",
    options: [
      "El cerrahisi",
      "Diz artroskopisi",
      "Kalça artroplastisi",
      "Omuz artroskopisi",
      "Ayak bileği artrodezi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kalça artroplastisi gibi majör girişimlerde intratekal opioid analjeziyi uzatır, fakat solunum depresyonu riski taşır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahide turnike kullanımı ile ilgili aşağıdakilerden hangisi yanlıştır?",
    options: [
      "Kansız cerrahi alan sağlar",
      "Arteriyel tromboembolizme yol açabilir",
      "Turnike açıldığında hipotansiyon görülebilir",
      "Hiperkalemi gelişebilir",
      "Hemodinamik stabiliteyi artırır",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Turnike açıldığında laktat, potasyum ve asit yükü salınır. Bu durum hipotansiyon ve aritmilere neden olabilir, hemodinamik stabiliteyi azaltır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Diz artroskopisi sırasında en çok tercih edilen anestezi yöntemlerinden biri aşağıdakilerden hangisidir?",
    options: [
      "Yalnızca lokal anestezi",
      "İntratekal opioid",
      "Periferik sinir bloğu",
      "Epidural anestezi",
      "Ketaminle sedasyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Periferik sinir blokları, özellikle femoral veya adductor canal blokları diz cerrahisinde analjezi sağlamak için yaygın olarak kullanılır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nöroaksiyel anestezi kullanımının DVT üzerindeki etkisiyle ilgili aşağıdakilerden hangisi doğrudur?",
    options: [
      "DVT riskini artırır",
      "Antikoagülana ihtiyaç bırakmaz",
      "Sadece enfeksiyon riskini artırır",
      "Venöz kan akımını azaltır",
      "Venöz kan akımını artırır ve DVT riskini azaltır",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Nöroaksiyel anestezi, alt ekstremitede sempatik blokajla venöz dönüşü artırır, bu da tromboemboli riskini azaltır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahide traneksamik asit kullanımı için en uygun zamanlama hangisidir?",
    options: [
      "Operasyon sonrası",
      "Operasyonun ortasında",
      "Operasyonun sonunda",
      "Cilt insizyonundan önce",
      "Ameliyat sonrası gün",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Kan kaybını azaltmak için traneksamik asit insizyondan önce verilmeli, hem IV hem topikal kullanılabilir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Diz protezi cerrahisi sonrası en büyük postoperatif komplikasyon hangisidir?",
    options: [
      "Hiponatremi",
      "Düşme",
      "Hiperkalsemi",
      "Uyanma gecikmesi",
      "Trombositopeni",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Düşme, diz protezi sonrası en ciddi postoperatif komplikasyonlardan biridir ve dikkatli önlemler gerektirir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Yağ embolisi sendromunu önlemenin en etkili yolu aşağıdakilerden hangisidir?",
    options: [
      "Geç redüksiyon",
      "Erken cerrahi stabilizasyon",
      "NSAİİ verilmesi",
      "Uzun süreli yatak istirahati",
      "Steroid profilaksisi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Kırığın erken stabilizasyonu yağ embolisi sendromu riskini ve özellikle pulmoner komplikasyonları azaltır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahilerde DVT profilaksisinde en sık kullanılan mekanik yöntem hangisidir?",
    options: [
      "Kompresyon çorapları",
      "Turnike",
      "Ayak masajı",
      "İntermittan pnömatik kompresyon",
      "Traksiyon",
    ],
    correctAnswerIndex: 3,
    explanation:
        "İntermittan pnömatik kompresyon cihazları DVT ve PE insidansını anlamlı biçimde azaltır ve yaygın olarak kullanılır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumlardan hangisi yağ embolisi sendromunun belirtileri arasında yer almaz?",
    options: [
      "Peteşiyel döküntü",
      "Mental durumda değişiklik",
      "Bradikardi",
      "Dispne",
      "Hipoksemi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yağ embolisi sendromunda klasik triad dispne, konfüzyon ve peteşidir. Bradikardi ise tipik bir bulgu değildir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Perioperatif dönemde DVT profilaksisi için antikoagülan başlama zamanı en uygunu hangisidir?",
    options: [
      "Cerrahiden 12 saat önce",
      "Cerrahiden hemen sonra",
      "Epidural kateter çıkarıldıktan sonra",
      "Ameliyat günü",
      "Yatıştan 24 saat sonra",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Genel olarak kalıcı epidural kateteri olmayan hastalarda antikoagülanlar ameliyat günü başlanabilir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Periferik sinir bloklarıyla ilişkili en sık endişe edilen ortopedik komplikasyon aşağıdakilerden hangisidir?",
    options: [
      "Solunum depresyonu",
      "Ağrı kontrolünün yetersiz olması",
      "Düşme",
      "Kanama",
      "Hipotermi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Alt ekstremite cerrahilerinden sonra en büyük endişe postoperatif düşmedir. Blok yapılan hastalar motor fonksiyonları geri dönene kadar desteklenmelidir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Kemik çimentosu implantasyon sendromunun oluşmasında en önemli etken nedir?",
    options: [
      "Hiponatremi",
      "İntramedüller hipertansiyon",
      "Trombositopeni",
      "Laktat artışı",
      "Hipervolemi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Polimetilmetakrilatın ekzotermik reaksiyonu intramedüller basıncı 500 mmHg'nin üzerine çıkarabilir, bu durum embolilere ve çimento sendromuna neden olur.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki ortopedik girişimlerden hangisinde sinir bloğu sonrası düşme riski en fazladır?",
    options: [
      "El cerrahisi",
      "Diz artroskopisi",
      "Kalça artroplastisi",
      "Omuz artroskopisi",
      "Spinal füzyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Alt ekstremite sinir blokları motor kontrolü bozabilir. Kalça cerrahilerinde bu durum düşmeye neden olabilir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki hangi pozisyon kalça çıkığı olan protez hastasında dislokasyon riskini artırır?",
    options: [
      "Ekstansiyon ve abduksiyon",
      "Ekstansiyon ve internal rotasyon",
      "Fleksiyon ve internal rotasyon",
      "Abduksiyon ve eksternal rotasyon",
      "Supin pozisyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Bu pozisyon kalça protezi dislokasyonuna en sık neden olan pozisyondur.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Romatoid artritli bir hastada entübasyon planlanıyorsa aşağıdakilerden hangisi zorunludur?",
    options: [
      "Antibiyotik profilaksisi",
      "C1–C2 instabilitesi için lateral grafi",
      "Yüksek doz steroid",
      "Trakeostomi hazırlığı",
      "Endoskopik entübasyon",
    ],
    correctAnswerIndex: 1,
    explanation:
        "RA hastalarında asemptomatik atlantoaksiyel subluksasyon olabilir. Boyun ekstansiyonu nörolojik hasar riski taşır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki ortopedik işlemlerden hangisi için invaziv arteriyel monitörizasyon en çok önerilir?",
    options: [
      "Ayak bileği artrodezi",
      "El cerrahisi",
      "Total kalça artroplastisi",
      "Spinal füzyon",
      "Omuz artroskopisi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Çimento ile yapılan TKP işlemleri, ciddi hemodinamik değişiklikler yaratabileceğinden seçilmiş vakalarda invaziv monitörizasyon gerekebilir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Total kalça artroplastisinde çimento uygulanırken gelişebilecek komplikasyonlardan biri değildir:",
    options: [
      "Hipotansiyon",
      "Aritmi",
      "Pulmoner hipertansiyon",
      "Hipertansiyon",
      "Kalp debisinde azalma",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Polimetilmetakrilat çimentosu sistemik vazodilatasyon ve hipoksiye neden olur, hipertansiyon beklenmez.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangi ajan kas kontraktürünü hızlı şekilde çözüp kalça çıkığı redüksiyonunu kolaylaştırır?",
    options: [
      "Ketamin",
      "Süksinilkolin",
      "Midazolam",
      "Fentanil",
      "Propofol",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Kalça redüksiyonu sırasında kas gevşetmek için kısa etkili depolarizan ajan olan süksinilkolin sıklıkla kullanılır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Minimal invaziv diz cerrahisi sonrası erken taburculukta en önemli rol oynayan faktör nedir?",
    options: [
      "İnhale anesteziklerin tipi",
      "Yoğun bakım ünitesi rezervi",
      "Sürekli periferik sinir bloğu",
      "Yalnızca epidural analjezi",
      "Arteriyel kan basıncı takibi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Perinöral lokal anestezik infüzyonlar, TKA sonrası taburculuk süresini kısaltır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki ajanlardan hangisi intraartiküler olarak verildiğinde postoperatif analjeziyi uzatır?",
    options: [
      "Ketorolak",
      "Epinefrin",
      "Lidokain",
      "Sodyum bikarbonat",
      "Deksketoprofen",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Ketorolak intraartiküler analjeziye katkı sağlar ve postoperatif ağrının kontrolünü uzatır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Postoperatif analjezide perinöral infüzyonla ilişkili avantaj aşağıdakilerden hangisidir?",
    options: [
      "Daha sık bulantı",
      "İdrar retansiyonu",
      "Erken ambulasyon",
      "Düşme riskinde artış",
      "Sedasyon artışı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Perinöral lokal anestezik infüzyonlar daha az yan etki ile erken mobilizasyon sağlar.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Total kalça artroplastisinde hastanın en uygun pozisyonu hangisidir?",
    options: [
      "Trendelenburg",
      "Supin",
      "Lateral dekübit",
      "Prone",
      "Sims",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kalça protezi cerrahisi genellikle lateral dekübit pozisyonda gerçekleştirilir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezi sonrası baş ağrısı gelişmesini azaltmak için hangi iğne tipi tercih edilmelidir?",
    options: [
      "Quincke",
      "Tuohy",
      "Whitacre",
      "Crawford",
      "Huber",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kalem ucu iğneler (Whitacre) PDPH riskini azaltır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal anestezide hipobarik solüsyon kullanımı hangi avantajı sağlar?",
    options: [
      "Sedasyon",
      "Yan etkilerin artması",
      "Pozisyon vermede esneklik",
      "Spinal hematom riskinde artış",
      "Kanama kontrolü",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Hipobarik lokal anestezik, yerçekimine bağlı olarak istenen yönde yayılır. Pozisyonlama açısından esneklik sağlar.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Kalça artroplastisinde çimento uygulanması sırasında arteriyel kan basıncında ani düşüş görülürse ilk yapılacak işlem nedir?",
    options: [
      "Sıvı yüklemesi",
      "Nitröz oksit kesilmesi",
      "Cerraha bilgi verilmesi",
      "Tansiyon düşüklüğüne müdahale edilmemesi",
      "İdrar çıkışı takibi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Çimento uygulaması sırasında hipotansiyon gelişirse ilk olarak cerrahi manevralar durdurulmalı ve cerrah bilgilendirilmelidir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Total kalça artroplastisinde 'kemik çimentosu sendromu'nun en sık görülen bulgusu nedir?",
    options: [
      "Hipertansiyon",
      "Hipoksi",
      "Bradikardi",
      "Hipertermi",
      "Koagülopati",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Kemik çimentosundan emboli ile hipoksi %95 vakada görülür.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahide 'turnike komplikasyonları'ndan en sık görüleni hangisidir?",
    options: [
      "Sinir hasarı",
      "Vasküler yaralanma",
      "Kas nekrozu",
      "Post-turnike hiperemi",
      "Kompartman sendromu",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Peroneal sinir hasarı en sık görülen komplikasyondur.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal cerrahide 'wake-up test' hangi durumda uygulanır?",
    options: [
      "Skolyoz cerrahisi",
      "Servikal diskektomi",
      "Lomber spinal stenoz",
      "Vertebra fraktürü",
      "Tüm spinal cerrahilerde",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Skolyoz düzeltme ameliyatlarında spinal kord fonksiyonunu değerlendirmek için.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Total diz artroplastisinde 'tourniquet süresi' için üst sınır ne olmalıdır?",
    options: [
      "30 dakika",
      "60 dakika",
      "90 dakika",
      "120 dakika",
      "180 dakika",
    ],
    correctAnswerIndex: 3,
    explanation:
        "2 saatten uzun süreler iskemi riskini artırır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahide 'yağ embolisi sendromu' tanı kriterlerinden hangisi majör kriter değildir?",
    options: [
      "Peteşiyal döküntü",
      "Hipoksi (PaO₂ <60 mmHg)",
      "Mental durum değişikliği",
      "Taşikardi",
      "Pulmoner infiltrasyon",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Taşikardi minör kriterlerdendir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahide en sık görülen tromboembolik komplikasyon hangisidir?",
    options: [
      "Pulmoner emboli",
      "Derin ven trombozu",
      "Miyokard enfarktüsü",
      "Serebral emboli",
      "Retinal emboli",
    ],
    correctAnswerIndex: 1,
    explanation:
        "DVT insidansı %40-60 ile en sık görülendir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Total kalça artroplastisi sonrası en sık görülen erken komplikasyon hangisidir?",
    options: [
      "Enfeksiyon",
      "Dislokasyon",
      "Kanama",
      "Nöropraksi",
      "Emboli",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Dislokasyon özellikle total kalça artroplastisinde (TKA) en sık erken komplikasyondur (~%1-5).",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal füzyon cerrahisinde hangi anestezi tekniği tercih edilmelidir?",
    options: [
      "Spinal anestezi",
      "Epidural anestezi",
      "Genel anestezi + İnvaziv monitorizasyon",
      "Sedasyon + Lokal anestezi",
      "Rejyonel bloklar",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Uzun süreli cerrahi ve masif kanama riski nedeniyle genel anestezi gereklidir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahide en sık kullanılan antibiyotik profilaksisi hangisidir?",
    options: [
      "Sefazolin",
      "Vankomisin",
      "Klindamisin",
      "Gentamisin",
      "Metronidazol",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Protez cerrahisinde 1. nesil sefalosporinler altın standarttır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Total kalça protezi sonrası en sık görülen nörolojik komplikasyon hangisidir?",
    options: [
      "Femoral sinir hasarı",
      "Obturator sinir hasarı",
      "Siyatik sinir hasarı",
      "Peroneal sinir hasarı",
      "Tibial sinir hasarı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Siyatik sinir %1-3 oranında yaralanır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal cerrahide hangi monitorizasyon zorunludur?",
    options: [
      "BIS",
      "Somatosensoriyel uyarılmış potansiyeller",
      "Transkranial Doppler",
      "İntrakranial basınç monitorizasyonu",
      "Santral venöz basınç",
    ],
    correctAnswerIndex: 1,
    explanation:
        "SSEP spinal kord perfüzyonunu değerlendirmede altın standarttır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Total diz artroplastisinde femoral sinir bloğu hangi siniri etkilemez?",
    options: [
      "Femoral sinir",
      "Obturator sinir",
      "Lateral femoral kutanöz sinir",
      "Genitofemoral sinir",
      "Hepsi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Obturator sinir farklı pleksustan innerve olur.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahide en sık görülen yağ embolisi hangi prosedürde görülür?",
    options: [
      "Total kalça artroplastisi",
      "Femur intramedüller çivileme",
      "Total diz artroplastisi",
      "Vertebroplasti",
      "Omuz artroplastisi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Uzun kemik cerrahisinde risk %30'lara çıkar.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahide en sık kullanılan antikoagülan hangisidir?",
    options: [
      "Warfarin",
      "Düşük molekül ağırlıklı heparin",
      "Aspirin",
      "Fondaparinux",
      "Rivaroksaban",
    ],
    correctAnswerIndex: 1,
    explanation:
        "LMWH tromboemboli profilaksisinde ilk seçenektir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal cerrahide hangi pozisyon brakiyal pleksus hasarı riskini artırır?",
    options: [
      "Prone",
      "Lateral",
      "Oturur",
      "Trendelenburg",
      "Supin",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Prone pozisyonda abduksiyon >90° risk oluşturur.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahide en sık görülen elektrolit bozukluğu hangisidir?",
    options: [
      "Hiponatremi",
      "Hiperkalemi",
      "Hipokalsemi",
      "Hipermagnezemi",
      "Hipofosfatemi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Masif transfüzyona bağlı hipokalsemi sıktır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Total eklem artroplastisi sonrası en sık görülen geç komplikasyon hangisidir?",
    options: [
      "Enfeksiyon",
      "Protez gevşemesi",
      "Dislokasyon",
      "Heterotopik ossifikasyon",
      "Derin ven trombozu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "5-10 yıl sonra aseptik gevşeme görülme sıklığı %10-20'dir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahide hangi antibiyotik kemik penetrasyonu en iyidir?",
    options: [
      "Sefazolin",
      "Vankomisin",
      "Klindamisin",
      "Gentamisin",
      "Siprofloksasin",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Vankomisin kemik dokusunda yüksek konsantrasyona ulaşır.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Total kalça artroplastisinde hangi pozisyon posterior dislokasyon riskini artırır?",
    options: [
      "Fleksiyon + internal rotasyon",
      "Ekstansiyon + eksternal rotasyon",
      "Fleksiyon + eksternal rotasyon",
      "Ekstansiyon + internal rotasyon",
      "Abduksiyon + fleksiyon",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Fleksiyon >90° + internal rotasyon en riskli pozisyondur.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahide hangi hasta grubunda opioid duyarlılığı artar?",
    options: [
      "Romatoid artrit",
      "Osteoporoz",
      "Fibromiyalji",
      "Osteoartrit",
      "Ankilozan spondilit",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Fibromiyaljide santral sensitizasyon nedeniyle opioid etkinliği artar.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Spinal cerrahide hangi anestezik nöroprotektif etki gösterir?",
    options: [
      "Propofol",
      "Ketamin",
      "Sevofluran",
      "Hepsi",
      "Hiçbiri",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Tüm anestezikler nöroprotektif özellik gösterir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Ortopedik cerrahide hangi hasta grubunda entübasyon zorluğu beklenir?",
    options: [
      "Romatoid artrit",
      "Ankilozan spondilit",
      "Osteoporoz",
      "Osteoartrit",
      "Hiçbiri",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Servikal omurga tutulumu nedeniyle zor havayolu riski yüksektir.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Total diz artroplastisinde hangi sinir bloğu postoperatif ağrıyı en iyi kontrol eder?",
    options: [
      "Femoral sinir bloğu",
      "Adduktor kanal bloğu",
      "Siyatik sinir bloğu",
      "Popliteal bloğu",
      "Hepsi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Adduktor kanal bloğu motor blok yapmadan analjezi sağlar.",
    category: "Ortopedik Cerrahide Anestezi",
    difficulty: 2,
  ),
];
