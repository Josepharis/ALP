import '../models/question.dart';

final List<Question> localAnestheticsQuestions = [
  Question(
    id: 'la_001',
    question: 'Lokal anesteziklerin temel etki mekanizması nedir?',
    options: [
      'Kalsiyum kanallarını inhibe etmek',
      'Glutamat salınımını artırmak',
      'Sodyum kanallarını bloke etmek',
      'GABA reseptörlerini aktive etmek',
      'NMDA reseptörlerini bloke etmek',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Lokal anestezikler, sinir hücrelerindeki voltaja duyarlı sodyum kanallarını bloke ederek aksiyon potansiyelini engeller ve iletimi durdurur.',
    difficulty: 1,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_002',
    question: 'Aşağıdaki lokal anesteziklerden hangisi ester yapılıdır?',
    options: ['Lidokain', 'Bupivakain', 'Prilokain', 'Prokain', 'Mepivakain'],
    correctAnswerIndex: 3,
    explanation:
        'Prokain, ester yapısında bir lokal anesteziktir. Esterler plazma kolinesteraz ile yıkılır ve kısa etkilidir.',
    difficulty: 1,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_003',
    question:
        'Aşağıdakilerden hangisi amid yapılı lokal anesteziklerden biridir?',
    options: ['Tetrakain', 'Klorprokain', 'Benzokain', 'Lidokain', 'Kokain'],
    correctAnswerIndex: 3,
    explanation:
        'Lidokain, amid grubu lokal anesteziktir. Karaciğerde metabolize edilir ve orta süreli etkiye sahiptir.',
    difficulty: 1,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_004',
    question:
        'Lokal anesteziklerin sinir lifleri üzerine etkisiyle ilgili olarak doğru ifade hangisidir?',
    options: [
      'En önce motor lifleri bloke eder',
      'Büyük çaplı lifleri öncelikle bloke eder',
      'Önce sempatik, sonra ağrı lifleri bloke edilir',
      'Isıya duyarlı lifler en önce etkilenir',
      'Sinir bloğu proksimale doğru yayılır',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Lokal anestezikler, lif çapı küçük olanları daha önce bloke eder: sempatik > ağrı > ısı > dokunma > motor şeklinde bir sıralama izlenir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_005',
    question:
        'Aşağıdaki özelliklerden hangisi lokal anesteziğin potensini en çok etkiler?',
    options: [
      'pKa değeri',
      'Lipid çözünürlüğü',
      'Protein bağlanma oranı',
      'Molekül ağırlığı',
      'Plazma yarı ömrü',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Lipid çözünürlüğü arttıkça lokal anestezik sinir membranına penetre olma yeteneği artar ve potens yükselir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_006',
    question:
        'Aşağıdakilerden hangisi lokal anesteziklerin etki süresini belirleyen en önemli faktördür?',
    options: [
      'pKa',
      'Protein bağlanma oranı',
      'Molekül boyutu',
      'Plazma düzeyi',
      'Lipofiliklik',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Lokal anesteziğin proteine bağlanma oranı, dokuda kalış süresini ve etki süresini doğrudan etkiler.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_007',
    question:
        'Lokal anesteziklerin etki başlangıcını en çok etkileyen özellik aşağıdakilerden hangisidir?',
    options: [
      'Lipofiliklik',
      'Protein bağlanma',
      'pKa değeri',
      'Molekül büyüklüğü',
      'Suda çözünürlük',
    ],
    correctAnswerIndex: 2,
    explanation:
        'pKa, bir lokal anesteziğin iyonize olmayan (lipid çözünür) form oranını belirler. Fizyolojik pH yakın pKa değeri olanlar daha hızlı etki eder.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_008',
    question:
        'Aşağıdaki lokal anesteziklerden hangisinin kardiyotoksisite riski en fazladır?',
    options: ['Lidokain', 'Bupivakain', 'Prokain', 'Ropivakain', 'Prilokain'],
    correctAnswerIndex: 1,
    explanation:
        'Bupivakain, yüksek kardiyak toksisite riski ile bilinir. Ventriküler aritmi ve kardiyak arrest gibi komplikasyonlara neden olabilir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_009',
    question:
        'Methemoglobinemiye en çok neden olan lokal anestezik aşağıdakilerden hangisidir?',
    options: ['Lidokain', 'Bupivakain', 'Prilokain', 'Mepivakain', 'Prokain'],
    correctAnswerIndex: 2,
    explanation:
        'Prilokain, metabolizmasında o-toluidin üretir; bu metabolit methemoglobinemiye yol açabilir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_010',
    question:
        'Lidokainin toksik doz eşiği (epinefrinle birlikte uygulandığında) yaklaşık kaç mg/kg dır?',
    options: ['3', '5', '7', '9', '10'],
    correctAnswerIndex: 2,
    explanation:
        'Lidokain, epinefrin ile birlikte verildiğinde toksik doz sınırı yaklaşık 7 mg/kg a kadar yükselir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_011',
    question:
        'Aşağıdaki lokal anesteziklerden hangisi epidural anestezide en sık kullanılır?',
    options: ['Prokain', 'Prilokain', 'Bupivakain', 'Benzokain', 'Klorprokain'],
    correctAnswerIndex: 2,
    explanation:
        'Bupivakain, uzun etkili olması ve motor blok yapmadan duyusal blok sağlaması nedeniyle epidural anestezide en çok tercih edilen ajanlardandır.',
    difficulty: 1,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_012',
    question:
        'Lokal anesteziklerin etkisini prolonge eden yardımcı ajan aşağıdakilerden hangisidir?',
    options: [
      'Antihistaminik',
      'Adrenalin',
      'Antibiyotik',
      'Kortikosteroid',
      'Diazepam',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Adrenalin, lokal vazokonstriksiyon yaparak ilacın sistemik emilimini azaltır ve etki süresini uzatır.',
    difficulty: 1,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_013',
    question: 'Ester yapılı lokal anestezikler hangi enzim tarafından yıkılır?',
    options: [
      'Sitokrom P450',
      'Kolinesteraz',
      'MAO',
      'Katekol-O-metil transferaz',
      'Glukuronil transferaz',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Ester lokal anestezikler, plazmada bulunan psödokolinesteraz (butirilkolinesteraz) enzimi ile hızla yıkılır.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_014',
    question:
        'Aşağıdaki lokal anesteziklerden hangisinin topikal etkisi belirgindir?',
    options: [
      'Lidokain',
      'Bupivakain',
      'Prilokain',
      'Klorprokain',
      'Ropivakain',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Lidokain, hem enjeksiyonla hem de topikal olarak etkili olan lokal anesteziklerdendir (örneğin laringeal uygulama, cilt anestezisi).',
    difficulty: 1,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_015',
    question:
        'Aşağıdakilerden hangisi lokal anestezik toksisitesinin erken semptomlarından biridir?',
    options: [
      'Bradikardi',
      'Konvülsiyon',
      'Perioral uyuşma',
      'Solunum arresti',
      'Hipotansiyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Lokal anesteziklerin erken toksik belirtileri arasında perioral parestezi, tinnitus ve baş dönmesi gibi santral belirtiler yer alır.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_016',
    question:
        'Aşağıdaki lokal anesteziklerden hangisinin etkisi en hızlı başlar?',
    options: ['Bupivakain', 'Prilokain', 'Ropivakain', 'Lidokain', 'Prokain'],
    correctAnswerIndex: 3,
    explanation:
        'Lidokain, düşük pKa değeri sayesinde hızlı etki başlangıcına sahiptir ve acil girişimler için tercih edilir.',
    difficulty: 1,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_017',
    question:
        'Aşağıdakilerden hangisi lipid emülsiyon tedavisi gerektirebilecek lokal anestezik toksisitesine neden olabilir?',
    options: ['Prokain', 'Bupivakain', 'Klorprokain', 'Benzokain', 'Tetrakain'],
    correctAnswerIndex: 1,
    explanation:
        'Bupivakain, kardiyotoksik etkileri nedeniyle lokal anestezik sistemik toksisitesi (LAST) tablosu oluşturabilir; lipid infüzyon tedavisi gerekebilir.',
    difficulty: 3,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_018',
    question:
        'Kokainin lokal anestezik etkisinin yanında belirgin olarak sahip olduğu başka bir özellik hangisidir?',
    options: [
      'Antibakteriyel etki',
      'NMDA antagonizması',
      'MAO inhibitör etkisi',
      'Vazokonstriktör etki',
      'Antihistaminik etki',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Kokain, lokal anestezik olmasının yanı sıra norepinefrin geri alımını inhibe ederek vazokonstriksiyon yapar.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_019',
    question:
        'Aşağıdaki lokal anesteziklerden hangisi en düşük toksisiteye sahiptir ve obstetrik epiduralde güvenle kullanılır?',
    options: ['Lidokain', 'Prilokain', 'Bupivakain', 'Ropivakain', 'Benzokain'],
    correctAnswerIndex: 3,
    explanation:
        'Ropivakain, bupivakaine göre daha az kardiyotoksiktir ve motor blok yapmama eğilimi nedeniyle obstetrik kullanıma uygundur.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_020',
    question:
        'Methemoglobinemi gelişen bir hastada ilk tercih edilecek tedavi hangisidir?',
    options: [
      'Laktat infüzyonu',
      'Fenilefrin',
      'Metilen mavisi',
      'Adrenalin',
      'Glukoz infüzyonu',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Metilen mavisi, methemoglobini tekrar hemoglobine çeviren ajan olup, methemoglobinemi tedavisinde ilk tercihtir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_021',
    question:
        'Lokal anesteziklerin sinir blokajında en önce etkilediği sinir lifi aşağıdakilerden hangisidir?',
    options: [
      'A-beta',
      'A-alfa',
      'B lifleri (sempatik)',
      'C lifleri (ağrı)',
      'A-delta',
    ],
    correctAnswerIndex: 2,
    explanation:
        'B lifleri (ince, miyelinsiz sempatik lifler), lokal anesteziklere karşı en duyarlıdır ve ilk etkilenenlerdir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_022',
    question:
        'Aşağıdaki lokal anesteziklerden hangisi yalnızca topikal olarak kullanılır?',
    options: ['Prokain', 'Bupivakain', 'Benzokain', 'Ropivakain', 'Lidokain'],
    correctAnswerIndex: 2,
    explanation:
        'Benzokain, sadece topikal olarak kullanılan ester yapılı bir lokal anesteziktir. Özellikle mukozal yüzeylerde tercih edilir.',
    difficulty: 1,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_023',
    question:
        'Aşağıdakilerden hangisi lokal anesteziklerin sistemik toksisitesine ait bir kardiyovasküler bulgudur?',
    options: [
      'Hipertansiyon',
      'Taşikardi',
      'Ventriküler aritmi',
      'Myoklonus',
      'Perioral parestezi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Lokal anestezik toksisitesinde özellikle bupivakain, ventriküler aritmi ve kardiyak arrest gibi ciddi kardiyak etkiler oluşturabilir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_024',
    question:
        'Epidural anestezide lokal anesteziklerin emilim hızı en fazla olan bölge hangisidir?',
    options: ['Servikal', 'Torakal', 'Lomber', 'Sakral', 'Kaudal'],
    correctAnswerIndex: 1,
    explanation:
        'Torakal epidural alanda kan akımı daha fazladır, bu nedenle emilim en hızlıdır. Sistemik toksisite riski bu bölgede daha yüksektir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_025',
    question:
        'Aşağıdaki durumların hangisinde lokal anestezik dozu azaltılmalıdır?',
    options: [
      'Hipertansiyon',
      'Diabetes mellitus',
      'Yaşlı hastalar',
      'Obezite',
      'Sigara kullanımı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Yaşlı hastalarda karaciğer ve böbrek fonksiyonlarındaki azalma nedeniyle ilaç eliminasyonu yavaşlar; bu yüzden doz azaltılmalıdır.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_026',
    question: 'Ropivakainle ilgili aşağıdakilerden hangisi yanlıştır?',
    options: [
      'Motor blok etkisi bupivakaine göre daha azdır',
      'Düşük kardiyotoksisiteye sahiptir',
      'Kısa etkili bir ajandır',
      'Methemoglobinemiye yol açmaz',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Ropivakain uzun etkili bir lokal anesteziktir. Motor blok etkisi bupivakaine göre daha az ve kardiyotoksisitesi daha düşüktür.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_027',
    question:
        'Lidokainin etki süresi aşağıdakilerden hangisine göre daha fazla uzatılabilir?',
    options: [
      'Metamizol ile birlikte verilirse',
      'Yüksek dozda uygulanırsa',
      'Adrenalin ile kombine edilirse',
      'Yavaş enjekte edilirse',
      'Kas içine uygulanırsa',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Adrenalin, lokal vazokonstriksiyon yaparak lidokainin sistemik emilimini azaltır, böylece etki süresi uzar.',
    difficulty: 1,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_028',
    question:
        'Aşağıdaki lokal anesteziklerin hangisi en yüksek pKa değerine sahiptir?',
    options: ['Lidokain', 'Prilokain', 'Prokain', 'Klorprokain', 'Ropivakain'],
    correctAnswerIndex: 3,
    explanation:
        'Klorprokain en yüksek pKa değerine sahiptir (yaklaşık 9), bu da etki başlangıcının yavaş olmasına neden olur.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_029',
    question:
        'Aşağıdaki yöntemlerden hangisi lokal anestezik emilimini artırır ve toksisite riskini yükseltir?',
    options: [
      'Damar içine enjeksiyon',
      'Adrenalinle kombine kullanım',
      'İntratekal uygulama',
      'Spinal enjeksiyon',
      'Düşük doz uygulama',
    ],
    correctAnswerIndex: 0,
    explanation:
        'İntravenöz enjeksiyon, lokal anesteziklerin sistemik dolaşıma direkt geçmesine neden olur ve toksisite riskini önemli ölçüde artırır.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_030',
    question:
        'Aşağıdaki lokal anesteziklerden hangisi en az motor blokaj yapar ve bu nedenle doğum analjezisi için uygundur?',
    options: ['Lidokain', 'Bupivakain', 'Prokain', 'Ropivakain', 'Tetrakain'],
    correctAnswerIndex: 3,
    explanation:
        'Ropivakain, motor blok etkisi bupivakaine göre daha azdır, bu nedenle doğum analjezisinde sık tercih edilir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_031',
    question:
        'Aşağıdaki lokal anesteziklerden hangisinin intratekal uygulaması yüksek nörotoksisite riski taşır?',
    options: ['Klorprokain', 'Prilokain', 'Lidokain', 'Ropivakain', 'Prokain'],
    correctAnswerIndex: 2,
    explanation:
        'Lidokain, özellikle yüksek konsantrasyonlarda ve intratekal uygulandığında transient radicular irritation (TRI) riski nedeniyle dikkatle kullanılmalıdır.',
    difficulty: 3,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_032',
    question:
        'Aşağıdakilerden hangisi lokal anestezik sistemik toksisitesinin (LAST) geç dönem bulgusudur?',
    options: [
      'Perioral uyuşma',
      'Tinnitus',
      'Tonik-klonik nöbet',
      'Hipotansiyon ve kardiyak arrest',
      'Baş dönmesi',
    ],
    correctAnswerIndex: 3,
    explanation:
        'LAST tablosunda geç dönem belirtiler kardiyovasküler çökme, hipotansiyon ve asistol gibi ciddi tablolardır.',
    difficulty: 3,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_033',
    question:
        'Lokal anestezik toksisitesinde gelişen konvülsiyon tedavisinde ilk basamak ilaç aşağıdakilerden hangisidir?',
    options: ['Ketamin', 'Fentanil', 'Midazolam', 'Adrenalin', 'Propofol'],
    correctAnswerIndex: 2,
    explanation:
        'Benzodiazepinler (örn. midazolam), lokal anestezik kaynaklı konvülsiyonların tedavisinde ilk basamak olarak kullanılır.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_034',
    question:
        'Aşağıdaki lokal anesteziklerden hangisi göz içi cerrahilerde topikal olarak kullanılabilir?',
    options: ['Prokain', 'Prilokain', 'Tetrakain', 'Bupivakain', 'Ropivakain'],
    correctAnswerIndex: 2,
    explanation:
        'Tetrakain, göz cerrahisinde topikal anestezik olarak sıklıkla kullanılır. Hızlı etki ve yüzeysel anestezi sağlar.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_035',
    question:
        'Aşağıdaki lokal anesteziklerden hangisi plazmada en hızlı yıkıma uğrar?',
    options: [
      'Lidokain',
      'Bupivakain',
      'Klorprokain',
      'Ropivakain',
      'Prilokain',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Klorprokain, ester yapılı olup plazma kolinesterazları ile çok hızlı yıkılır, bu nedenle kısa etkilidir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_036',
    question:
        'Spinal anestezide kullanılan lokal anesteziklerin etkisiyle ilgili olarak hangisi doğrudur?',
    options: [
      'Etki sırası: motor > dokunma > ağrı',
      'Motor blok ilk oluşur',
      'Etki kalıcıdır',
      'Sempatik blok motor bloktan önce gelişir',
      'Tüm spinal sinirler eşit etkilenir',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Spinal anestezide sinir lifleri etkilenme sırasına göre: sempatik > ağrı > ısı > dokunma > motor.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_037',
    question:
        'Lidokainin maksimum güvenli dozu (epinefrinsiz) yaklaşık kaç mg/kg dır?',
    options: ['3', '4', '5', '6', '7'],
    correctAnswerIndex: 2,
    explanation:
        'Epinefrin olmadan lidokainin maksimum güvenli dozu yaklaşık 5 mg/kg dır.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_038',
    question:
        'Aşağıdaki lokal anesteziklerden hangisi kulak burun boğaz uygulamalarında topikal olarak yaygın kullanılır?',
    options: [
      'Bupivakain',
      'Benzokain',
      'Klorprokain',
      'Ropivakain',
      'Prilokain',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Benzokain, mukozal yüzeylerde topikal anestezi için yaygın olarak kullanılır. Özellikle ENT prosedürlerinde tercih edilir.',
    difficulty: 1,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_039',
    question:
        'Aşağıdakilerden hangisi lokal anesteziklerin etkisini artırmak için epinefrin eklenmesinin faydalarından biri değildir?',
    options: [
      'Etki süresini uzatmak',
      'Sistemik toksisiteyi azaltmak',
      'Dokuya penetrasyonunu artırmak',
      'Kanama kontrolü sağlamak',
      'Emilimi azaltmak',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Epinefrin, vazokonstriksiyon yaparak lokal anesteziğin emilimini azaltır ve süresini uzatır ama penetrasyon yeteneğini artırmaz.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_040',
    question:
        'Aşağıdakilerden hangisi lokal anesteziklerin sistemik toksisitesinde görülen ilk belirti olabilir?',
    options: [
      'Konvülziyon',
      'Bradikardi',
      'Tinnitus ve baş dönmesi',
      'Solunum depresyonu',
      'Hipotansiyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Lokal anesteziklerin santral sinir sistemi toksisitesi genellikle tinnitus, baş dönmesi, ağızda metalik tat gibi belirtilerle başlar.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_041',
    question:
        'Aşağıdaki lokal anesteziklerden hangisi en yüksek lipofilisiteye sahiptir?',
    options: [
      'Lidokain',
      'Bupivakain',
      'Prilokain',
      'Ropivakain',
      'Mepivakain',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Bupivakain en yüksek lipofilisiteye sahiptir, bu da onun güçlü ve uzun etkili olmasını sağlar.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_042',
    question:
        'Aşağıdaki lokal anesteziklerden hangisi en az vazodilatasyon yapar?',
    options: [
      'Lidokain',
      'Bupivakain',
      'Prilokain',
      'Ropivakain',
      'Mepivakain',
    ],
    correctAnswerIndex: 4,
    explanation:
        'Mepivakain en az vazodilatasyon yapan lokal anesteziktir, bu nedenle adrenalin eklenmesine daha az ihtiyaç duyulur.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_043',
    question:
        'Aşağıdaki lokal anesteziklerden hangisi en düşük pKa değerine sahiptir?',
    options: [
      'Lidokain',
      'Bupivakain',
      'Prilokain',
      'Ropivakain',
      'Mepivakain',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Lidokain pKa değeri 7.7 ile en düşük olan lokal anesteziktir, bu da onun hızlı etki başlangıcını sağlar.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_044',
    question:
        'Aşağıdaki lokal anesteziklerden hangisi en yüksek dozda kullanılabilir?',
    options: [
      'Lidokain',
      'Bupivakain',
      'Prilokain',
      'Ropivakain',
      'Mepivakain',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Prilokain en yüksek maksimum doza sahiptir (8-10 mg/kg), bunu lidokain (7 mg/kg epinefrinle) izler.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_045',
    question:
        'Aşağıdaki lokal anesteziklerden hangisi en az plasental geçiş gösterir?',
    options: [
      'Lidokain',
      'Bupivakain',
      'Prilokain',
      'Ropivakain',
      'Mepivakain',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Ropivakain yüksek protein bağlanma oranı nedeniyle en az plasental geçiş gösteren lokal anesteziktir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_046',
    question:
        'Aşağıdaki lokal anesteziklerden hangisi en güçlü motor blokaj yapar?',
    options: [
      'Lidokain',
      'Bupivakain',
      'Prilokain',
      'Ropivakain',
      'Mepivakain',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Bupivakain en güçlü motor blokaj yapan lokal anesteziktir. Ropivakain ise daha çok duyusal blokaj yapar.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_047',
    question: 'Hangi lokal anestezik en fazla allerjik reaksiyona neden olur?',
    options: ['Lidokain', 'Bupivakain', 'Prokain', 'Ropivakain', 'Mepivakain'],
    correctAnswerIndex: 2,
    explanation:
        'Ester yapıdaki lokal anestezikler (prokain) PABA metaboliti oluşturduğu için en fazla allerjik reaksiyona neden olur.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_048',
    question:
        'Hangi lokal anestezik en fazla TNS (Transient Neurologic Symptoms) yapar?',
    options: [
      'Lidokain',
      'Bupivakain',
      'Prilokain',
      'Ropivakain',
      'Mepivakain',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Lidokain %5 lik spinal formuyla en fazla geçici nörolojik semptomlara neden olur.',
    difficulty: 3,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_049',
    question:
        'Methemoglobinemi şüphesi olan hastada tanı koymak için hangi test yapılmalıdır?',
    options: [
      'Arteriyel kan gazı',
      'Ko-oksimetre',
      'Pulse oksimetre',
      'Kan şekeri ölçümü',
      'Elektrolit analizi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Ko-oksimetre, methemoglobin düzeyini doğru şekilde ölçen cihazdır. Pulse oksimetre yanıltıcı olabilir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_050',
    question:
        'Aşağıdakilerden hangisi intralipid tedavisinin lokal anestezik toksisitesindeki mekanizmalarından biri değildir?',
    options: [
      'Lipid sink etkisi',
      'Kalp hücrelerinde enerji substratı sağlama',
      'İyon kanal blokajını antagonize etme',
      'Myokard kontraktilitesini artırma',
      'Anestezik ilacın protein bağını güçlendirme',
    ],
    correctAnswerIndex: 4,
    explanation:
        'Lipid emülsiyonu, lipofilik toksinleri tamponlar (lipid sink), kalbe enerji sağlar. Protein bağını artırmak gibi bir etkisi yoktur.',
    difficulty: 3,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_051',
    question: 'Hangi lokal anestezik spinal anestezide kontrendikedir?',
    options: ['Bupivakain', 'Lidokain', 'Ropivakain', 'Prilokain', 'Tetrakain'],
    correctAnswerIndex: 1,
    explanation:
        'Lidokain spinal anestezide geçici nörolojik semptomlara (TNS) yol açma riski nedeniyle kontrendikedir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_052',
    question:
        'Aşağıdakilerden hangisi lokal anesteziklerin etki süresini uzatmak için kullanılmaz?',
    options: [
      'Adrenalin',
      'Bikarbonat',
      'Clonidin',
      'Deksmedetomidin',
      'Heparin',
    ],
    correctAnswerIndex: 4,
    explanation:
        'Heparin lokal anestezik etki süresini uzatmaz. Adrenalin (vazokonstriksiyon), bikarbonat (pH artışı), klonidin ve deksmedetomidin etki süresini uzatır.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_053',
    question: 'Hangi lokal anestezik en fazla vazodilatasyon yapar?',
    options: [
      'Lidokain',
      'Bupivakain',
      'Prilokain',
      'Ropivakain',
      'Mepivakain',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Lidokain belirgin vazodilatasyon yapar, bu nedenle sıklıkla adrenalin ile birlikte kullanılır.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_054',
    question: 'Hangi lokal anestezik en az protein bağlanma oranına sahiptir?',
    options: [
      'Lidokain',
      'Bupivakain',
      'Prilokain',
      'Ropivakain',
      'Mepivakain',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Prilokain %55 protein bağlanma oranıyla en az bağlanan lokal anesteziktir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_055',
    question:
        'Aşağıdaki lokal anesteziklerden hangisi en düşük lipofilisiteye sahiptir?',
    options: [
      'Lidokain',
      'Bupivakain',
      'Prilokain',
      'Ropivakain',
      'Mepivakain',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Prilokain en düşük lipofilisiteye sahiptir, bu da onun daha kısa etki süresine katkıda bulunur.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_056',
    question:
        'Aşağıdakilerden hangisi lokal anesteziklerin etkisini artırmak için epinefrin eklenmesinin faydalarından biri değildir?',
    options: [
      'Etki süresini uzatmak',
      'Sistemik toksisiteyi azaltmak',
      'Dokuya penetrasyonunu artırmak',
      'Kanama kontrolü sağlamak',
      'Emilimi azaltmak',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Epinefrin, vazokonstriksiyon yaparak lokal anesteziğin emilimini azaltır ve süresini uzatır ama penetrasyon yeteneğini artırmaz.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_057',
    question:
        'Lokal anesteziklerin iyonize olmayan formu aşağıdaki hangi etkide daha önemlidir?',
    options: [
      'Reseptör bağlanması',
      'Kanal açılması',
      'Hücre zarından geçiş',
      'Aksiyon potansiyeli oluşturma',
      'Enzim inhibisyonu',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Lokal anesteziklerin iyonize olmayan formu lipofilik olduğu için sinir hücresi zarını geçebilir → ardından iyonize formu kanalı bloke eder.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_058',
    question:
        'Aşağıdakilerden hangisi lokal anesteziklerin etki süresini uzatmaz?',
    options: [
      'Yüksek protein bağlanma oranı',
      'Vazokonstriktör eklenmesi',
      'Düşük pKa değeri',
      'Yüksek lipofilisite',
      'Dokuda düşük perfüzyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'pKa, başlangıç etkisini etkiler. Etki süresini belirleyen faktörler ise lipofilisite, protein bağlanması, vazokonstriksiyon gibi etkenlerdir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_059',
    question:
        'Lokal anesteziklerin motor sinir lifleri üzerinde etki sırası nasıldır?',
    options: [
      'En önce etkilenir',
      'Orta derecede etkilenir',
      'En geç etkilenir',
      'Diğerlerine eşit etkilenir',
      'Etkilenmez',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Büyük, miyelinli motor lifler, lokal anesteziklere karşı en dirençli olanlardır → en son etkilenirler.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_060',
    question:
        'Aşağıdaki lokal anesteziklerden hangisinin doğal doku penetrasyonu en düşüktür?',
    options: ['Lidokain', 'Prokain', 'Bupivakain', 'Ropivakain', 'Tetrakain'],
    correctAnswerIndex: 1,
    explanation:
        'Prokain, düşük lipofilisitesi ve protein bağlanma oranı nedeniyle zayıf penetrasyon özelliğine sahiptir → düşük potensli bir ajandır.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_061',
    question:
        'Lokal anestezik toksisitesine bağlı konvülziyon geliştiğinde ilk tercih edilmesi gereken ilaç hangisidir?',
    options: ['Flumazenil', 'Propofol', 'Fenitoin', 'Midazolam', 'Atropin'],
    correctAnswerIndex: 3,
    explanation:
        'Konvülziyon durumunda benzodiazepinler (özellikle midazolam) tercih edilir. Propofol da verilebilir ancak ilk tercih değildir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_062',
    question: 'Lokal anesteziklerin iyonize formu ne işe yarar?',
    options: [
      'Hücre içine girişi sağlar',
      'Sinir hücresinde enerji üretir',
      'Na⁺ kanalına bağlanarak blok yapar',
      'Hücre zarını geçmesini kolaylaştırır',
      'pH yı düşürür',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Lokal anesteziklerin iyonize formu, hücre içine girdikten sonra sodyum kanalına bağlanarak aksiyon potansiyelini engeller.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_063',
    question: 'Aşağıdakilerden hangisi methemoglobinemi bulgusu olabilir?',
    options: [
      'Hipotansiyon',
      'Siyanoz ve SpO₂ nin %85 te sabitlenmesi',
      'Bradikardi',
      'Ateş',
      'Konvülziyon',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Methemoglobinemide SpO₂ %85 te takılır ve siyanoz görülür → özellikle prilokain gibi ajanlara bağlı olabilir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_064',
    question:
        'Topikal anestezide en sık kullanılan lokal anestezik hangisidir?',
    options: [
      'Bupivakain',
      'Ropivakain',
      'Lidokain',
      'Mepivakain',
      'Prilokain',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Lidokain, hem enjeksiyon hem topikal formda yaygın kullanılan bir ajandır → mukozal yüzeylerde güvenlidir.',
    difficulty: 1,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_065',
    question:
        'Spinal anestezi uygulaması sonrası en sık görülen komplikasyon aşağıdakilerden hangisidir?',
    options: [
      'Bradikardi',
      'Hipotansiyon',
      'Üriner retansiyon',
      'İntrakraniyal kanama',
      'Baş ağrısı',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Spinal anestezide sempatik blok nedeniyle venodilatasyon gelişir → en sık komplikasyon hipotansiyondur.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_066',
    question:
        'Aşağıdaki lokal anesteziklerden hangisi kan-beyin bariyerini en hızlı geçen ajanlardandır?',
    options: ['Prokain', 'Prilokain', 'Bupivakain', 'Lidokain', 'Mepivakain'],
    correctAnswerIndex: 3,
    explanation:
        'Lidokain, yüksek lipofilisite ve düşük pKa sayesinde santral sinir sistemine hızlı geçiş sağlar → toksisite açısından dikkatli olunmalı.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_067',
    question:
        'Aşağıdaki ajanlardan hangisi çocuklarda topikal kullanım için önerilen EMLA kremin içinde bulunur?',
    options: [
      'Lidokain + Prokain',
      'Lidokain + Prilokain',
      'Bupivakain + Lidokain',
      'Mepivakain + Lidokain',
      'Prilokain + Tetrakain',
    ],
    correctAnswerIndex: 1,
    explanation:
        'EMLA krem, Eutectic Mixture of Local Anesthetics anlamına gelir → içeriğinde lidokain + prilokain bulunur.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_068',
    question:
        'Aşağıdakilerden hangisi dural ponksiyon sonrası baş ağrısını azaltmak için en etkili yöntemdir?',
    options: [
      'Yüksek doz steroid verilmesi',
      'Ağızdan hidrasyon',
      'Epidural kan yaması',
      'Parasetamol',
      'Kafeinli içecek verilmesi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Postdural ponksiyon baş ağrısında en etkili tedavi epidural kan yamasıdır → sızan BOS u durdurur.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_069',
    question:
        'Kaudal blok uygulamasında lokal anestezikler hangi seviyede verilir?',
    options: ['L3–L4', 'T12–L1', 'Sakral hiatus', 'Foramen magnum', 'C7–T1'],
    correctAnswerIndex: 2,
    explanation:
        'Kaudal blok, sakrumun alt kısmındaki sakral hiatus üzerinden yapılır → genellikle çocuklarda analjezi için kullanılır.',
    difficulty: 1,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_070',
    question:
        'Aşağıdaki lokal anesteziklerin hangisinin topikal uygulaması sonucu sistemik toksisite gelişme riski en fazladır?',
    options: ['Lidokain', 'Tetrakain', 'Bupivakain', 'Prokain', 'Ropivakain'],
    correctAnswerIndex: 1,
    explanation:
        'Tetrakain, topikal olarak güçlü etkiye sahip ancak yüksek toksisite potansiyeline sahiptir → dikkatli doz ayarı gerekir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_071',
    question:
        'İnfiltrasyon anestezisinde en sık kullanılan lokal anestezik aşağıdakilerden hangisidir?',
    options: ['Ropivakain', 'Lidokain', 'Tetrakain', 'Bupivakain', 'Prilokain'],
    correctAnswerIndex: 1,
    explanation:
        'Lidokain, güvenilirliği, hızlı etkisi ve düşük toksisite riski nedeniyle infiltrasyon anestezisinde en çok tercih edilen ajandır.',
    difficulty: 1,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_072',
    question:
        'İnterkostal blok uygulamasında sistemik toksisite riski neden yüksektir?',
    options: [
      'Sinirlerin myelinsiz olması',
      'Teknik zorluk',
      'Yüksek vaskülarite',
      'Blok başarısızlığı',
      'Sinirlerin yüzeyel yerleşimi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'İnterkostal bölge çok vasküler bir alandır → lokal anesteziğin sistemik emilimi fazladır → toksisite riski yüksektir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_073',
    question: 'Aşağıdaki lokal anesteziklerden hangisi en kısa etkili olandır?',
    options: ['Lidokain', 'Prokain', 'Bupivakain', 'Ropivakain', 'Mepivakain'],
    correctAnswerIndex: 1,
    explanation:
        'Prokain, düşük lipofilisitesi nedeniyle kısa etkili bir lokal anesteziktir → etkisi hızla sonlanır.',
    difficulty: 1,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_074',
    question:
        '"Differential block" (seçici blok) açısından en avantajlı lokal anestezik aşağıdakilerden hangisidir?',
    options: [
      'Prilokain',
      'Ropivakain',
      'Lidokain',
      'Bupivakain',
      'Mepivakain',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Ropivakain, duyusal blok > motor blok özelliği ile seçici blok sağlar → özellikle obstetrik ve ortopedik bloklarda tercih edilir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_075',
    question:
        'Gebelikte lokal anestezik duyarlılığı artar. Bunun en olası nedeni nedir?',
    options: [
      'Plazma hacminin azalması',
      'PKa değerinin artması',
      'Progesteronun sinir hücrelerini stabilize etmesi',
      'Epidural venöz konjesyon',
      'Anesteziklerin metabolizmasının hızlanması',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Gebelikte epidural venöz dolgunluk, spinal boşluğu daraltır → aynı dozda daha yüksek blok oluşur → doz azaltılmalıdır.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_076',
    question:
        'Aşağıdakilerden hangisi lipid emülsiyon tedavisi için önerilen dozdur?',
    options: [
      '0.5 mg/kg/min infüzyon',
      '1 mL/kg bolus + 0.25 mL/kg/dk infüzyon',
      '1.5 mL/kg bolus + 0.25 mL/kg/dk infüzyon',
      '20 mL bolus + 10 mL/dk infüzyon',
      '100 mL bolus + 1 mL/kg/saat',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Intralipid tedavisinde önerilen doz: 1.5 mL/kg IV bolus, ardından 0.25 mL/kg/dk infüzyondur → kardiyotoksisite durumunda kullanılır.',
    difficulty: 3,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_077',
    question: 'Prilokain e bağlı methemoglobinemi geliştiğinde tedavi nedir?',
    options: [
      'Dekzametazon',
      'İnfüzyon sıvısı',
      'Flumazenil',
      'Metilen mavisi',
      'Atropin',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Metilen mavisi, methemoglobini normal hemoglobine çevirir → methemoglobinemi tedavisinde ilk seçenektir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_078',
    question:
        'Aşağıdaki anestezik ajanlardan hangisinin santral sinir sistemi üzerindeki toksik etkisi en hızlı başlar?',
    options: ['Prilokain', 'Bupivakain', 'Lidokain', 'Ropivakain', 'Tetrakain'],
    correctAnswerIndex: 2,
    explanation:
        'Lidokain, hızlı santral penetrasyonuyla erken nörolojik semptomlara (tinnitus, metalik tat, baş dönmesi) neden olabilir.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),

  Question(
    id: 'la_079',
    question:
        'Aşağıdakilerden hangisi lokal anestezik toksisitesini artıran bir faktör değildir?',
    options: [
      'Hipovolemi',
      'Karaciğer yetmezliği',
      'Yaşlılık',
      'Hipoproteinemi',
      'Hipertansiyon',
    ],
    correctAnswerIndex: 4,
    explanation:
        'Hipertansiyon, lokal anestezik toksisitesini artıran bir faktör değildir. Diğerleri ilaç metabolizmasını veya bağlanmasını etkiler.',
    difficulty: 2,
    category: 'Lokal Anestezikler',
  ),
];
