import '../models/question.dart';

final cardiovascularMonitoringQuestions = <Question>[
  Question(
    question:
        "Pulmoner arter kateteri ile aşağıdakilerden hangisi doğrudan ölçülemez?",
    options: [
      "Pulmoner arter basıncı",
      "Kardiyak output",
      "Pulmoner kapiller kama basıncı",
      "Sol ventrikül dolum basıncı",
      "Sol ventrikül ejeksiyon fraksiyonu",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Sol ventrikül ejeksiyon fraksiyonu ekokardiyografi gibi görüntüleme yöntemleriyle ölçülür, PAC ile doğrudan ölçülemez.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Düşük santral venöz basınç (CVP) aşağıdaki durumların hangisinde beklenmez?",
    options: [
      "Hipovolemi",
      "Sepsis",
      "Dehidratasyon",
      "Tansiyon pnömotoraks",
      "Hemoraji",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Tansiyon pnömotoraks CVP'yi artırabilir; çünkü intratorasik basınç artar ve venöz dönüş azalır.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulsoksimetre ile ilgili olarak aşağıdakilerden hangisi yanlıştır?",
    options: [
      "Nabız dalga formunu gösterebilir",
      "Non-invaziv bir yöntemdir",
      "Karboksihemoglobin ve oksihemoglobini ayırt edebilir",
      "Parmak ve kulak memesi gibi yerlerden ölçüm yapılabilir",
      "Oksijen satürasyonunu sürekli izler",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Pulsoksimetre karboksihemoglobini ayırt edemez; çünkü hemoglobinle benzer absorbsiyon özelliklerine sahiptir, bu da yanlış yüksek değer ölçümüne neden olabilir.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Kardiyak output ölçümünde termodilüsyon yöntemi sırasında kullanılan soğuk sıvı hangi yapıya enjekte edilir?",
    options: [
      "Sağ atriyum",
      "Sol atriyum",
      "Sağ ventrikül",
      "Pulmoner arter",
      "Vena cava superior",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Termodilüsyon tekniğinde, soğuk sıvı genellikle sağ atriyuma enjekte edilir ve sıcaklık değişimi pulmoner arterde ölçülerek kardiyak output hesaplanır.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi sol ventrikül dolum basıncını en iyi yansıtır?",
    options: [
      "Santral venöz basınç",
      "Pulmoner arter basıncı",
      "Sol atriyum basıncı",
      "Pulmoner kapiller kama basıncı (PCWP)",
      "Sistemik vasküler direnç",
    ],
    correctAnswerIndex: 3,
    explanation:
        "PCWP, sol atriyum basıncını ve dolaylı olarak sol ventrikül dolum basıncını yansıtır.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Non-invaziv olarak kan basıncı ölçümünde oskültatuvar yöntem ile duyulan sesler hangi isimle anılır?",
    options: [
      "Vesiküler sesler",
      "Korotkoff sesleri",
      "Murmur sesleri",
      "Fremitus",
      "Gallop ritmi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Korotkoff sesleri, manşonla basınç uygulanırken stetoskopla duyulan seslerdir ve tansiyon ölçümünde kullanılır.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Santral venöz basınç artışı aşağıdaki durumların hangisinde beklenir?",
    options: [
      "Kanama",
      "Anestezik indüksiyon",
      "Kalp tamponadı",
      "Sepsis",
      "Hipovolemi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kalp tamponadında kalbe dolum zorlaşır, bu da CVP artışına neden olur.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "CVP eğrisi üzerindeki \"a dalgası\" neyi temsil eder?",
    options: [
      "Triküspit kapağın açılması",
      "Sağ ventrikül kontraksiyonu",
      "Sağ atriyum kontraksiyonu",
      "Pulmoner kapak açılması",
      "Sol atriyum gevşemesi",
    ],
    correctAnswerIndex: 2,
    explanation: "\"a\" dalgası sağ atriyum kontraksiyonunu gösterir.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulmoner kapiller kama basıncı (PCWP) normalde kaç mmHg civarındadır?",
    options: ["2–5", "4–8", "6–12", "12–20", "15–25"],
    correctAnswerIndex: 2,
    explanation: "Normal PCWP değeri yaklaşık 6–12 mmHg aralığındadır.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "Arteriyel kan basıncı osilometrik yöntemde neyle hesaplanır?",
    options: [
      "Aritmetik ortalama",
      "Geometrik ortalama",
      "MAP ölçümünden",
      "Kapsamlı EKG analizinden",
      "Yalnızca sistolik değerle",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Osilometrik cihazlar önce ortalama arter basıncını (MAP) ölçer, diğer değerleri buradan tahmin eder.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Düşük kardiyak output aşağıdaki durumların hangisinde beklenmez?",
    options: [
      "Hemorajik şok",
      "Kardiyojenik şok",
      "Hipovolemi",
      "Hipotiroidizm",
      "Septik şok (erken faz)",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Septik şokun erken fazında periferik vazodilatasyon nedeniyle kardiyak output artmış olabilir.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Pulmoner arter kateteri (PAC) ile ölçülebilen parametrelerden biri değildir:",
    options: [
      "Pulmoner arter basıncı",
      "Kardiyak output",
      "Pulmoner kapiller kama basıncı",
      "Santral venöz basınç",
      "Sağ atriyum basıncı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "CVP santral venöz kateter ile ölçülür. PAC ile doğrudan ölçülemez.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki parametrelerden hangisi \"afterload\" olarak tanımlanabilir?",
    options: [
      "Sol atriyum basıncı",
      "Sol ventrikül dolum hacmi",
      "Aortik çıkış direnci",
      "Kardiyak output",
      "Pulmoner venöz basınç",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Afterload, kalbin pompalarken karşılaştığı dirençtir ve aortik çıkış direnciyle ilgilidir.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "EKG monitörizasyonu sırasında \"QT intervali\" uzaması en çok hangi elektrolit bozukluğunda görülür?",
    options: [
      "Hipokalemi",
      "Hipokalsemi",
      "Hipermagnezemi",
      "Hipernatremi",
      "Hipokloremi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Hipokalsemi, QT intervalini uzatan klasik elektrolit dengesizliğidir.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Arteriyel kanülasyon sonrası nabız dalga formunun \"damping\" etkisiyle değişmesi en çok neye bağlıdır?",
    options: [
      "Nabız sayısına",
      "Kateter çapına",
      "Setin sertliğine",
      "Hava kabarcığına",
      "Kan basıncına",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Hava kabarcıkları veya hava sütunu, dalga formunda \"overdamping\"e neden olabilir.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Swan-Ganz kateteriyle yapılan kardiyak output ölçümünde aşağıdakilerden hangisi en çok etki eder?",
    options: [
      "Enjeksiyon hacmi",
      "Solunum sayısı",
      "Kalp ritmi",
      "Vücut sıcaklığı",
      "Tidal volüm",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Termodilüsyonda enjeksiyon hacminin ve sıcaklığının değişmesi hesaplamayı etkiler.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "İntraoperatif EKG monitörizasyonunda en sık kullanılan derivasyon hangisidir?",
    options: ["V1", "AVL", "II", "aVF", "III"],
    correctAnswerIndex: 2,
    explanation:
        "DII derivasyonu hem P dalgasını hem de ritim analizini en iyi gösteren derivasyondur.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "Hiperdinamik dolaşımda kardiyak output nasıl etkilenir?",
    options: [
      "Değişmez",
      "Azalır",
      "Artar",
      "Atriyal fibrilasyon gelişir",
      "Kardiyak output ölçülemez hale gelir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Hiperdinamik dolaşım (örneğin sepsisin erken fazı), artmış kardiyak output ile karakterizedir.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Swan-Ganz kateteri ile ölçülen pulmoner kapiller kama basıncının (PCWP) sürekli yüksek olması neyi düşündürür?",
    options: [
      "Hipovolemi",
      "Sol kalp yetmezliği",
      "Pulmoner emboli",
      "Hipotermi",
      "Anestezik derinlik",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Sol ventrikül dolum basıncı arttığında PCWP yükselir; bu genellikle sol kalp yetmezliği ile ilişkilidir.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "CVP ölçümünde \"v\" dalgası neyi temsil eder?",
    options: [
      "Atriyal kasılma",
      "Triküspit kapak kapanması",
      "Ventrikül sistolü",
      "Atriyuma venöz doluş",
      "Atriyumun gevşemesi",
    ],
    correctAnswerIndex: 3,
    explanation: "\"v\" dalgası atriyumun venöz dönüşle dolduğu fazı yansıtır.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulmoner arter kateteri ile doğrudan ölçülemeyip sadece hesaplanan değer aşağıdakilerden hangisidir?",
    options: [
      "Kardiyak output",
      "Pulmoner arter basıncı",
      "Sistemik vasküler direnç (SVR)",
      "Sağ atriyum basıncı",
      "PCWP",
    ],
    correctAnswerIndex: 2,
    explanation:
        "SVR hesaplanır; direkt olarak ölçülemez. MAP, CVP ve CO değerleri kullanılarak formülle bulunur.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "İntraoperatif hipovolemi şüphesinde en hızlı ve etkili ilk değerlendirme yöntemi nedir?",
    options: [
      "İdrar çıkışını değerlendirme",
      "Transtorasik ekokardiyografi",
      "CVP ölçümü",
      "Pulse pressure varyasyonu PPV",
      "Anestezik doz azaltımı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Pulse pressure varyasyonu (nabız basıncı değişkenliği), volüm yanıtlılığını ve hipovolemiyi değerlendirmek için güvenilir bir dinamik parametredir.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Sistemik vasküler direnç (SVR) hangi faktör tarafından en fazla etkilenir?",
    options: [
      "Preload",
      "Kalp hızı",
      "Vasküler tonus",
      "Pulmoner basınç",
      "İnotropik ajanlar",
    ],
    correctAnswerIndex: 2,
    explanation:
        "SVR esasen arteriyollerin tonusuna yani kasılma/gevşeme durumuna bağlıdır. Vasküler tonus arttıkça SVR de artar.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Arteriyel basınç dalga formunda dik ve hızlı yükselen bir sistolik tepe genellikle neyi gösterir?",
    options: [
      "Aort darlığı",
      "Hipotansiyon",
      "Hacim yüklenmesi",
      "Hiperdinamik dolaşım",
      "Şok tablosu",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Hiperdinamik dolaşımda güçlü sol ventrikül kasılması ile dik sistolik dalgalar oluşur.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "CVP'nin yükselmesine neden olan fizyolojik bir durum hangisidir?",
    options: [
      "Derin inspirasyon",
      "Ekspirasyon",
      "Pozitif basınçlı ventilasyon",
      "Hipovolemi",
      "Dehidratasyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Pozitif basınçlı ventilasyon torasik basıncı artırarak CVP'yi yükseltir.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Spontan solunum yapan hastada CVP ölçümü için en uygun zaman hangisidir?",
    options: [
      "İnspirasyon başlangıcı",
      "Ekspirasyon sonu",
      "Maksimum inspirasyon",
      "Ekspirasyon başlangıcı",
      "Herhangi bir an",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Ekspirasyon sonu, intratorasik basıncın en stabil olduğu andır ve ölçüm için en uygundur.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki yöntemlerden hangisi minimal invaziv kardiyak output ölçümüne örnektir?",
    options: [
      "PAC ile termodilüsyon",
      "Transtorasik ekokardiyografi",
      "Arteryel dalga analizi",
      "EKG",
      "Kapnografi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Arteriyel dalga analizi arteriyel hat üzerinden kardiyak output ölçümü yapılmasına olanak verir.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki monitörizasyon yöntemlerinden hangisi doku perfüzyonunu en iyi gösterir?",
    options: [
      "Arteriyel kan basıncı",
      "Laktat düzeyi",
      "CVP",
      "Kalp hızı",
      "SpO₂",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Doku hipoksisinin biyokimyasal göstergesi olan laktat, perfüzyon hakkında en doğru bilgiyi verir.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "Pulmoner wedge basıncı (PAWP) en çok neyi yansıtır?",
    options: [
      "Sağ atriyum basıncını",
      "Sol ventrikül son diastolik basıncını",
      "Pulmoner arter direncini",
      "Kardiyak outputu",
      "Santral venöz basıncı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "PAWP, sol ventrikülün dolum basıncını yansıtarak sol kalp fonksiyonlarını değerlendirmede kullanılır.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Kardiyak debi hesaplamasında kullanılan Fick prensibi aşağıdakilerden hangisini gerektirir?",
    options: [
      "Nabız basıncı",
      "Oksijen tüketimi",
      "Pulmoner wedge basıncı",
      "Arteriyel kan pH'sı",
      "Kalp atım sayısı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Fick yöntemi; oksijen tüketimi, arteriyel ve venöz O₂ içerik farkına dayanarak kardiyak output hesaplar.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "Kardiyak indeksi hesaplamak için ne gereklidir?",
    options: [
      "Kalp hızı",
      "Boy ve kilo",
      "Kardiyak output ve vücut yüzey alanı",
      "MAP ve CVP",
      "Pulmoner wedge basıncı",
    ],
    correctAnswerIndex: 2,
    explanation: "Kardiyak indeks = Kardiyak output / Vücut yüzey alanı",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "Hangi monitör hem ventilasyon hem dolaşım hakkında bilgi verir?",
    options: [
      "EKG",
      "Pulse oksimetre",
      "Kapnografi",
      "Termometre",
      "Flowmetre",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kapnografi ETCO₂ üzerinden ventilasyon ve dolaylı olarak dolaşımı da yansıtır.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Kardiyak monitörizasyon sırasında en çok kullanılan non-invazif tansiyon ölçüm yöntemi nedir?",
    options: [
      "Osilometrik yöntem",
      "Palpasyon yöntemi",
      "Riva-Rocci yöntemi",
      "Steteskop yöntemi",
      "Korotkoff yöntemi",
    ],
    correctAnswerIndex: 0,
    explanation: "Otomatik tansiyon aletleri osilometrik yöntemle çalışır.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "CVP değeri normalde kaç mmHg civarındadır?",
    options: ["1–3", "2–6", "4–10", "8–12", "10–15"],
    correctAnswerIndex: 1,
    explanation: "Normal CVP değeri 2–6 mmHg arasındadır.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Kalp yetmezliği olan bir hastada en anlamlı monitörizasyon parametresi hangisidir?",
    options: ["ETCO₂", "CVP", "PAWP", "HR", "SaO₂"],
    correctAnswerIndex: 2,
    explanation: "PAWP sol kalp dolum basıncını en iyi yansıtır.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "Düşük SVR (sistemik vasküler direnç) hangi durumda görülmez?",
    options: [
      "Sepsis",
      "Anaflaksi",
      "Nörojenik şok",
      "Hipovolemi",
      "Hiperkapni",
    ],
    correctAnswerIndex: 3,
    explanation: "Hipovolemide SVR artar, diğerlerinde düşer.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi wedge pozisyonuna geçişte yapılmaz?",
    options: [
      "Balon şişirilir",
      "Kateter ilerletilir",
      "Dalga formuna bakılır",
      "30 dk beklenir",
      "Kateter geriye çekilir",
    ],
    correctAnswerIndex: 3,
    explanation: "Wedge pozisyonu geçici bir ölçümdür, uzun süre tutulmaz.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Kardiyovasküler monitörizasyon sırasında arterial dalga formunda dik yükselen \"anacrotic limb\" neyi temsil eder?",
    options: [
      "Diyastol başlangıcı",
      "Aort kapağı açılması",
      "Sol ventrikül diyastolü",
      "Triküspid kapanması",
      "Aortik regürjitasyon",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Anacrotic limb, sol ventrikül ejeksiyonu ile aort kapağının açılmasını ve basınçta hızlı artışı yansıtır.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "Hangi monitörizasyon yöntemi ventrikül hacmini en iyi gösterir?",
    options: [
      "EKG",
      "Transtorasik ekokardiyografi",
      "Pulse oksimetre",
      "Kapnografi",
      "CVP",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Ekokardiyografi kalp hacimlerini, duvar hareketlerini ve EF'yi doğrudan görselleştirir.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "Pulmoner arter basıncı en fazla hangi klinik durumda artar?",
    options: [
      "Hipovolemi",
      "Sol kalp yetmezliği",
      "Hipertermi",
      "Metabolik asidoz",
      "Diyabet",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Sol kalp yetmezliğinde pulmoner venöz basınç artar → pulmoner arter basıncı da yükselir.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "Non-invazif tansiyon ölçüm cihazları hangi prensiple çalışır?",
    options: [
      "Piezoelektrik etki",
      "Radyofrekans",
      "Osilometrik yöntem",
      "Doppler ölçümü",
      "Isı algılama",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Otomatik tansiyon aletleri manşondaki titreşimleri analiz ederek basınç ölçer.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Kardiyak output yüksek ama dokular hipoperfüze ise en olası neden nedir?",
    options: [
      "Kardiyojenik şok",
      "Distributif şok",
      "Hipovolemi",
      "Tam kalp bloğu",
      "Pulmoner emboli",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Distributif şok (örneğin sepsis), yüksek CO ile birlikte doku düzeyinde perfüzyon bozukluğu ile seyreder.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "CVP ölçümünde transduserin yerleştirilmesi gereken referans noktası neresidir?",
    options: [
      "Kulak memesi",
      "Sternum altı",
      "5. interkostal aralık",
      "Midaksiller hat, 4. interkostal düzey (Foramen Monro)",
      "Klavikula hizası",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Doğru CVP ölçümü için transduserin kalp seviyesinde olması gerekir; bu da midaksiller hattır.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Swan-Ganz kateteri ile aşağıdaki parametrelerden hangisi ölçülemez?",
    options: [
      "Pulmoner arter basıncı",
      "Pulmoner wedge basıncı",
      "Kardiyak output",
      "CVP",
      "Sol atriyum volümü",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Sol atriyum hacmi doğrudan ölçülemez; sadece basınç parametreleri değerlendirilir.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Pulmoner arter kateterizasyonunda (PAK) \"wedge basıncı\" hangi yapının basıncını yansıtır?",
    options: [
      "Sol atrium",
      "Sol ventrikül",
      "Pulmoner arter",
      "Sağ atrium",
      "Aorta",
    ],
    correctAnswerIndex: 0,
    explanation: "PCWP sol atrium basıncını yansıtır",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "\"Pulse kontur analizi\" ile hangi parametre ölçülemez?",
    options: [
      "Kardiyak output",
      "Stroke volüm varyasyonu (SVV)",
      "Sistemik vasküler direnç",
      "Ventrikül ejeksiyon fraksiyonu",
      "Pulse basıncı varyasyonu",
    ],
    correctAnswerIndex: 3,
    explanation: "EF ekokardiyografi ile ölçülür",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "\"Bispektral indeks (BIS)\" monitorizasyonu hangi aralıkta genel anesteziyi gösterir?",
    options: ["85-100", "65-85", "40-65", "20-40", "0-20"],
    correctAnswerIndex: 2,
    explanation: "40-65 cerrahi anestezi derinliği",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi \"kardiyak output\" ölçüm yöntemlerinden değildir?",
    options: [
      "Termodilüsyon",
      "Fick prensibi",
      "Pulse kontur analizi",
      "Elektrokardiyografi",
      "Biyimpedans",
    ],
    correctAnswerIndex: 3,
    explanation: "EKG output ölçmez",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "\"Stroke volüm varyasyonu (SVV)\" hangi durumda volüm duyarlılığını kaybeder?",
    options: [
      "Açık toraks",
      "Atriyal fibrilasyon",
      "Mekanik ventilasyon",
      "PEEP 10 cmH₂O",
      "ARDS",
    ],
    correctAnswerIndex: 1,
    explanation: "AF'de düzensiz dolum nedeniyle SVV güvenilmez",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Hangisi \"pulmoner arter kateteri\" komplikasyonlarından değildir?",
    options: [
      "Pulmoner arter rüptürü",
      "Tam kalp bloğu",
      "Hava embolisi",
      "Metabolik alkaloz",
      "Endokardit",
    ],
    correctAnswerIndex: 3,
    explanation: "Metabolik alkaloz ilişkisizdir",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "\"Kardiyak output\" ölçümünde Fick yöntemi hangi parametreyi kullanmaz?",
    options: [
      "Oksijen tüketimi",
      "Arteriyel O₂ içeriği",
      "Venöz O₂ içeriği",
      "Arteriyel CO2",
      "Akciğer kompliyansı",
    ],
    correctAnswerIndex: 4,
    explanation: "Fick eşitliği: CO = VO₂ / (CaO₂ - CvO₂)",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "Hangisi \"non-invaziv kardiyak output\" ölçüm yöntemidir?",
    options: [
      "Swan-Ganz kateteri",
      "Biyimpedans kardiyografi",
      "Arteriyel kateter",
      "Santral venöz kateter",
      "TEE",
    ],
    correctAnswerIndex: 1,
    explanation: "Torasik biyimpedans non-invazivdir",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "Hangisi \"arteriyel kan basıncı\" dalga formu analizinde \"dikrotik çentik\"in kaybolma nedenidir?",
    options: [
      "Aort yetmezliği",
      "Aort darlığı",
      "Hipertansiyon",
      "Vazodilatasyon",
      "Hipovolemi",
    ],
    correctAnswerIndex: 0,
    explanation: "Aort yetmezliğinde dikrotik çentik silinir",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "\"Kardiyak output\" ölçümünde termodilüsyon yöntemi hangi fizik yasasına dayanır?",
    options: ["Bernoulli", "Fick", "Poiseuille", "Stewart-Hamilton", "Laplace"],
    correctAnswerIndex: 3,
    explanation: "Stewart-Hamilton eşitliği kullanılır",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "Hangisi \"pulse oksimetre\" kullanımını en çok etkiler?",
    options: [
      "Hiperbilirubinemi",
      "Karboksihemoglobin",
      "Hipoglisemi",
      "Hipernatremi",
      "Hipokalsemi",
    ],
    correctAnswerIndex: 1,
    explanation: "COHb yanlış yüksek SpO₂ okuması yapar",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "\"Masif pulmoner emboli\"de PAK bulgusu nedir?",
    options: [
      "PCWP artmış",
      "Sağ atrial basınç normal",
      "Pulmoner arter basıncı düşük",
      "Kardiyak output artmış",
      "Sağ ventrikül basıncı artmış",
    ],
    correctAnswerIndex: 4,
    explanation: "RV afterload artışına bağlı basınç yükselir",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "\"Kardiyak tamponad\"da CVP dalga formunda hangisi görülür?",
    options: [
      "Y dalgasında silinme",
      "X inişi belirginleşme",
      "A dalgası kaybı",
      "Y dalgası derinleşmesi",
      "V dalgası yükselmesi",
    ],
    correctAnswerIndex: 0,
    explanation: "Tamponadda Y inişi silinir",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "\"İntraoperatif TEE\" hangi durumda kesinlikle kontrendikedir?",
    options: [
      "Özofagus varisi",
      "Aort darlığı",
      "Mitral yetmezlik",
      "Koroner arter hastalığı",
      "Atriyal septal defekt",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Özofagus varisi rüptür riski nedeniyle mutlak kontrendikasyon",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "\"Pulse basıncı varyasyonu\" (PPV) hangi aralıkta volüm ihtiyacını gösterir?",
    options: [">%5", ">%10", ">%15", ">%20", ">%25"],
    correctAnswerIndex: 2,
    explanation: "PPV >%13-15 volüm duyarlılığını gösterir",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "\"Kardiyojenik şok\"ta PAK bulguları hangisidir?",
    options: [
      "Yüksek PCWP, düşük CO",
      "Düşük PCWP, yüksek CO",
      "Normal PCWP, yüksek CO",
      "Yüksek PCWP, yüksek CO",
      "Düşük PCWP, düşük CO",
    ],
    correctAnswerIndex: 0,
    explanation: "PCWP >18 mmHg + CO <2.2 L/dk/m²",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question: "\"Kardiyak output\" ölçümünde LiDCO yöntemi hangisini kullanır?",
    options: [
      "Termodilüsyon",
      "Lityum dilüsyonu",
      "Biyimpedans",
      "Fick prensibi",
      "Doppler",
    ],
    correctAnswerIndex: 1,
    explanation: "Lityum indikatörü ile ölçüm",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "\"Arteriyel kan basıncı\" monitorizasyonunda hangisi \"damping\" artefaktını gösterir?",
    options: [
      "Sistolik basınçta ani yükselme",
      "Diyastolik basınçta düşme",
      "Dikrotik çentiğin kaybı",
      "Mean basıncın değişmemesi",
      "Dalga boyunda kısalma",
    ],
    correctAnswerIndex: 2,
    explanation: "Aşırı dampingte dikrotik çentik silinir",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "\"NIRS (Near-Infrared Spectroscopy)\" hangi bölge oksijenasyonunu ölçer?",
    options: ["Serebral", "Miyokardiyal", "Renal", "Hepatik", "Pulmoner"],
    correctAnswerIndex: 0,
    explanation: "Serebral oksijen satürasyonu ölçer - rSO₂",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question:
        "\"Pulmoner arter kateteri\" yerleşimi sırasında hangi EKG değişikliği sağ ventrikül irritasyonunu gösterir?",
    options: [
      "ST elevasyonu",
      "Ventriküler ekstrasistol",
      "PR uzaması",
      "QT uzaması",
      "U dalgası",
    ],
    correctAnswerIndex: 1,
    explanation: "RV irritasyonunda sık VES görülür",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 2,
  ),

  Question(
    question: "\"İntraoperatif TEE\" hangi kapak patolojisinde en değerlidir?",
    options: [
      "Aort darlığı",
      "Mitral yetmezlik",
      "Pulmoner darlık",
      "Triküspit darlığı",
      "Aort yetmezliği",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Mitral yetmezlikte regurgitant jet değerlendirmesi için ideal",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),

  Question(
    question:
        "Kardiyak output yüksek ama dokular hipoperfüze ise en olası neden nedir?",
    options: [
      "Kardiyojenik şok",
      "Distributif şok",
      "Hipovolemi",
      "Tam kalp bloğu",
      "Pulmoner emboli",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Distributif şok (örneğin sepsis), yüksek CO ile birlikte doku düzeyinde perfüzyon bozukluğu ile seyreder.",
    category: "Kardiyovasküler Monitörizasyon",
    difficulty: 3,
  ),
];
