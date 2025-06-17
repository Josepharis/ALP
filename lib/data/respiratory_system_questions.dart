import '../models/question.dart';

final respiratorySystemQuestions = <Question>[
  Question(
    question:
        "Aşağıdakilerden hangisi, çift devreli ventilasyon sistemlerinin bir avantajıdır?",
    options: [
      "Daha küçük boyutlu olması",
      "Hasta ile ventilatör arasında doğrudan temas",
      "Inspirasyon havasının aktif ısıtılması",
      "Taze gaz tüketiminin yüksek olması",
      "Nemlendirme gerektirmemesi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Çift devreli sistemlerde, inspirasyon havası ısıtıcı aracılığıyla ısıtılır ve nemlendirilir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki gazlardan hangisi atıl gaz olarak sınıflandırılır ve absorban madde tarafından tutulmaz?",
    options: [
      "Karbon dioksit",
      "Oksijen",
      "Nitröz oksit",
      "Azot",
      "Sevofluran",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Azot (N₂), metabolize edilmeyen atıl bir gazdır ve absorban tarafından tutulmaz.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, solunum devresinde gazların geri akışını engelleyen mekanizmadır?",
    options: [
      "Vaporizatör",
      "Karbondioksit absorbanı",
      "Tek yönlü valfler",
      "APL valfi",
      "Reservoir bag",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Tek yönlü valfler, gazların sadece belirli bir yönde akmasına izin verir → geri akışı engeller.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Rebreathing sistemlerinde karbondioksit eliminasyonu için kullanılan en yaygın absorban madde aşağıdakilerden hangisidir?",
    options: [
      "Silika",
      "Sodyum klorür",
      "Sodyum hidroksit",
      "Kalsiyum hidroksit içeren soda lime",
      "Magnezyum sülfat",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Soda lime, CO₂ absorpsiyonunda yaygın kullanılan maddedir → Ca(OH)₂ içeriği etkindir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, solunum sistemlerinde kullanılan reservoir (balon) torbasının temel işlevlerinden biri değildir?",
    options: [
      "Elle ventilasyona olanak sağlamak",
      "Solunum hacminin gözlemlenmesi",
      "Ekshale edilen gazın analiz edilmesi",
      "Hacim rezervuarı görevi görmek",
      "APL valfi ile birlikte kullanılarak basınç kontrolü sağlamak",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Reservoir bag, gaz hacmini tutar, elle ventilasyona imkân tanır → analiz için doğrudan kullanılmaz.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, kalkarbonat bazlı absorbanların kullanımında dikkat edilmesi gereken risklerden biridir?",
    options: [
      "Hava embolisi",
      "Karboksihemoglobin artışı",
      "Karbon monoksit üretimi",
      "Asidoz",
      "Bronkospazm",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Özellikle kuru bazlı soda lime ile desfluran, izofluran gibi ajanların teması karbon monoksit üretebilir.",
    category: "Solunum Sistemleri",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, solunum sistemlerinde \"sirkülasyon zamanı\" kavramını belirleyen parametrelerden biridir?",
    options: [
      "Hasta yaşı",
      "Devre içi gaz hacmi",
      "Oksijen satürasyonu",
      "Vücut ısısı",
      "Hematokrit",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Sirkülasyon zamanı, gazın sistem içinde dolaşım süresidir → devre hacmi bu zamanı etkiler.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki bileşenlerden hangisi, non-rebreathing devrelerde bulunan ancak klasik circle sistemlerde yer almayan bir bileşendir?",
    options: [
      "APL valfi",
      "Tek yönlü valf",
      "Taze gaz girişi",
      "Reservoir torba",
      "Jackson-Rees uzantısı",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Jackson-Rees, pediatrik hastalarda kullanılan modifiye Mapleson sistemi bileşenidir → non-rebreathing sistem özelliği taşır.",
    category: "Solunum Sistemleri",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki parametrelerden hangisi, devre içinde gaz akışının yeterli olup olmadığını doğrudan gösteren bir göstergedir?",
    options: ["Kapnografi", "SpO₂", "EKG", "Vücut ısısı", "Arter basıncı"],
    correctAnswerIndex: 0,
    explanation:
        "Kapnografi, ekshalasyonla atılan CO₂'nin sürekli izlendiği ve gaz dolaşımının sağlandığını gösteren en doğrudan göstergedir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, anestezi devre sistemlerinde taze gaz akış hızının artırılmasıyla ortaya çıkan etkilerden biridir?",
    options: [
      "CO₂ rebreathing artar",
      "Absorbanın kullanım ömrü uzar",
      "Sistem ısısı artar",
      "Ajan tüketimi azalır",
      "Oksijen tüketimi düşer",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Yüksek taze gaz akışı, CO₂'yi sistemden uzaklaştırarak absorban kullanımını azaltır, ömrünü uzatır.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question: "Mapleson A devresi için en doğru ifade hangisidir?",
    options: [
      "Spontan solunumda en verimli, kontrollü solunumda en verimsiz sistemdir",
      "Kontrollü ventilasyonda en az rebreathing'e neden olur",
      "CO₂ absorbanı içerir",
      "Ototraksiyon riskini artırır",
      "Pediatrik hastalarda en yaygın kullanılan sistemdir",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Mapleson A, spontan solunumda en etkili, ancak kontrollü ventilasyonda yetersiz CO₂ temizliği nedeniyle verimsizdir.",
    category: "Solunum Sistemleri",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki sistemlerden hangisinde, CO₂ rebreathing riski en düşüktür?",
    options: [
      "Mapleson A",
      "Mapleson D",
      "Bain devresi",
      "Circle sistem (düşük akım)",
      "Mapleson B",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Mapleson A, spontan solunumda yeterli taze gaz akışıyla çalıştığında rebreathing riski düşüktür.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, soda lime'ın \"tükenmekte\" olduğunu gösteren en güvenilir işarettir?",
    options: [
      "PH düşüşü",
      "Renk değişikliği",
      "Isı üretimi",
      "Köpürme",
      "Gaz akımının yavaşlaması",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Renk değişimi, genellikle pH duyarlı boya maddeleri ile absorbanın tükenme göstergesidir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki durumlardan hangisi, karbon monoksit oluşumunu artırır?",
    options: [
      "Yeni soda lime kullanımı",
      "Yüksek nem oranı",
      "Düşük sıcaklık",
      "Kuru bazlı absorban",
      "Düşük taze gaz akışı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Kurumuş soda lime, özellikle desfluran gibi ajanlarla reaksiyona girerek CO oluşumuna neden olur.",
    category: "Solunum Sistemleri",
    difficulty: 3,
  ),

  Question(
    question:
        "Circle sistemde düşük akım ile çalışıldığında aşağıdakilerden hangisi beklenmez?",
    options: [
      "Ajan tasarrufu",
      "Isı ve nemin korunması",
      "Absorban tüketiminin azalması",
      "Taze gaz ihtiyacının azalması",
      "CO₂ absorpsiyon ihtiyacının artması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Düşük akımda sistem daha fazla CO₂ içerdiği için absorban daha çok kullanılır, dolayısıyla tüketim artar→ beklenmeyen değil, beklenen bir durumdur.",
    category: "Solunum Sistemleri",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki devrelerden hangisi, en iyi ısı ve nem korunumunu sağlar?",
    options: [
      "Bain devresi",
      "Mapleson A",
      "Circle sistem",
      "Tüp+Valf sistemi",
      "Mapleson E",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Circle sistem, solunan gazın büyük kısmını yeniden kullandığı için ısı ve nem kaybı minimaldir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, solunum devresinde \"komplians\" (uyumluluk) ile doğrudan ilişkilidir?",
    options: [
      "Tidal volüm",
      "Devre içi basınç artışı",
      "CO₂ emilimi",
      "Oksijen tüketimi",
      "Devre hacmi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Komplians, birim basınç değişimine karşılık alınan volüm değişimidir → tidal volümle doğrudan ilişkilidir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, solunum sisteminde \"ölü boşluk\" hacmini azaltmak için en etkili yöntemdir?",
    options: [
      "Taze gaz akışını artırmak",
      "Ventilatör modunu değiştirmek",
      "Devre uzunluğunu kısaltmak",
      "Inspiratuvar süreyi artırmak",
      "PEEP'i düşürmek",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Devre uzunluğu ve bağlantı aparatları, ölü boşluk hacmini artırır → kısaltma, ölü boşluğu azaltır.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Soda lime'ın CO₂ ile reaksiyonu sonucu aşağıdakilerden hangisi ortaya çıkar?",
    options: [
      "Nitröz oksit",
      "Karbon monoksit",
      "Kalsiyum karbonat",
      "Helyum",
      "Bikarbonat",
    ],
    correctAnswerIndex: 2,
    explanation:
        "CO₂, soda lime ile reaksiyona girerek CaCO₃ (kalsiyum karbonat) oluşturur.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, non-rebreathing sistemlerin tipik özelliklerinden biri değildir?",
    options: [
      "Yüksek taze gaz akımı gerektirir",
      "CO₂ absorbanı içermez",
      "Tek yönlü valf içermez",
      "Sirkülasyon zamanı uzundur",
      "Kısa ameliyatlarda tercih edilir",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Non-rebreathing sistemlerde sirkülasyon süresi kısa, taze gaz hızlı dolaşır → uzun değildir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, solunum devresinde meydana gelen gaz kaçağını tespit etmek için kullanılan bir yöntemdir?",
    options: [
      "SpO₂ ölçümü",
      "APL valfi kontrolü",
      "Pozitif basınç testi",
      "Soda lime rengi",
      "Vaporizatör kalibrasyonu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Pozitif basınç testi, sistemin sızdırmazlığını kontrol etmek için kullanılan temel yöntemdir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, HME (heat moisture exchanger) filtrelerinin avantajlarından biri değildir?",
    options: [
      "Nem kaybını azaltır",
      "Isı kaybını önler",
      "CO₂ absorbe eder",
      "Mikroorganizma filtrasyonu sağlar",
      "Ucuz ve pratiktir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "HME filtreleri, nem ve ısıyı tutar ancak CO₂ absorpsiyonu sağlamaz. Bu görev soda lime'a aittir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Mapleson devreleri, aşağıdakilerden hangisine göre sınıflandırılır?",
    options: [
      "CO₂ absorban kapasitesine",
      "APL valfinin ve taze gaz girişinin konumuna",
      "Devre hacmine",
      "Kullanılan gaz türüne",
      "Bağlantı tipi ve uzunluğuna",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Mapleson sistemleri, APL valfi ve taze gaz girişinin yerleşimine göre A'den F'ye sınıflandırılır.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, solunum sisteminin artmış ölü boşluk nedeniyle etkisiz ventilasyona neden olduğunu gösterir?",
    options: [
      "Yüksek tidal volüm",
      "Normal EtCO₂, düşük PaCO₂",
      "Normal PaCO₂, düşük EtCO₂",
      "Düşük alveoler ventilasyon",
      "Yüksek PaO₂",
    ],
    correctAnswerIndex: 2,
    explanation:
        "EtCO₂'nin PaCO₂'ye göre daha düşük olması, ölü boşluğun arttığını ve efektif gaz değişiminin azaldığını gösterir.",
    category: "Solunum Sistemleri",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, non-rebreathing sistemlerin avantajlarından biri değildir?",
    options: [
      "Daha hızlı ajan derinliği değişimi sağlar",
      "Düşük maliyetlidir",
      "Karmaşık valf yapısı içermez",
      "Uzun süreli ventilasyona uygundur",
      "Isı ve nemi iyi koruyamaz",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Non-rebreathing sistemler, kısa süreli kullanıma uygundur → uzun süreli kullanımda ısı ve nem kaybı riski vardır.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "APL valfi kapalı konumda unutulursa ne gibi bir komplikasyon gelişebilir?",
    options: [
      "Hipokapni",
      "Volütravma",
      "Hipoinflasyon",
      "Hiperoksemi",
      "Hipotermi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "APL valfi kapalı kalırsa basınç boşaltılamaz → akciğerde aşırı şişme ve volütravma oluşabilir.",
    category: "Solunum Sistemleri",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki ifadelerden hangisi, circle sistemin avantajları arasında yer almaz?",
    options: [
      "Ajan tasarrufu",
      "Isı ve nemin korunması",
      "Hızlı derinlik değişimi",
      "CO₂ eliminasyonu",
      "Uzun süreli kullanım için uygunluk",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Circle sistemde gaz değişimi yavaş olduğundan derinlik değişimleri yavaştır.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, yüksek taze gaz akımıyla çalışan bir anestezi sisteminin tipik bir sonucudur?",
    options: [
      "Ajan tasarrufu",
      "Isı ve nemin korunması",
      "Rebreathing'in artması",
      "CO₂ absorbanına daha az ihtiyaç duyulması",
      "Ekspiratuvar valfinin kapanması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Yüksek taze gaz akımı, CO₂'yi sistemden hızla uzaklaştırır → absorban kullanımı azalır.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Jackson-Rees sistemi, aşağıdakilerden hangisinin modifikasyonu olarak kabul edilir?",
    options: [
      "Mapleson A",
      "Mapleson D",
      "Bain sistemi",
      "Circle sistem",
      "Mapleson B",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Jackson-Rees, Mapleson D sisteminin pediatrik kullanım için modifiye edilmiş halidir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Mapleson C devresinin ayırt edici özelliği aşağıdakilerden hangisidir?",
    options: [
      "Taze gaz girişinin devreye uzak olması",
      "APL valfinin olmaması",
      "Tek yönlü valf içermesi",
      "Rezervuar torbasının olmaması",
      "Çok kısa ve kompakt yapıda olması",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Mapleson C, kısa ve kompakt yapısıyla bilinir, acil durumlar için en küçük hacimli sistemdir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi, karbondioksit absorbanlarının toksik yan ürün üretme riskini artırmaz?",
    options: [
      "Soda lime'ın kuruması",
      "Yüksek sıcaklık",
      "Desfluran kullanımı",
      "Düşük nem",
      "Yüksek nem",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Yüksek nem, absorbanın sağlıklı çalışmasına yardımcı olur → toksik yan ürün riskini azaltır.",
    category: "Solunum Sistemleri",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki parametrelerden hangisi, solunum sisteminin tidal volümün etkili iletimini sağladığını gösterir?",
    options: [
      "Normal PaO₂",
      "Stabil end-tidal CO₂",
      "Düşük FiO₂",
      "Yüksek PaCO₂",
      "Azalmış vücut ısısı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "EtCO₂, ventilasyonun etkinliğini ve tidal volüm iletimini yansıtır → stabil ve normal EtCO₂, yeterli ventilasyonu gösterir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question: "Vaporizatörlerin devreye bağlanma yeri neresidir?",
    options: [
      "Hastaya en yakın noktada",
      "Flowmetreden önce",
      "Taze gaz hattı ile flowmetre arasında",
      "Flowmetre ile taze gaz çıkışı arasında",
      "Devre çıkışında",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Vaporizatörler, flowmetre sonrasında gaz karışımının volatil ajanla doyurulması için yerleştirilir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki sistemlerden hangisi, hem spontane hem kontrollü solunuma en uygun sistemlerden biridir?",
    options: [
      "Mapleson A",
      "Mapleson C",
      "Mapleson D",
      "Bain devresi",
      "Circle sistem",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Circle sistem, hem spontan hem de kontrollü ventilasyona uygun en dengeli ve yaygın sistemdir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi solunum devrelerinde rebreathing miktarını belirleyen en önemli faktörlerden biridir?",
    options: [
      "Gazın nem oranı",
      "Hasta ağırlığı",
      "Taze gaz akım hızı",
      "Devredeki direnç",
      "Hastanın yaşına göre devre seçimi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Rebreathing, yani ekshale edilen gazların tekrar solunması, doğrudan taze gaz akımı ile ilişkilidir. Yüksek taze gaz akımı rebreathing'i azaltır, düşük akım ise artırır.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Spontan solunum yapan bir hastada en düşük taze gaz akımı ile CO₂ eliminasyonu en iyi olan Mapleson devresi hangisidir?",
    options: [
      "Mapleson A",
      "Mapleson C",
      "Mapleson D",
      "Mapleson E",
      "Mapleson F",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Mapleson A devresi, spontan ventilasyonda CO₂'yi elimine etmek için en az taze gaz akımına ihtiyaç duyar. Bu da onu ekonomik kılar.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki devrelerden hangisi ölü boşluk miktarını artırma potansiyeline sahiptir?",
    options: [
      "Mapleson F",
      "Mapleson A",
      "Dairesel sistem",
      "Açık devre",
      "T-parçası",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Circle sistemdeki valfler, uzun hortumlar ve CO₂ absorbanı sistemi bir miktar ölü boşluk artırabilir. Bu durum özellikle küçük tidal volümlü (örn. çocuklar) hastalarda önemlidir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki devrelerden hangisinde CO₂ eliminasyonu sadece taze gaz akımına bağlıdır?",
    options: [
      "Dairesel sistem",
      "Mapleson A",
      "Kapalı devre",
      "Mapleson D",
      "Mapleson F",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Mapleson F (Jackson-Rees), CO₂ absorbanı içermez. Bu nedenle CO₂ eliminasyonu yalnızca yüksek taze gaz akımıyla sağlanır. Taze gaz akımı yetersizse rebreathing olur ve hiperkapni gelişebilir.",
    category: "Solunum Sistemleri",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki seçeneklerden hangisi çocuklarda (özellikle < 20 kg) sık kullanılan bir solunum devresidir?",
    options: [
      "Mapleson A",
      "Dairesel sistem",
      "Mapleson B",
      "Mapleson E/F (Jackson-Rees)",
      "Kapalı devre",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Pediatrik hastalarda dairesel sistemler yüksek dirençli olduğu için tercih edilmez. Jackson-Rees devresi (Mapleson F), düşük dirençli olması ve CO₂ eliminasyonunun basit olması nedeniyle sık kullanılır.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi Mapleson A devresinin spontan ventilasyondaki üstünlüğünün nedenidir?",
    options: [
      "CO₂ absorbanı içermesi",
      "Taze gaz girişinin valfe yakın olması",
      "Ekshalasyon valfinin hastaya uzak olması",
      "CO₂ rebreathing'inin yüksek olması",
      "Kontrollü ventilasyona uygun olması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Mapleson A devresinde ekshalasyon valfi hastaya uzaktadır, bu da ekshale edilen gazların kolayca dışarı atılmasına ve CO₂ rebreathing'inin önlenmesine yardımcı olur.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Solunum devrelerinde direnci en çok etkileyen faktör aşağıdakilerden hangisidir?",
    options: [
      "Gazın sıcaklığı",
      "Devredeki hortum çapı",
      "CO₂ absorban tipi",
      "Taze gaz akımı hızı",
      "Kullanılan valf sayısı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Direnç, hortum çapıyla ters orantılıdır. Çap azaldıkça direnç artar. Bu yüzden pediatrik hastalarda geniş çaplı, kısa ve düz borular tercih edilir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdaki devrelerden hangisinde rezervuar balonu bulunmaz?",
    options: [
      "Mapleson A",
      "Mapleson D",
      "Mapleson E",
      "Mapleson F",
      "Dairesel sistem",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Mapleson E devresi, en basit solunum devrelerinden biridir ve uç kısmında rezervuar balonu yoktur. Bu haliyle kontrollü ventilasyon için uygun değildir. Mapleson F (Jackson-Rees), E'nin balonlu versiyonudur.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi kapalı devre sistemin avantajlarından biridir?",
    options: [
      "Yüksek oksijen tüketimi",
      "Artmış anestezik madde kaybı",
      "Hızlı derlenme süresi",
      "Düşük çevresel kontaminasyon",
      "CO₂ absorbanına ihtiyaç olmaması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Kapalı sistemlerde gazlar sistem içinde kaldığı için dış ortama sızan (waste) gaz miktarı düşüktür. Bu da çevresel kontaminasyonu azaltır.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Yüksek taze gaz akımı kullanılması, aşağıdaki devrelerden hangisinde rebreathing'i önlemenin zorunlu şartıdır?",
    options: [
      "Kapalı sistem",
      "Mapleson A",
      "Mapleson D",
      "Mapleson F",
      "Dairesel sistem",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Jackson-Rees (Mapleson F) devresinde CO₂ absorbanı yoktur. Rebreathing'i engellemenin tek yolu taze gaz akımını dakik hacimden daha yüksek tutmaktır.",
    category: "Solunum Sistemleri",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi solunum devrelerinde artmış ölü boşluk için en az etkili faktördür?",
    options: [
      "Uzun devre hortumları",
      "Tek yönlü valflerin arızası",
      "CO₂ absorbanın tıkanması",
      "Gazın nemliliği",
      "Valflerin hasta tarafına yakın konumlanması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Gazın nem oranı, devredeki anatomik veya fizyolojik ölü boşluğu etkilemez. Ölü boşluk; valf yerleşimi, hortum uzunluğu ve devre içi tıkanıklıklarla artabilir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "CO₂ absorbanlarıyla ilgili olarak aşağıdakilerden hangisi doğrudur?",
    options: [
      "Absorban ısı açığa çıkarmaz",
      "CO₂'yi kimyasal olarak tutar",
      "Absorbanlar yalnızca pediatrik devrelerde kullanılır",
      "Sadece su buharı ile çalışır",
      "CO₂ absorbanı olan devrelerde valf bulunmaz",
    ],
    correctAnswerIndex: 1,
    explanation:
        "CO₂ absorbanları (ör. soda lime), karbondioksiti kimyasal reaksiyonla bağlar ve böylece hastanın yeniden CO₂ solumasını engeller. Reaksiyon ekzotermiktir, yani ısı açığa çıkarır.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki Mapleson devrelerinden hangisi en az ekonomik kabul edilir?",
    options: [
      "Mapleson A",
      "Mapleson B",
      "Mapleson C",
      "Mapleson D",
      "Mapleson F",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Mapleson C devresi, çok kısa ve basit yapısıyla rebreathing'i önlemek için yüksek taze gaz akımına ihtiyaç duyar. Bu da onu ekonomik olmayan hale getirir. Ayrıca CO₂ temizlemede yetersizdir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Dairesel sistemde tek yönlü valflerin çalışmaması durumunda aşağıdakilerden hangisi beklenir?",
    options: [
      "Hipoksi",
      "Artmış gaz tüketimi",
      "Hipotermi",
      "CO₂ retansiyonu",
      "Oksijen toksisitesi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Circle sistemde tek yönlü valfler gaz akımını yönlendirir. Eğer valfler çalışmazsa, hasta kendi ekshale ettiği CO₂'yi yeniden solur ve hiperkapni (CO₂ retansiyonu) gelişir.",
    category: "Solunum Sistemleri",
    difficulty: 3,
  ),

  Question(
    question:
        "Açık sistem (örneğin: Schimmelbusch maskesi) ile ilgili hangisi doğrudur?",
    options: [
      "CO₂ absorbanı içerir",
      "Rebreathing mümkündür",
      "Taze gaz akımı gerekmez",
      "Basit, ekonomik ama verimsizdir",
      "Kontrollü ventilasyon için idealdir",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Açık sistemler (etere ıslatılmış gazlı bez gibi) günümüzde neredeyse hiç kullanılmaz. CO₂ eliminasyonu yoktur ve doz titrasyonu zordur. Ancak çok basit yapıları nedeniyle tarihi öneme sahiptir.",
    category: "Solunum Sistemleri",
    difficulty: 1,
  ),

  Question(
    question: "Circle sistemle ilgili aşağıdaki ifadelerden hangisi yanlıştır?",
    options: [
      "Valflerle gaz akımı yönlendirilir",
      "CO₂ absorbanı içerir",
      "Spontan ventilasyonla uyumludur",
      "Rebreathing mümkün değildir",
      "Isı ve nem korunur",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Circle sistemin amacı kontrollü rebreathing sağlamaktır. CO₂ absorbanı ile karbondioksit ortadan kaldırılır, fakat diğer gazlar (örn. halotan, O₂) tekrar solunabilir. Bu sistemde rebreathing vardır ama kontrollüdür.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki durumların hangisinde Mapleson E sistemi tercih edilebilir?",
    options: [
      "Yetişkin hastada spontan ventilasyon",
      "Derin sedasyon altında çocuk hasta",
      "Yoğun bakımda mekanik ventilasyon",
      "Uzun süreli genel anestezi",
      "Karbondioksit eliminasyonunun kritik olduğu kapalı sistem",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Mapleson E (T-parçası), düşük dirençli olduğu için çocuklarda ve kısa süreli prosedürlerde kullanılabilir. Kontrollü ventilasyona uygun değildir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Dairesel sistemde inspiratuar valfin çalışmaması durumunda aşağıdakilerden hangisi en olası sonuçtur?",
    options: [
      "Gazlar dış ortama kaçar",
      "Taze gaz sistemi bozulur",
      "Hasta ekshale ettiği gazı tekrar solur",
      "CO₂ absorbanı devre dışı kalır",
      "Devre içi basınç sıfırlanır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İnspiratuar valfin işlev görmemesi, ekspire edilen CO₂'li gazların yeniden inspirasyon hattına karışmasına ve rebreathing'e yol açar → hiperkapni riski artar.",
    category: "Solunum Sistemleri",
    difficulty: 3,
  ),

  Question(
    question:
        "CO₂ absorbanı olarak kullanılan baralyme ve soda lime ile ilgili hangisi doğrudur?",
    options: [
      "Her ikisi de CO₂'yi fiziksel olarak tutar",
      "Soda lime nemli değilse çalışmaz",
      "Baralyme, ısı üretmez",
      "Her ikisi de anestetik gazları parçalamaz",
      "Soda lime, su ile reaksiyona girmez",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Soda lime'ın etkili olabilmesi için nemli olması gerekir. Kurumuş absorban çalışmaz. Ayrıca bazı inhalasyon anestezikleriyle (özellikle eski ajanlar) tepkimeye girerek toksik ürünler (örn. compound A) oluşturabilir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki devrelerin hangisi hem spontan hem de kontrollü ventilasyon için en esnek kullanım imkanı sunar?",
    options: [
      "Mapleson A",
      "Mapleson C",
      "Mapleson D",
      "Mapleson E",
      "Açık sistem",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Mapleson D, kontrollü ventilasyonda en etkin sistemlerden biridir. Uygun taze gaz akımı sağlanırsa spontan ventilasyona da uygundur. Bu yönüyle oldukça esnektir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question: "Kapalı devre sisteminin avantajlarından biri değildir:",
    options: [
      "Düşük taze gaz ihtiyacı",
      "Anestezik gaz tüketiminin azalması",
      "Çevreye minimum gaz salınımı",
      "Hızlı anestezi derinliği değişimi",
      "Isı ve nem korunması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Kapalı sistemlerde gaz akımı düşüktür ve sistem hacmi büyüktür. Bu nedenle gaz konsantrasyonundaki değişiklikler sisteme yavaş yansır. Hızlı derinlik değişimi gerekliyse açık sistemler tercih edilir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi rebreathing'i artırır?",
    options: [
      "Taze gaz akımının artırılması",
      "CO₂ absorbanının değiştirilmesi",
      "Solunum devresi uzunluğunun kısaltılması",
      "Ekshalasyon valfinin hatalı çalışması",
      "Düşük tidal volüm kullanılması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Ekshalasyon valfi düzgün çalışmazsa CO₂'li gazlar dışarı atılamaz ve inspiratuar gazla karışır. Bu durumda hasta rebreathing yapar ve hiperkapni riski doğar.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki durumlardan hangisinde anestezik gaz tüketimi en azdır?",
    options: [
      "Açık sistem",
      "Yarı açık sistem",
      "Yarı kapalı sistem",
      "Kapalı sistem",
      "Mapleson D",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Kapalı sistemde gazlar devre içinde dolaşır ve sadece metabolik ihtiyaca göre taze gaz verilir. Böylece minimum miktarda anestezik madde tüketilir. Ekonomiktir, ancak derinlik kontrolü yavaştır.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "CO₂ absorbanında bazik içerikler yer alır. Bu içerikler aşağıdakilerden hangisiyle reaksiyona girerek toksik bileşik oluşturabilir?",
    options: ["Halotan", "Sevofluran", "Oksijen", "Nitröz oksit", "Desfluran"],
    correctAnswerIndex: 1,
    explanation:
        "Sevofluran, soda lime gibi bazik CO₂ absorbanları ile reaksiyona girerek Compound A denilen nefrotoksik bir yan ürün oluşturabilir. Bu nedenle düşük taze gaz akımıyla dikkatli kullanılmalıdır.",
    category: "Solunum Sistemleri",
    difficulty: 3,
  ),

  Question(
    question:
        "Mapleson sistemlerinin karşılaştırılmasında aşağıdakilerden hangisi yanlıştır?",
    options: [
      "Mapleson A spontan ventilasyonda en etkilidir",
      "Mapleson D kontrollü ventilasyonda daha iyidir",
      "Mapleson C kısa süreli prosedürlerde kullanılır",
      "Mapleson F pediatrik hastalar için uygundur",
      "Mapleson B en ekonomik sistemdir",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Mapleson B ve C, ne spontan ne de kontrollü ventilasyonda çok verimli değildir. Bu nedenle fazla taze gaz gerekir ve ekonomik değildir. En ekonomik sistem kapalı dairesel sistemdir.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki Mapleson devrelerinden hangisi çocuk hastalarda spontan ventilasyon için en uygundur?",
    options: [
      "Mapleson A",
      "Mapleson B",
      "Mapleson C",
      "Mapleson D",
      "Mapleson F",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Mapleson F (Jackson-Rees modifikasyonu), düşük dirençli olması nedeniyle özellikle pediatrik hastalarda spontan solunum sırasında tercih edilir. Valf içermez, kontrolü kolaydır.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Mapleson sistemlerde rebreathing'i azaltmanın en etkili yolu nedir?",
    options: [
      "CO₂ absorbanı eklemek",
      "Taze gaz akımını artırmak",
      "Devreyi kısaltmak",
      "Ekshalasyon valfini çıkarmak",
      "Valfleri ters yerleştirmek",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Mapleson sistemlerde rebreathing'i önlemek için CO₂ absorbanı bulunmadığından, taze gaz akımının yeterli olması esastır. Yetersiz gaz akımı, ekshale edilen CO₂'nin geri solunmasına yol açar.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi açık sistemin bir özelliğidir?",
    options: [
      "Rebreathing yapılır",
      "CO₂ absorbanı bulunur",
      "Taze gaz, sürekli olarak hastaya yönlendirilir",
      "Kontrollü ventilasyon mümkündür",
      "Tek yönlü valf içerir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Açık sistemlerde (örneğin: Schimmelbusch maskesi), anestezik gazlar doğrudan ortama yayılır. Sürekli taze gaz akımı sağlanır. Rebreathing ve valf sistemi yoktur. Modern anestezide kullanılmaz.",
    category: "Solunum Sistemleri",
    difficulty: 1,
  ),

  Question(
    question:
        "Kapalı sistemde en sık karşılaşılan komplikasyon aşağıdakilerden hangisidir?",
    options: [
      "Hipoksemi",
      "Hiperkapni",
      "Hipotermi",
      "Anestezik gaz kaybı",
      "Atelektazi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Kapalı sistemde düşük taze gaz akımı kullanıldığından, CO₂ eliminasyonu tamamen absorban sistemine bağlıdır. Absorban tükenirse CO₂ birikir → hiperkapni oluşur.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki sistemlerden hangisi karışımın konsantrasyonunu değiştirmekte en yavaştır?",
    options: [
      "Açık sistem",
      "Mapleson D",
      "Kapalı dairesel sistem",
      "Mapleson F",
      "Yarı açık sistem",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kapalı sistemde gaz hacmi büyüktür ve değişim için zaman gerekir. Bu nedenle konsantrasyon değişiklikleri yavaş gerçekleşir. Derinlik kontrolü daha yavaş olur.",
    category: "Solunum Sistemleri",
    difficulty: 2,
  ),
];
