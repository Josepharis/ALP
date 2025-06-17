import '../models/question.dart';

final anesthesiaWorkstationQuestions = <Question>[
  Question(
    question: "Aşağıdakilerden hangisi pin index sistemi ile ilgilidir?",
    options: [
      "Buharlaştırıcının yerleştirilmesi",
      "Gaz basıncının ölçülmesi",
      "Gaz silindirlerinin doğru bağlantısını sağlama",
      "Akım ayarının yapılması",
      "Vaporizatörün kalibrasyonu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Pin index sistemi, yanlış gaz bağlantılarını önlemek için silindir valflerinde kullanılan güvenlik sistemidir.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Yüksek basınç sistemi içinde yer alan yapı aşağıdakilerden hangisidir?",
    options: [
      "Akım metreler",
      "Vaporizatör",
      "Regülatör",
      "Y ekseni valfi",
      "Oksijen flush valfi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yüksek basınç sistemi, silindir çıkışından regülatöre kadar olan bölümdür → regülatör, basıncı düşürür.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi oransal güvenlik sistemi (proportioning system) ile ilişkilidir?",
    options: [
      "Buharlaştırıcı akışının sabit tutulması",
      "Oksijenle birlikte N₂O verilmesini kontrol etme",
      "CO₂ emilimini sağlama",
      "Hava akımını ölçme",
      "Akciğer hacmini hesaplama",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Proportioning system, N₂O/O₂ oranının güvenli sınırlar içinde kalmasını sağlar, hipoksik karışımı engeller.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi color-coding (renk kodlama) sistemi ile doğrudur?",
    options: [
      "Oksijen – mavi",
      "Nitröz oksit – siyah",
      "Oksijen – yeşil (ABD) / beyaz (Avrupa)",
      "Hava – sarı (ABD) / kırmızı (Avrupa)",
      "Karbondioksit – yeşil",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Oksijenin rengi ABD'de yeşil, Avrupa'da beyazdır. Bu sistem karışıklığı önlemek için uluslararası olarak belirlenmiştir. (Hava sarı N₂O mavi CO₂ kahve rengi)",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi vaporizer (buharlaştırıcı) hakkında yanlıştır?",
    options: [
      "Ajan özgüllüğü vardır",
      "Taşındığında yeniden kalibre edilmelidir",
      "Ters akışla çalışır",
      "Refraktör cam içerebilir",
      "Sıcaklık-kompanzasyon sistemleri içerir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Vaporizatörler unidirectional (tek yönlü) çalışır. Ters akış sistemde kontaminasyona ve hatalara neden olur.",
    category: "Anestezi İş İstasyonu",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi intermediate (orta) basınç sistemi bileşenidir?",
    options: [
      "Oksijen flush valfi",
      "Silindir",
      "Regülatör",
      "Buharlaştırıcı",
      "CO₂ absorbanı",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Intermediate basınç sistemi, regülatörden sonra başlayıp akımmetreye kadar uzanır. Bu kısımda oksijen flush valfi bulunur. Silindir ve regülatör yüksek basınç sistemindedir.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi modern anestezi cihazlarında zorunlu güvenlik sistemlerinden biridir?",
    options: [
      "Elektronik sıvı düzey sensörü",
      "N₂O'nun her zaman ilk verilmesi",
      "Otomatik kalibrasyon",
      "Hipoksik karışımı engelleyen sistem",
      "CO₂ dedektörü",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Hipoksik karışımı engelleyen sistemler (proportioning system), O₂ dışındaki gazların %25'ten fazla verilmesini engeller. Bu, modern cihazlarda zorunlu güvenlik özelliğidir.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi anestezi iş istasyonundaki düşük basınç sistemine ait bir bileşendir?",
    options: [
      "Regülatör",
      "Vaporizatör çıkışı",
      "Oksijen flush valfi",
      "Akımmetre girişi",
      "Silindir valfi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Düşük basınç sistemi, akımmetreden başlayıp hasta devresine kadar uzanır. Vaporizatör çıkışı bu sistemin parçasıdır.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question: "Fail-safe valfi anestezi cihazında ne amaçla kullanılır?",
    options: [
      "CO₂ kaçağını önlemek",
      "N₂O akışını durdurmak",
      "Buharlaşma hızını artırmak",
      "Ajan konsantrasyonunu ayarlamak",
      "Gazların karışmasını sağlamak",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Fail-safe valfi, oksijen basıncı düştüğünde N₂O akışını keser → hipoksik karışımı önlemeye yardımcı olur.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi oksijen kaynağı tamamen kesilirse hastaya oksijen ulaşmasını sağlayan yoldur?",
    options: [
      "Vaporizatör bypass hattı",
      "Elektrik destekli akım valfi",
      "El ventilatörü",
      "Manuel rezervuar balon",
      "Oksijen flush valfi",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Flush valfi, doğrudan yüksek debili O₂ sağlar. Ana akış sistemi çalışmasa da manuel müdahaleyle oksijen vermek mümkündür.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi karbondioksit absorbanında kullanılan yaygın kimyasallardan biridir?",
    options: [
      "Kalsiyum sülfat",
      "Sodyum bikarbonat",
      "Sodyum hidroksit",
      "Sodyum kireç (sodalime)",
      "Magnezyum oksit",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Sodyum kireç (sodalime), CO₂ absorbanı olarak yaygın kullanılır. İçeriğinde kalsiyum hidroksit, sodyum hidroksit gibi bileşenler bulunur.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi anestezi makinesinde CO₂ absorbanının tükenmesinin en erken göstergesidir?",
    options: [
      "ETCO₂'nin düşmesi",
      "Pulse oksimetre değerinde artış",
      "Artan inspiratuvar CO₂ seviyesi",
      "Azalan tidal volüm",
      "SpO₂'nin sabit kalması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "CO₂ absorbanı tükenirse, inspire edilen gazda CO₂ artar → kapnografide inspiratuvar CO₂ yüksekliği en erken uyarıcıdır.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi karbondioksit absorbanının renk değişimiyle ilgili doğru bir ifadedir?",
    options: [
      "Renk değişimi geri dönüşümsüzdür",
      "Renk değişimi yanlış ajanın kullanıldığını gösterir",
      "Renk değişimi absorbanın doygunluğunu gösterir",
      "Renk değişimi sadece alkaliniteyi gösterir",
      "Renksiz hale gelmesi absorbanın hazır olduğunu gösterir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "CO₂ absorbanları, doygunlukta renk değiştirerek kullanıcıya tükenmeyi bildirir.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Oksijen flush valfinin yanlış kullanımında aşağıdaki komplikasyonlardan hangisi en çok görülür?",
    options: [
      "Hipoksemi",
      "Barotravma",
      "Hipotermi",
      "Hiperkapni",
      "Methemoglobinemi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Flush valfiyle dakikada 35–75 L gibi çok yüksek akımda O₂ verilir → manuel ventilasyonda aşırı basınca bağlı barotravma riski vardır.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi CO₂ absorban tükenmesinin en geç belirtisidir?",
    options: [
      "Artmış inspiratuvar CO₂",
      "Yorgunluk hissi",
      "Renk değişikliği",
      "Kapnografta yükselen baseline",
      "Hiperkapni semptomları",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Renk değişimi, görsel uyarı sağlar ancak geç gelişebilir. Teknik sensör veya kapnograf bulguları genellikle daha erken ortaya çıkar.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi hipoksik gaz karışımının engellenmesi için kullanılan sistemdir?",
    options: [
      "Check valf",
      "Fail-safe valf",
      "Proportioning sistem",
      "Flowmeter valfi",
      "Solenoid valf",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Proportioning system, genellikle N₂O ve O₂ akımlarını orantılayarak hipoksik karışım oluşmasını engeller.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi non-rebreathing sistemin avantajlarından biridir?",
    options: [
      "CO₂ absorbanı gerektirir",
      "Devrenin ısısını korur",
      "Daha düşük taze gaz akımı yeterlidir",
      "Hızlı ajan değişiklikleri sağlar",
      "Gaz tüketimini azaltır",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Non-rebreathing sistemler, düşük volüm ve düşük direnç ile ajan değişikliklerine hızlı yanıt verir.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi sirkülasyon sisteminde unidirectional (tek yönlü) valf bozulursa meydana gelebilir?",
    options: [
      "Vaporizatör çalışmaz",
      "SpO₂ yükselir",
      "CO₂ retansiyonu",
      "FiO₂ artar",
      "Hava sızıntısı oluşur",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Unidirectional valf arızası, solunan ve verilen gazların karışmasına neden olabilir → CO₂ yeniden inhalasyonu (retansiyon) riski artar.",
    category: "Anestezi İş İstasyonu",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi anestezi makinesi check valflerinin görevlerinden biridir?",
    options: [
      "Akımı sabit tutmak",
      "Gazın tek yönlü hareketini sağlamak",
      "Tidal volüm ayarını yapmak",
      "Buharlaştırıcıyı otomatik çalıştırmak",
      "O₂ basıncını sabit tutmak",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Check valfler, gazların yalnızca istenilen yönde akmasını sağlar, geri akışı engeller.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi low-flow anestezide en sık karşılaşılan teknik sorundur?",
    options: [
      "CO₂ birikimi",
      "Taze gaz israfı",
      "Volatil ajan hızla yükselmesi",
      "Hava yolu kuruluğu",
      "Ajan konsantrasyonunun hızlı değişmesi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Low-flow sistemlerde, taze gaz düşük verildiğinden CO₂ absorbanının etkinliği çok önemlidir → retansiyon riski yüksektir.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi vaporizatör içinde kullanılan ajan konsantrasyonunun değişkenliğini etkileyebilir?",
    options: [
      "O₂ basıncı",
      "Vaporizatörün ısısı",
      "CO₂ seviyesi",
      "Ajanın rengi",
      "Flowmeter kalibrasyonu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Volatil ajanların buhar basıncı, sıcaklığa bağlıdır → vaporizatör sıcaklık kompanzasyonu yaparak sabit konsantrasyon sağlar.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi circle sisteminin avantajlarından biri değildir?",
    options: [
      "Nem kaybını azaltır",
      "Isı kaybını önler",
      "Ajan kullanımını azaltır",
      "Düşük dirençlidir",
      "CO₂ absorbanı sayesinde etkin çalışır",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Circle sistem, valfler ve uzun devre nedeniyle daha yüksek dirençlidir → özellikle küçük çocuklarda dezavantaj olabilir.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi anestezi iş istasyonunun elektriksel arızasında da çalışmaya devam edebilir?",
    options: [
      "Elektronik monitör",
      "Akımmetre",
      "Vaporizatör",
      "Oksijen flush valfi",
      "CO₂ monitörü",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Oksijen flush valfi, mekanik bir sistemdir → elektrik olmadan da yüksek debi O₂ verir → acil durumlarda hayat kurtarıcıdır.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Circle sistemde inspiratuvar ve ekspiratuvar valflerin amacı nedir?",
    options: [
      "Gaz hacmini ölçmek",
      "Isı kaybını azaltmak",
      "Taze gazın CO₂ ile karışmasını önlemek",
      "Vaporizatör basıncını ayarlamak",
      "CO₂ üretimini artırmak",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Bu valfler, gazların sadece bir yönde hareket etmesini sağlar, CO₂'nin re-inhalasyonunu engeller.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi gaz sızıntı testinin amacıdır?",
    options: [
      "Akciğer hacmini ölçmek",
      "Tidal volümü artırmak",
      "Hipoksik karışımı teşhis etmek",
      "Sistemdeki kaçakları tespit etmek",
      "Buharlaşma hızını ölçmek",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Leak test (sızıntı testi) ile, sistemde gaz kaçağı olup olmadığı kontrol edilir → hasta güvenliği açısından kritiktir.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi high-flow (yüksek akım) anestezi uygulamasının avantajlarından biridir?",
    options: [
      "Daha düşük ajan tüketimi",
      "Daha hızlı indüksiyon",
      "CO₂ retansiyonu",
      "Daha az ısı kaybı",
      "Devre içi nem artışı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Yüksek taze gaz akımı, ajanların alveollere hızlı ulaşmasını sağlar → indüksiyon ve derinlik ayarı daha hızlı yapılabilir.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Modern anestezi iş istasyonlarında oksijen basıncı kritik seviyeye düştüğünde ilk devre dışı bırakılan bileşen hangisidir?",
    options: [
      "Oksijen flush valfi",
      "N₂O akım hattı",
      "Vaporizatör",
      "Elektronik monitör",
      "CO₂ absorberi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Oksijen basıncı düştüğünde güvenlik sistemi devreye girer ve azot protoksit akımı kesilerek hipoksik gaz karışımı verilmesi engellenir.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki gazlardan hangisinin hipoksik karışım riski en yüksektir?",
    options: ["Sevofluran", "Desfluran", "Oksijen", "Azot protoksit", "Hava"],
    correctAnswerIndex: 3,
    explanation:
        "Azot protoksit tek başına kullanıldığında oksijen konsantrasyonunu düşürerek hipoksik karışım riski oluşturabilir.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Anestezi iş istasyonunda yer alan oksijen fail-safe sisteminin amacı nedir?",
    options: [
      "Sadece N₂O'yu kapatmak",
      "Elektrik kesilince uyarı vermek",
      "Oksijen basıncı düşünce diğer gazları kesmek",
      "CO₂ seviyesini sabit tutmak",
      "Oksijen flush sistemini aktive etmek",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Fail-safe sistem, oksijen basıncı kritik düzeyin altına indiğinde diğer gazların akışını otomatik olarak keser.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question: "Oksijenin merkezi sistemden geldiği hat ne renktir?",
    options: ["Mavi", "Sarı", "Yeşil", "Kırmızı", "Beyaz"],
    correctAnswerIndex: 2,
    explanation:
        "Anestezi cihazlarında gaz hatları uluslararası renk kodlarına göre renklendirilmiştir; oksijen yeşildir.",
    category: "Anestezi İş İstasyonu",
    difficulty: 1,
  ),

  Question(
    question: "Azot protoksit silindirlerinin rengi nedir?",
    options: ["Siyah", "Mavi", "Gri", "Kırmızı", "Yeşil"],
    correctAnswerIndex: 1,
    explanation:
        "N₂O silindirleri genellikle mavi renklidir ve bu evrensel bir işaretlemedir.",
    category: "Anestezi İş İstasyonu",
    difficulty: 1,
  ),

  Question(
    question:
        "Anestezi iş istasyonunda APL (Adjustable Pressure-Limiting) valfin görevi nedir?",
    options: [
      "CO₂ emilimini sağlar",
      "PEEP'i düzenler",
      "Devredeki basıncı ayarlayarak fazla gazın atılmasını sağlar",
      "Oksijen basıncını sabitler",
      "Gazların sıcaklığını dengeler",
    ],
    correctAnswerIndex: 2,
    explanation:
        "APL valfi, manuel ventilasyonda sistem basıncını ayarlamak ve fazla gazın dışarı atılmasını sağlamak için kullanılır.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Modern anestezi iş istasyonlarında hangi sistem, hipoksik gaz karışımı verilmesini önlemek amacıyla gaz akımlarını birbirine bağlı şekilde düzenler?",
    options: [
      "Flowmetre",
      "Proportional valve",
      "Oksijen fail-safe",
      "N₂O cutoff sistemi",
      "Oksijen-N₂O bağlantı sistemi (Link-25)",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Link-25 sistemi, oksijen ve N₂O akımlarını birbirine bağlı şekilde ayarlayarak hipoksik gaz karışımını engeller.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Anestezi makinesi ile ilgili en sık karşılaşılan kullanıcı hatası nedir?",
    options: [
      "Ajanın yanlış yüklenmesi",
      "Cihazı sabitlememek",
      "Elektrik bağlantısı olmaması",
      "Cihazın filtrelerinin takılmaması",
      "APL valfinin kapalı kalması",
    ],
    correctAnswerIndex: 4,
    explanation:
        "APL valfi kapalı kalırsa ventilasyon sırasında devre basıncı aşırı artar ve barotravma riski doğar.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Hangi gaz, soğuk havalarda silindirde sıvı-gaz faz değişimiyle verilir?",
    options: ["Oksijen", "N₂O", "Hava", "Helyum", "Azot"],
    correctAnswerIndex: 1,
    explanation:
        "Azot protoksit (N₂O), silindirde sıvı halde bulunur ve kullanılınca gaz fazına geçer.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question:
        "Elektrik kesilmesi halinde hangi komponent çalışmaya devam eder?",
    options: [
      "Elektronik ventilatör",
      "Pulse oksimetre",
      "Flowmetreler",
      "Otomatik vaporizatör",
      "İnfüzyon pompaları",
    ],
    correctAnswerIndex: 2,
    explanation: "Flowmetreler manuel çalıştığı için elektrikten bağımsızdır.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question: "CO₂ absorpsiyonu sırasında ortaya çıkan ısıya ne ad verilir?",
    options: [
      "Termogenez",
      "Ekzotermik reaksiyon",
      "Hipotermi",
      "Kataliz",
      "Anabolizma",
    ],
    correctAnswerIndex: 1,
    explanation: "CO₂ absorpsiyonu ekzotermiktir, ısı açığa çıkar.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question: "Ajanla dolu vaporizatörü ters çevirmek neye yol açar?",
    options: [
      "Ajansız kalmaya",
      "Ajanın sistemde dağılmasına",
      "Oksijenin azalmasına",
      "CO₂ emilimine",
      "Basınç artışına",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Vaporizatör ters çevrilirse sıvı ajan devreye karışabilir, toksisite ve dozaj hatası oluşur.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi \"vaporizatör\" kullanımında doğru bir ifadedir?",
    options: [
      "Desfluran için ısı kompanse olmayan vaporizatör kullanılır",
      "Aynı anda birden fazla volatil anestezik vaporizatörü açık olabilir",
      "Düşük akımda (<1 L/dk) doğru konsantrasyon sağlamaz",
      "Taşma valfi yoktur",
      "Yerçekiminden bağımsız çalışır",
    ],
    correctAnswerIndex: 2,
    explanation: "Düşük akımlarda yanlış konsantrasyon riski vardır.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question: "\"Oksijen arıza alarmı\" hangi durumda aktif hale gelir?",
    options: [
      "Oksijen basıncı <30 psi olduğunda",
      "N₂O basıncı <50 psi olduğunda",
      "Hava basıncı <20 psi olduğunda",
      "Vaporizatör dolu olduğunda",
      "Solunum devresi tıkandığında",
    ],
    correctAnswerIndex: 0,
    explanation: "Oksijen basıncı <30 psi'ye düştüğünde alarm çalar.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question: "\"Oksijen analizörü\" nereye yerleştirilmelidir?",
    options: [
      "Vaporizatör çıkışı",
      "Solunum devresinin hasta bağlantı noktası",
      "Oksijen tüpü regülatörü",
      "APL valfi girişi",
      "Flowmetre çıkışı",
    ],
    correctAnswerIndex: 1,
    explanation: "Hasta bağlantı noktasında O₂ konsantrasyonu ölçülür.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi \"CO₂ absorbsiyon canister\"ı için yanlıştır?",
    options: [
      "Soda lime kullanılır",
      "Baralyme toksiktir",
      "Granül boyutu 1-2 mm'dir",
      "ETCO₂ >50 mmHg'de değiştirilir",
      "Ekshalasyon valfinden sonra yer alır",
    ],
    correctAnswerIndex: 4,
    explanation: "Canister, ekshalasyon valfinden ÖNCE yer alır.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question: "\"Flowmetre\"nin özelliği hangisidir?",
    options: [
      "Bourdon göstergesine bağlıdır",
      "Yüksek basınç sistemindedir",
      "Thorpe tüpü prensibiyle çalışır",
      "Sadece O₂ için kullanılır",
      "Vaporizatörden sonra yer alır",
    ],
    correctAnswerIndex: 2,
    explanation: "Değişken orifisli Thorpe tüpü prensibi ile çalışır.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),

  Question(
    question: "\"APL valfi\" hangi basınç aralığında ayarlanır?",
    options: [
      "0-10 cmH₂O",
      "10-20 cmH₂O",
      "20-30 cmH₂O",
      "30-40 cmH₂O",
      "40-50 cmH₂O",
    ],
    correctAnswerIndex: 2,
    explanation: "Genellikle 20-30 cmH₂O'da ayarlanır.",
    category: "Anestezi İş İstasyonu",
    difficulty: 2,
  ),
];
 