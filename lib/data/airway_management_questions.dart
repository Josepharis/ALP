import '../models/question.dart';

final List<Question> airwayManagementQuestions = [
  Question(
    question:
        'Zor entübasyonu öngörmede en yaygın kullanılan klinik sınıflama aşağıdakilerden hangisidir?',
    options: [
      'ASA sınıflaması',
      'Apgar skoru',
      'Mallampati sınıflaması',
      'Cormack-Lehane skoru',
      'Tiromental mesafe',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Mallampati skoru, hastanın ağzını açtığında görülebilen orofaringeal yapıların değerlendirilmesiyle yapılan ve zor entübasyonu öngörmede sık kullanılan basit bir sınıflamadır.',
  ),
  Question(
    question:
        'Cormack-Lehane sınıflamasında glottis açıklığının hiç görülmediği durum hangi sınıf olarak tanımlanır?',
    options: ['Sınıf I', 'Sınıf II', 'Sınıf III', 'Sınıf IV', 'Sınıf 0'],
    correctAnswerIndex: 3,
    explanation:
        'Cormack-Lehane Sınıf IV, laringoskopi sırasında epiglot bile görülmez, entübasyonun en zor olduğu durumlardan biridir.',
  ),
  Question(
    question:
        'Tiromental mesafe ölçümünde zor entübasyon riski hangi değerle başlar?',
    options: ['<4 cm', '<5 cm', '<6 cm', '<7 cm', '<8 cm'],
    correctAnswerIndex: 2,
    explanation:
        'Tiromental mesafenin <6 cm olması, genellikle zor entübasyon ile ilişkilidir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi hava yolu açıklığını sağlamak için kullanılan temel manevralardan biridir?',
    options: [
      'Valsalva manevrası',
      'Trendelenburg pozisyonu',
      'Jaw-thrust manevrası',
      'Heimlich manevrası',
      'Murphy işareti',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Jaw-thrust manevrası, mandibulayı öne getirerek hava yolunun açıklığını artıran etkili bir tekniktir, özellikle bilinçsiz hastalarda kullanılır.',
  ),
  Question(
    question:
        'Hangi pozisyon, entübasyon öncesi hava yolu aksının hizalanmasını en iyi sağlar?',
    options: [
      'Trendelenburg',
      'Ters Trendelenburg',
      'Sniffing pozisyonu',
      'Lateral dekübit',
      'Fetal pozisyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Sniffing pozisyonu, boyun fleksiyonu ve baş ekstansiyonu ile oral, faringeal ve laringeal aksların hizalanmasını sağlar, böylece entübasyonu kolaylaştırır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi hava yolunun zorluk skorlamasında kullanılan bir sistemdir?',
    options: [
      'Apgar skoru',
      'Glasgow koma skoru',
      'LEMON skoru',
      'BIS skoru',
      'ALARA skoru',
    ],
    correctAnswerIndex: 2,
    explanation:
        'LEMON skoru, hava yolu değerlendirmesinde kullanılan bir skorlama sistemidir. L = Look, E = Evaluate, M = Mallampati, O = Obstruction, N = Neck mobility.',
  ),
  Question(
    question:
        'Aşağıdaki havayolu aygıtlarından hangisi kısa süreli havayolu kontrolü için uygundur, ancak hava yolu koruması sağlamaz?',
    options: [
      'Endotrakeal tüp',
      'Laringeal maske airway (LMA)',
      'Trakeostomi tüpü',
      'Nazofarengeal airway',
      'Subglottik ventilasyon tüpü',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Nazofarengeal airway, havayolu açıklığını sağlar ancak aspirasyona karşı koruma sağlamaz ve kısa süreli kullanıma uygundur.',
  ),
  Question(
    question:
        'Hangi yöntem bilinçli hastada havayolu açıklığını korumak için en uygundur?',
    options: [
      'Krikotiroidotomi',
      'Endotrakeal entübasyon',
      'Nazofarengeal airway',
      'Laringeal maske',
      'Orotrakeal entübasyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Nazofarengeal airway, bilinçli hastalarda daha iyi tolere edilir ve refleksleri korunan bireylerde hava yolu açıklığını sürdürmek için uygundur.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi zor entübasyon için en güçlü göstergedir?',
    options: [
      'BMI >30',
      'Mallampati sınıf IV',
      'Boyun çevresi >35 cm',
      'Diş protezi varlığı',
      'Yaş >65',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Mallampati sınıf IV, orofaringeal yapılar görünmediği için zor entübasyon açısından en anlamlı öngörücüdür.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi hastayı havalandırmadan endotrakeal entübasyona geçilen senaryodur?',
    options: [
      'Planlı entübasyon',
      'Zor entübasyon',
      'Rapid sequence induction (RSI)',
      'Koma tablosu',
      'Yoğun bakım takibi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'RSI, regürjitasyon ve aspirasyon riskini azaltmak için maskeyle ventilasyon yapılmadan hızlı entübasyonsağlayan tekniktir.',
  ),
  Question(
    question: 'Havayolu yönetiminde BURP manevrası ne amaçla kullanılır?',
    options: [
      'Hastayı sakinleştirmek',
      'Glottik görüntüyü iyileştirmek',
      'Entübasyon sonrası tüp pozisyonunu doğrulamak',
      'Aspirasyonu önlemek',
      'Boyun fleksiyonunu artırmak',
    ],
    correctAnswerIndex: 1,
    explanation:
        'BURP (Backward, Upward, Rightward Pressure) manevrası, krikoid kartilajın belirli yönlerde itilmesiyle glottik görünürlüğü artırır.',
  ),
  Question(
    question: 'Aşağıdakilerden hangisi RSI protokolünde yer almaz?',
    options: [
      'Preoksijenasyon',
      'Krikoid baskı',
      'Kas gevşetici uygulaması',
      'Maske ventilasyonu',
      'Hızlı entübasyon',
    ],
    correctAnswerIndex: 3,
    explanation:
        'RSI (Rapid Sequence Induction) sırasında maske ventilasyonu uygulanmaz, çünkü aspirasyon riski artırabilir.',
  ),
  Question(
    question:
        'Aşağıdaki havayolu açıklığını artırma tekniklerinden hangisi bilinçli hastada uygulanması en zor olanıdır?',
    options: [
      'Chin lift',
      'Jaw thrust',
      'Nazofarengeal airway',
      'Oksijen nazal kanül',
      'Burun aspirasyonu',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Jaw thrust, ağrılı bir manevradır ve bilinçli hastalarda tolere edilmesi zordur. Genellikle bilinçsiz hastalarda uygulanır.',
  ),
  Question(
    question:
        'Laringoskopi sırasında hipertansif kriz gelişen hastada en olası mekanizma nedir?',
    options: [
      'Kardiyak iskemi',
      'Baroreseptör inhibisyonu',
      'Sempatik aktivasyon',
      'Parasempatik baskı',
      'Solunum depresyonu',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Laringoskopi, özellikle yetersiz derinlikte anestezide, semptatik sistem aktivasyonuna neden olur ve kan basıncını yükseltir.',
  ),
  Question(
    question:
        'Endotrakeal entübasyonda laringeal ödem gelişmişse en uygun tedavi aşağıdakilerden hangisidir?',
    options: [
      'Antibiyotik',
      'Kortikosteroid',
      'Antihistaminik',
      'Antikoagülan',
      'Salin nebülizasyonu',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Laringeal ödem, inflamatuvar kaynaklıdır ve en etkili tedavi kortikosteroidlerdir. Gerekirse re-entübasyon düşünülebilir.',
  ),
  Question(
    question:
        'LMA için ideal yerleştirme sonrası uç kısmı hangi anatomik yapıya dayanır?',
    options: [
      'Epiglot',
      'Farenks',
      'Krikoid kartilaj',
      'Hipofarinks',
      'Üst özofagus sfinkteri',
    ],
    correctAnswerIndex: 4,
    explanation:
        'LMA\'nın distali, hipofarinksten geçerek üst özofagus sfinkterine oturur; bu sayede trakeaya yönlendirilen ventilasyon sağlanır.',
  ),
  Question(
    question:
        'Zor hava yolu öngörülen bir hastada, entübasyon öncesi ilk yaklaşım hangisi olmalıdır?',
    options: [
      'RSI',
      'Uyutarak entübasyon',
      'Uyanık fiberoptik entübasyon',
      'LMA uygulaması',
      'Cerrahi hava yolu',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Zor hava yolu beklenen hastalarda en güvenli yol uyanık fiberoptik entübasyondur. Bu sayede hava yolu kaybedilmeden entübasyon yapılabilir.',
  ),
  Question(
    question:
        'Hangi durumda burun kanülünden yüksek akımlı oksijen verilmesi (HFNO) endikedir?',
    options: [
      'Ciddi burun obstrüksiyonu',
      'Laringospazm',
      'Uyanık fiberoptik entübasyon',
      'Trakeostomili hasta',
      'Subglottik stenoz',
    ],
    correctAnswerIndex: 2,
    explanation:
        'HFNO, özellikle uyanık fiberoptik entübasyon sırasında apneik oksijenasyon sağlamak için kullanılır.',
  ),
  Question(
    question:
        'Aşağıdaki pozisyonlardan hangisi aspirasyon riskini azaltmak için RSI sırasında tercih edilir?',
    options: [
      'Trendelenburg',
      'Ters Trendelenburg',
      'Lateral dekübit',
      'Baş yukarı (head-up)',
      'Fetal pozisyon',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Baş yukarı pozisyonu, mide içeriğinin pasif olarak trakeaya kaçmasını önlemeye yardımcı olur; RSI sırasında önerilir.',
  ),
  Question(
    question:
        'Krikoid baskısı (Sellick manevrası) ile ilgili doğru ifade hangisidir?',
    options: [
      'Hipofarenksi açar',
      'Laringeal görüntüyü kolaylaştırır',
      'Özofagusun trakeaya geçişini kolaylaştırır',
      'Aspirasyonu önlemeyi amaçlar',
      'Endotrakeal tüpün yerleşimini kolaylaştırır',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Sellick manevrası, özofagusu vertebraya bastırarak regürjite mide içeriğinin trakeaya geçmesini önlemeye çalışır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi bilinçli ve iş birliği yapabilen hastada hava yolu görüntülemesi için uygundur?',
    options: [
      'Direkt laringoskopi',
      'Krikotiroidotomi',
      'Uyanık fiberoptik entübasyon',
      'Nazal airway',
      'Entübasyon sonrası bronkoskopi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Uyanık fiberoptik entübasyon, zor hava yolu riski olan bilinçli hastalarda en güvenli yöntemdir; hastanın hava yolu korunur.',
  ),
  Question(
    question:
        'Trakeal entübasyon sırasında glottik açıklık zor görünüyorsa en uygun ilk müdahale nedir?',
    options: [
      'Entübasyondan vazgeçmek',
      'Burun yoluyla entübasyon',
      'Sniffing pozisyonunu düzeltmek',
      'Krikotiroidotomi yapmak',
      'Hipnotik ilaç dozu artırmak',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Öncelikle pozisyon düzeltmesi yapılmalıdır (sniffing pozisyonu). Görüşü iyileştirmenin en temel ve kolay adımıdır.',
  ),
  Question(
    question:
        'Hangi durum, entübasyonun hemen ardından bronkospazm geliştiğini düşündürür?',
    options: [
      'End-tidal CO₂ artışı',
      'Düşük havayolu basıncı',
      'Osilasyon seslerinin artması',
      'Solunum seslerinde bilateral sibilans',
      'Yüksek tidal volüm',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Bronkospazm, genellikle entübasyon travmasına veya alerjik cevaba bağlı gelişebilir. Bilateral sibilant solunum sesleri tipiktir.',
  ),
  Question(
    question:
        'Hangi durumda fiberoptik bronkoskop ile entübasyon en uygun tercihtir?',
    options: [
      'Aniden gelişen hava yolu tıkanıklığı',
      'Servikal omurga instabilitesi olan hastada',
      'Travmatik yüz yaralanması',
      'Maske ventilasyonu yapılamayan acil durum',
      'Kanamalı orofarengeal tümör',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Servikal instabilitesi olan hastalarda boyun hareketi kısıtlı olmalıdır; bu nedenle fiberoptik bronkoskopla entübasyon, minimal manipülasyon avantajı nedeniyle idealdir.',
  ),
  Question(
    question:
        'Hava yolu yönetiminde Cormack-Lehane sınıf IIb görünümde hangi yapı kısmen görülebilir?',
    options: [
      'Tam glottis açıklığı',
      'Arytenoidler',
      'Epiglot',
      'Yalnızca krikoid',
      'Trakeal halkalar',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Sınıf IIb\'de arytenoid kartilajlar veya posterior glottik yapılar görülebilir, ancak tam glottik açıklık izlenmez.',
  ),
  Question(
    question:
        'Hangi laringoskop tipi anterior yerleşimli glottisi olan hastalarda daha başarılı olabilir?',
    options: [
      'Macintosh spatül',
      'Miller spatül',
      'Yankauer aspiratör',
      'Wisconsin spatül',
      'Malleable spatül',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Miller spatül, düz yapısı sayesinde epiglottu direkt olarak kaldırır ve anterior glottisi olanlarda daha iyi görüntüleme sağlar.',
  ),
  Question(
    question:
        'Zor hava yolu yönetimi algoritmasında, başarısız entübasyon ve maskeyle ventilasyon sağlanamayan hastada son adım nedir?',
    options: [
      'Video laringoskopi',
      'Fiberoptik entübasyon',
      'Krikotiroidotomi',
      'LMA uygulaması',
      'Burun kanülü ile oksijen',
    ],
    correctAnswerIndex: 2,
    explanation:
        '"Can\'t intubate, can\'t ventilate" senaryosunda algoritmanın son adımı cerrahi hava yolu açılmasıdır (krikotiroidotomi).',
  ),
  Question(
    question:
        'Aşağıdaki komplikasyonlardan hangisi krikotiroidotomiye özgüdür?',
    options: [
      'Laringospazm',
      'Trakeal stenoz',
      'Aspirasyon',
      'Hiperkapni',
      'Subkutan amfizem',
    ],
    correctAnswerIndex: 4,
    explanation:
        'Krikotiroidotomi, subkutan dokuların diseksiyonuyla yapıldığı için subkutan amfizem gelişebilir.',
  ),
  Question(
    question:
        'Fiberoptik entübasyon sırasında görüşü en çok bozan durum hangisidir?',
    options: [
      'Refleks öksürük',
      'Glottik ödem',
      'Aşırı sekresyon ve kanama',
      'Sniffing pozisyonu',
      'Nazal direnç',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Sekresyon ve kanama, fiberoptik kameranın görüş alanını ciddi şekilde kısıtlar; prosedürü başarısız kılabilir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi entübasyon sırasında bradikardiye yol açabilir?',
    options: [
      'Hipoksi',
      'Hiperventilasyon',
      'Vagal uyarı',
      'Preoksijenasyon',
      'LMA yerleşimi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Özellikle çocuklarda, laringoskopi sırasında vagus sinirinin uyarılması bradikardiye neden olabilir; atropin gerekebilir.',
  ),
  Question(
    question: 'Laringospazm gelişen bir hastada ilk tedavi adımı hangisidir?',
    options: [
      'Kas gevşetici verilmesi',
      'Pozitif basınçlı ventilasyon uygulanması',
      'Krikotiroidotomi',
      'Atropin verilmesi',
      'Kortikosteroid verilmesi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Laringospazmda ilk tedavi pozitif basınçla ventilasyon sağlamaktır. Cevap alınmazsa kas gevşetici (süksinilkolin) verilir.',
  ),
  Question(
    question:
        'Çocuklarda entübasyon sırasında vagal refleks uyarısı sonucu gelişen bradikardi için ilk ilaç seçeneği nedir?',
    options: ['Adrenalin', 'Atropin', 'Esmolol', 'Lidokain', 'Fentanil'],
    correctAnswerIndex: 1,
    explanation:
        'Atropin, çocuklarda entübasyona bağlı vagal uyarı sonucu gelişen bradikardinin ilk tercih edilen tedavisidir.',
  ),
  Question(
    question: 'Laringeal ödem riski en çok hangi durumda artar?',
    options: [
      'Kısa süreli LMA kullanımı',
      'Derin anestezi ile yapılan entübasyon',
      'Çoklu entübasyon denemeleri',
      'Nazal entübasyon',
      'Fiberoptik entübasyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Tekrarlayan entübasyon girişimleri, mukozal travmaya neden olarak laringel ödem gelişme riskini artırır.',
  ),
  Question(
    question:
        'Fiberoptik entübasyon öncesi en uygun topikal anestetik ajan hangisidir?',
    options: ['Lidokain', 'Prokain', 'Benzokain', 'Kokain', 'Tetrakain'],
    correctAnswerIndex: 0,
    explanation:
        'Lidokain, güvenli ve etkili topikal anestezik olarak fiberoptik entübasyon öncesi ağız ve farenkse uygulanır.',
  ),
  Question(
    question:
        'Hava yolu yönetiminde "plan A başarısız olduysa plan B" ilkesini temel alan strateji aşağıdakilerden hangisidir?',
    options: [
      'ASA sınıflaması',
      'LEMON skoru',
      'Zor hava yolu algoritması',
      'Sellick manevrası',
      'Apgar skoru',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Zor hava yolu algoritmaları, sistematik olarak "başarısızlık halinde bir sonraki adımı" planlamaya dayanır ve hasta güvenliği için kritik bir rehberdir.',
  ),
  Question(
    question: 'Mallampati Sınıflaması hava yolu değerlendirmesinde neyi ölçer?',
    options: [
      'Ağız açıklığı',
      'Boyun hareketliliği',
      'Orofaringeal görünürlük',
      'Dil hacmini',
      'Nazal açıklığı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Mallampati, yumuşak damak ve uvulanın görünürlüğüne göre hava yolu zorluğu öngörür.',
  ),
  Question(
    question: 'BURP manevrası ile amaçlanan nedir?',
    options: [
      'Aspirasyon önlemek',
      'Laringeal görüntüyü iyileştirmek',
      'Solunum sayısını artırmak',
      'CO₂ atılımını artırmak',
      'Ses tellerini açmak',
    ],
    correctAnswerIndex: 1,
    explanation:
        'BURP (Back-Up-Right-Pressure) ile larinks posteriora ve yukarı itilerek glottis görüntüsü iyileştirilir.',
  ),
  Question(
    question:
        'Endotrakeal entübasyon sırasında doğru laringoskopi pozisyonu hangisidir?',
    options: [
      'Sniffing pozisyonu',
      'Trendelenburg pozisyonu',
      'Litotomi pozisyonu',
      'Lateral dekübit',
      'Supin nötral',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Baş ve boynun fleksiyonu ile servikal ekstansiyon sağlanarak "sniffing" pozisyonu oluşturulur.',
  ),
  Question(
    question:
        'Laringoskopi sırasında glottik görüntülemede en yaygın sınıflandırma hangisidir?',
    options: [
      'ASA sınıflaması',
      'Cormack-Lehane',
      'Apgar skoru',
      'Mallampati',
      'Wilson skoru',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Cormack-Lehane, larinks girişinin direkt laringoskopi ile görünürlüğünü değerlendirir.',
  ),
  Question(
    question: 'Cormack-Lehane sınıf IV neyi ifade eder?',
    options: [
      'Tüm glottis net görünür',
      'Posterior komissür görünür',
      'Epiglot görünür ancak glottis görünmez',
      'Hiçbir yapı görünmez',
      'Sadece aritenoidler görünür',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Sınıf IV: Hiçbir glottik yapı görünmez – entübasyon zorludur.',
  ),
  Question(
    question:
        'Aspirasyon riskinin yüksek olduğu hastalarda en uygun entübasyon yöntemi nedir?',
    options: [
      'Uyanık entübasyon',
      'Krikotirotomi',
      'Hızlı ardışık entübasyon (RSI)',
      'Trakeostomi',
      'Nazal entübasyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'RSI, aspirasyon riski olan hastalarda mide içeriğinin solunum yoluna kaçmasını azaltır.',
  ),
  Question(
    question: 'Krikotiroid membran hangi yapılar arasında yer alır?',
    options: [
      'Tiroid kıkırdak ve hyoid kemik',
      'Krikoid kıkırdak ve trakea',
      'Tiroid ve krikoid kıkırdak',
      'Epiglot ve vokal kordlar',
      'Krikoid ve hyoid kemik',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Krikotiroid membran: Tiroid ve krikoid kıkırdak arasında bulunur; acil hava yolu girişimlerinde hedef noktadır.',
  ),
  Question(
    question:
        'Zor entübasyonun en güçlü prediktörlerinden biri aşağıdakilerden hangisidir?',
    options: [
      'Vücut kitle indeksi <25',
      'Mallampati sınıf I',
      'Ağız açıklığı <3 cm',
      'Boy uzunluğu',
      'Hipotansiyon varlığı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Ağız açıklığının 3 cm\'den az olması, entübasyonu teknik olarak zorlaştırır.',
  ),
  Question(
    question:
        '"Difficult Airway Society" algoritmasına göre entübasyon başarısızsa ilk yapılması gereken nedir?',
    options: [
      'Cerrahi hava yolu açmak',
      'Tekrar entübasyon denemek',
      'Laringeal maske (LMA) yerleştirmek',
      'Hastayı uyandırmak',
      'Transtrakeal jet ventilasyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Entübasyon başarısızsa ve maske ile ventilasyon mümkünse supraglottik cihaz (LMA) önerilir.',
  ),
  Question(
    question: 'Orofaringeal airway hangi hastalarda kontrendikedir?',
    options: [
      'Uyanık hastalar',
      'Baygın hastalar',
      'Travmatik beyin hasarı olanlar',
      'Entübe hastalar',
      'Anestezi alan hastalar',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Orofaringeal airway bilinçli hastalarda bulantı, kusma ve laringospazma neden olabilir.',
  ),
  Question(
    question:
        'Zor hava yolu öngörüsünde thyromental mesafe kaç cm\'nin altındaysa risklidir?',
    options: ['8 cm', '7 cm', '6.5 cm', '6 cm', '5 cm'],
    correctAnswerIndex: 3,
    explanation:
        'Thyromental mesafe <6 cm olduğunda zor entübasyon riski artar.',
  ),
  Question(
    question: 'Entübasyon sırasında en sık görülen kardiyak aritmi hangisidir?',
    options: [
      'Bradikardi',
      'Taşikardi',
      'Ventriküler fibrilasyon',
      'AV blok',
      'Asistoli',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Özellikle çocuklarda vagal uyarı sonucu bradikardi görülebilir.',
  ),
  Question(
    question:
        'Hava yolu yönetiminde nazofaringeal airway ile ilgili doğru ifade hangisidir?',
    options: [
      'Sadece çocuklarda kullanılır',
      'Burundan yerleştirilir, bilinçli hastada tolere edilebilir',
      'Aspirasyon riskini artırır',
      'Sadece trakeostomi alternatifi olarak kullanılır',
      'Ağız açıklığı tam olan hastalarda kullanılır',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Nazofaringeal airway, uyanık hastalar tarafından genellikle daha iyi tolere edilir.',
  ),
  Question(
    question: 'En sık kullanılan video laringoskop türü hangisidir?',
    options: ['Glidescope', 'Bonfils', 'Airtraq', 'McGrath', 'C-MAC'],
    correctAnswerIndex: 0,
    explanation:
        'Glidescope, yaygın olarak kullanılan video laringoskoplardan biridir.',
  ),
  Question(
    question:
        'Zor hava yolu algoritmasında hasta entübe edilemiyor ve maske ile de ventilasyon yapılamıyorsa ilk yapılması gereken nedir?',
    options: [
      'LMA takmak',
      'Video laringoskopi uygulamak',
      'Cerrahi hava yolu açmak',
      'Hastayı uyandırmak',
      'Nazofaringeal airway takmak',
    ],
    correctAnswerIndex: 2,
    explanation:
        '"Can\'t intubate, can\'t ventilate" durumunda cerrahi hava yolu (krikotiroidotomi) endikedir.',
  ),
  Question(
    question: 'Hangi durum krikotiroidotomi için kontrendikedir?',
    options: [
      'Larengeal travma',
      'Yüz travması',
      'Çocuklarda (<10 yaş)',
      'Hipoksi',
      'Yutma güçlüğü',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Çocuklarda krikotiroid membran dardır; transtrakeal jet ventilasyon tercih edilir.',
  ),
  Question(
    question: 'Glottik yapılar görünmüyorsa ne yapılmalıdır?',
    options: [
      'Pozisyon yeniden ayarlanır',
      'Tüp zorla ilerletilir',
      'Entübasyon bırakılır',
      'Hiperventilasyon yapılır',
      'Sedasyon artırılır',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Glottik görünüm zayıfsa pozisyon yeniden ayarlanmalı ve BURP manevrası denenmelidir.',
  ),
  Question(
    question: 'Hangi cihaz spontan solunumu koruyarak entübasyona izin verir?',
    options: [
      'Fiberoptik bronkoskop',
      'Laringoskop',
      'Krikotiroidotomi tüpü',
      'Nazofaringeal airway',
      'Orotrakeal tüp',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Fiberoptik entübasyon, özellikle uyanık hastada spontan solunumu koruyarak güvenle uygulanabilir.',
  ),
  Question(
    question: 'Hava yolu yönetiminde en sık yapılan hata nedir?',
    options: [
      'Aspirasyon riski değerlendirilmemesi',
      'Ağız açıklığı kontrolü',
      'Entübasyon öncesi oksijenasyon yapılması',
      'Video laringoskopi yapılması',
      'Sellick manevrası uygulanması',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Aspirasyon riski değerlendirilmeden yapılan sedasyon veya entübasyon ciddi komplikasyonlara yol açabilir.',
  ),
  Question(
    question: 'LMA\'nın hava yolu sağlama başarısı yaklaşık olarak nedir?',
    options: ['%40', '%60', '%80', '%90', '%100'],
    correctAnswerIndex: 3,
    explanation: 'LMA yerleştirilmesinde başarı oranı %90 civarındadır.',
  ),
  Question(
    question: 'Acil entübasyonda en önemli komplikasyonlardan biri hangisidir?',
    options: [
      'Hiperkalemi',
      'Hipoglisemi',
      'Aspirasyon',
      'Bradikardi',
      'Hipokapni',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Acil durumlarda mide dolu olabilir, bu da aspirasyon riskini artırır.',
  ),
  Question(
    question: 'Zor entübasyon için en güvenilir öngörücü test hangisidir?',
    options: [
      'Mallampati sınıflaması',
      'Tiromental mesafe ölçümü',
      'Boyun çevresi ölçümü',
      'Sternomental mesafe',
      'Ağız açıklığı değerlendirmesi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Sınıf III-IV (dil kökünün görülemediği durumlar) zor entübasyon riskini artırır.',
  ),
  Question(
    question: 'Hangisi "zor hava yolu" tanımına uyar?',
    options: [
      'Deneyimli anestezistin 3\'ten fazla laringoskopi denemesi veya 10 dakikadan uzun süren entübasyon girişimi',
      'Entübasyonun 1 denemede başarılamaması',
      'Laringoskopide kordların kısmen görülmesi',
      'Maske ventilasyun zor olması',
      'Hastanın boynunun kısa olması',
    ],
    correctAnswerIndex: 0,
    explanation: 'ASA kriterlerine göre bu tanım kullanılır.',
  ),
  Question(
    question: 'Hangisi supraglottik hava yolu cihazı değildir?',
    options: [
      'Endotrakeal tüp',
      'Laryngeal maske (LMA)',
      'I-gel',
      'ProSeal LMA',
      'Laryngeal tüp',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Endotrakeal tüp glottik altı hava yoludur; diğerleri supraglottik cihazlardır.',
  ),
  Question(
    question: 'Hangisi krikotiroidotomi endikasyonudur?',
    options: [
      '"Can\'t intubate, can\'t ventilate" (CICO) durumu',
      'Elektif tonsillektomi',
      'Nazal entübasyon gerekliliği',
      'Bronkoskopi ihtiyacı',
      'Trakeal stenoz',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Nefes alamayan ve entübe edilemeyen hastada acil cerrahi hava yolu açılır.',
  ),
  Question(
    question: 'Hangisi entübasyon sonrası en sık görülen komplikasyondur?',
    options: [
      'Boğaz ağrısı',
      'Pnömotoraks',
      'Diş hasarı',
      'Özofagus perforasyonu',
      'Sinir yaralanması',
    ],
    correctAnswerIndex: 0,
    explanation:
        '%30-50 hastada görülür; genellikle 24-48 saat içinde düzelir.',
  ),
  Question(
    question: 'Hangisi laringospazm tedavisinde ilk basamaktır?',
    options: [
      '100% O₂ ile pozitif basınçlı ventilasyon + krikoid bası',
      'Hemen trakeotomi',
      'İntravenöz lidokain',
      'Derhal ekstübasyon',
      'Yüksek doz opioid',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Laringospazmda glottik kapanmayı açmak için basınçlı O₂ ve Larson manevrası uygulanır.',
  ),
  Question(
    question:
        'Hangisi pediatrik hastada hava yolu anatomik farklılıklarından değildir?',
    options: [
      'Daha uzun trakea',
      'Büyük dil',
      'Yüksek larenks',
      'Huni şeklinde krikoid',
      'Dar subglottik alan',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Pediatrik hastalarda trakea kısadır; endotrakeal tüpün doğru yerleşimi kritiktir.',
  ),
  Question(
    question: 'Hangisi entübasyon için kontrendike olan durumdur?',
    options: ['Larengeal ödem', 'Astım', 'KOAH', 'Obezite', 'Gebelik'],
    correctAnswerIndex: 0,
    explanation:
        'Larenks ödeminde entübasyon zor ve risklidir; trakeotomi gerekebilir.',
  ),
  Question(
    question:
        'Hangisi entübasyon sırasında kullanılan bıçak tiplerinden değildir?',
    options: ['Guedel', 'Macintosh', 'Miller', 'McCoy', 'Wisconsin'],
    correctAnswerIndex: 0,
    explanation:
        'Guedel orofaringeal hava yoludur; diğerleri laringoskop bıçak tipleridir.',
  ),
  Question(
    question:
        'Hangisi entübasyon sırasında kullanılan uygun tüp balon basıncıdır?',
    options: [
      '20-30 cmH₂O',
      '10-15 cmH₂O',
      '40-50 cmH₂O',
      '60-70 cmH₂O',
      '80-90 cmH₂O',
    ],
    correctAnswerIndex: 0,
    explanation: 'Yüksek basınç trakeal iskemi ve nekroza neden olabilir.',
  ),
  Question(
    question:
        'Hangisi entübasyon sırasında kullanılan uygun tüp balon hacmidir?',
    options: [
      '5-10 ml hava',
      '1-2 ml hava',
      '15-20 ml hava',
      '25-30 ml hava',
      '35-40 ml hava',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Balon hacmi tüp çapına göre ayarlanır; fazla hacim travmatik olabilir.',
  ),
];
