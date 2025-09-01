import '../models/question.dart';

List<Question> erc2021GuidelinesQuestions = [
  Question(
    id: 'erc_001',
    question: 'ERC 2021 kılavuzuna göre, kardiyak arrest tanısında aşağıdakilerden hangisi temel belirteç olarak kullanılmalıdır?',
    options: [
      'Nabız alınamaması',
      'Kalp seslerinin duyulmaması',
      'Solunumun olmaması veya agonal solunum',
      'Deri renginin solması',
      'Bilinç kaybı'
    ],
    correctAnswerIndex: 2,
    explanation: 'ERC 2021 kılavuzu, solunumun olmaması veya agonal solunumun kalp durmasının güvenilir bir işareti olduğunu belirtmiştir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_002',
    question: 'ERC 2021\'e göre kardiyak arrest sırasında ilaç uygulama yolu tercih sıralaması nasıldır?',
    options: [
      'Oral > Subkutan > IV > IO',
      'IV > IO > ET',
      'IO > IV > IM',
      'Subkutan > IV > IO',
      'ET > IO > IV'
    ],
    correctAnswerIndex: 1,
    explanation: 'ERC 2021\'e göre ilaç uygulaması için öncelik IV yoldur. IV bulunamazsa IO tercih edilir. ET (endotrakeal) yolla uygulama güvenilir olmadığı için önerilmez.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_003',
    question: 'Defibrilasyon uygulanması gereken ritimlerden biri aşağıdakilerden hangisidir?',
    options: [
      'Asistol',
      'Nabızlı ventriküler taşikardi',
      'Ventriküler fibrilasyon',
      'Sinüs bradikardisi',
      'Pulseless elektriksel aktivite (PEA)'
    ],
    correctAnswerIndex: 2,
    explanation: 'Defibrilasyon gerektiren ritimler: ventriküler fibrilasyon (VF) ve nabızsız ventriküler taşikardi (VT)\'dir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 1
  ),
  Question(
    id: 'erc_004',
    question: 'ERC 2021\'e göre, adrenalin ilk ne zaman uygulanmalıdır?',
    options: [
      'Her durumda başlangıçta',
      'Nabızlı ritm varsa',
      'Asistol ve PEA\'da hemen',
      'VT/VF\'de ilk defibrilasyondan önce',
      'VT/VF\'de 3. defibrilasyondan sonra'
    ],
    correctAnswerIndex: 2,
    explanation: 'Asistol ve PEA ritminde, adrenalin uygulaması gecikmeden yapılmalıdır.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_005',
    question: 'Resüsitasyon sırasında amiodaron ne zaman verilmelidir?',
    options: [
      'Nabızlı ventriküler taşikardi sırasında',
      'Asistolde',
      '3. defibrilasyondan sonra',
      '1. defibrilasyon öncesinde',
      'VT/VF ritmi sonlandığında'
    ],
    correctAnswerIndex: 2,
    explanation: 'Refrakter VF/VT\'de, 3. defibrilasyondan sonra amiodaron uygulanması ERC kılavuzunda önerilir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_006',
    question: 'Pulseless Elektriksel Aktivite (PEA) ritmi olan bir hastada aşağıdakilerden hangisi öncelikli tedavi yaklaşımıdır?',
    options: [
      'Hemen defibrilasyon',
      'Atropin uygulaması',
      'Hızlı entübasyon',
      'Hızla adrenalin uygulamak',
      'Lidokain infüzyonu başlamak'
    ],
    correctAnswerIndex: 3,
    explanation: 'PEA, şokable olmayan ritimdir. Defibrilasyon değil adrenalin ve altta yatan nedenin hızlı tedavisi önerilir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_007',
    question: 'ERC 2021\'e göre pediatrik temel yaşam desteğinde göğüs kompresyon derinliği aşağıdakilerden hangisidir?',
    options: [
      '1/4 göğüs çapı',
      '1/3 göğüs çapı',
      '4 cm sabit',
      '5 cm sabit',
      '6 cm sabit'
    ],
    correctAnswerIndex: 1,
    explanation: 'Pediatrik CPR\'de göğüs ön-arka çapının yaklaşık 1/3\'ü kadar derinlik önerilir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_008',
    question: 'ROSC (dolaşımın geri dönmesi) sonrası hedef vücut ısısı yönetimi için önerilen sıcaklık aralığı nedir?',
    options: [
      '32–34°C',
      '33–36°C',
      '34–36°C',
      '35–37°C',
      '>38°C'
    ],
    correctAnswerIndex: 1,
    explanation: 'ERC, ROSC sonrası hedeflenen sıcaklık aralığının 33–36°C arasında olmasını önermektedir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_009',
    question: 'ERC 2021\'e göre, yaşam zincirinin dördüncü halkası aşağıdakilerden hangisidir?',
    options: [
      'Temel yaşam desteği',
      'Erken defibrilasyon',
      'İleri yaşam desteği',
      'Hastane sonrası bakım ve rehabilitasyon',
      'Tanı konulması'
    ],
    correctAnswerIndex: 3,
    explanation: 'Yaşam zincirinde son halka hastane sonrası bakım ve nörolojik iyileşmedir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 1
  ),
  Question(
    id: 'erc_010',
    question: 'ERC 2021\'e göre, iki kurtarıcı ile CPR uygulamasında kompresyon-ventilasyon oranı kaçtır?',
    options: [
      '15:1',
      '15:2',
      '30:2',
      '30:1',
      'Sürekli ventilasyon'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hem tek hem çift kurtarıcı ile temel yaşam desteğinde oran 30:2\'dir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 1
  ),
  Question(
    id: 'erc_011',
    question: 'Kardiyak arrest sırasında en güvenilir ROSC göstergesi hangisidir?',
    options: [
      'Spontan solunumun başlaması',
      'Myoklonik seğirme',
      'Pupiller refleksin geri gelmesi',
      'End-tidal CO₂\'nin ani artışı',
      'Göz kırpma'
    ],
    correctAnswerIndex: 3,
    explanation: 'EtCO₂\'nin ani yükselmesi → dolaşımın geri döndüğünün en erken ve güvenilir göstergesidir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_012',
    question: 'ERC 2021\'e göre defibrilasyonun başarısını artıran en önemli faktör aşağıdakilerden hangisidir?',
    options: [
      'Adrenalin öncesi uygulanması',
      'Düşük enerjiyle başlanması',
      'Göğüs kompresyonlarının minimum ara ile yapılması',
      'İntravenöz sıvı yüklemesi',
      'Endotrakeal entübasyon yapılması'
    ],
    correctAnswerIndex: 2,
    explanation: 'Defibrilasyon öncesi ve sonrası CPR\'da ara verilmemesi başarıyı artırır.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_013',
    question: 'ERC\'ye göre temel yaşam desteğinde yapay solunumun zorunlu olduğu durum hangisidir?',
    options: [
      'Kardiyak nedenli arrest',
      'Yetişkin bilinç kaybı',
      'Solunum durması',
      'Gözlem altındaki senkop',
      'Düşük tansiyon'
    ],
    correctAnswerIndex: 2,
    explanation: 'Solunum durmasının eşlik ettiği durumlarda ventilasyon desteği şarttır (örn: boğulma).',
    category: 'ERC 2021 Guidelines',
    difficulty: 1
  ),
  Question(
    id: 'erc_014',
    question: 'Hangi durumda CPR sırasında resüsitasyonun sonlandırılması önerilir?',
    options: [
      'İlk 2 dakika içinde nabız alınamaması',
      '30 dakikalık etkisiz resüsitasyon + ileri yaşam destek yokluğu',
      'CPR sırasında pupiller dilatasyon olması',
      'Adrenalin sonrası yanıt alınamaması',
      'VF\'nin devam etmesi'
    ],
    correctAnswerIndex: 1,
    explanation: 'Etkin CPR\'ye rağmen uzun süre ROSC sağlanamıyorsa, koşullar uygunsa sonlandırılabilir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 3
  ),
  Question(
    id: 'erc_015',
    question: 'Aşağıdakilerden hangisi ROSC sonrası nörolojik değerlendirme için en uygun zamanlamadır?',
    options: [
      'Hemen entübasyon sonrası',
      'İlk 10 dakika içinde',
      'Normotermi sağlandıktan sonra',
      'İlk defibrilasyon sonrası',
      'CPR başlatılmadan önce'
    ],
    correctAnswerIndex: 2,
    explanation: 'Nörolojik değerlendirme güvenilir olması için normotermi sağlandıktan sonra yapılmalıdır.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_016',
    question: 'ERC 2021\'e göre solunum arresti olan bir hastada ilk yapılması gereken işlem nedir?',
    options: [
      'Nabız kontrolü',
      'OED yerleştirme',
      '5 kurtarıcı soluk verme',
      'Defibrilasyon',
      'Entübasyon'
    ],
    correctAnswerIndex: 2,
    explanation: 'Solunum durmasında, hipoksiyi tersine çevirmek için ilk adım 5 etkili kurtarıcı soluktur.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_017',
    question: 'ERC 2021\'e göre defibrilasyonda biphasic şok enerjisi kaç joule ile başlar?',
    options: [
      '50 J',
      '70 J',
      '100 J',
      '120–200 J',
      '360 J'
    ],
    correctAnswerIndex: 3,
    explanation: 'Modern biphasic defibrilatörlerde başlangıç dozu genellikle 120–200 joule\'dür.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_018',
    question: 'ERC 2021\'e göre CPR esnasında solunum yolu obstrüksiyonundan şüpheleniliyorsa ilk adım nedir?',
    options: [
      'Entübasyon',
      'Heimlich manevrası',
      '2 kurtarıcı soluk',
      'Sırtına vurma',
      'Ağız içi kontrolü ve temizleme'
    ],
    correctAnswerIndex: 4,
    explanation: 'Yabancı cisim varsa, ağız görsel olarak kontrol edilmeli ve varsa temizlenmelidir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_019',
    question: 'ERC 2021\'e göre ROSC sonrası hedef ortalama arter basıncı (MAP) ne olmalıdır?',
    options: [
      '<50 mmHg',
      '50–60 mmHg',
      '65–70 mmHg',
      '≥75 mmHg',
      '>100 mmHg'
    ],
    correctAnswerIndex: 3,
    explanation: 'ROSC sonrası hedef MAP ≥75 mmHg olacak şekilde sıvı ve gerekirse vazopressör ile desteklenmelidir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_020',
    question: 'Aşağıdakilerden hangisi defibrilasyon uygulanmayan bir ritimdir?',
    options: [
      'Ventriküler fibrilasyon',
      'Nabızsız ventriküler taşikardi',
      'Pulseless elektriksel aktivite (PEA)',
      'Torsades de pointes',
      'VF ile seyreden arrest'
    ],
    correctAnswerIndex: 2,
    explanation: 'PEA, defibrilasyon endikasyonu olmayan bir arrest ritmidir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 1
  ),
  Question(
    id: 'erc_021',
    question: 'Aşağıdakilerden hangisi ROSC sonrası soğutma (hedefli sıcaklık) uygulaması için doğrudur?',
    options: [
      'Vücut sıcaklığı <32°C\'ye indirilmelidir',
      '24 saat boyunca 33–36°C aralığında tutulmalıdır',
      'İlk 6 saat içinde mutlaka yapılmalı',
      'Sadece entübeli hastalarda uygulanır',
      'Nörolojik hasarı artırır'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hedef sıcaklık 33–36°C aralığında olacak şekilde 24 saat sürdürülmelidir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_022',
    question: 'ERC 2021\'e göre pediatrik CPR sırasında adrenalin hangi sıklıkla verilir?',
    options: [
      'Her 2 dakikada bir',
      'Her 3–5 dakikada bir',
      'Her 10 dakikada bir',
      'Yalnızca başlangıçta',
      'VT/VF sonrası'
    ],
    correctAnswerIndex: 1,
    explanation: 'Tıpkı erişkinlerde olduğu gibi, her 3–5 dakikada bir adrenalin uygulanması önerilir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_023',
    question: 'ERC\'ye göre resüsitasyon sırasında hastanın tüylerinin fazla olması durumunda ne yapılmalıdır?',
    options: [
      'OED uygulanmamalı',
      'Jeli fazla sürmek gerekir',
      'Tüyler tıraş edilmelidir',
      'Pedler ters yöne takılmalı',
      'Manuel defibrilatör kullanılmalı'
    ],
    correctAnswerIndex: 2,
    explanation: 'Tüyler pedlerin cilde temasını engeller; bu nedenle tıraş edilmelidir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 1
  ),
  Question(
    id: 'erc_024',
    question: 'ERC 2021\'e göre temel yaşam desteği eğitiminde hangi öğrenme yöntemi daha etkilidir?',
    options: [
      'Yazılı sınav',
      'Canlı model gösterisi',
      'Video yardımlı simülasyon',
      'Sadece teorik ders',
      'Grup tartışması'
    ],
    correctAnswerIndex: 2,
    explanation: 'Video yardımlı uygulama ve geribildirim eğitimin etkisini artırır.',
    category: 'ERC 2021 Guidelines',
    difficulty: 1
  ),
  Question(
    id: 'erc_025',
    question: '"4 I" modelinde, öğrenme sürecinde eğitim teorileri ve nasıl öğrendiğimiz ile ilgili bileşen aşağıdakilerden hangisidir?',
    options: [
      'Inquiry',
      'Implement',
      'Idea',
      'Impact',
      'Insight'
    ],
    correctAnswerIndex: 2,
    explanation: '"4 I" modeli sırasıyla: Idea: Eğitim teorileri ve öğrenme temelleri, Inquiry: Araştırma ve bilgi üretimi, Implement: Uygulama, Impact: Sonuç ve etki değerlendirmesi',
    category: 'ERC 2021 Guidelines',
    difficulty: 3
  ),
  Question(
    id: 'erc_026',
    question: 'Bilinç kaybı olmayan ve öksürme yetisi yerinde olan kişide yabancı cisimle hava yolu tıkanıklığında ilk yaklaşım nedir?',
    options: [
      'Abdominal bası',
      'Magill forsepsi ile çıkarma',
      '5 sırta darbe',
      'Derhal KPR',
      'Öksürmeye teşvik'
    ],
    correctAnswerIndex: 4,
    explanation: 'Etkili öksürük varsa, bu doğal bir yabancı cisim çıkarma yöntemidir. Müdahale öksürük etkisiz hale gelirse yapılır.',
    category: 'ERC 2021 Guidelines',
    difficulty: 1
  ),
  Question(
    id: 'erc_027',
    question: 'ERC 2021\'e göre şoklanabilir ritmde adrenalin NE ZAMAN uygulanmalıdır?',
    options: [
      'Hemen ritim analizinden sonra',
      'İlk şoktan önce',
      'Üç şoktan sonra',
      'Her 2 dakikada bir',
      'Şok verilmeyen ritmlerde'
    ],
    correctAnswerIndex: 2,
    explanation: 'Şoklanabilir ritmlerde adrenalin üç şok sonrası verilmelidir. Bu, ilk dakikalarda defibrilasyonun etkisinin korunması içindir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_028',
    question: 'Anafilaksi şüphesi olan bir kişide aşağıdaki uygulamalardan hangisi YANLIŞTIR?',
    options: [
      'Adrenalin kas içine uygulanmalıdır',
      'Semptomlar devam ederse 5 dakikada ikinci doz uygulanabilir',
      'Hasta yatar pozisyona alınmalıdır',
      'İlk olarak antihistaminik verilmelidir',
      '112 acil yardım çağrısı yapılmalıdır'
    ],
    correctAnswerIndex: 3,
    explanation: 'Anafilakside ilk basamak tedavi IM adrenalindir. Antihistaminikler yardımcı olabilir ama gecikmiş etkileri vardır ve öncelikli değildir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_029',
    question: 'Refrakter VF (ventriküler fibrilasyon) tanımına göre aşağıdakilerden hangisi doğrudur?',
    options: [
      'İlk şoktan sonra VF devam ediyorsa',
      '2 şok sonrası sinüs ritmine geçmeyen VF',
      '3 veya daha fazla şokla düzelmeyen VF',
      '5 dakikadan uzun süren VF',
      'Nabızsız VT ile birlikte görülen VF'
    ],
    correctAnswerIndex: 2,
    explanation: 'Refrakter VF, en az üç ardışık şoka rağmen devam eden VF durumudur. Bu durumda alternatif ped pozisyonu, amiodaron, ikili defibrilasyon gibi stratejiler önerilebilir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 3
  ),
  Question(
    id: 'erc_030',
    question: 'Aşağıdaki ifadelerden hangisi ERC 2021 kılavuzuna göre sağlık çalışanlarına yönelik TYD eğitim programları için YANLIŞTIR?',
    options: [
      'Geri bildirim cihazları eğitim sırasında kullanılabilir',
      'Kurs içeriği vaka bazlı senaryolarla zenginleştirilmelidir',
      'Eğitmen deneyimi, öğrenme kalitesi üzerinde etkilidir',
      'Tüm sağlık çalışanlarının endotrakeal entübasyon öğrenmesi beklenir',
      'Eğitimin klinik sonuçlara etkisi değerlendirilmelidir'
    ],
    correctAnswerIndex: 3,
    explanation: 'Tüm sağlık çalışanlarından ileri hava yolu uygulamaları beklenmez. Bu beceriler yalnızca belirli meslek gruplarına yöneliktir (örn. anestezi, acil).',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_031',
    question: 'Kırsal bir bölgede bilinç kaybı yaşayan ve muhtemel sıcak çarpması tanısı olan bir hastaya yaklaşımda aşağıdakilerden hangisi ERC\'ye göre en etkili soğutma yöntemidir?',
    options: [
      'Boyun, koltuk altı ve kasıklara buz torbası koymak',
      'Gölgeye almak ve üzerine soğuk su dökmek',
      'Soğuk hava ile yüzeysel soğutma',
      '1–2°C\'lik suya tam vücut daldırma',
      'Oda sıcaklığında sıvı takviyesi sağlamak'
    ],
    correctAnswerIndex: 3,
    explanation: 'ERC, aktif soğutma için en etkili yöntemin soğuk suya tam vücut daldırma olduğunu belirtir. Bu yöntem çekirdek sıcaklığı hızla düşürür.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_032',
    question: 'Aşağıdakilerden hangisi göğüs kompresyonu kalitesini doğrudan artırmak için önerilmez?',
    options: [
      'Göğüs kompresyonuna ara vermeden devam etmek',
      'Kompresyonlar arasında göğsün tam geri gelmesine izin vermek',
      'Metronom eşliğinde ritim sağlamak',
      'Her 60 saniyede bir ritim kontrolü yapmak',
      'Kompresyon derinliğini 5–6 cm arasında tutmak'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ritim kontrolü sadece 2 dakikada bir yapılmalı, bu sırada kompresyona ara verilmelidir. Sık kontrol zaman kaybı yaratır ve KPR kalitesini düşürür.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_033',
    question: 'KPR sırasında 2. dakikada 3. şok uygulanmış, VF devam eden bir hastada ERC 2021\'e göre sonraki en uygun adım nedir?',
    options: [
      'Adrenalin uygulamak',
      'Kompresyona 30 saniye ara verip ritim tekrar kontrol etmek',
      'Lidokain vermek',
      'Endotrakeal entübasyon yapmak',
      'Nabız tekrar kontrolü yapmak'
    ],
    correctAnswerIndex: 0,
    explanation: 'ERC\'ye göre şoklanabilir ritimlerde adrenalin 3. şoktan sonra şoklanamayan ritimlerde en erken dönemde verilir. Amiodaron ise yine 3 ve 5. şoktan sonra önerilir. Kompresyona ara verilmemelidir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_034',
    question: 'Kardiyak arrest gelişme ihtimali olan hastaların erken tanınmasını kolaylaştırmak için ERC 2021 kılavuzuna göre hangisi önerilmez?',
    options: [
      'Vital bulguların sürekli monitörizasyonu',
      'Mobil hızlı müdahale ekiplerinin oluşturulması',
      'Hastaların kendi durumunu tanımasına yönelik eğitim',
      'Dökümante edilen erken uyarı skorlarının kullanılması',
      'Multidisipliner işbirliğinin teşvik edilmesi'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hasta eğitimi önemlidir ancak arresti önlemek için organizasyonel önlemler (erken uyarı sistemleri, ekip koordinasyonu) esas önerilerdir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_035',
    question: 'Acil çağrı numarası olarak ERC 2021 tarafından Avrupa\'da hastane içi acil durumlar için önerilen standart numara aşağıdakilerden hangisidir?',
    options: [
      '999',
      '111',
      '1221',
      '2222',
      '1919'
    ],
    correctAnswerIndex: 3,
    explanation: 'ERC, Avrupa\'daki hastaneler için 2222 numarasının kullanılmasını standartlaştırmayı önermektedir. Bu sayede ekipler hızlı organize olabilir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 1
  ),
  Question(
    id: 'erc_036',
    question: 'COVID-19 pozitif şüphesi olan bir hastaya TYD uygulayacak sağlık dışı bir birey için ERC\'nin önerdiği uygulama nedir?',
    options: [
      'KPR yapılmamalı',
      'Sadece ventilasyon uygulanmalı',
      'Tam kişisel koruyucu donanım ile yaklaşılmalı',
      'Göğüs kompresyonları yapılabilir, ancak soluk verilmemeli',
      'Şok uygulanmadan önce onay alınmalı'
    ],
    correctAnswerIndex: 3,
    explanation: 'ERC, pandemide halktan kurtarıcılara sadece göğüs kompresyonu yapmalarını önermiştir. Bu, enfeksiyon riskini azaltmak için alınan bir önlemdir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_037',
    question: 'ERC 2021 kılavuzuna göre yapay zeka destekli teknolojiler hangi durumda doğrudan katkı sağlayabilir?',
    options: [
      'VF tanısı koyma',
      'Endotrakeal entübasyon yapma',
      'OED pedlerini yapıştırma',
      'Agonal solunumu otomatik tanıma',
      'Nabız kontrolünü otomatikleştirme'
    ],
    correctAnswerIndex: 3,
    explanation: 'Agonal solunum tanısında AI (yapay zeka) destekli ses analiz sistemleri umut verici bulunmuştur. Bu sistemler, erken tanı ve otomatik alarm verebilir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 3
  ),
  Question(
    id: 'erc_038',
    question: 'Açık göğüs yaralanmalarında ilkyardım sağlayıcısının uygulaması gereken yaklaşım aşağıdakilerden hangisidir?',
    options: [
      'Yara ağzı tamamen kapatılmalı',
      'Gazlı bezle sargı sarılmalı',
      '3 kenarı açık kalacak şekilde hava geçirmez kapatma yapılmalı',
      'Turnike uygulanmalı',
      'Yan yatırma pozisyonu verilmeli'
    ],
    correctAnswerIndex: 2,
    explanation: 'Açık göğüs yaralarında hava kapanıp basınç artışı olmasın diye yara üç kenarı yapışkan, bir kenarı açık bırakılan hava geçirmez materyalle kapatılmalıdır.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_039',
    question: 'İleri yaşam desteği sırasında uygulanan ilaçlardan hangisi defibrilasyon öncesi değil, sonrası kullanılmalıdır?',
    options: [
      'Adrenalin',
      'Amiodaron',
      'Lidokain',
      'Atropin',
      'Magnezyum'
    ],
    correctAnswerIndex: 1,
    explanation: 'Amiodaron, 3. şok sonrası kullanılan antiaritmiktir. Defibrilasyon öncesinde değil, şok girişiminden sonra uygulanır.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_040',
    question: 'Pandemi koşullarında OED uygulamasıyla ilgili ERC 2021 önerilerinden hangisi doğrudur?',
    options: [
      'OED kullanımından kaçınılmalıdır',
      'Ritim analizi sırasında maskesiz temas edilebilir',
      'OED kullanımı sadece sağlık çalışanına bırakılmalıdır',
      'Şok verme işlemi aerosol üretmediği için güvenlidir',
      'Şok sonrası ventilasyon mutlaka yapılmalıdır'
    ],
    correctAnswerIndex: 3,
    explanation: 'ERC, defibrilasyonun aerosol üretmediğini ve halktan kurtarıcılar tarafından güvenle uygulanabileceğini belirtmiştir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_041',
    question: 'Aşağıdakilerden hangisi PEA nedenleri arasında değildir?',
    options: [
      'Hipoksi',
      'Tansiyon pnömotoraks',
      'Hiperkalemi',
      'Anterior MI',
      'Kardiyak tamponad'
    ],
    correctAnswerIndex: 3,
    explanation: 'Anterior MI PEA\'ye yol açabilir ama klasik "5H-5T" listesinde yer almaz. Liste dışıdır ve spesifik tanı gerektirir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 3
  ),
  Question(
    id: 'erc_042',
    question: 'Dual defibrilasyonun (ikili defibrilatörle şok) kullanım amacı aşağıdakilerden hangisidir?',
    options: [
      'Daha az enerjiyle şok vermek',
      'İlk şokun yerini almak',
      'Refrakter VF\'yi sonlandırmak',
      'Asistoli tedavisinde kullanmak',
      'PEA ritminde başarıyı artırmak'
    ],
    correctAnswerIndex: 2,
    explanation: 'Refrakter VF olgularında dual sequential defibrillation (DSD) uygulaması alternatif bir strateji olarak kullanılabilir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 3
  ),
  Question(
    id: 'erc_043',
    question: 'ERC 2021 kılavuzuna göre, kurtarıcıya yönelik güvenlik önlemleriyle ilgili aşağıdaki ifadelerden hangisi doğrudur?',
    options: [
      'Şok sırasında hastaya temas etmek risk oluşturmaz',
      'KPR uygulayan kişi göğüs fraktüründen sorumlu tutulur',
      'KPR sırasında kurtarıcıların güvenliği hasta güvenliğinden önceliklidir',
      'OED kullanımı yalnızca sağlık personeline bırakılmalıdır',
      'Kurtarıcının kimliği açıklanmalıdır'
    ],
    correctAnswerIndex: 2,
    explanation: 'ERC açıkça belirtir: "Kurtarıcının güvenliği birinci önceliktir." KPR uygulayan kişi, doğru uygulama yaptıysa yasal sorumluluk taşımaz.',
    category: 'ERC 2021 Guidelines',
    difficulty: 1
  ),
  Question(
    id: 'erc_044',
    question: 'ERC 2021\'e göre CPR sırasında en iyi sonuç için kompresyon ve gevşeme oranı nasıl olmalıdır?',
    options: [
      'Kompresyon süresi uzun tutulmalı',
      'Gevşeme hızlı geçilmeli',
      'Kompresyon ve gevşeme süresi eşit olmalı',
      'Gevşeme süresi yok sayılmalı',
      'Rastgele yapılmalı'
    ],
    correctAnswerIndex: 2,
    explanation: 'Kompresyon ve gevşeme süreleri eşit olmalı, kalp yeterince dolabilmelidir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_045',
    question: 'ERC 2021\'e göre, tanıklı olmayan arrestlerde OED kullanılmadan önce yapılması gereken ilk işlem nedir?',
    options: [
      '5 dakika CPR',
      'Hemen OED takmak',
      '2 kez ventilasyon',
      '1 dakika bekleme',
      'Yardım çağırmak ve CPR başlamak'
    ],
    correctAnswerIndex: 4,
    explanation: 'Tanıklı olmayan arrestte ilk yapılacak şey yardım çağırmak ve CPR başlatmaktır.',
    category: 'ERC 2021 Guidelines',
    difficulty: 1
  ),
  Question(
    id: 'erc_046',
    question: 'Pediatrik hastada CPR sırasında her iki kurtarıcı mevcutsa önerilen kompresyon-ventilasyon oranı nedir?',
    options: [
      '15:2',
      '30:2',
      '5:1',
      '10:2',
      '3:1'
    ],
    correctAnswerIndex: 0,
    explanation: 'Pediatrik CPR\'de iki kurtarıcı varsa 15:2 oranı önerilir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_047',
    question: 'ERC 2021\'e göre, CPR sırasında kurtarıcılar arasında rol değişimi kaç dakikada bir önerilir?',
    options: [
      'Her 30 saniyede',
      '1 dakikada',
      '2 dakikada',
      '5 dakikada',
      '10 dakikada'
    ],
    correctAnswerIndex: 2,
    explanation: 'Yorulmayı önlemek ve kaliteyi korumak için kurtarıcılar her 2 dakikada bir değiştirilmelidir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 1
  ),
  Question(
    id: 'erc_048',
    question: 'Kardiyak arrest sırasında ventriküler fibrilasyon devamlıyorsa 3. defibrilasyondan sonra hangi antiaritmik tercih edilir?',
    options: [
      'Lidokain',
      'Atropin',
      'Adenozin',
      'Amiodaron',
      'Digoksin'
    ],
    correctAnswerIndex: 3,
    explanation: 'Refrakter VF/VT durumlarında 3. defibrilasyondan sonra amiodaron verilir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_049',
    question: 'ERC 2021 kılavuzuna göre boğulma kaynaklı arrestlerde ilk yaklaşım nasıldır?',
    options: [
      'Defibrilasyon',
      'CPR\'ye hemen başlamak',
      '5 kurtarıcı soluk vermek',
      'Sadece kompresyon',
      'IV sıvı başlamak'
    ],
    correctAnswerIndex: 2,
    explanation: 'Boğulma gibi hipoksemik nedenli arrestlerde 5 kurtarıcı solukla başlanması önerilir.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
  Question(
    id: 'erc_050',
    question: 'ERC 2021\'e göre travma kaynaklı arrestlerde hangi müdahale önceliklidir?',
    options: [
      'Kraniotomi',
      'Göğüs drenajı',
      'Hava yolunun açılması ve oksijenizasyon',
      'Defibrilasyon',
      'Adenozin uygulaması'
    ],
    correctAnswerIndex: 2,
    explanation: 'Travmatik arrestlerde en öncelikli yaklaşım hava yolu ve oksijenizasyonun sağlanmasıdır.',
    category: 'ERC 2021 Guidelines',
    difficulty: 2
  ),
];