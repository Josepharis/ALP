import '../models/question.dart';

final List<Question> neurophysiologyAnesthesiaQuestions = [
  Question(
    question: "Serebral metabolik hız (CMRO₂) üzerine aşağıdakilerden hangisi en çok azaltıcı etkiye sahiptir?",
    options: [
      "Hipotermi",
      "Hiperkapni",
      "Hipoksi",
      "Hipertermi",
      "Nitröz oksit"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Hipotermi, hücresel aktiviteyi azaltarak CMRO₂'yi anlamlı düzeyde düşürür.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi beyin kan akımını artıran bir durumdur?",
    options: [
      "Hiperventilasyon",
      "Hipotermi",
      "Hipokapni",
      "Hiperkapni",
      "Hipoglisemi"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Hiperkapni, serebral vazodilatasyona neden olur → beyin kan akımı artar.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdaki ilaçlardan hangisi serebral kan akımını artırmadan CMRO₂'yi azaltır?",
    options: [
      "Ketamin",
      "Propofol",
      "Desfluran",
      "Nitröz oksit",
      "Sevofluran"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Propofol, CMRO₂'yi düşürürken serebral vazokonstriksiyon yapar → beyin kan akımı da azalır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Cushing refleksi üçlüsü aşağıdakilerden hangisini içermez?",
    options: [
      "Hipertansiyon",
      "Bradikardi",
      "Düzensiz solunum",
      "Taşikardi",
      "Yükselmiş intrakranial basınç"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Cushing triadı, hipertansiyon, bradikardi ve düzensiz solunumdan oluşur → taşikardi yer almaz.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi kortikal elektriksel aktiviteyi güçlü şekilde baskılayan anestezik ajanlardandır?",
    options: [
      "Etomidat",
      "Ketamin",
      "Midazolam",
      "Nitröz oksit",
      "Lidokain"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Etomidat: Güçlü bir GABA-A agonistidir. EEG'de belirgin yavaşlama ve elektriksel aktivitede baskılanma yapar. Özellikle nöroanestezide kullanılır. Kortikal elektriksel aktiviteyi en fazla baskılayan ajanlardan biridir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi serebral perfüzyon basıncını (CPP) doğrudan etkiler?",
    options: [
      "CMRO₂",
      "Glukoz seviyesi",
      "MAP – ICP farkı",
      "SpO₂",
      "ETCO₂"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "CPP = MAP – ICP denklemine göre; orta arter basıncı (MAP) veya ICP'deki değişiklikler CPP'yi etkiler.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi beyin omurilik sıvısı (BOS) üretimini azaltabilir?",
    options: [
      "Karbonik anhidraz inhibitörleri",
      "Hipokapni",
      "Hiperkapni",
      "Hipotermi",
      "Hipertermi"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Karbonik anhidraz inhibitörleri (örneğin asetazolamid), BOS üretimini azaltarak intrakranial basıncı düşürmeye katkı sağlar.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi nöroanestezide tercih edilen ventilasyon stratejilerinden biridir?",
    options: [
      "PaCO₂'yi 50–60 mmHg aralığında tutmak",
      "Hiperkarbiye izin vermek",
      "Hafif hipokapni sağlamak",
      "Oksijen satürasyonunu 85–90 tutmak",
      "Hipoventilasyon oluşturmak"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Hafif hipokapni (PaCO₂ ≈ 30–35 mmHg), serebral vazokonstriksiyon oluşturarak ICP'yi azaltır → nöroanestezide tercih edilir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi nöroanestezi pratiğinde serebral kan akımını artırmamak için tercih edilmez?",
    options: [
      "Hiperventilasyon",
      "Normotermi",
      "Yüzeyel anestezi",
      "Hipokapni",
      "Nötr pozisyon"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Yetersiz anestezi, ağrılı uyaranlara sempatik yanıt oluşturur → serebral kan akımı artar.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi serebral otoregülasyonu bozan bir durumdur?",
    options: [
      "Arteriyel tansiyonun 80–150 mmHg aralığında olması",
      "Hiperkarbi",
      "Normotermi",
      "Normokapni",
      "Hafif hipoksi"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Hiperkapni, serebral vazodilatasyon yaparak otoregülasyonu bozar → beyin kan akımı basınçtan bağımsız olur.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi nöroanestezide hedeflenen fizyolojik parametrelerden biri değildir?",
    options: [
      "Normotermi",
      "Hafif hipervolemi",
      "Hiperkapni",
      "Normoglisemi",
      "Stabil MAP"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Hiperkapni, serebral vazodilatasyon yaparak ICP'yi artırabilir → kaçınılmalıdır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi serebral kan akımı ile doğru orantılı değildir?",
    options: [
      "PaCO₂",
      "PaO₂ < 50 mmHg",
      "Kan viskozitesi",
      "MAP",
      "Nitröz oksit kullanımı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Kan viskozitesi arttıkça, beyin kan akımı azalır → ters orantılıdır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi nöroanestezide beyin koruma stratejisi olarak uygulanmaz?",
    options: [
      "Hipotermi",
      "Hiperventilasyon",
      "Derin anestezi",
      "Hiperglisemi",
      "Barbitürat kullanımı"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Hiperglisemi, iskemik beyin hasarını artırır → önlenmesi gerekir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi EEG aktivitesini baskılayan bir ilaçtır?",
    options: [
      "Ketamin",
      "Desfluran",
      "Atropin",
      "Neostigmin",
      "Roküronyum"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "İnhalasyon anestezikleri (örneğin desfluran), EEG'yi doza bağlı olarak baskılar.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi nörocerrahi hastada BOS (beyin omurilik sıvısı) drenajı sağlamak için en sık kullanılan yöntemlerden biridir?",
    options: [
      "Lomber ponksiyon",
      "Nazogastrik tüp",
      "Ventrikülostomi",
      "Epidural kateter",
      "Laringoskopi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Ventrikülostomi, kafa içi basıncı düşürmek ve BOS boşaltmak için en sık tercih edilen yöntemlerden biridir. Özellikle ciddi intrakranial hipertansiyon vakalarında kullanılır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi nöroanestezide kullanılan izleme yöntemlerinden biri değildir?",
    options: [
      "Entropi",
      "Bispektral indeks (BIS)",
      "EEG",
      "Pulmoner arter kateteri",
      "Nöromonitörizasyon"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Pulmoner arter kateteri, kardiyak monitörizasyon için kullanılır; nöroanestezide rutin değildir. Diğerleri serebral fonksiyonları izler.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Otonomik beyin sapı yanıtlarının korunması için aşağıdaki yöntemlerden hangisi tercih edilir?",
    options: [
      "Derin genel anestezi",
      "Yüzeyel sedasyon",
      "Lokal anestezi",
      "Nöromusküler blokaj",
      "İntraoperatif uyanıklık"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Yüzeyel sedasyon, reflekslerin korunmasına olanak sağlar → özellikle nöromonitörizasyon yapılan girişimlerde tercih edilir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Nöroanestezide en önemli hedeflerden biri aşağıdakilerden hangisidir?",
    options: [
      "Maksimum glukoz düzeyi",
      "Yüksek PaCO₂ düzeyi",
      "Stabil CPP (serebral perfüzyon basıncı)",
      "Artmış beyin kan akımı",
      "Hipertermi sağlanması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Serebral perfüzyonun korunması (CPP), beyin dokusunun oksijenlenmesi için esastır → bu yüzden en temel hedeftir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi inhalasyon anesteziklerinin beyin üzerindeki olumsuz etkilerinden biridir?",
    options: [
      "Serebral metabolizmayı artırmaları",
      "BOS akımını artırmaları",
      "Serebral vazodilatasyon ve ICP artışı",
      "BOS üretimini azaltmaları",
      "EEG aktivitesini sabit tutmaları"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Volatil ajanlar, beyin damarlarında vazodilatasyon yapar → ICP yükselmesine neden olabilir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi nöroanestezide hipergliseminin olası olumsuz etkilerinden biridir?",
    options: [
      "BOS hacminde azalma",
      "Glutamat salınımının azalması",
      "İskemik hasarın azalması",
      "Serbest radikal oluşumunun artması",
      "CMRO₂ azalması"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Hiperglisemi, iskemik beyin dokusunda serbest radikal oluşumunu artırır, hasarı şiddetlendirir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi kan-beyin bariyerinin geçirgenliğini artıran durumlardan biridir?",
    options: [
      "Hipotermi",
      "Hipoglisemi",
      "Travma",
      "Hipokapni",
      "Antikolinerjik kullanımı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Travma, enfeksiyon, iskemi gibi durumlar, BBB'nin bütünlüğünü bozarak geçirgenliği artırır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi nöroanestezide total intravenöz anestezi (TIVA) lehine bir nedendir?",
    options: [
      "Daha az hemodinamik stabilite",
      "EEG monitorizasyonuna uygunluk",
      "Daha yüksek ICP",
      "BOS üretimini artırması",
      "CMRO₂'de artış"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "TIVA, EEG ve bilinç düzeyi (ör. BIS) monitorizasyonu açısından daha uygundur; çünkü intravenöz ajanlar (özellikle propofol), EEG'de daha öngörülebilir ve izlenebilir paternler oluşturur. Buna karşın inhalasyon ajanları da EEG'yi etkiler, ancak bu etkiler daha değişken olabilir ve yorumlamayı zorlaştırabilir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi nöroanestezide tercih edilmeyen pozisyonlardan biridir?",
    options: [
      "Supin",
      "Lateral",
      "Prone",
      "Trendelenburg",
      "Park bench"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Trendelenburg pozisyonu, kafa içi basıncı artırır → nöroanestezide genellikle kaçınılır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Serebral otoregülasyon, aşağıdaki parametrelerden hangisinin belli bir aralıkta sabit tutulmasını sağlar?",
    options: [
      "CMRO₂",
      "CPP",
      "Serebral kan akımı",
      "ETCO₂",
      "BOS hacmi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Otoragülasyon, MAP 60–150 mmHg arasında olduğu sürece serebral kan akımını sabit tutar.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi BIS monitörizasyonu ile ölçülebilir?",
    options: [
      "Serebral kan akımı",
      "Nöromusküler blok derinliği",
      "Anestezi derinliği",
      "BOS basıncı",
      "CMRO₂"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Bispektral indeks (BIS), EEG üzerinden anestezi derinliğini sayısal olarak değerlendirmek için kullanılır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi nöroanestezide yüksek riskli hasta popülasyonu için en uygun indüksiyon ajanıdır?",
    options: [
      "Ketamin",
      "Etomidat",
      "Sevofluran",
      "Tiyopental",
      "Nitröz oksit"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Etomidat, hemodinamik stabiliteyi korur → kardiyovasküler rezervi düşük hastalarda güvenle kullanılabilir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "İntrakranial basıncı düşürmek için aşağıdaki ajanlardan hangisi en sık kullanılır?",
    options: [
      "Morfin",
      "Furosemid",
      "Ketamin",
      "Dekstran",
      "Nefopam"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Furosemid, osmotik etkisiyle sıvı atılımını artırır, kafa içi basıncını düşürmede mannitol ile kombine kullanılabilir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi serebral otoregülasyonun bozulduğu bir durumu yansıtır?",
    options: [
      "MAP 80 mmHg ve sabit beyin kan akımı",
      "PaCO₂ 40 mmHg ve sabit EEG",
      "Kafa travmasına bağlı beyin kan akımında artış",
      "Hafif hipoksi ve normokapni",
      "Hafif hipotermi sonrası normal ICP"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Travma, serebral otoregülasyonu bozabilir → basınca bağımlı hale gelen beyin kan akımı, artabilir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Etomidat ile ilgili aşağıdaki ifadelerden hangisi doğrudur?",
    options: [
      "CMRO₂'yi artırır",
      "ICP'yi yükseltir",
      "Serebral kan akımını artırır",
      "Serebral metabolizmayı azaltır",
      "EEG'yi aktive eder"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Etomidat, beyin metabolizmasını baskılar, CMRO₂ ve ICP'yi azaltır, nöroprotektif özellik gösterir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi hiperventilasyonun uzun süreli uygulanmasının potansiyel bir riskidir?",
    options: [
      "Kalp debisinin artması",
      "Serebral ödem gelişimi",
      "Serebral iskeminin artması",
      "CMRO₂'nin artması",
      "BOS basıncının artması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Uzun süreli hipokapni, serebral vazokonstriksiyon yaparak kan akımını azaltabilir, bu da iskemik riski artırır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi nöroanestezi sırasında hiperglisemi ile ilişkilidir?",
    options: [
      "Serebral ödemde azalma",
      "Oksidatif hasarda azalma",
      "İskemik hasarın artması",
      "CMRO₂'nin düşmesi",
      "EEG aktivitesinin artması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Hiperglisemi, serbest radikal üretimini artırarak iskemik hasarı derinleştirir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi nöroanestezide total intravenöz anestezinin (TIVA) avantajlarından biri değildir?",
    options: [
      "Nöromonitörizasyona uygunluk",
      "CMRO₂'yi azaltması",
      "Serebral kan akımını artırması",
      "Minimal EEG etkisi",
      "Stabil ICP profili"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "TIVA, serebral kan akımını artırmaz, hatta azaltabilir. Bu yüzden C seçeneği avantaj değildir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi serebral perfüzyon basıncını (CPP) düşürür?",
    options: [
      "MAP artışı",
      "ICP düşmesi",
      "Hipovolemiye bağlı MAP düşüklüğü",
      "Etomidat kullanımı",
      "Hiperventilasyon"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "CPP = MAP – ICP formülüne göre, MAP'in düşmesi, CPP'yi azaltır → beyin perfüzyonunu bozabilir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi barbitüratların nöroprotektif etkilerinden biridir?",
    options: [
      "ICP'yi artırması",
      "Glukoz kullanımını artırması",
      "CMRO₂'yi azaltması",
      "PaCO₂'yi yükseltmesi",
      "EEG aktivitesini artırması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Barbitüratlar, beyin metabolizmasını baskılayarak CMRO₂'yi azaltır, iskemik hasarı sınırlayabilir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi nöroanestezide izoelektrik EEG sağlamak amacıyla kullanılabilir?",
    options: [
      "Ketamin",
      "Sevofluran",
      "Tiyopental",
      "Nitröz oksit",
      "Midazolam"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Tiyopental, yüksek dozlarda EEG'yi tamamen baskılayabilir → izoelektrik hale getirerek beyin koruması sağlar.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi karbonik anhidraz inhibitörlerinin etkilerinden biridir?",
    options: [
      "ICP artışı",
      "BOS üretiminin artması",
      "BOS üretiminin azalması",
      "CMRO₂ artışı",
      "PaCO₂ düşüşü"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Asetazolamid gibi karbonik anhidraz inhibitörleri, BOS üretimini azaltarak intrakraniyal basıncı düşürür.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Anestezi sırasında serebral metabolik hızı en fazla azaltan ajan hangisidir?",
    options: [
      "Ketamin",
      "Sevofluran",
      "Nitröz oksit",
      "Tiyopental",
      "Etomidat"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Tiyopental ve Propofol serebral metabolizmayı güçlü şekilde baskılar ve ICP'yi düşürür.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Cushing triadı aşağıdakilerden hangisini içermez?",
    options: [
      "Hipertansiyon",
      "Bradikardi",
      "Solunum düzensizliği",
      "Ateş",
      "Yüksek ICP"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Cushing yanıtı: hipertansiyon, bradikardi ve solunum düzensizliğidir; ateş içermez.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Beyin cerrahisi sırasında en güvenli inhalasyon anestezi ajanı hangisidir?",
    options: [
      "İzofluran",
      "Halotan",
      "Sevofluran",
      "Nitröz oksit",
      "Desfluran"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Sevofluran düşük kan/gaz çözünürlüğü ve nispeten düşük ICP etkisiyle tercih edilir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Serebral otoregülasyon nedir?",
    options: [
      "Serebral metabolizmanın artışı",
      "Oksijen taşıma kapasitesinin azalması",
      "Beyin kan akımının sabit tutulması",
      "Kan basıncının düşürülmesi",
      "CO₂ düzeyinin artması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Serebral otoregülasyon, MAP 50–150 mmHg aralığında beyin kan akımının sabit tutulmasıdır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Nitröz oksit ile ilgili aşağıdakilerden hangisi doğrudur?",
    options: [
      "Serebral vazokonstriksiyon yapar",
      "Serebral metabolizmayı azaltır?",
      "İntrakraniyal basıncı azaltır",
      "ICP'yi artırabilir",
      "Serebral perfüzyonu bozmaz"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "N₂O serebral vazodilatasyon yaparak ICP'yi artırabilir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Subaraknoid kanamada en sık gözlenen EKG bulgusu nedir?",
    options: [
      "QT kısalması",
      "ST depresyonu",
      "T dalgası inversiyonu",
      "PR uzaması",
      "Ventriküler taşikardi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "SAH sonrası sempatik aktivasyon sonucu en sık T dalgası inversiyonu görülür.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "EEG üzerinde izlenen 'burst-suppression' paternine neden olan ajan hangisidir?",
    options: [
      "Ketamin",
      "Sevofluran",
      "Etomidat",
      "Propofol",
      "Nitröz oksit"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Propofol yüksek dozlarda EEG'de burst-suppression paternine neden olur.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Anestezi sırasında serebral metabolizmayı azaltmadan serebral kan akımını artıran ajan hangisidir?",
    options: [
      "Propofol",
      "Sevofluran",
      "Ketamin",
      "Midazolam",
      "Deksmedetomidin"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Ketamin serebral kan akımını artırırken metabolizma hızını da artırır, bu yüzden bazı nörocerrahi hastalarda dikkatli kullanılmalıdır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Nöroşirürji hastasında hipotansiyon gelişirse beyin perfüzyonunu artırmak için ilk tercih edilen ajan hangisidir?",
    options: [
      "Dopamin",
      "Fenilefrin",
      "Epinefrin",
      "Dobutamin",
      "İzoproterenol"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Fenilefrin, vazokonstriksiyon ile MAP'i artırarak CPP'yi korur ve beyin perfüzyonunu artırır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Sevofluranın nöroanestezide tercih edilme nedeni nedir?",
    options: [
      "ICP'yi artırması",
      "Yüksek kan/gaz çözünürlüğü",
      "Kısa etki süresi ve stabil hemodinami",
      "Metabolik hız artışı",
      "EEG aktivitesini artırması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Sevofluran hızlı başlama ve bitiş süresi ile tercih edilir, hemodinamik açıdan da dengelidir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Nöroanestezide tercih edilmeyen solunum gazı hangisidir?",
    options: [
      "Oksijen",
      "Nitröz oksit",
      "Hava",
      "Karbondioksit",
      "Helium"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "N₂O ICP'yi artırdığı için nöroanestezide genellikle kaçınılır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Nöroşirürji operasyonlarında intraoperatif nöromonitorizasyon için en sık kullanılan yöntem nedir?",
    options: [
      "EEG",
      "TMS",
      "SEP (Somatosensory evoked potentials)",
      "MRI",
      "CT"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "SEP, özellikle spinal cerrahilerde nörolojik bütünlüğü izlemek için yaygın olarak kullanılır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Anestezi altında ölçülen en doğru serebral oksijenizasyon göstergesi hangisidir?",
    options: [
      "SpO₂",
      "EtCO₂",
      "SjvO₂",
      "PaO₂",
      "CVP"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Juguler venöz oksijen satürasyonu (SjvO₂), serebral oksijen dengesini doğrudan yansıtır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Cerrahi sırasında beyin dokusunu korumak için kullanılan en yaygın nöroprotektif ajan nedir?",
    options: [
      "Ketamin",
      "Midazolam",
      "Propofol",
      "Halotan",
      "Nitröz oksit"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Propofol, metabolizmayı azaltır, antioksidan etki gösterir ve nöroprotektif özellik taşır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Beyin tümörü rezeksiyonunda sıvı yönetiminde hangisi önerilir?",
    options: [
      "Hipotonik solüsyonlar",
      "İzotonik solüsyonlar",
      "Deksroz solüsyonları",
      "Hiperosmotik solüsyonlar",
      "Sadece kolloidler"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "İzotonik solüsyonlar, beyin ödemine neden olmadan sıvı ihtiyacını karşılar.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "İntrakraniyal hipertansiyonu olan hastada pozisyon yönetimi nasıl olmalıdır?",
    options: [
      "Trendelenburg pozisyonu",
      "Supin pozisyon",
      "Baş 30° yukarıda",
      "Baş 45° aşağıda",
      "Baş tamamen yatay"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Başın 30° elevasyonu venöz dönüşü artırarak ICP'yi düşürmeye yardımcı olur.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Nöroşirürji hastasında ideal PaCO₂ aralığı hangisidir?",
    options: [
      "20–25 mmHg",
      "25–30 mmHg",
      "30–35 mmHg",
      "35–40 mmHg",
      "40–45 mmHg"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Normokapni (35–40 mmHg) ICP kontrolü ve serebral kan akımı için en güvenli aralıktır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "EEG izleminde en fazla supresyona neden olan ajan hangisidir?",
    options: [
      "Sevofluran",
      "Nitröz oksit",
      "Midazolam",
      "Propofol",
      "Ketamin"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Propofol yüksek dozda burst-suppression paternine neden olarak EEG aktivitesini en fazla baskılar.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Serebral kan akımı üzerine en çok etkisi olan fizyolojik değişken nedir?",
    options: [
      "Hematokrit",
      "PaO₂",
      "PaCO₂",
      "Kalp hızı",
      "Vücut sıcaklığı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "PaCO₂ değişimleri serebral vazodilatasyon/kontraksiyon ile CBF'yi doğrudan etkiler.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Anestezi sırasında intrakraniyal basıncı düşürmek için hangisi uygulanmamalıdır?",
    options: [
      "Hiperventilasyon",
      "Baş pozisyonunun elevasyonu",
      "Mannitol uygulanması",
      "Hipotermi",
      "Hipoosmotik sıvı verilmesi"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Hipoosmotik sıvılar beyin ödemini artırabilir, ICP'yi düşürmek için kontrendikedir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Subaraknoid kanama sonrası vazospazm gelişimini önlemek için hangi tedavi uygulanabilir?",
    options: [
      "Hipotermi",
      "Nimodipin",
      "Adrenalin",
      "Dopamin",
      "Sodyum nitroprussid"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Nimodipin, SAH sonrası vazospazmı önlemede etkili bir kalsiyum kanal blokeridir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Spinal cerrahilerde motor sinir bütünlüğünün takibi için kullanılan yöntem nedir?",
    options: [
      "EEG",
      "EMG",
      "SEP",
      "MEP",
      "CT"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Motor evoked potentials (MEP), motor sinir yollarının fonksiyonel bütünlüğünü değerlendirir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Anestezi sırasında hipotermiye bağlı olarak hangisi en olası komplikasyondur?",
    options: [
      "Hiperventilasyon",
      "Kanama eğiliminde azalma",
      "Solunum hızında artış",
      "Koagülasyon bozukluğu",
      "Metabolik alkaloz"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Hipotermi koagülasyon kaskadını yavaşlatarak kanama riskini artırabilir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Beyin cerrahisinde intrakraniyal kanamayı azaltmak için tercih edilen pozisyon hangisidir?",
    options: [
      "Trendelenburg",
      "Baş aşağı",
      "Supin",
      "Baş 30° yukarıda",
      "Lateral"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Başın elevasyonu venöz dönüşü artırır ve ICP ile kanama riskini azaltır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Nöroanestezide kullanılan inhalasyon ajanları içinde ICP'yi en fazla artıran hangisidir?",
    options: [
      "Sevofluran",
      "İzofluran",
      "Desfluran",
      "Halotan",
      "Nitröz oksit"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Halotan ICP'yi belirgin şekilde artırabilir, nöroanestezide genellikle tercih edilmez.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Subaraknoid kanama sonrası gelişen vazospazm hangi günlerde en sık görülür?",
    options: [
      "0–1. gün",
      "2–4. gün",
      "5–10. gün",
      "11–14. gün",
      "15. günden sonra"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Vazospazm en sık 5–10. günlerde görülür ve nörolojik kötüleşmeye yol açabilir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Beyin cerrahisinde intraoperatif kanamayı azaltmak için kullanılan pozisyonun etkisi nedir?",
    options: [
      "Serebral perfüzyonu artırır",
      "Arteriyel basıncı azaltır",
      "Venöz drenajı artırır",
      "SpO₂'yi artırır",
      "Karbondioksit üretimini azaltır"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Baş elevasyonu venöz dönüşü kolaylaştırarak kanamayı azaltır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Anestezik ajanlardan hangisi serebral metabolik hızı (CMRO₂) en fazla azaltır?",
    options: [
      "Tiyopental",
      "Propofol",
      "İzofluran",
      "Sevofluran",
      "Ketamin"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "CMRO₂'yi %55-60 azaltır; barbitüratlar nöroprotektif etkilidir. Ketamin CMRO₂'yi artırır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Serebral kan akımını (CBF) en fazla etkileyen metabolik faktör hangisidir?",
    options: [
      "PaCO₂",
      "PaO₂",
      "Kan şekeri",
      "Serum Na⁺",
      "K⁺ düzeyi"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "PaCO₂'de her 1 mmHg artış CBF'yi %1-2 artırır. PaO₂ <50 mmHg'da CBF belirgin artar.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Beyin omurilik sıvısı (BOS) üretiminin ana kaynağı nedir?",
    options: [
      "Koroid pleksus",
      "Serebral kapillerler",
      "Ventriküler ependim",
      "Subaraknoid aralık",
      "Dura mater"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Günde 500 mL üretilir, 150 mL kapasite. Asetazolamid ve furosemid BOS üretimini azaltır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Serebral iskemide 'eksitotoksisite'ye yol açan nörotransmitter hangisidir?",
    options: [
      "Glutamat",
      "GABA",
      "Glycine",
      "Serotonin",
      "Dopamin"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Aşırı glutamat salınımı Ca²⁺ girişine ve hücre ölümüne yol açar. NMDA antagonistleri nöroprotektiftir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Spinal kordda ağrı iletiminden sorumlu yol hangisidir?",
    options: [
      "Spinalotalamik traktus",
      "Kortikospinal traktus",
      "Dorsal kolon",
      "Spinoserebellar traktus",
      "Vestibulospinal traktus"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Lateral kısmı ağrı/ısı, anterior kısmı dokunma basınç iletir. Dorsal kolon propriosepsiyondan sorumlu.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Hangisi opioidlerin analjezik etki mekanizmasıdır?",
    options: [
      "Presinaptik Ca²⁺ girişini inhibe ederek substans P salınımını azaltma",
      "GABA reseptör agonizması",
      "NMDA reseptör blokajı",
      "Asetilkolin esteraz inhibisyonu",
      "Dopamin geri alım inhibisyonu"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Postsinaptik hiperpolarizasyon da yapar. NMDA antagonistleri (ketamin) farklı mekanizmayla etkili.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Nörojenik pulmoner ödem patogenezinde hangisi rol oynar?",
    options: [
      "Sempatik aşırı aktivasyon",
      "Kardiyak yetmezlik",
      "Pulmoner kapiller permeabilite azalması",
      "Hipovolemi",
      "Alveoler hipoventilasyon"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "SSS hasarı sonrası katekolamin fırtınasıyla pulmoner vasküler basınç artar. Tedavi: O₂, PEEP, α-blokerler.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Hangisi serebral iskemide 'penumbra' bölgesini tanımlar?",
    options: [
      "Kurtarılabilir iskemik doku",
      "Geri dönüşümsüz nekroz",
      "Kanama alanı",
      "Ödemli beyin dokusu",
      "Venöz enfarkt"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "İskeminin erken evresinde reperfüzyonla kurtarılabilir. Koroner iskemideki 'stunning'e benzer.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Hangisi nöroanestezide 'burst supresyon' paterninin özelliğidir?",
    options: [
      "EEG'de elektriksel aktivitenin aralıklı silinmesi",
      "Fokal nöbet aktivitesi",
      "Diffüz delta dalgaları",
      "Spindle paterni",
      "Epileptiform deşarjlar"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Barbitürat koması veya derin anestezide görülür. CMRO₂'yi %50-60 azaltır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Hangisi spinal kordda ağrı modülasyonunda rol alan endojen maddedir?",
    options: [
      "Endorfinler",
      "Histamin",
      "Serotonin",
      "Bradikinin",
      "Prostoglandinler"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "μ reseptörler üzerinden etki eder. PAG (periaquaduktal gri cevher) ve raphe çekirdekleri modülasyonda rol alır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Hangisi serebral mikrodiyaliz ile ölçülemez?",
    options: [
      "Elektriksel aktivite",
      "Laktat/piruvat oranı",
      "Glukoz",
      "Glutamat",
      "Glycerol"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Beyin interstisyel sıvısındaki metabolitler ölçülür. Laktat/piruvat >25 iskemi göstergesi.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Hangisi nörotransmitter salınımında rol alan presinaptik iyondur?",
    options: [
      "Ca²⁺",
      "Na⁺",
      "K⁺",
      "Cl⁻",
      "Mg²⁺"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Aksiyon potansiyeli ile voltaj kapılı Ca²⁺ kanalları açılır, veziküler füzyon olur. Botulinum toksini bu süreci inhibe eder.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Hangisi SSS'de kan-beyin bariyerinin (BBB) zayıf olduğu bölgelerden değildir?",
    options: [
      "Serebral korteks",
      "Area postrema",
      "Hipofiz",
      "Pineal bez",
      "Organum vasculosum"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Circumventriküler organlar (area postrema, OVLT) BBB'sizdir. Toksinlere duyarlıdır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Hangisi nöroinflamasyonu tetikleyen sitokin değildir?",
    options: [
      "IL-10",
      "TNF-α",
      "IL-1β",
      "IL-6",
      "IFN-γ"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Antiinflamatuar sitokindir. Diğerleri mikroglial aktivasyonla salınır ve nörodejenerasyona yol açar.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Hangisi ağrı transmisyonunda 'kapı kontrol teorisi'ni açıklar?",
    options: [
      "Aβ liflerinin aktivasyonu ile spinal kordda ağrı iletimi inhibe edilir",
      "NMDA reseptör aktivasyonu",
      "Periferik sensitizasyon",
      "Santral duyarlılaşma",
      "Opioid reseptör downregülasyonu"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "TENS (transkütanöz elektriksel sinir stimülasyonu) bu prensiple çalışır. Aβ lifleri dokunma, Aδ/C lifleri ağrı iletir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Hangisi serebral iskemide 'glutamat eksitotoksisitesi'ni önlemek için kullanılır?",
    options: [
      "Magnesium sülfat",
      "Heparin",
      "Mannitol",
      "Dekstroz",
      "Hidrokortizon"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "NMDA reseptörünü kompetitif inhibe eder. Preeklampside nöroprotektif doz: 4-6 g yükleme + 1-2 g/saat infüzyon.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Hangisi EEG'de 'genel anestezi derinliği' ile ilişkili değildir?",
    options: [
      "Delta dalgalarının artması",
      "Alfa dalgalarının kaybı",
      "Beta aktivitesinde artış",
      "Burst supresyon",
      "Bispektral indeks (BIS) düşüklüğü"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Hafif sedasyonda görülür. Derin anestezide delta/burst supresyon, BIS <40 beklenir.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Hangisi nöronal plastisiteyi sağlayan yapıdır?",
    options: [
      "Dendritik dikenler",
      "Miyelin kılıf",
      "Ranvier boğumu",
      "Schwann hücreleri",
      "Oligodendrositler"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Sinaps sayısını artırarak öğrenme ve hafızada rol alır. NMDA reseptör aktivasyonu plastisiteyi düzenler.",
    category: "Nörofizyoloji ve Anestezi",
  ),
  Question(
    question: "Aşağıdakilerden hangisi nörocerrahi hastada BOS (beyin omurilik sıvısı) drenajı sağlamak için en sık kullanılan yöntemlerden biridir?",
    options: [
      "Lomber ponksiyon",
      "Nazogastrik tüp",
      "Ventrikülostomi",
      "Epidural kateter",
      "Laringoskopi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Ventrikülostomi, kafa içi basıncı düşürmek ve BOS boşaltmak için en sık tercih edilen yöntemlerden biridir. Özellikle ciddi intrakranial hipertansiyon vakalarında kullanılır.",
    category: "Nörofizyoloji ve Anestezi",
  ),
];
