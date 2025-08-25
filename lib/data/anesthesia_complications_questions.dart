import '../models/question.dart';

final List<Question> anesthesiaComplicationsQuestions = <Question>[
  Question(
    question:
        "Aşağıdakilerden hangisi, anesteziye bağlı en sık görülen majör komplikasyonlardan biridir?",
    options: [
      "Malign hipertermi",
      "Atelektazi",
      "Laringospazm",
      "Postoperatif bulantı-kusma",
      "Anestezi ilişkili ölüm",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Postoperatif bulantı ve kusma (PONV) en sık görülen komplikasyonlardandır → hasta konforunu ve taburculuğu etkiler.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "En sık görülen intraoperatif anestezi komplikasyonu aşağıdakilerden hangisidir?",
    options: [
      "Hipotansiyon",
      "Hiperkalemi",
      "Alerjik reaksiyon",
      "Laringospazm",
      "Akciğer embolisi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Anestezik ajanlar periferik vazodilatasyon yaparak hipotansiyona yol açabilir, en sık komplikasyonlardan biridir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki komplikasyonlardan hangisi endotrakeal entübasyon sırasında en sık görülür?",
    options: [
      "Bronkospazm",
      "Diş yaralanması",
      "Hipoglisemi",
      "Hiperkapni",
      "Atelektazi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Entübasyon sırasında mekanik travmaya bağlı diş hasarı en sık görülen fiziksel komplikasyondur.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "İntraoperatif farkındalık (awareness) riski en fazla hangi hasta grubunda görülür?",
    options: [
      "Pediatrik hasta",
      "ASA I sınıfı elektif cerrahili hasta",
      "Acil travma hastası",
      "Göz cerrahisi hastası",
      "Obstetrik hasta",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Travma ve acil olgularda, düşük doz anestezik verilmesi gerekebilir → bu da awareness riskini artırır.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aspirasyon pnömonisi en çok aşağıdaki anestezi dönemlerinden hangisinde gelişir?",
    options: [
      "İndüksiyon",
      "İdame",
      "Derlenme",
      "Preoperatif",
      "Postoperatif 2. gün",
    ],
    correctAnswerIndex: 0,
    explanation:
        "İndüksiyon sırasında bilinç kaybı ve hava yolu reflekslerinin kaybı nedeniyle en sık bu dönemde görülür.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Postoperatif solunum depresyonu açısından en riskli hasta aşağıdakilerden hangisidir?",
    options: [
      "Obez olmayan, genç hasta",
      "Kronik opioid kullanan hasta",
      "Uyku apne sendromlu hasta",
      "Astım öyküsü olan hasta",
      "Kontrollü hipertansiyonu olan hasta",
    ],
    correctAnswerIndex: 2,
    explanation:
        "OSA'lı hastalarda, postoperatif opioid kullanımı solunum depresyonu riskini artırır.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Malignite şüphesi olan bir hastada intraoperatif fark edilmeyen hava embolisi aşağıdaki durumdan hangisiyle en çok karıştırılabilir?",
    options: [
      "Anestezik derinliği",
      "Pulmoner emboli",
      "Hipovolemi",
      "Hiperkapni",
      "Miyokard enfarktüsü",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Venöz hava embolisi ve pulmoner emboli klinik olarak benzer seyredebilir (ani hipoksi, hipotansiyon).",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, postoperatif deliryum açısından en güçlü risk faktörüdür?",
    options: [
      "Uzun süreli açlık",
      "İntraoperatif hipotermi",
      "Geriatrik hasta",
      "Kas gevşetici kullanımı",
      "Genç yaş",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaşlı hastalar, özellikle major cerrahi sonrası deliryum açısından yüksek risklidir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, peroperatif anafilaksi için en sık suçlanan ilaç grubu olarak bilinir?",
    options: [
      "Lokal anestezikler",
      "Opioidler",
      "Nondepolarizan kas gevşeticiler",
      "Benzodiazepinler",
      "Antibiyotikler",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kas gevşeticiler, özellikle roküronyum ve suksinilkolin, intraoperatif anafilaktik reaksiyonların en sık nedenlerindendir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Lokal anestezik toksisitesinin (LAST) en erken klinik belirtisi nedir?",
    options: [
      "Konvülsiyon",
      "Bradikardi",
      "Metalik tat",
      "Solunum depresyonu",
      "Kas rijiditesi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Ağızda metalik tat, tinnitus, parestezi gibi nörolojik belirtiler LAST'ın ilk bulgularındandır.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, hava embolisi şüphesinde ilk yapılması gereken müdahaledir?",
    options: [
      "Trendelenburg pozisyonu",
      "Antikoagülan başlamak",
      "Hiperventilasyon",
      "Sırtüstü yatırmak",
      "Düşük FiO₂ vermek",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Trendelenburg + sol yan pozisyon, havanın sağ ventrikülden akciğere geçmesini engeller → ilk basamak budur.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki hastalıklardan hangisinde, postoperatif ajitasyon gelişme riski en düşüktür?",
    options: [
      "Pediatrik hasta",
      "Alzheimer hastası",
      "Hipertiroidili hasta",
      "Parkinson hastası",
      "Opiat bağımlısı hasta",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Parkinson hastalarında ajitasyon nadirdir; daha çok deliryum ve hareket kısıtlılığı ön plandadır.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "GA sonrası postoperatif hipotermi gelişmiş bir hastada aşağıdakilerden hangisi en olasıdır?",
    options: [
      "İnsülin direnci azalır",
      "Oksijen tüketimi artar",
      "Koagülasyon etkinliği artar",
      "Kalp debisi artar",
      "Mortalite azalır",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Hipotermi, termogenez için oksijen tüketimini artırır, metabolizmayı bozar, koagülopati ve enfeksiyon riskini yükseltir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki faktörlerden hangisi, postoperatif kognitif disfonksiyon (POCD) gelişiminde en az rol oynar?",
    options: [
      "Geriatrik yaş",
      "Uzun cerrahi süresi",
      "Hipotansiyon",
      "Anksiyete düzeyi",
      "Düşük eğitim düzeyi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "POCD gelişiminde fizyolojik ve yapısal faktörler rol oynar → preoperatif anksiyete, bilişsel disfonksiyonla doğrudan ilişkili değildir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, postoperatif dönemde görülen en sık kardiyak aritmi türüdür?",
    options: [
      "Atrial fibrilasyon",
      "Ventriküler taşikardi",
      "Sinüs taşikardisi",
      "Torsades de pointes",
      "Junctional taşikardi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sinüs taşikardisi, ağrı, hipovolemi, anksiyete ve hipoksiye bağlı olarak en sık görülen aritmidir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, postoperatif kanama riskini artırabilecek sistemik bir etkendir?",
    options: [
      "Hipokalsemi",
      "Hiperkalemi",
      "Hiponatremi",
      "Hipermagnezemi",
      "Hipoglisemi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Kalsiyum, koagülasyon faktörlerinin aktivasyonu için gereklidir → hipokalsemi kanama riskini artırır.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki anestezi ajanlarından hangisi, postoperatif deliryum riskini artırmada en az rol oynar?",
    options: [
      "Midazolam",
      "Deksmedetomidin",
      "Propofol",
      "Halotan",
      "Sevofluran",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Deksmedetomidin, deliryum riskini azaltıcı etkisiyle bilinir → sedatif ama bilinç açıklığını daha fazla korur.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Postoperatif körlük (POVL) riski en çok hangi cerrahi ile ilişkilidir?",
    options: [
      "Katarakt cerrahisi",
      "Omurga cerrahisi (prone pozisyonda)",
      "Laparoskopik kolesistektomi",
      "İntratorasik tümör rezeksiyonu",
      "Sefal hematom drenajı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Uzun süren prone omurga cerrahileri, orbital bası ve perfüzyon bozukluğu ile iskemik optik nöropatiye neden olabilir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, postoperatif hipotermi ile ilişkili değildir?",
    options: [
      "Koagülasyon bozukluğu",
      "Artmış infeksiyon riski",
      "Uzamış kas gevşetici etkisi",
      "Azalmış oksijen tüketimi",
      "Geç uyanma",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Hipotermide oksijen tüketimi artar, soğuk stresine karşı metabolizma hızlanır. Diğer tüm seçenekler hipoterminin bilinen sonuçlarıdır.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki sistemik durumların hangisi, lokal anestezik sistemik toksisitesini (LAST) artıran bir risk faktörüdür?",
    options: [
      "Hiperkalemi",
      "Hipoproteinemi",
      "Hiponatremi",
      "Hiperlipidemi",
      "Hipotansiyon",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Lokal anestezikler albümine bağlanarak taşınır → hipoproteinemi durumunda serbest ilaç düzeyi artar, toksisite riski yükselir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, spinal anestezi sonrası geçici nörolojik semptom (TNS) gelişimiyle en fazla ilişkilidir?",
    options: [
      "Prone pozisyon",
      "Kullanılan lokal anestezik miktarı",
      "Lidokain kullanımı",
      "Hipotermi",
      "Yaşlı hasta",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Lidokain, spinal anestezide kullanıldığında özellikle bel ve bacak ağrısına yol açan TNS ile en sık ilişkilendirilen ajandır.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, anestezi sırasında pozisyonel bası nöropatisi açısından en çok risk taşıyan sinirdir?",
    options: [
      "Ulnar sinir",
      "Median sinir",
      "Femoral sinir",
      "Glossofaringeal sinir",
      "Okülomotor sinir",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Ulnar sinir, dirsek hizasında yüzeyeldir ve özellikle supin pozisyonda masa kenarına bası ile zedelenebilir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, anestezi sonrası en sık görülen psikolojik komplikasyonlardan biri olarak kabul edilir?",
    options: [
      "Postoperatif kognitif disfonksiyon",
      "Psikoz",
      "Anesteziye karşı fobi gelişimi",
      "PTSD (travma sonrası stres bozukluğu)",
      "Halüsinasyon",
    ],
    correctAnswerIndex: 0,
    explanation:
        "POCD, özellikle yaşlılarda sık görülür ve dikkat, hafıza, yürütücü işlevlerde bozulma ile kendini gösterir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, lokal anestezik toksisitesi (LAST) sırasında ilk gelişen kardiyak bulgulardan biridir?",
    options: [
      "Ventriküler fibrilasyon",
      "Geniş QRS",
      "Sinüs bradikardi",
      "PR uzaması",
      "ST depresyonu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Lokal anestezikler, miyokardiyal iletimi yavaşlatır → QRS genişlemesi, erken ve önemli bir EKG bulgusudur.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki sinirlerden hangisi, litotomi pozisyonu sırasında hasar görme açısından en yüksek risk altındadır?",
    options: [
      "Femoral sinir",
      "Peroneal sinir",
      "Ulnar sinir",
      "Median sinir",
      "Tibial sinir",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Peroneal sinir, fibula başında yüzeyel seyrettiğinden litotomi pozisyonunda bası ile kolay zedelenir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, hava embolisi şüphesinde yapılmaması gereken bir uygulamadır?",
    options: [
      "Yüzüstü pozisyon",
      "Trendelenburg ve sol lateral pozisyon",
      "%100 O₂ verilmesi",
      "Entidal CO₂'nin monitörize edilmesi",
      "Merkezi venöz aspirasyon düşünülmesi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Yüzüstü pozisyon, embolinin sağ kalbe geçişini kolaylaştırabilir → kaçınılmalıdır. Diğerleri uygun yaklaşımlardır.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Malign hipertermi krizinde laboratuvar bulgularından hangisi en erken görülür?",
    options: [
      "Serum kreatin kinaz (CK) yüksekliği",
      "Hiperkalemi",
      "Metabolik asidoz",
      "Miyoglobinüri",
      "Hipertermi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Metabolik asidoz (pH<7.25) ve ETCO₂'de ani yükselme (>60 mmHg) en erken bulgulardır. CK yüksekliği ve hipertermi 30-60 dakika sonra, miyoglobinüri ise daha geç dönemde ortaya çıkar.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Laringospazm en sık hangi dönemde görülür?",
    options: [
      "İndüksiyon sırasında",
      "Entübasyon sırasında",
      "Ekstübasyon sonrası",
      "Derin anestezi altında",
      "Cerrahi stimülasyon sırasında",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Ekstübasyon sonrası (%80), özellikle yüzeyel anestezi (Stage II) ve sekresyon varlığında görülür. Pediatrik hastalarda insidans %17-25'tir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Lokal anestezik sistemik toksisitesinde (LAST) ilk ortaya çıkan semptom nedir?",
    options: [
      "Kardiyak arrest",
      "Nöbet",
      "Bilinç kaybı",
      "Perioral parestezi",
      "Kulak çınlaması",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Klasik bulgular sırasıyla; metalik tat, kulak çınlaması, perioral parestezi, nöbet ve kardiyak arresttir. Bupivakain toksisitesinde kardiyak arrest nöbetten önce gelebilir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Anesteziye bağlı mortalitenin en sık nedeni nedir?",
    options: [
      "Havayolu obstrüksiyonu",
      "Aspirasyon pnömonisi",
      "Anafilaktik şok",
      "Malign hipertermi",
      "Lokal anestezik toksisitesi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Havayolu komplikasyonları (özellikle tanınamayan hipoksi) anesteziye bağlı ölümlerin %60'ından sorumludur. 'Can't intubate, can't ventilate' durumu en korkulan senaryodur.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Nöromusküler blokaj monitorizasyonunda altın standart yöntem nedir?",
    options: [
      "Periferik sinir stimülasyonu",
      "TOF (Train-of-Four)",
      "Post-tetanik sayım",
      "EMG",
      "Mekanomiografi",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Mekanomiografi (MMG) altın standart olmasına rağmen klinikte TOF daha pratik kullanılır. TOF oranı <0.9 residual paralizi kabul edilir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Postoperatif görme kaybının en sık nedeni nedir?",
    options: [
      "Korneal abrazyon",
      "İskemik optik nöropati (ION)",
      "Retinal arter oklüzyonu",
      "Kortikal körlük",
      "Glokom krizi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Uzun süreli prone spinal cerrahilerde anterior ION (%89) en sık nedendir. Hipotansiyon, anemi ve uzun süreli cerrahi (>6 saat) major risk faktörleridir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Postoperatif opioid kullanımında solunum depresyonu için en güçlü risk faktörü nedir?",
    options: [
      "OSA (Obstrüktif uyku apnesi)",
      "İleri yaş",
      "Obezite",
      "Renal yetmezlik",
      "Hepsi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "OSA'lı hastalarda risk 10 kat artar. REM reboundunun 3. postop günde zirve yapması bu dönemde özellikle tehlikelidir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Postoperatif deliryum için en güçlü risk faktörü nedir?",
    options: [
      "Demans öyküsü",
      "İleri yaş (>65)",
      "Uzun süreli anestezi",
      "Antikolinerjik ilaç kullanımı",
      "Hepsi",
    ],
    correctAnswerIndex: 4,
    explanation:
        "65 yaş üstü hastalarda insidans %50'lere ulaşır. Benzodiazepinler ve antikolinerjikler (skopolamin) riski 3 kat artırır.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangi cerrahi pozisyon brakial pleksus hasarı için en risklidir?",
    options: [
      "Supin",
      "Prone",
      "Lateral dekübit",
      "Trendelenburg",
      "Jackknife",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Trendelenburg pozisyonunda omuz desteklerinin yanlış yerleşimi (>2 saat) brakial pleksusu komprese eder. Ulnar sinir hasarı ise en sık supin pozisyonda görülür.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "PONV (Postoperatif bulantı-kusma) için Apfel skorlamasında yer almayan faktör hangisidir?",
    options: [
      "Kadın cinsiyet",
      "Sigara kullanmama",
      "Opioid kullanımı",
      "Genel anestezi süresi >1 saat",
      "PONV öyküsü",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Apfel skorlaması 4 faktör içerir: 1) Kadın, 2) Sigara kullanmama, 3) PONV öyküsü, 4) Opioid kullanımı. 4 faktör varlığında risk %80'dir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Propofol infüzyon sendromunun patognomonik bulgusu nedir?",
    options: [
      "Hiperkalemi",
      "Rhabdomiyoliz",
      "Metabolik asidoz",
      "Trigliserid yüksekliği",
      "Kardiyojenik şok",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Serum trigliserid düzeyinin >500 mg/dL olması tanı koydurucudur. >4 mg/kg/saat uzun süreli infüzyonlarda görülür.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Nitröz oksit (N₂O) kullanımına bağlı en önemli potansiyel komplikasyon hangisidir?",
    options: [
      "Hipotansiyon",
      "Bulantı",
      "Orta kulakta basınç artışı",
      "Solunum depresyonu",
      "İshal",
    ],
    correctAnswerIndex: 2,
    explanation:
        "N₂O kapalı boşluklarda genleşir; orta kulakta basınç artışına yol açabilir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi hava yolu obstrüksiyonunun erken belirtisidir?",
    options: [
      "Siyanoz",
      "Hipotansiyon",
      "Stridor",
      "Bradikardi",
      "Hipotermi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Stridor, özellikle inspiratuvar fazda duyulan ses, üst hava yolu obstrüksiyonunun erken belirtisidir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Anesteziye bağlı felç gelişimi en çok hangi duruma bağlıdır?",
    options: [
      "Hipoglisemi",
      "Lokal anestezik toksisitesi",
      "Spinal kord iskemisi",
      "Hipotermi",
      "Hipokalemi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Spinal kord iskemisi, medulla spinaliste kalıcı hasar yapabilir → nörolojik defisitlere neden olabilir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi bronşospazm gelişmiş hastada oskültasyonda duyulabilir?",
    options: [
      "Ronküs",
      "Krepitasyon",
      "Hışıltı (wheezing)",
      "Sürtünme sesi",
      "Sessizlik",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Bronşospazmda tipik oskültasyon bulgusu wheezing'dir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Anestezi sırasında gelişen anafilaksi durumunda ilk tercih edilmesi gereken ilaç hangisidir?",
    options: [
      "Antihistaminik",
      "Kortikosteroid",
      "Epinefrin",
      "Dopamin",
      "Salbutamol",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Anafilakside epinefrin ilk ve en hayati ilaçtır. Alfa ve beta adrenerjik etkileri ile hem bronkodilatasyon hem de vazokonstriksiyon sağlar.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki ilaçlardan hangisi perioperatif anafilaksiye en sık neden olur?",
    options: [
      "Propofol",
      "Süksinilkolin",
      "Lidokain",
      "Ketamin",
      "Fentanil",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Kas gevşeticiler, özellikle süksinilkolin ve rokuronyum, perioperatif anafilaksilerin en sık nedenidir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Postoperatif idrar retansiyonu riski en çok aşağıdakilerden hangisiyle artar?",
    options: [
      "Sevofluran",
      "Antikolinerjik premedikasyon",
      "NSAID kullanımı",
      "Lokal anestezi",
      "Beta blokerler",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Antikolinerjikler (örn: atropin, glikopirolat) detrüsör kas aktivitesini azaltarak idrar yapmayı zorlaştırır.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi narkotik antagonisti olarak kullanılır?",
    options: [
      "Flumazenil",
      "Neostigmin",
      "Nalokson",
      "Atropin",
      "Dantrolen",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Nalokson, opioid antagonisti olup opioid kaynaklı solunum depresyonunu geri çevirir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Bradikardi + hipotansiyon + bronkospazm triadı en çok neyle ilişkilidir?",
    options: [
      "Hipovolemi",
      "Anaflaksi",
      "Total spinal blok",
      "Malign hipertermi",
      "Hipoglisemi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Anafilaksi sistemik vazodilatasyon, bradikardi ve bronkospazma neden olur.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Periferik sinir hasarı riski en yüksek pozisyon aşağıdakilerden hangisidir?",
    options: [
      "Litotomi",
      "Lateral dekübit",
      "Trendelenburg",
      "Supin",
      "Prone",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Litotomi pozisyonunda peroneal sinir ve ulnar sinir hasarı riski yüksektir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Hastanın uyanık ve ajite olması, kasların rijit, pupillaların midriyatik olması en olası durum nedir?",
    options: [
      "Hipotermi",
      "Malign hipertermi",
      "Awareness (farkında uyanıklık)",
      "Atelektazi",
      "Bronkospazm",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Awareness, anestezi altındaki hastanın bilincinin açık olması durumudur; ciddi psikolojik sonuçlara yol açabilir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi hipoksiye bağlı erken semptomlardan biri değildir?",
    options: [
      "Taşikardi",
      "Ajitasyon",
      "Siyanoz",
      "Hipotansiyon",
      "Bradikardi",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Bradikardi hipoksinin geç bulgusudur; erken dönemde taşikardi ve ajitasyon görülür.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Transfüzyona bağlı gelişen ateş ve titreme en çok hangi reaksiyona işaret eder?",
    options: [
      "Hemolitik transfüzyon",
      "Febril non-hemolitik reaksiyon",
      "Alerjik reaksiyon",
      "GVHD",
      "Hiperkalemi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "En sık transfüzyon reaksiyonudur. Ateş ve titreme ile seyreder.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi narkotik verilmiş hastada gözlenebilecek en tipik fizik muayene bulgusudur?",
    options: [
      "Midriazis",
      "Bradikardi",
      "Mide dilatasyonu",
      "Midriyatik pupil",
      "Miyotik pupil",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Opioidler, parasempatik sistemi uyararak miyozis (pupil daralması) yapar.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Postoperatif şiddetli ajitasyon ile başvuran hastada aşağıdaki durumlardan hangisi öncelikle düşünülmelidir?",
    options: [
      "Hiperkalemi",
      "Hipoksemi",
      "Hiperglisemi",
      "Hipotermi",
      "Hiponatremi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Hipoksemi, beyin hipoksisine bağlı ajitasyon ve mental değişikliklerin en sık nedenidir.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
  Question(
    question:
        "Anestezi sonrası gelişen aspirasyon komplikasyonuna en çok neden olan pozisyon hangisidir?",
    options: [
      "Supin",
      "Lateral",
      "Trendelenburg",
      "Sims",
      "Oturur",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Supin pozisyon mide içeriğinin regürjite olarak trakeaya kaçmasını kolaylaştırır.",
    category: "Anestezi Komplikasyonları",
    difficulty: 2,
  ),
];
