import '../models/question.dart';

final List<Question> postoperativeCareMechanicalVentilationQuestions = [
  Question(
    question: "Mekanik ventilasyona başlanan bir hastada en çok tercih edilen ilk ventilasyon modu hangisidir?",
    options: [
      "Basınç destekli ventilasyon (PSV)",
      "Kontrollü mekanik ventilasyon (CMV)",
      "Asistan-kontrollü ventilasyon (ACV)",
      "T-tüp desteği",
      "SIMV (Senkronize Intermittan Mekanik Ventilasyon)"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "ACV, hem hastanın spontan çabası varsa destekler hem de yoksa belirli frekansta ventilasyon sağlar → en sık başlangıç modudur.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Mekanik ventilasyon sırasında barotravma riskini en çok artıran ventilatör ayarı aşağıdakilerden hangisidir?",
    options: [
      "FiO₂ %50",
      "PEEP 5 cmH₂O",
      "Tidal volüm 10 mL/kg",
      "Plateau basıncı >30 cmH₂O",
      "Solunum sayısı 12/dk"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Plateau basıncının >30 cmH₂O olması, alveollerin aşırı şişmesine ve barotravmaya neden olabilir.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Aşağıdaki durumlardan hangisi, mekanik ventilasyonun komplikasyonlarından biri değildir?",
    options: [
      "Oksijen toksisitesi",
      "Volütravma",
      "Barotravma",
      "Trakeal stenoz",
      "Hiperkalemi"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Hiperkalemi mekanik ventilasyonla ilişkili bir komplikasyon değildir. Diğerleri bilinen risklerdendir.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Aşağıdaki durumlardan hangisinde, yüksek FiO₂ (>0.6) ile oksijen verilmesi zararlı olabilir?",
    options: [
      "Karbonmonoksit zehirlenmesi",
      "Akut hemolitik anemi",
      "KOAH alevlenmesi",
      "Pnömotoraks",
      "Hipotansiyon"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "KOAH'ta yüksek FiO₂, hipoksik ventilasyon sürücüsünü baskılar → CO₂ retansiyonu riski vardır.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Mekanik ventilasyon sırasında auto-PEEP gelişmiş bir hastada aşağıdaki bulgulardan hangisi görülmez?",
    options: [
      "Dinamik hiperinflasyon",
      "Artmış inspiratuvar basınç",
      "Solunum iş yükünde artış",
      "Azalmış ekspiryum süresi",
      "Artmış tidal volüm"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Auto-PEEP → ekspiratuvar havanın tam boşalamaması → artmış basınç ve ventilasyon zorluğu, fakat tidal volüm artmaz.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, yüksek PEEP uygulamasının pulmoner etkilerinden biridir?",
    options: [
      "Artmış pulmoner ödem",
      "Azalmış fonksiyonel rezidüel kapasite",
      "Alveoler kollaps",
      "Artmış oksijenasyon",
      "Azalmış inspiratuvar rezerv volüm"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "PEEP, alveollerin açık kalmasını sağlayarak oksijenasyonu artırır ve atelektaziyi önler.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Mekanik ventilasyon uygulanan bir hastada plateau basıncı >30 cmH₂O ise hangi komplikasyon gelişme riski en yüksektir?",
    options: [
      "Volütravma",
      "Pneumoperikardium",
      "Barotravma",
      "Hemotoraks",
      "Trakeomalazi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Yüksek plateau basıncı, alveollerde aşırı basınç birikimine neden olarak barotravma riskini artırır.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, mekanik ventilasyon sonrası gelişen trakeal stenozun en sık nedenidir?",
    options: [
      "Yüksek FiO₂",
      "Hipoksemi",
      "Uzun süreli balon basısı",
      "Alveoler hipoventilasyon",
      "Yetersiz nemlendirme"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Endotrakeal tüp balonunun uzun süreli yüksek basıncı, trakeal mukozada iskemi ve fibrozise neden olur → stenoz gelişir.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Mekanik ventilasyondan ekstübasyon sonrası erken dönemde gelişen en sık komplikasyon hangisidir?",
    options: [
      "Laringospazm",
      "Aspirasyon",
      "Bronkospazm",
      "Hiperkapni",
      "Atelektazi"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Laringospazm, özellikle erken ekstübasyon sonrası gelişebilir ve hava yolu tıkanıklığına yol açar → acildir.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Aşağıdaki inhalasyon ajanlarından hangisi, mukosiliyer klirensi en fazla baskılar?",
    options: [
      "Salbutamol",
      "Sevofluran",
      "Nitroz oksit",
      "İzofluran",
      "Halotan"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Halotan, mukosiliyer klirensi belirgin şekilde baskılar ve sekresyon temizliğini zorlaştırır.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Mekanik ventilasyon uygulanan bir hastada pozitif basınçlı ventilasyonun dolaşım sistemine etkisi nedir?",
    options: [
      "Afterload'ı azaltır",
      "Preload'ı artırır",
      "Venöz dönüşü artırır",
      "Pulmoner ödemi artırır",
      "Diyastol süresini kısaltır"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Pozitif basınçlı ventilasyon, sol ventrikül afterload'ını azaltarak pompa iş yükünü hafifletir.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, mekanik ventilasyon sırasında spontan solunum çabalarının ventilatör ile uyumsuzluk oluşturmasına en çok neden olur?",
    options: [
      "Yüksek FiO₂",
      "Derin sedasyon",
      "Düşük inspiratuvar akım",
      "Yüksek tidal volüm",
      "Yüksek PEEP"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Düşük inspiratuvar akım, hastanın ihtiyacını karşılamaz → ventilatör ile hasta asenkronize hale gelir.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "High-flow nazal oksijen (HFNO) sistemleri aşağıdaki özelliklerden hangisine sahip değildir?",
    options: [
      "Nemlendirilmiş oksijen sağlar",
      "Düşük sabit akım hızıyla çalışır",
      "FiO₂'yi titrasyonla ayarlayabilir",
      "Nazal konforu artırır",
      "Ekspiratuvar pozitif basınç oluşturabilir"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "HFNO, yüksek akım sistemidir (genellikle 30–60 L/dk) → düşük sabit akım ifadesi yanlıştır.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Mekanik ventilasyondan ayrılma sırasında en güvenilir testlerden biri aşağıdakilerden hangisidir?",
    options: [
      "PaO₂ ölçümü",
      "Tidal volüm > 3 mL/kg",
      "Solunum sayısı < 30/dk",
      "Rapid Shallow Breathing Index (RSBI)",
      "Entidal CO₂ < 30 mmHg"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "RSBI = solunum sayısı / tidal volüm (L), değerin <105 olması, ekstübasyon başarısı ile ilişkilidir.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Aşağıdaki mekanik ventilasyon parametrelerinden hangisinin atelectrauma (alveol kollaps ve açılma hasarı) ile en yakın ilişkili olduğu düşünülür?",
    options: [
      "FiO₂",
      "Tidal volüm",
      "PEEP",
      "Solunum sayısı",
      "I:E oranı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Düşük PEEP, alveollerin inspirasyon–ekspirasyon arasında tekrar tekrar kapanmasına neden olarak atelectrauma oluşturur.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Postoperatif dönemde mekanik ventilasyon gereksinimi olmayan ancak hipoksemik olan bir hastada aşağıdaki oksijen tedavisi yöntemlerinden hangisi en fazla FiO₂ sağlayabilir?",
    options: [
      "Nazal kanül",
      "Basit yüz maskesi",
      "Venturi maske",
      "Rebreather maske",
      "Non-rebreather maske"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Non-rebreather maske, %90–100'e kadar FiO₂ sağlayabilir → en yüksek oksijen konsantrasyonu veren sistemlerden biridir.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Helioks (heliyum + oksijen) tedavisinin ventilasyonda kullanım amacı nedir?",
    options: [
      "Oksijen taşıma kapasitesini artırmak",
      "Karbondioksit düzeyini artırmak",
      "Hava yolu direncini azaltmak",
      "Akciğer kompliyansını artırmak",
      "Pulmoner ödemi önlemek"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Helioks, daha düşük yoğunluğa sahiptir → hava yolu direncini azaltır, özellikle obstrüktif hava yolu hastalıklarında faydalıdır.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, trakeostomi açılmış bir hastada spontan solunuma geçiş için en uygun değerlendirme aracıdır?",
    options: [
      "PaO₂ ölçümü",
      "RSBI",
      "Tidal volüm >8 mL/kg",
      "PaCO₂ <45 mmHg",
      "PEEP = 8 cmH₂O"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "RSBI (Rapid Shallow Breathing Index), solunum sayısı / tidal volüm ile hesaplanır → <105 olması başarılı ekstübasyonu destekler.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, mekanik ventilasyonda pulmoner kompliyansın azalmasını gösteren bir bulgudur?",
    options: [
      "Azalmış peak basınç",
      "Artmış tidal volüm",
      "Artmış plateau basıncı",
      "Artmış FiO₂ gereksinimi",
      "Artmış solunum sayısı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Plateau basıncı, akciğerin esnekliğini yansıtır → yüksekse kompliyans düşüktür.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Mekanik ventilasyon altındaki bir hastada, ani bradikardi ve hipotansiyon gelişmişse ilk düşünülmesi gereken neden nedir?",
    options: [
      "Volütravma",
      "Hipoglisemi",
      "Tansiyon pnömotoraks",
      "Hipertermi",
      "Hipokalemi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Ani dolaşım kollapsı + ventilatör desteği + göğüs şişliği → tansiyon pnömotoraksı düşündürür.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Mekanik ventilasyonla ilgili en az uyaran olan, spontan solunuma en çok izin veren mod hangisidir?",
    options: [
      "ACV",
      "CMV",
      "PSV",
      "SIMV",
      "BiPAP"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "PSV (Pressure Support Ventilation), hastanın tüm solunum çabasını destekler ve en fizyolojik modlardan biridir.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, yüksek tidal volüm ve yüksek inspiratuvar basınca bağlı akciğer hasarının adıyla en iyi eşleşir?",
    options: [
      "Atelektazi",
      "Barotravma",
      "Volütravma",
      "Biotrauma",
      "Pneumomediastinum"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Volütravma, aşırı tidal volümle oluşan alveoler gerilme hasarıdır → ventilatör kaynaklı akciğer hasarı türüdür.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Volume control ventilation (VCV) modunun temel özelliği nedir?",
    options: [
      "Basınca sabit kalır",
      "Hastanın nefesini algılamaz",
      "Sabit tidal volüm sağlar",
      "PEEP otomatik değişir",
      "CPAP ile aynıdır"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "VCV modunda her solukta sabit bir tidal volüm verilir, basınç akciğer kompliyansına göre değişebilir.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Mekanik ventilasyonda 'auto-PEEP' oluşumuna en çok hangi durum neden olur?",
    options: [
      "Yetersiz inspirasyon",
      "Yüksek tidal volüm",
      "Ekspiryum süresinin kısa olması",
      "Düşük solunum sayısı",
      "Az PEEP verilmesi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Ekspirasyon süresi yetersiz olduğunda hava tam olarak dışarı atılamaz → auto-PEEP gelişir.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Basınç kontrollü ventilasyonda (PCV) aşağıdaki parametrelerden hangisi sabittir?",
    options: [
      "Volüm",
      "Basınç",
      "pH",
      "CO₂ seviyesi",
      "FiO₂"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "PCV modunda her solukta sabit bir basınç uygulanır. Volüm değişken olabilir.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Ventilatöre bağlı hastada yüksek inspiratuvar basınç ihtiyacı en çok hangi durumla ilişkilidir?",
    options: [
      "Hipervolemi",
      "Artmış akciğer kompliyansı",
      "Azalmış akciğer kompliyansı",
      "Azalmış FiO₂",
      "Hipertermi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Akciğer kompliyansı azaldığında (örneğin ARDS, fibrozis), hedef volümü elde etmek için daha yüksek basınç gerekir.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Mekanik ventilasyonda barotravma riski en çok hangi parametre ile ilişkilidir?",
    options: [
      "FiO₂ yüksekliği",
      "PEEP düşüklüğü",
      "Tidal volüm artışı",
      "Solunum sayısı",
      "Hedef SpO₂"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Yüksek tidal volüm → aşırı akciğer gerilimi → barotravma (hava kaçağı, pnömotoraks) riski artar.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Trakeostomili hastada ventilasyon uygularken en dikkat edilmesi gereken parametre nedir?",
    options: [
      "Oksijen dozu",
      "FiO₂ değeri",
      "Kaf basıncı (cuff pressure)",
      "pH",
      "HCO₃"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Cuff basıncı çok yüksek olursa trakeal iskemiye, çok düşükse aspirasyona neden olabilir.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Volume support ventilation (VSV) modunun temel avantajı nedir?",
    options: [
      "Tidal volüm sabittir",
      "Basınç hastanın ihtiyacına göre ayarlanır",
      "Sabit FiO₂ sağlar",
      "Hasta çabası olmadan çalışır",
      "PEEP uygulanamaz"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "VSV'de istenen tidal volüme ulaşmak için gerekli basınç dinamik olarak ayarlanır.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "CPAP (Continuous Positive Airway Pressure) uygulaması en çok hangi hastada etkilidir?",
    options: [
      "ARDS",
      "KOAH",
      "Kardiyojenik pulmoner ödem",
      "Astım atağı",
      "Septik şok"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "CPAP, solunum çalışmasını azaltır ve sol ventrikül sonrası yükü düşürerek kardiyojenik ödemde etkili olur.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Oksijenin toksik etkisi en çok hangi dokuda belirgindir?",
    options: [
      "Karaciğer",
      "Akciğer",
      "Böbrek",
      "Beyin",
      "Kalp"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Oksijen toksisitesi akciğerlerde inflamasyon ve fibrozis ile belirgin olarak ortaya çıkar.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Postop yoğun bakım hastasında baş pozisyonu 30° yukarıda tutulması, en çok hangi komplikasyonu önlemek için önerilir?",
    options: [
      "Hipotermi",
      "Atelektazi",
      "Oksijen toksisitesi",
      "Ventilatör ilişkili pnömoni (VAP)",
      "Apne"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Başın yükseltilmesi → aspirasyon ve VAP riskini azaltır.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "İnhalasyon yoluyla verilen ilaçların en hızlı etki süresi hangi formülasyona aittir?",
    options: [
      "Kuru toz inhaler (DPI)",
      "Nebülizatör",
      "İntravenöz",
      "Ölçülü doz inhaler (MDI)",
      "Transdermal sistem"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "MDI cihazları (ölçülü doz inhaler) → partikül büyüklüğü küçüktür, hızlı pulmoner emilim sağlar.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "Extübasyon sonrası gelişen üst hava yolu ödemi için aşağıdaki tedavilerden hangisi önceliklidir?",
    options: [
      "Lökotrien antagonistleri",
      "Soğuk buhar tedavisi",
      "İntravenöz salbutamol",
      "Nebulize adrenalin ve sistemik steroid",
      "Oral antibiyotik"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Post-extübasyon stridor veya hava yolu ödeminde ilk basamak: nebulize adrenalin + sistemik kortikosteroid.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "CPAP ile tedavi edilen hastada en çok görülen yan etki hangisidir?",
    options: [
      "Orofaringeal kandida",
      "Sinüzit",
      "Gastrik distansiyon",
      "Hipoglisemi",
      "Hiponatremi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "CPAP sırasında pozitif basınç mideye hava geçişine neden olabilir → gastrik distansiyon.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),

  Question(
    question: "İnhalasyon tedavisinde partikül büyüklüğü ne kadar küçükse:",
    options: [
      "Orofaringeal depo artar",
      "Bronşlara ulaşma olasılığı azalır",
      "Alveollere ulaşma olasılığı artar",
      "Sistemik emilim olmaz",
      "İlaç etkisi yavaş başlar"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "<5 mikron çapındaki partiküller terminal hava yollarına ulaşabilir.",
    category: "Postoperatif Bakım ve Mekanik Ventilasyon",
  ),
];
