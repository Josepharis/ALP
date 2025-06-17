import '../models/question.dart';

final nonCardiovascularMonitoringQuestions = <Question>[
  Question(
    question:
        "Pulse oksimetre, oksijen satürasyonunu hangi prensibe göre ölçer?",
    options: [
      "Elektromanyetik alan",
      "Termal değişim",
      "Absorbsiyon spektrofotometrisi",
      "Ultrason yansıması",
      "Elektrokimyasal reaksiyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Pulse oksimetre, farklı dalga boylarında ışık (kırmızı ve kızılötesi) göndererek hemoglobinin oksijen satürasyonunu absorpsiyon farkına göre ölçer.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulse oksimetrenin en önemli sınırlayıcı faktörü aşağıdakilerden hangisidir?",
    options: [
      "Yüksek sıcaklık",
      "Yüksek pCO₂",
      "Düşük ortam ışığı",
      "Hipoperfüzyon",
      "Aneminin varlığı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Pulse oksimetre, nabızlı kan akışına dayanır. Hipoperfüzyon, cihazın doğru ölçüm yapmasını engeller.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Karboksihemoglobin düzeyi yüksek hastada pulse oksimetre ne gösterir?",
    options: [
      "Düşük SpO₂",
      "Gerçek satürasyon",
      "Normalden düşük değer",
      "Normalden yüksek yanlış değer",
      "Ölçüm yapamaz",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Karboksihemoglobin, oksimetre tarafından oksihemoglobin gibi algılanır. Bu nedenle satürasyon olduğundan daha yüksek gösterilir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Pulse oksimetre ile ölçülen SpO₂ değeri hangi parametreye en yakın bilgi verir?",
    options: ["PaCO₂", "pH", "SaO₂", "HCO₃⁻", "O₂ konsantrasyonu"],
    correctAnswerIndex: 2,
    explanation:
        "SpO₂, arteriyel kan gazı ile ölçülen oksijen satürasyonu olan SaO₂'ye en yakın değeri verir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "End-tidal CO₂ (EtCO₂) değerinin düşmesi genellikle aşağıdakilerden hangisini gösterir?",
    options: [
      "Hipoventilasyon",
      "Artmış metabolik hız",
      "Pulmoner emboli",
      "Yüksek kardiyak output",
      "Alveoler hipoventilasyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Pulmoner emboli gibi perfüzyon bozukluklarında CO₂ atımı azalır, bu da EtCO₂'de düşüşe neden olur.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "SpO₂ ile PaO₂ arasındaki ilişkiyi en iyi açıklayan eğri hangisidir?",
    options: [
      "Frank-Starling eğrisi",
      "Dissosiasyon eğrisi",
      "Haldane etkisi",
      "Oksihemoglobin doygunluk eğrisi",
      "Solunum kompansasyon eğrisi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Oksihemoglobin dissosiasyon eğrisi, PaO₂ ve SpO₂ ilişkisini gösterir ve sol/sağ kaymalar fizyolojik yorum yapılmasını sağlar.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Hangi durum oksijen-hemoglobin dissosiasyon eğrisini sola kaydırır?",
    options: [
      "Yüksek sıcaklık",
      "Asidoz",
      "Yüksek 2,3-DPG",
      "Hipokarbi",
      "Anemi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Hipokarbi (düşük CO₂), alkaloz ve düşük sıcaklık gibi durumlar eğriyi sola kaydırır; bu hemoglobinin O₂'ye daha sıkı bağlanmasına neden olur.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki parametrelerden hangisi periferik doku perfüzyonunu dolaylı olarak yansıtır?",
    options: ["PaO₂", "SpO₂", "Laktat düzeyi", "SaO₂", "Hb düzeyi"],
    correctAnswerIndex: 2,
    explanation:
        "Laktat, doku hipoperfüzyonunun biyokimyasal göstergesidir; anaerobik metabolizmanın artmasıyla yükselir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulse oksimetrenin doğruluğu en çok hangi aralıkta azalmaya başlar?",
    options: ["%100 üzeri", "%95–100", "%90–95", "%80–90", "<%80"],
    correctAnswerIndex: 4,
    explanation:
        "Satürasyon %80'in altına düştüğünde pulse oksimetre doğruluğu belirgin şekilde azalır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi pulse oksimetre ile yanlış yüksek SpO₂ göstermeye neden olur?",
    options: [
      "Hipotansiyon",
      "Hipoksi",
      "Karboksihemoglobin",
      "Metabolik asidoz",
      "Hipotermi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Karboksihemoglobin oksihemoglobin gibi algılanır ve yanlış yüksek satürasyon gösterilir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulse oksimetre ile ölçülen SpO₂ ile arteriyel kan gazında ölçülen SaO₂ arasındaki fark neden oluşabilir?",
    options: [
      "Laktat üretimi",
      "Hücresel hipoksi",
      "Dalga boyu değişiklikleri",
      "Kan akımının pulsatif olmaması",
      "2,3-DPG düşüklüğü",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Pulse oksimetre pulsatif kan akımına duyarlıdır. Hipoperfüzyon, düşük debi gibi durumlarda ölçüm hatalı olabilir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "Hangi durum pulse oksimetrenin ölçümünü etkilemez?",
    options: [
      "Methemoglobinemi",
      "Akrabalı ışık kaynağı",
      "Vernik tabakası (yenidoğanda)",
      "Anemi",
      "Hiperkapni",
    ],
    correctAnswerIndex: 4,
    explanation:
        "CO₂ düzeyi pulse oksimetreyi etkilemez; cihaz oksijen satürasyonu üzerine çalışır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Methemoglobinemi varlığında pulse oksimetrenin gösterdiği sabit satürasyon değeri yaklaşık kaçtır?",
    options: ["%85", "%75", "%95", "%65", "%100"],
    correctAnswerIndex: 0,
    explanation:
        "Methemoglobinemi durumunda pulse oksimetre genellikle %85 civarında sabitlenmiş bir değer gösterir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "Aşağıdakilerden hangisi EtCO₂'yi artıran bir durum değildir?",
    options: [
      "Hipoventilasyon",
      "Artmış metabolik hız",
      "Yüksek kardiyak output",
      "Tansiyon pnömotoraks",
      "Ateş",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Tansiyon pnömotoraks akciğer ventilasyonunu bozar, EtCO₂ düşer.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulse oksimetre sensörü aşağıdaki bölgelerden hangisine takıldığında daha geç yanıt verir?",
    options: ["Kulak memesi", "Alın", "Dil", "Parmak", "Burun ucu"],
    correctAnswerIndex: 3,
    explanation:
        "Parmak uçları periferik sirkülasyondan daha fazla etkilenir; hipoperfüzyon durumlarında yanıt süresi uzar.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi oksijen-hemoglobin dissosiasyon eğrisini sağa kaydırır?",
    options: [
      "Hipotermi",
      "Hipokarbi",
      "Alkaloz",
      "Yüksek 2,3-DPG",
      "Düşük pCO₂",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Yüksek 2,3-DPG, asidoz ve hiperkarbi gibi durumlar hemoglobinin oksijeni daha kolay bırakmasını sağlar; eğri sağa kayar.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Kapnografi eğrisinde II. faz aşağıdakilerden hangisini yansıtır?",
    options: [
      "Anatomik ölü boşluk",
      "Alveoler gaz karışımı",
      "CO₂ içermeyen havanın çıkışı",
      "Rezidüel hacim",
      "En düşük CO₂ değeri",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Faz II, alveoler gaz ile ölü boşluk gazının karıştığı dönemi temsil eder; CO₂ hızla yükselir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Kapnografinin III. fazında (plateau) eğimin artması genellikle neyi gösterir?",
    options: [
      "Hızlı ventilasyon",
      "Bronkospazm",
      "Hipotermi",
      "Artmış tidal volüm",
      "Ateş",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Plateau eğiminin artması, eşit olmayan alveoler boşaltım gibi durumlarda (örneğin bronkospazm) görülür.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulse oksimetre teknolojisinin çalışabilmesi için temel gereklilik nedir?",
    options: [
      "Yüksek oksijen parsiyel basıncı",
      "Pulsatif kan akımı",
      "Yüksek hemoglobin düzeyi",
      "Normal sıcaklık",
      "Düşük pH",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Pulse oksimetre, arteriyel pulsasyon üzerinden çalışır. Pulsatif akım yoksa çalışmaz.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulse oksimetre ile gerçek hipoksemi durumunda ölçülen değerin doğruluğu hangi koşulda en çok bozulur?",
    options: [
      "Normotermi",
      "Yüksek hemoglobin",
      "Aydınlık ortam",
      "Düşük perfüzyon",
      "Hiperkapni",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Düşük perfüzyon, sensöre yansıyan pulsatif akımı azaltır ve oksimetrenin güvenilirliğini düşürür.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi pulse oksimetre okumalarını yanlış düşük gösterebilir?",
    options: [
      "Karboksihemoglobin",
      "Hiperventilasyon",
      "Tırnak cilası",
      "Anksiyete",
      "Ateş",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Koyu renkli oje, ışığın geçişini engelleyerek SpO₂'nin olduğundan düşük gösterilmesine neden olabilir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulse oksimetre ölçümünde mavi ışık yerine kullanılan dalga boyu hangisidir?",
    options: ["400 nm", "600 nm", "660 nm", "760 nm", "940 nm"],
    correctAnswerIndex: 2,
    explanation:
        "Pulse oksimetre kırmızı (660 nm) ve kızılötesi (940 nm) ışık dalga boylarını kullanır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Pulse oksimetre cihazı SpO₂ %100 gösteriyor, ancak hasta hipoksik. Bu durumda en olası neden nedir?",
    options: [
      "Cihaz arızası",
      "Methemoglobinemi",
      "Hipotermi",
      "Hipovolemi",
      "Aritmi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Methemoglobin yüksekliği, SpO₂'yi yanlış pozitif gösterebilir; doku hipoksisi olsa bile satürasyon %100 görünebilir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Kapnografinin eğri başlangıcında (faz I) CO₂'nin olmaması neyi gösterir?",
    options: [
      "Solunum durması",
      "Ölü boşluk gazı",
      "Bronkospazm",
      "Hiperventilasyon",
      "CO₂ retansiyonu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Faz I, ölü boşluktaki hava olup CO₂ içermez. Bu nedenle eğrinin başlangıcı sıfıra yakındır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Kapnografide faz III (plateau) uzaması aşağıdaki hangi durumda görülür?",
    options: [
      "Hipotermi",
      "Hızlı entübasyon",
      "Artmış tidal volüm",
      "Hava yolu obstrüksiyonu",
      "Hipertermi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Obstrüksiyon durumlarında alveollerin boşalması gecikir, bu da faz III'ün uzamasına neden olur.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulse oksimetre ölçümünün doğru olabilmesi için cihaz hangi bileşenleri kullanır?",
    options: [
      "Elektrot ve elektrokimyasal sensör",
      "Ses dalgası ve piezo sensör",
      "Işık yayan diyot ve fotodetektör",
      "Isı sensörü ve voltaj kaynağı",
      "Manyetik rezonans dedektörü",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Pulse oksimetre ışık yayan diyot (LED) ve fotodetektör ile çalışır; ışık absorpsiyonuna göre satürasyon hesaplanır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "EtCO₂ ile PaCO₂ arasındaki fark genellikle ne kadardır?",
    options: ["0 mmHg", "2–5 mmHg", "10–15 mmHg", "15–20 mmHg", "5–10 mmHg"],
    correctAnswerIndex: 1,
    explanation:
        "Normalde EtCO₂, PaCO₂'den 2–5 mmHg daha düşüktür. Fark artarsa ventilasyon-perfüzyon bozukluğu düşünülmelidir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulse oksimetre ile izlenebilen \"pleth dalgası\" aşağıdakilerden hangisiyle ilişkilidir?",
    options: [
      "Kalp atım sayısı",
      "Akciğer ekspansiyonu",
      "İnspiratuar basınç",
      "Sistolik basınç dalgası",
      "Hava yolu direnci",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Pulse oksimetre pleth dalga formu, sistolik basınca bağlı olarak değişir; nabız basıncı dalgalanmalarını yansıtır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulse oksimetreyle ölçülen sinyalin zayıf olmasına rağmen hasta hipoksik değilse, en olası neden nedir?",
    options: [
      "Hipoksemi",
      "Aritmi",
      "Methemoglobinemi",
      "Periferik vazokonstriksiyon",
      "Hipertermi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Soğuk, şok veya periferik vazokonstriksiyon gibi durumlar, iyi oksijenlenmeye rağmen sinyalin algılanmasını zorlaştırır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulse oksimetre parmakta sinyal alınamıyorsa, ilk alternatif uygulama yeri hangisidir?",
    options: ["Göğüs", "Karın", "Dil", "Ayak tabanı", "Omuz"],
    correctAnswerIndex: 2,
    explanation:
        "Dil, mukozal ve iyi perfüze bir alan olduğu için alternatif yer olarak tercih edilir (özellikle cerrahi ve kritik bakımda).",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "EtCO₂ düzeyinin düşük olmasına rağmen PaCO₂ yüksekse bu neyi gösterir?",
    options: [
      "Hipotermi",
      "Aritmi",
      "Ölü boşluk ventilasyonu artışı",
      "CO₂ yapımı azalmış",
      "Respiratuar alkaloz",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Ölü boşluk ventilasyonunun artması, alveollere gelen CO₂'yi azaltır, EtCO₂ düşük ama PaCO₂ yüksek kalır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Kapnografinin hızlı düşen bir faz III (plateau) göstermesi aşağıdakilerden hangisini düşündürür?",
    options: [
      "Bronkospazm",
      "Hava kaçağı",
      "Ölü boşluk gazı",
      "Solunum arresti",
      "Kötü entübasyon",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Hava kaçağı durumlarında plateau stabil kalamaz, CO₂ dalga formu aniden düşüşe geçer.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulse oksimetrede ışık geçişine en çok etki eden faktör aşağıdakilerden hangisidir?",
    options: [
      "Cilt kalınlığı",
      "Tırnak uzunluğu",
      "Kan rengi",
      "Hareket artefaktı",
      "Ortam ısısı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Hareket artefaktı, LED ışığın düzgün geçişini ve dedektörün sinyal almasını en çok bozan faktörlerden biridir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "Pulse oksimetre ölçümünde fotodetektörün görevi nedir?",
    options: [
      "Isı ölçmek",
      "Nabzı algılamak",
      "Dalga boyunu ayarlamak",
      "Absorbe edilen ışığı ölçmek",
      "Basınç farklılıklarını belirlemek",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Fotodetektör, hemoglobin tarafından absorbe edilmeyen ışığı algılar ve bu veriyi analiz için cihazın işlemcisine gönderir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulse oksimetre ile ölçülen pleth dalga formundaki varyasyonlar genellikle neyin göstergesidir?",
    options: [
      "Hipoksemi",
      "Oksijen tüketimi",
      "Volüm durumunun (preload)",
      "Nabız düzensizliği",
      "Sıcaklık değişimi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Pleth dalga varyasyonu, volüm durumunun (özellikle preload) değişkenliğine duyarlıdır. Volüm yanıtlılık değerlendirmesinde kullanılır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "EEG'de 8-13 Hz aralığındaki dalgalar aşağıdakilerden hangisidir?",
    options: ["Delta", "Beta", "Alfa", "Teta", "Gama"],
    correctAnswerIndex: 2,
    explanation:
        "Alfa dalgaları 8-13 Hz frekansındadır ve istirahatte, gözler kapalıyken dominant olarak izlenir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "Serebral oksimetri (NIRS) ölçümü hangi prensibe dayanır?",
    options: [
      "Termistör ile direnç değişimi",
      "Pulse dalga hızı",
      "Lambert-Beer yasası",
      "Piezoelektrik kristal değişimi",
      "Biyokimyasal oksijen ölçümü",
    ],
    correctAnswerIndex: 2,
    explanation:
        "NIRS, oksijenlenmiş ve deoksihemoglobinin farklı dalga boylarındaki absorpsiyon farklarını kullanır. Bu da Lambert-Beer yasasına dayanır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "Kapnografide plato fazı (Faz III) neyi temsil eder?",
    options: [
      "Ölü boşluk gazı",
      "Bronşiyal kapalı hacmi",
      "Alveoler boşalmayı",
      "İlham fazını",
      "Sistemik CO₂ üretimini",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Faz III yani plato fazı, alveollerle tam temas halinde olan gazların ekspirasyonu sırasında görülür. End-tidal CO₂ bu fazın sonunda ölçülür.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "EEG izleminde kullanılan BIS (bispectral index) ile ilgili doğru ifade hangisidir?",
    options: [
      "Nöromusküler blok derinliğini ölçer",
      "Derin uykuyu tanımlar",
      "Entübasyona uygunluğu gösterir",
      "Anestezi derinliğini objektif şekilde değerlendirmeyi sağlar",
      "Beyin sapı aktivitesini gösterir",
    ],
    correctAnswerIndex: 3,
    explanation:
        "BIS, 0–100 arasında bir değerle anestezi derinliği hakkında bilgi verir. <60 genellikle cerrahi anestezi düzeyidir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Sıcaklık ölçümü için en güvenilir yöntem aşağıdakilerden hangisidir?",
    options: [
      "Aksiller ölçüm",
      "Rektal ölçüm",
      "Deri yüzeyi ölçümü",
      "Pulmoner arter termistörü",
      "Oral ölçüm",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Pulmoner arterden yapılan ölçümler gerçek santral vücut sıcaklığını en iyi yansıtır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki durumlardan hangisinde kapnografinin eğrisi \"shark-fin\" görünümünde olur?",
    options: [
      "Özofageal entübasyon",
      "Atelektazi",
      "Bronkospazm",
      "Hiperventilasyon",
      "Apne",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Bronkospazmda ekspirasyon uzar, eğri yavaş yükselir ve \"köpekbalığı sırtı\" (shark-fin) görünümü olur.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Periferik sinir stimülatöründe \"train-of-four\" (TOF) uyarısı sonrası 1 cevap alınması, aşağıdaki blok düzeylerinden hangisini gösterir?",
    options: [
      "Hafif blok",
      "Orta dereceli blok",
      "Derin blok",
      "Blok yok",
      "Fazik blok",
    ],
    correctAnswerIndex: 2,
    explanation:
        "TOF'ta tek cevap alınması, yaklaşık %90–95 reseptör blokajını gösterir. Bu derin blok anlamına gelir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "NIRS ölçümü en çok hangi dokunun oksijen satürasyonunu yansıtır?",
    options: [
      "Arteriyel kan",
      "Kapiller kan",
      "Venöz kan",
      "Serebrospinal sıvı",
      "Beyin omurilik sıvısı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "NIRS, toplam sinyalin %70'ini venöz oksijenasyondan alır. Bu yüzden venöz oksijen saturasyonuna daha yakındır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "MRI ortamında en güvenli pulse oksimetre sensörü aşağıdakilerden hangisidir?",
    options: [
      "Fiber optik sensör",
      "Metal klips",
      "Manyetik halka",
      "Kablolu silikon",
      "Civa içeren prob",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Fiber optik sensörler manyetik alandan etkilenmez. Bu nedenle MRI ile uyumludur.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "İzofluran anestezisi sırasında EEG'de en olası bulgu nedir?",
    options: [
      "Alfa aktivitesinde artış",
      "Yüksek voltajlı delta aktivitesi",
      "Spindle aktivitesinde azalma",
      "Gama dalgalarında artış",
      "Sürekli beta aktivitesi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Volatil ajanlar genellikle delta dalga aktivitesini artırır. Bu durum derin anesteziyi yansıtır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "İnfrared spektrofotometri ile çalışan anestezik gaz analizörleri aşağıdaki maddelerden hangisini doğrudan ölçemez?",
    options: ["Halotan", "Sevofluran", "N₂O", "CO₂", "O₂"],
    correctAnswerIndex: 4,
    explanation:
        "Oksijen infrared ışını absorbe etmez. Bu nedenle genellikle paramanyetik ya da elektrokimyasal yöntemlerle ölçülür.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi preoperatif dönemde vücut ısısının korunmasının önemli sonuçlarından biridir?",
    options: [
      "Trombositopeni gelişimini hızlandırır",
      "Postoperatif ağrıyı artırır",
      "İmmün yanıtı artırır",
      "Kan kaybını azaltır",
      "Renal kan akımını azaltır",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Normoterminin korunması, koagülasyonun ve immün fonksiyonun daha iyi olmasını sağlar, kan kaybını azaltır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Nöromusküler blok çözülmesini gösteren en güvenilir klinik test hangisidir?",
    options: [
      "Göz kırpma",
      "El sıkma",
      "Başı 5 saniye kaldırabilme",
      "Ayak parmağını oynatma",
      "Dil çıkarma",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Başı 5 saniye kaldırabilme testi, kas gücü için en güvenilir klinik göstergelerden biridir ve ekstübasyona hazır olduğunu gösterir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "Serebral oksijenlenmeyi en iyi gösteren yöntem hangisidir?",
    options: ["Pulse oksimetre", "End-tidal CO₂", "NIRS", "EKG", "TOF"],
    correctAnswerIndex: 2,
    explanation:
        "Near-infrared spectroscopy (NIRS), frontal korteksteki serebral oksijenlenmeyi non-invaziv olarak izleyebilen yöntemdir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "TOF oranı %90'ın üzerine çıkan bir hastada aşağıdaki yorumlardan hangisi doğrudur?",
    options: [
      "Nöromusküler blok tamamen çözülmemiştir",
      "Hasta spontane soluyamaz",
      "Ekstübasyona uygun değildir",
      "Klinik testlerle birlikte değerlendirilmeli",
      "Derin blok devam ediyor",
    ],
    correctAnswerIndex: 3,
    explanation:
        "TOF oranı %90'ın üzerinde olsa da, güvenli ekstübasyon için mutlaka klinik testlerle birlikte değerlendirilmelidir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi kapnografinin \"yavaş yükselen plato\" görünümüne neden olabilir?",
    options: [
      "Trakeal tüpün özofagusa yerleşmesi",
      "Hipotermi",
      "Bronkospazm",
      "Hiperkarbi",
      "Hiperventilasyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Bronkospazmda ekspirasyon uzar, CO₂ yavaş çıkar ve plato kısmı yavaş yükselir (shark-fin görünümü).",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Bir hastada pulse oksimetre SpO₂'si %92 olarak izlenmektedir. Gerçek PaO₂ yaklaşık kaçtır?",
    options: ["60 mmHg", "80 mmHg", "100 mmHg", "120 mmHg", "40 mmHg"],
    correctAnswerIndex: 0,
    explanation:
        "Oksihemoglobin doygunluk eğrisine göre SpO₂ %92 olduğunda PaO₂ yaklaşık 60 mmHg civarındadır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "Peroperatif termoregülasyonun kaybı en sık neye bağlıdır?",
    options: [
      "Kas titremesi",
      "Hipovolemi",
      "İnhalasyon ajanlarının etkisi",
      "Anesteziye bağlı vazodilatasyon",
      "Hiperkapni",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Anestezik ajanlar periferik vazodilatasyona neden olur ve ısı kaybı artar. Bu, ısı regülasyonunun en sık bozulma nedenidir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "NIRS cihazının çalışması hangi iki özellik üzerine kuruludur?",
    options: [
      "Elektromanyetik alan ve rezistans",
      "Işık emilimi ve doku penetrasyonu",
      "Elektrolit değişimi ve voltaj farkı",
      "Termal değişim ve reflektans",
      "Ultrasonik yankı ve ses hızı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "NIRS, infrared ışığın doku içinden geçişi ve absorpsiyon farklarına göre oksijen satürasyonu ölçer.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki durumlardan hangisi pulse oksimetre ölçümünü en fazla bozar?",
    options: [
      "Hipotansiyon",
      "Anemi",
      "Hiperkapni",
      "Nitröz oksit kullanımı",
      "Hiperglisemi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Hipotansiyon, periferik perfüzyonu azaltarak cihazın güvenilirliğini düşürür ve yanlış ölçüme neden olabilir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "Serebral oksimetri (NIRS) aşağıdakilerden hangisini ölçer?",
    options: [
      "Beyin içi basıncı",
      "Oksijenlenmiş ve deoksihemoglobinin oranı",
      "Kafa içi kan akımı",
      "BOS hacmi",
      "Karotis arter basıncı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "NIRS, farklı dalga boylarındaki ışığın emilimi ile oksijenlenmiş ve deoksihemoglobinin oranını hesaplar.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Anestezik gaz analizörlerinin temel prensibi aşağıdakilerden hangisidir?",
    options: [
      "Termal kondüktivite",
      "Elektromanyetik rezonans",
      "Infrared absorbsiyon",
      "Ultrasonik yansıma",
      "Elektrokimyasal oksidasyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Halojenli anestezik ajanlar infrared ışığı absorbe eder, bu özellikleri gaz analizörlerinde kullanılır.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "TOF oranı %100 olsa da kas kuvvetsizliği görülen hasta için en olası açıklama nedir?",
    options: [
      "Residüel kas bloku",
      "Cihaz hatası",
      "Myastenia gravis",
      "Kas gevşeticinin yetersiz dozu",
      "İsofluran etkisi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "TOF %100 olsa da post-tetanik kas kuvvetsizliği olabilir. Klinik testlerle birlikte değerlendirme gereklidir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Kapnogramın fazları arasında, inspirasyon hangi fazla temsil edilir?",
    options: ["Faz 0", "Faz I", "Faz II", "Faz III", "Faz IV"],
    correctAnswerIndex: 0,
    explanation:
        "Faz 0 inspirasyonu, yani CO₂'siz taze gaz alımını temsil eder. CO₂ seviyesi hızla sıfıra düşer.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Serebral oksijen satürasyonunda %20'nin üzerinde düşüş olması neyi düşündürmelidir?",
    options: [
      "Normal varyasyon",
      "Teknik hata",
      "Ciddi serebral hipoperfüzyon",
      "Oksijen diffüzyonunun artışı",
      "Venöz staza bağlı artefakt",
    ],
    correctAnswerIndex: 2,
    explanation:
        "NIRS ile ölçülen serebral satürasyonda %20'den fazla düşüş, kritik oksijenlenme azalması anlamına gelir.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Kapnografide \"baseline\" CO₂'nin yükselmesi en olası olarak neyi gösterir?",
    options: [
      "Hiperventilasyon",
      "Sıfırlama hatası",
      "Devre sızıntısı",
      "Rebreathing (geri soluma)",
      "Oksijen desteği",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Rebreathing durumunda ekspriyum sonu CO₂ elimine edilmez, \"bazal\" CO₂ artar, kapnogram sıfıra inmez.",
    category: "Kardiyovasküler Dışı Monitörizasyon",
    difficulty: 2,
  ),
];
