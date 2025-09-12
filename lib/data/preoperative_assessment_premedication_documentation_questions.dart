import '../models/question.dart';

final List<Question> preoperativeAssessmentPremedicationDocumentationQuestions = [
  Question(
    id: 'preoperative_assessment_004',
    question: 'Anamnezde "güçlü ailevi anestezi komplikasyon öyküsü" olan bir hastada en olası risk nedir?',
    options: [
      'Postoperatif bulantı',
      'Malign hipertermi',
      'Astım atağı',
      'Aspirasyon pnömonisi',
      'Hipoglisemi'
    ],
    correctAnswerIndex: 1,
    explanation: 'Malign hipertermi, genetik geçişli ve ölümcül olabilen bir durumdur. Özellikle halotan ve süksinilkolin gibi ajanlarla tetiklenebilir.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_007',
    question: 'Aşağıdakilerden hangisi preoperatif açlık süresi için doğru ifadedir?',
    options: [
      'Sıvı kısıtlamasına gerek yoktur',
      'Katı gıdalar işlemden 4 saat önce kesilmelidir',
      'Anne sütü 2 saat önce kesilmelidir',
      'Açlık süresi tüm hastalar için aynıdır',
      'Temiz sıvılar işlemden 2 saat öncesine kadar alınabilir'
    ],
    correctAnswerIndex: 4,
    explanation: 'Güncel kılavuzlara göre su ve berrak sıvılar 2 saat öncesine kadar alınabilir; katı gıdalar ise 6–8 saat önceden kesilmelidir.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_008',
    question: 'Preoperatif sigara bırakmanın en büyük yararı ne zaman gözlenir?',
    options: [
      '1 saat sonra',
      '12 saat sonra',
      '48 saat sonra',
      '1 hafta sonra',
      '1 ay sonra'
    ],
    correctAnswerIndex: 2,
    explanation: '48 saat içinde sigaranın bırakılması, karboksihemoglobin düzeylerinin düşmesi ve siliyer fonksiyonun artması gibi faydalar sağlar.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_011',
    question: 'Preoperatif dönemde aç kalma süresi ile ilgili aşağıdakilerden hangisi yanlıştır?',
    options: [
      'Anne sütü 4 saat öncesine kadar verilebilir',
      'Katı gıdalar 6–8 saat önce kesilmelidir',
      'Temiz sıvılar 2 saat öncesine kadar alınabilir',
      'Formül mama 6 saat öncesinde kesilmelidir',
      'Açlık süresi yaşa ve gıdanın türüne göre değişir'
    ],
    correctAnswerIndex: 0,
    explanation: 'Anne sütü için önerilen açlık süresi 4 saat değil, 4-6 saat arasıdır; genellikle 4 saat olarak kabul edilse de, 3 saatten az önerilmez.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_012',
    question: 'Mallampati sınıflamasında sadece yumuşak damak görülebiliyorsa hangi sınıf tanımlanır?',
    options: [
      'Sınıf I',
      'Sınıf II',
      'Sınıf III',
      'Sınıf IV',
      'Sınıf 0'
    ],
    correctAnswerIndex: 2,
    explanation: 'Mallampati Sınıf III: Hasta ağzını açtığında sadece yumuşak damak görünüyorsa bu sınıftır ve zor entübasyon riski artmıştır.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_016',
    question: 'Aşağıdaki durumlardan hangisinde preoperatif antibiyotik profilaksisi endikedir?',
    options: [
      'Basit katarakt ameliyatı',
      'Elektif fıtık ameliyatı',
      'Kalça protezi yerleştirilmesi',
      'Mole çıkarılması',
      'Fistül drenajı'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ortopedik implant gerektiren cerrahiler (kalça protezi gibi) enfeksiyon açısından yüksek riskli olduğundan profilaktik antibiyotik endikedir.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_020',
    question: 'Hangi test özel bir klinik endikasyon olmadıkça rutin olarak istenmez?',
    options: [
      'Hemogram',
      'EKG (65 yaş üstü)',
      'Akciğer grafisi',
      'Kan şekeri',
      'Kreatinin'
    ],
    correctAnswerIndex: 2,
    explanation: 'Rutin akciğer grafisi, sadece semptom varlığı veya bilinen akciğer hastalığı durumunda istenir; her hastaya yapılmaz.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_025',
    question: 'Aşağıdakilerden hangisi preoperatif dönemde antihipertansiflerin kullanımıyla ilgili doğrudur?',
    options: [
      'Tüm antihipertansifler kesilmelidir',
      'Sadece diüretikler verilmelidir',
      'ACE inhibitörleri kesilir, beta blokerler devam ettirilir',
      'Beta blokerler kesilir, kalsiyum kanal blokeri verilir',
      'Tüm antihipertansifler kesilir ve yeniden başlanır'
    ],
    correctAnswerIndex: 2,
    explanation: 'Beta blokerler kesilmez çünkü ani kesilmesi rebound hipertansiyon ve taşikardiye neden olabilir. Ancak ACE inhibitörleri hipotansiyon riskinden dolayı kesilebilir.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_027',
    question: 'Preoperatif anemi tedavisi aşağıdakilerden hangisi için gereklidir?',
    options: [
      'Hemoglobin 13 g/dL',
      'Hb 11 g/dL, küçük cerrahi',
      'Hb 9 g/dL, major ortopedik cerrahi',
      'Hb 12 g/dL, ASA I',
      'Hb 10 g/dL, endoskopi planlanıyor'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hb <10 g/dL olan hastalarda, özellikle majör cerrahiler öncesinde anemi düzeltilmelidir; aksi halde oksijen taşıma kapasitesi azalır.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_028',
    question: 'Preoperatif dönemde verilen sekresyon azaltıcı antimuskarinik ajan aşağıdakilerden hangisidir?',
    options: [
      'Midazolam',
      'Glycopyrrolate',
      'Ondansetron',
      'Metoklopramid',
      'Ketamin'
    ],
    correctAnswerIndex: 1,
    explanation: 'Glycopyrrolate, kuaterner amin yapısı sayesinde sedasyon yapmaz; sekresyonları azaltmak için premedikasyonda kullanılır.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_029',
    question: 'Preoperatif hipertiroidili hastada en uygun yaklaşım nedir?',
    options: [
      'Cerrahiyi hemen başlatmak',
      'Sadece propranolol başlamak',
      'Tirotoksikoz kontrol altına alınana kadar elektif cerrahiyi ertelemek',
      'Cerrahi sırasında tiroid hormonlarını kesmek',
      'Preoperatif heparin başlamak'
    ],
    correctAnswerIndex: 2,
    explanation: 'Tirotoksikoz ciddi intraoperatif komplikasyonlara yol açabileceğinden, eğer mümkünse kontrol altına alınıncaya kadar cerrahi ertelenmelidir.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_030',
    question: 'Preoperatif diyabetik hastada insülin tedavisi ile ilgili hangisi doğrudur?',
    options: [
      'Ameliyat sabahı tüm insülin kesilir',
      'Uzun etkili insülin gece azaltılır',
      'Ameliyat sabahı çift doz yapılır',
      'Kısa etkili insülin arttırılır',
      'İnsülin kesilir ve metformin başlanır'
    ],
    correctAnswerIndex: 1,
    explanation: 'Uzun etkili insülin cerrahi öncesi gece genellikle %50 oranında azaltılır. Ameliyat sabahı kısa etkili genellikle verilmez.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_034',
    question: 'Aşağıdaki parametrelerden hangisi zor entübasyon açısından en güvenilir tek başına ölçüttür?',
    options: [
      'Tiromental mesafe',
      'Mallampati skoru',
      'Diş protezi varlığı',
      'Ense sertliği',
      'Vücut kitle indeksi'
    ],
    correctAnswerIndex: 1,
    explanation: 'Mallampati skoru, entübasyon güçlüğünü öngörmekte en yaygın ve güvenilir kullanılan tekli ölçüttür.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_035',
    question: 'Aşağıdakilerden hangisi preoperatif değerlendirme sürecinde yasal sorumluluğu olan belgelerden biridir?',
    options: [
      'Hasta kayıt kartı',
      'Aydınlatılmış onam formu',
      'Diyet listesi',
      'Vital bulgu çizelgesi',
      'Randevu defteri'
    ],
    correctAnswerIndex: 1,
    explanation: 'Aydınlatılmış onam, tıbbi müdahale öncesinde hastanın bilgilendirilmiş rızasını içerir ve yasal zorunluluktur.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_036',
    question: 'Aşağıdaki ilaçlardan hangisi preoperatif dönemde devam ettirilmelidir?',
    options: [
      'ACE inhibitörleri',
      'Antiplateletler',
      'Beta blokerler',
      'Antikoagülanlar',
      'Oral antidiyabetikler'
    ],
    correctAnswerIndex: 2,
    explanation: 'Beta blokerler, ani kesilmeleri halinde rebound hipertansiyon ve taşikardiye neden olabileceğinden devam ettirilmelidir.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_037',
    question: 'Preoperatif hastanın mental durumunun değerlendirilmesinin amacı nedir?',
    options: [
      'Epilepsi tanısı koymak',
      'Depresyon tanısı koymak',
      'Bilinç açıklığını ve onam verebilirliğini değerlendirmek',
      'Preoperatif sedasyon dozunu belirlemek',
      'Uyku düzenini saptamak'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hastanın bilinç durumu, anlamlı onam verebilme yeterliliği açısından mutlaka değerlendirilmelidir.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_040',
    question: 'Preoperatif dönemde diyabetik hastada metformin tedavisi ile ilgili hangisi doğrudur?',
    options: [
      'Her hastada devam ettirilmelidir',
      'Her hastada kesilmelidir',
      'Kesilme kararı sadece endokrinoloji verir',
      'Ameliyat sabahı kesilmelidir',
      'Anestezi sırasında arttırılmalıdır'
    ],
    correctAnswerIndex: 3,
    explanation: 'Metformin, özellikle böbrek fonksiyonlarını etkileyebileceğinden ve laktik asidoz riskinden dolayı, ameliyat sabahı kesilmelidir.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_047',
    question: 'Ameliyat öncesi dönemde ateşi olan bir hasta için en uygun yaklaşım hangisidir?',
    options: [
      'Cerrahi iptal edilir',
      'Ateş düşene kadar beklenir, neden araştırılır',
      'Cerrahiye devam edilir',
      'Antibiyotik başlanır ve cerrahi yapılır',
      'Soğuk uygulama yapılır'
    ],
    correctAnswerIndex: 1,
    explanation: 'Preoperatif ateş, olası enfeksiyonun göstergesi olabilir. Cerrahi öncesi neden araştırılmalı ve kontrol altına alınmalıdır.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_004_medication',
    question: 'Premedikasyon amacıyla aşağıdaki ilaçlardan hangisi preoperatif anksiyolizis ve sedasyon sağlamak için kullanılır?',
    options: [
      'Etomidat',
      'Midazolam',
      'Ondansetron',
      'Ketamin',
      'Deksmedetomidin'
    ],
    correctAnswerIndex: 1,
    explanation: 'Midazolam, benzodiazepin sınıfına ait bir ilaçtır → sedasyon, anksiyolizis ve amnezi sağlamak için yaygın olarak kullanılır.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_005_medication',
    question: 'Ameliyat öncesi dönemde antikolinerjik ilaçların kullanım amacı nedir?',
    options: [
      'Solunum depresyonunun önlenmesi',
      'Postoperatif bulantı ve kusmanın tedavisi',
      'Sekresyonların kontrol altına alınması',
      'Periferik vazodilatasyon sağlanması',
      'Analjezi sağlanması'
    ],
    correctAnswerIndex: 2,
    explanation: 'Antikolinerjik ilaçlar, genellikle sekresyonları kontrol altına almak (özellikle solunum yolundaki sekresyonları) amacıyla kullanılır.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_010',
    question: 'Ameliyat öncesi preoperatif anestezi planının belirlenmesinde hangi faktörler en önemli rolü oynar?',
    options: [
      'Hastanın yaşı ve cinsiyeti',
      'Ameliyatın türü ve süresi',
      'Hastanın sigara içme alışkanlıkları',
      'Anestezi ajanlarının tercihi',
      'Hangi ekipmanların kullanılacağı'
    ],
    correctAnswerIndex: 1,
    explanation: 'Ameliyatın türü ve süresi, preoperatif anestezi planlamasında en önemli faktördür → bu faktörler, anestezi ajanları, izleme, premedikasyon ve postoperatif bakım gereksinimlerini belirler.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_015',
    question: 'Postoperatif analjezi için opioid kullanımı hangi durumda daha riskli olabilir?',
    options: [
      'Yaşlı hastalar',
      'Genç ve sağlıklı hastalar',
      'Hipertansiyon hastaları',
      'Diabetik hastalar',
      'Astımlı hastalar'
    ],
    correctAnswerIndex: 0,
    explanation: 'Yaşlı hastalar, opioidlere daha duyarlıdır ve solunum depresyonu riski daha yüksek olabilir.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_020_documentation',
    question: 'Perioperatif dokümantasyonun en önemli amacı aşağıdakilerden hangisidir?',
    options: [
      'Hastanın cerrahi müdahaleye uygunluğunun belgelenmesi',
      'Anesteziye ilişkin herhangi bir yan etkiyi raporlamak',
      'Kullanılan ilaçların ve dozlarının kaydedilmesi',
      'Hastanın tüm prosedürlerle ilgili bilgiye sahip olduğunu kanıtlamak',
      'Ameliyatın süresi ve komplikasyonlarının kaydedilmesi'
    ],
    correctAnswerIndex: 0,
    explanation: 'Perioperatif dokümantasyon, hastanın anesteziye uygunluğu ve prosedürlere ilişkin bilgilerin doğru bir şekilde kayıt altına alınmasını sağlar.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_023',
    question: 'Ameliyat öncesi hastanın ilaç kullanımıyla ilgili bilgi toplarken hangi durum özellikle önemlidir?',
    options: [
      'Kullanılan ağrı kesiciler',
      'Kullandığı psikiyatrik ilaçlar',
      'Sadece reçeteli ilaçlar',
      'Günlük vitamin takviyeleri',
      'Sigara içme alışkanlıkları'
    ],
    correctAnswerIndex: 1,
    explanation: 'Psikiyatrik ilaçlar, özellikle antidepresanlar, antipsikotikler ve benzodiazepinler, anesteziyi ve iyileşmeyi etkileyebilir, bu yüzden bu ilaçlar mutlaka sorgulanmalıdır.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_029_ethics',
    question: 'Ameliyat öncesi hastanın onamı alınırken aşağıdaki hangi durum önemli bir etik sorundur?',
    options: [
      'Hastanın ameliyat sırasında uyanmak istemesi',
      'Anestezi ve cerrahiden önce hastanın onamını almak',
      'Hekimin hastaya riskleri tam olarak açıklamaması',
      'Ameliyatın beklenen sonucu hakkında fazla bilgi vermek',
      'Hastanın psikolojik durumunun göz ardı edilmesi'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hastanın tam bilgiye sahip olmadan onam alması etik olarak doğru değildir → hastaya cerrahi ve anesteziyle ilgili tüm riskler ve alternatifler doğru şekilde açıklanmalıdır.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_036_elderly',
    question: 'Yaşlı hastalarda ameliyat öncesi hangi durumu yönetmek özellikle önemlidir?',
    options: [
      'Anksiyete',
      'Hipotansiyon',
      'Hiperkalemi',
      'Kilo kaybı',
      'Düşük hematokrit'
    ],
    correctAnswerIndex: 0,
    explanation: 'Yaşlı hastalar, anksiyete konusunda daha duyarlı olabilir. Bu, preanestezik sedasyon ve anksiyolizis gerektirir, aynı zamanda ameliyat sonrası iyileşme sürecini de etkiler.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_039',
    question: 'Ameliyat öncesi hastanın depresyon geçmişi, anestezi yönetimini nasıl etkileyebilir?',
    options: [
      'Ameliyat sonrası iyileşmeyi hızlandırır',
      'Ameliyat sırasında anksiyete daha az olur',
      'Preoperatif anksiyolizis için daha fazla ilaç gerekebilir',
      'Anestezi süresi kısalır',
      'İlaç dozları artırılabilir'
    ],
    correctAnswerIndex: 2,
    explanation: 'Depresyon geçmişi, hastada preoperatif anksiyeteyi artırabilir, bu yüzden sedatif ilaçlar gereklidir.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
  Question(
    id: 'preoperative_assessment_049',
    question: 'Preoperatif dönemde hastanın sigara içmesi ile ilgili aşağıdaki hangi durum doğru değildir?',
    options: [
      'Solunum komplikasyonları riskini artırır',
      'Ameliyat sonrası iyileşme süreci daha hızlıdır',
      'Postoperatif solunum sıkıntısı riski artar',
      'Hava yolu yönetimini zorlaştırabilir',
      'Ameliyat sırasında hipoksi riski artabilir'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sigara içmek, postoperatif iyileşme sürecini yavaşlatır, çünkü iyileşme süreçlerinde solunum komplikasyonları ve daha uzun hastanede kalma süreleri olabilir.',
    category: 'Ameliyat Öncesi Değerlendirme, Premedikasyon ve Dokümantasyon',
    difficulty: 2
  ),
];

