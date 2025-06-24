import '../models/question.dart';

final List<Question> respiratoryPhysiologyQuestions = [
  Question(
    question: 'Aşağıdakilerden hangisi alveoler ventilasyonu artırır?',
    options: [
      'Ölü boşluk artışı',
      'Tidal volüm artışı',
      'Solunum sayısının azalması',
      'Hipoventilasyon',
      'Anemi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Alveoler ventilasyon = (Tidal volüm – ölü boşluk) × solunum sayısı. Tidal volüm artarsa alveollere ulaşan hava miktarı da artar.',
  ),
  Question(
    question: 'Aşağıdakilerden hangisi pulmoner shunt ile karakterizedir?',
    options: [
      'Havalanmayan ama perfüze edilen alan',
      'Hem havalanan hem perfüze edilen alan',
      'Ne havalanan ne perfüze edilen alan',
      'Ölü boşluk ventilasyonu',
      'Hiperbarik oksijen uygulanması',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Shunt, kanın oksijenlenmeden akciğerden geçmesidir → alveoller havalanmaz ama perfüze edilir.',
  ),
  Question(
    question:
        'Anestezi sırasında hipoventilasyonun en erken göstergesi aşağıdakilerden hangisidir?',
    options: [
      'SpO₂ düşüşü',
      'Nabız artışı',
      'ETCO₂ artışı',
      'Kan basıncında azalma',
      'Vücut ısısının düşmesi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Hipoventilasyon, CO₂ birikimine yol açar → ilk belirti ETCO₂ artışıdır.',
  ),
  Question(
    question: 'Normal akciğerlerde ventilasyon/perfüzyon (V/Q) oranı kaçtır?',
    options: ['0.8', '1.0', '1.2', '0.5', '1.5'],
    correctAnswerIndex: 0,
    explanation:
        'Alveoler ventilasyon (VA) 4 L/dk, pulmoner kan akımı (Q) 5 L/dk → V/Q = 4/5 = 0.8. Apikal bölgede >3, bazalde <0.6',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi anestezi altında FRC (fonksiyonel rezidüel kapasite)\'yi azaltır?',
    options: [
      'Yatar pozisyon',
      'İnspire edilen oksijenin artırılması',
      'Solunum sayısının artırılması',
      'Nöromüsküler blokaj uygulanması',
      'Karbondioksit seviyesinin artması',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Nöromüsküler blokaj, solunum kaslarını felç eder → akciğerin elastik gerilimi azalır → FRC düşer.',
  ),
  Question(
    question: 'Aşağıdakilerden hangisi V/Q oranı 0 olan bir duruma örnektir?',
    options: ['Astım', 'Pulmoner emboli', 'Atelektazi', 'Emfizem', 'Fibrozis'],
    correctAnswerIndex: 2,
    explanation:
        'Atelektazide alveol havalanmaz ama perfüzyon devam eder → V/Q = 0 yani shunt.',
  ),
  Question(
    question:
        'Aşağıdaki değişikliklerden hangisi arteriyel oksijen saturasyonunu düşürmeden PaO₂\'yi artırabilir?',
    options: [
      'FiO₂\'nin artırılması',
      'PEEP\'in azaltılması',
      'V/Q dengesizliğinin artırılması',
      'Hiperventilasyon',
      'İnspire edilen karbondioksitin artırılması',
    ],
    correctAnswerIndex: 0,
    explanation:
        'FiO₂ artırılırsa, alveoler oksijen basıncı ve dolayısıyla PaO₂ artar. Saturasyon zaten %95-100 arasında sabitse PaO₂ artışı bu değeri değiştirmez.',
  ),
  Question(
    question: 'Oksijen disosiasyon eğrisini sağa kaydıran durum hangisidir?',
    options: [
      'pH artışı',
      'CO₂ azalması',
      'Hipotermi',
      '2,3-BPG artışı',
      'Karbonmonoksit zehirlenmesi',
    ],
    correctAnswerIndex: 3,
    explanation:
        '2,3-BPG artışı, hemoglobinin oksijene afinitesini azaltır → oksijen daha kolay serbest bırakılır → eğri sağa kayar.',
  ),
  Question(
    question: 'FRC (fonksiyonel rezidüel kapasite) hangi durumda azalır?',
    options: [
      'Genel anestezi indüksiyonu',
      'Ayakta durma',
      'Erkek cinsiyet',
      'Uzun boy',
      'Astım',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Anestezi ile FRC %20 azalır → atelektazi riski. Erkeklerde kadınlardan, uzun boylularda daha yüksektir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi PEEP uygulamasının etkilerinden biri değildir?',
    options: [
      'Alveol kollapsının engellenmesi',
      'FRC\'nin artırılması',
      'Oksijenasyonun iyileştirilmesi',
      'Pulmoner vasküler dirençte azalma',
      'V/Q oranının düzelmesi',
    ],
    correctAnswerIndex: 3,
    explanation:
        'PEEP, alveolleri açık tutar ama intratorasik basıncı artırarak pulmoner vasküler direnci artırabilir.',
  ),
  Question(
    question: 'Karbon dioksitin (CO₂) kanda en yaygın taşınma şekli nedir?',
    options: [
      'Bikarbonat (HCO₃⁻) olarak',
      'Karbaminohemoglobin',
      'Çözünmüş gaz',
      'Karbonik asit',
      'Karboksihemoglobin',
    ],
    correctAnswerIndex: 0,
    explanation:
        '%70\'i HCO₃⁻, %23\'ü Hb-CO₂, %7\'si çözünmüş halde. CO₂ + H₂O ↔ H₂CO₃ ↔ H⁺ + HCO₃⁻ reaksiyonu eritrositlerde hızlanır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi komplemanter olarak FRC\'yi artıran bir anestezi uygulamasıdır?',
    options: [
      'Sırtüstü pozisyon',
      'Derin sedasyon',
      'PEEP uygulaması',
      'Nöromüsküler blokaj',
      'Yüksek FiO₂',
    ],
    correctAnswerIndex: 2,
    explanation:
        'PEEP (pozitif end-ekspiratuvar basınç), alveolleri açık tutarak fonksiyonel rezidüel kapasiteyi (FRC)artırır.',
  ),
  Question(
    question: 'Hiperkapni, aşağıdakilerden hangisiyle sonuçlanmaz?',
    options: [
      'Vazodilatasyon',
      'Serebral kan akımında artış',
      'Respiratuvar alkaloz',
      'Solunum stimülasyonu',
      'Kafa içi basınçta artış',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Hiperkapni, CO₂ birikimi sonucu respiratuvar asidoz oluşturur, alkaloz değil.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi anestezi sırasında ventilasyonun en iyi göstergesi olarak kabul edilir?',
    options: ['PaO₂', 'SpO₂', 'ETCO₂', 'Solunum sayısı', 'Tidal volüm'],
    correctAnswerIndex: 2,
    explanation:
        'ETCO₂, akciğerden atılan CO₂ düzeyini gösterir → ventilasyonun etkinliğini en iyi yansıtan parametredir.',
  ),
  Question(
    question:
        'İnspire edilen oksijenin %100 olması durumunda azotun yerini alması sonucu gelişen atelektaziye ne ad verilir?',
    options: [
      'Absorpsiyon atelektazisi',
      'Kompresyon atelektazisi',
      'Traksiyon atelektazisi',
      'Obstrüktif atelektazi',
      'İmmobilizasyon atelektazisi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Absorpsiyon atelektazisi, yüksek FiO₂ altında azotun yerini oksijen alması ve hızla emilmesi ile oluşur → alveoller kollabe olur.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi CO₂\'nin alveoller ve kılcal damarlar arasında serbestçe difüze olabilmesini açıklar?',
    options: [
      'CO₂\'nin pH\'ya etkisi',
      'CO₂\'nin oksijenle yarışması',
      'CO₂\'nin suda çözünürlüğünün fazla olması',
      'CO₂\'nin hemoglobine bağlanma yeteneği',
      'PaO₂\'nin sabit olması',
    ],
    correctAnswerIndex: 2,
    explanation:
        'CO₂, O₂\'den yaklaşık 20 kat daha suda çözünür olduğu için difüzyon kapasitesi yüksektir.',
  ),
  Question(
    question:
        'Hipoksik pulmoner vazokonstriksiyon (HPV) hangi PaO₂\'de başlar?',
    options: ['<60 mmHg', '<80 mmHg', '<100 mmHg', '<40 mmHg', '<20 mmHg'],
    correctAnswerIndex: 0,
    explanation:
        'Alveoler hipokside pulmoner arterioler vazokonstriksiyon ile V/Q uyumu sağlanır. İnhalasyon anestezikleri HPV\'yi inhibe eder.',
  ),
  Question(
    question:
        'Bohr formülü aşağıdaki değerlerden hangisini hesaplamak için kullanılır?',
    options: [
      'Arteriyel oksijen basıncı',
      'Alveoler oksijen basıncı',
      'Ölü boşluk hacmi',
      'Tidal volüm',
      'Ventilasyon-perfüzyon oranı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Bohr denklemi, ölen boşluk (dead space) miktarını belirlemede kullanılır → PaCO₂ ile ETCO₂ farkınadayanır.',
  ),
  Question(
    question:
        'Normal şartlarda dokulara oksijen sunumunu (DO₂) en çok belirleyen faktör nedir?',
    options: [
      'Kardiyak output',
      'Hemoglobin konsantrasyonu',
      'PaO₂',
      'Arteriyel oksijen satürasyonu',
      '2,3-DPG düzeyi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'DO₂ = CO × (Hb × 1.34 × SaO₂ + 0.003 × PaO₂). CO azalması DO₂\'yi en çok etkiler.',
  ),
  Question(
    question: 'Hangisi pulmoner vasküler direnci (PVR) artırır?',
    options: [
      'Hipoksi',
      'Asetilkolin',
      'Nitrik oksit',
      'Prostasiklin',
      'Alkaloz',
    ],
    correctAnswerIndex: 0,
    explanation:
        'HPV ile PVR artar. NO, prostasiklin ve asetilkolin vazodilatördür. PVR = (PAP - PCWP)/CO formülü ile hesaplanır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi anestezi sırasında FRC\'nin azalmasına bağlı olarak daha kolay gelişir?',
    options: [
      'Hiperventilasyon',
      'Atelektazi',
      'Respiratuvar alkaloz',
      'Metabolik asidoz',
      'Hipotermi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'FRC azalırsa, alveollerin kapanma eşiği artar → kollaps riski yükselir → atelektazi gelişir.',
  ),
  Question(
    question:
        'Oksijen disosiasyon eğrisini sola kaydıran faktör aşağıdakilerden hangisidir?',
    options: [
      'Artmış pCO₂',
      'Düşük pH',
      'Artmış 2,3-BPG',
      'Hipotermi',
      'Egzersiz',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Hipotermi, hemoglobinin oksijene afinitesini artırır → oksijen bırakma zorlaşır → eğri sola kayar.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi alveol hipoventilasyonu ile doğrudan ilişkilidir?',
    options: [
      'PaO₂ artışı',
      'PaCO₂ düşüklüğü',
      'Respiratuvar alkaloz',
      'ETCO₂ yükselmesi',
      'Hiperventilasyon',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Hipoventilasyonda, CO₂ atılamaz → ETCO₂ artar, bu en erken fark edilen değişikliktir.',
  ),
  Question(
    question:
        'Ventilasyon-perfüzyon (V/Q) oranının sonsuz olduğu bir durumda aşağıdakilerden hangisi doğrudur?',
    options: [
      'Yalnızca havalanma var, perfüzyon yok',
      'Yalnızca perfüzyon var, havalanma yok',
      'Ne havalanma ne perfüzyon var',
      'Hem havalanma hem perfüzyon var',
      'V/Q oranı 1\'e yakındır',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Pulmoner emboli gibi durumlarda, alveoller havalanır ama perfüzyon olmaz → V/Q oranı sonsuz.',
  ),
  Question(
    question:
        'Anestezi altında alveoler gaz değişimini en iyi temsil eden parametre hangisidir?',
    options: ['SpO₂', 'PaCO₂', 'PaO₂', 'ETCO₂', 'FRC'],
    correctAnswerIndex: 1,
    explanation:
        'PaCO₂, alveoler ventilasyonun doğrudan göstergesidir ve gaz değişimiyle yakından ilişkilidir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi diffüzyon kusuruna bağlı hipoksemiye örnektir?',
    options: [
      'Pulmoner emboli',
      'Pnömoni',
      'İnterstisyel akciğer hastalığı',
      'Atelektazi',
      'Üst hava yolu obstrüksiyonu',
    ],
    correctAnswerIndex: 2,
    explanation:
        'İnterstisyel fibrozis gibi durumlarda, alveol-kapiller membranda kalınlaşma olur → gaz diffüzyonu bozulur.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi yüksek akım oksijen uygulamasının risklerinden biridir?',
    options: [
      'Hipokapni',
      'Hipotermi',
      'Absorpsiyon atelektazisi',
      'Metabolik asidoz',
      'Hiponatremi',
    ],
    correctAnswerIndex: 2,
    explanation:
        '%100 O₂ ile uzun süreli ventilasyon, alveollerdeki azotu ortadan kaldırır → oksijen emilince alveol çöker→ atelektazi gelişir.',
  ),
  Question(
    question: 'Hangisi ölü boşluk (VD/VT) artışına neden olmaz?',
    options: [
      'Yüksek tidal volüm ventilasyon',
      'Pulmoner emboli',
      'Hipovolemi',
      'PEEP uygulanması',
      'KOAH',
    ],
    correctAnswerIndex: 0,
    explanation:
        'VD/VT = (PaCO₂ - PECO₂)/PaCO₂. Normalde 0.3\'dür. PEEP ve emboli perfüzyonu bozarak ölü boşluğu artırır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi oksijenin alveollere geçişinde etkili değildir?',
    options: [
      'Alveol-kapiller membran kalınlığı',
      'Difüzyon yüzeyi',
      'Hemoglobin düzeyi',
      'Parsiyel basınç gradyanı',
      'Solunum hızı',
    ],
    correctAnswerIndex: 4,
    explanation:
        'Solunum hızı, alveol oksijen basıncını etkiler ama geçiş hızını belirlemez. Difüzyon, membran özelliklerine bağlıdır.',
  ),
  Question(
    question: 'Hangisi intraoperatif hipokseminin en sık nedenidir?',
    options: [
      'Atelektazi',
      'Bronkospazm',
      'Pnömotoraks',
      'Pulmoner ödem',
      'Hava embolisi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Anestezi alan hastaların %90\'ında gelişir. En sık bağımlı akciğer segmentlerinde görülür.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi PaO₂\'nin düşmesine rağmen SpO₂\'nin sabit kalabileceği bir durumu açıklar?',
    options: [
      'Metabolik alkaloz',
      'PaCO₂ artışı',
      'Hemoglobin doygunluğunun plato evresinde olması',
      'Hipervolemi',
      'Hiperkalemi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Oksijen disosiasyon eğrisinin plato kısmında, PaO₂ düşse bile SpO₂ uzun süre sabit kalabilir. Bu nedenle SpO₂ düşüşü geç belirti olabilir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi shunt tipi hipoksemide oksijen tedavisine cevabın az olmasının nedeni olabilir?',
    options: [
      'Perfüzyonun artması',
      'Havalanmanın artması',
      'Shunt edilen kana oksijen ulaşamaması',
      'Hemoglobin satürasyonunun artması',
      'pH yükselmesi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Shunt durumunda, oksijen alveollere ulaşsa da oraya gelen kana karışmaz, çünkü kan alveolden geçmeden sistemik dolaşıma döner.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi periferik kemoreseptörleri stimüle ederek solunumu artırır?',
    options: [
      'Hiperkalemi',
      'Hipertermi',
      'Hipoksemi',
      'Hipoglisemi',
      'Yüksek hematokrit',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Periferik kemoreseptörler, özellikle PaO₂ <60 mmHg olduğunda solunumu artıracak şekilde uyarılır.',
  ),
  Question(
    question:
        'Solunum fizyolojisinde "compliance (uyum)" terimi neyi tanımlar?',
    options: [
      'Solunum kas gücünü',
      'Tidal volüm ve elastans ilişkisini',
      'Hava yolu çapını',
      'Volüm / basınç oranını',
      'Ventilasyon / perfüzyon oranını',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Compliance = ΔVolüm / ΔBasınç → akciğerin genişleme kapasitesini tanımlar. Yüksek compliance = kolay genişleme.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi anestezi altındaki hastada FRC\'yi en çok düşüren pozisyon olarak bilinir?',
    options: ['Supin', 'Trendelenburg', 'Prone', 'Litotomi', 'Lateral'],
    correctAnswerIndex: 1,
    explanation:
        'Trendelenburg pozisyonunda diyafram yukarı itilir → FRC belirgin azalır → atelektazi riski artar.',
  ),
  Question(
    question:
        'Hangisi şant fraksiyonunu (Qs/Qt) hesaplamada kullanılan formüldür?',
    options: [
      '(CcO₂ - CaO₂)/(CcO₂ - CvO₂)',
      '(CaO₂ - CvO₂)/CcO₂',
      '(PaO₂ - PvO₂)/FiO₂',
      '(SaO₂ - SvO₂)/PaO₂',
      '(ETCO₂ - PaCO₂)/PaCO₂',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Normal Qs/Qt <%5. Pulmoner şantta PaO₂ yüksek FiO₂\'ye rağmen düşük bulunur.',
  ),
  Question(
    question:
        'Oksijenin alveolden kana geçişini sağlayan ana itici güç aşağıdakilerden hangisidir?',
    options: [
      'Solunum kas kasılması',
      'pH farkı',
      'Basınç gradyanı (PaO₂ - PvO₂)',
      'CO₂ difüzyon hızı',
      'Hemoglobin doygunluğu',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Gazlar, yüksek basınçtan düşük basınca doğru difüze olur. O₂ difüzyonu, alveol ile kapiller arasındaki parsiyel basınç farkına (gradyan) bağlıdır.',
  ),
  Question(
    question:
        'Aşağıdaki durumlardan hangisi alveoler ölü boşlukta artışa neden olur?',
    options: [
      'Atelektazi',
      'Pnömoni',
      'Pulmoner emboli',
      'Hipoventilasyon',
      'Pnömotoraks',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Pulmoner embolide havalanma vardır ama perfüzyon yoktur → alveoler ölü boşluk artar.',
  ),
  Question(
    question: 'Hangisi difüzyon kapasitesini (DLCO) artırır?',
    options: [
      'Egzersiz',
      'Anemi',
      'Akciğer rezeksiyonu',
      'Pulmoner fibrozis',
      'Karbon monoksit maruziyeti',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Pulmoner kapiller yatak genişler. DLCO, CO gazı kullanılarak ölçülür. KOAH ve interstisyel hastalıklarda azalır.',
  ),
  Question(
    question: 'Oksijen taşıma kapasitesi en çok hangi faktöre bağlıdır?',
    options: [
      'Solunum hızı',
      'PaO₂',
      'Tidal volüm',
      'Hemoglobin düzeyi',
      'Kalp hızı',
    ],
    correctAnswerIndex: 3,
    explanation:
        'O₂ taşıma kapasitesi, büyük oranda hemoglobine bağlı taşınan oksijenle sağlanır → en kritik faktör Hgb düzeyidir.',
  ),
  Question(
    question:
        'Anestezi sırasında hipoksiye karşı ventilatuar yanıtın baskılanmasının en önemli nedeni hangisidir?',
    options: [
      'Hipotermi',
      'Opiat etkisi',
      'Yüksek doz oksijen verilmesi',
      'Alkol alımı',
      'Hipoglisemi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Opioidler, özellikle bulbustaki solunum merkezini baskılar → hipoksiye karşı ventilatuar yanıt azalır.',
  ),
  Question(
    question: 'Hangisi solunum işini artıran faktörlerden değildir?',
    options: [
      'Yüksek PEEP',
      'Havayolu obstrüksiyonu',
      'Restriktif akciğer hastalığı',
      'Yüksek solunum hızı',
      'Ateş',
    ],
    correctAnswerIndex: 0,
    explanation:
        'PEEP atelektaziyi önleyerek iş yükünü azaltabilir. Obstrüksiyon ve restriksiyonda elastik/rezistif yük artar.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi PaCO₂ ile ETCO₂ arasındaki farkın artmasına neden olur?',
    options: [
      'Artan tidal volüm',
      'Azalmış ölü boşluk',
      'Pulmoner emboli',
      'Yüksek FRC',
      'Artan hemoglobin düzeyi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Pulmoner embolide perfüze olmayan ama havalanan alanlar artar → alveoler ölü boşluk artar → PaCO₂–ETCO₂ farkı genişler.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi hipoksik pulmoner vazokonstriksiyonu (HPV) artırır?',
    options: [
      'Alveoler hipoksi',
      'Hiperventilasyon',
      'Anemi',
      'Hipokapni',
      'Sedasyon',
    ],
    correctAnswerIndex: 0,
    explanation:
        'HPV, alveoller hipoksik hale geldiğinde kanı iyi havalanan bölgelere yönlendirmek için gelişen kompensatuvar yanıttır.',
  ),
  Question(
    question: 'Aşağıdakilerden hangisi V/Q oranının artmasına neden olur?',
    options: [
      'Atelektazi',
      'Pulmoner emboli',
      'ARDS',
      'Solunumsal asidoz',
      'Hiperkapni',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Pulmoner embolide perfüzyon kesilir, havalanma sürer → V/Q oranı artar (sonsuz yaklaşır).',
  ),
  Question(
    question:
        'Anestezi altındaki hastada fonksiyonel rezidüel kapasite (FRC) neden azalır?',
    options: [
      'Artmış tidal volüm',
      'Azalmış compliance',
      'Bronkodilatasyon',
      'Solunum hızı artışı',
      'Düşük V/Q oranı',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Anestezide kas tonusu azalır ve diyafram yukarı itilir, bu da FRC\'yi azaltır.',
  ),
  Question(
    question: 'Aşağıdaki durumlardan hangisi shunt fizyolojisine örnektir?',
    options: [
      'Pulmoner emboli',
      'Emfizem',
      'Atelektazi',
      'Astım',
      'Hiperventilasyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Atelektazide perfüze ama ventile olmayan alanlar oluşur, bu da intrapulmoner şant oluşturur.',
  ),
  Question(
    question: 'Alveoler ventilasyonun en önemli belirleyicisi nedir?',
    options: ['PaO₂', 'Dead space', 'Tidal volüm', 'Solunum hızı', 'PaCO₂'],
    correctAnswerIndex: 4,
    explanation:
        'PaCO₂ düzeyi, alveoler ventilasyonun en hassas göstergesidir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi hipoksiye rağmen SpO₂\'nin normal kalabileceği bir durumu gösterir?',
    options: [
      'Karbonmonoksit zehirlenmesi',
      'Anemi',
      'Hipotermi',
      'Hipokapni',
      'Hematokrit yüksekliği',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Karbonmonoksit, oksijenin hemoglobine bağlanmasını engeller ama pulse oksimetre bunu ayıramaz → SpO₂ yanlış yüksek görünür.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi intrapulmoner shunt varlığını düşündürür?',
    options: [
      'Oksijen tedavisine iyi yanıt',
      'Yüksek PaCO₂',
      'FiO₂ arttırılmasına rağmen PaO₂\'de artış olmaması',
      'Azalmış ventilasyon',
      'Yüksek tidal volüm',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Shunt varlığında, oksijenin dolaşıma geçemediği alanlar vardır → FiO₂ artırılsa da PaO₂ yükselmez.',
  ),
  Question(
    question: 'Hangi durumda P50 değeri artar?',
    options: [
      'Asidoz',
      'Alkaloz',
      'Hipotermi',
      'Fetal hemoglobin',
      'Karbon monoksit zehirlenmesi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'P50: Hb\'in %50 satüre olduğu PaO₂. Normalde 27 mmHg. Asidoz, hipertermi, 2,3-DPG artışı P50\'yi artırır → O₂ bırakımı kolaylaşır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi PaO₂ ve SpO₂ arasındaki ilişkiyi etkileyen en önemli parametrelerden biridir?',
    options: ['pH', 'HbA1c', 'Serum kreatinin', 'Solunum hızı', 'CO₂ üretimi'],
    correctAnswerIndex: 0,
    explanation:
        'pH, hemoglobinin oksijene afinitesini etkiler → Bohr etkisi → eğri sağa veya sola kayar → PaO₂–SpO₂ ilişkisi değişir.',
  ),
  Question(
    question:
        'Anestezi sırasında ventilasyon-perfüzyon (V/Q) dengesizliği en sık hangi pozisyonda görülür?',
    options: ['Supin', 'Trendelenburg', 'Prone', 'Lateral dekübit', 'Ayakta'],
    correctAnswerIndex: 0,
    explanation:
        'Supin pozisyonda dorsal bölgeler perfüze ancak ventile olamadığı için V/Q dengesizliği gelişebilir.',
  ),
  Question(
    question:
        'Aşağıdaki solunum parametrelerinden hangisi total akciğer kapasitesinin (TLC) bir bileşeni değildir?',
    options: [
      'Tidal volüm',
      'Ekspiratuvar rezerv volüm',
      'İnspiratuvar kapasite',
      'Fonksiyonel rezidüel kapasite',
      'Ölü boşluk volümü',
    ],
    correctAnswerIndex: 4,
    explanation:
        'Ölü boşluk volümü, anatomik ve fizyolojik olarak TLC\'nin bir parçası değildir.',
  ),
  Question(
    question:
        'Anestezi altında akciğerlerde atelektazi gelişimini önlemek için en uygun strateji hangisidir?',
    options: [
      'Hiperventilasyon',
      'Spontan solunumun bastırılması',
      'İnspiratuvar volümün azaltılması',
      'Periyodik recruitment manevraları',
      'PaCO₂\'nin düşürülmesi',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Recruitment manevraları ile alveoller açılır ve atelektazi önlenebilir.',
  ),
  Question(
    question:
        'Anestezi sırasında CO₂ eliminasyonu en çok hangi parametreye bağlıdır?',
    options: [
      'PaO₂',
      'Solunum sayısı',
      'Ölü boşluk volümü',
      'Alveoler ventilasyon',
      'Nabız hızı',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Alveoler ventilasyon, CO₂ eliminasyonunu belirleyen en önemli faktördür.',
  ),
  Question(
    question:
        'Anestezi sırasında oluşan rezidüel volüm artışı hangi duruma neden olur?',
    options: [
      'Hipoventilasyon',
      'Hiperinflasyon',
      'Atelektazi',
      'Pulmoner emboli',
      'V/Q artışı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Rezidüel volüm artışı efektif ventilasyonu azaltarak alveollerin kollapsına neden olabilir.',
  ),
  Question(
    question:
        'Anestezi altında en sık görülen solunum fizyolojisi bozukluğu nedir?',
    options: [
      'Shunt',
      'Ölü boşluk artışı',
      'Diffüzyon bozukluğu',
      'V/Q dengesizliği',
      'Restriktif patern',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Anestezi sırasında ventilasyon ve perfüzyon dengesizliği en sık fizyolojik bozukluktur.',
  ),
  Question(
    question:
        'Anestezi altında CO₂ retansiyonu gelişmiş bir hastada en erken görülen bulgu hangisidir?',
    options: ['Bradikardi', 'Kasılmalar', 'Somnolans', 'Deliryum', 'Hipotermi'],
    correctAnswerIndex: 2,
    explanation:
        'CO₂ birikimi beyin perfüzyonunu etkileyerek bilinç bulanıklığı ve somnolansa neden olur.',
  ),
  Question(
    question:
        'İnspiratuvar oksijen konsantrasyonu (FiO₂) %100 yapılırsa hangi fizyolojik etki gözlenebilir?',
    options: [
      'PaCO₂ düşer',
      'Nitrojensizleştirme atelektazisi gelişir',
      'V/Q oranı yükselir',
      'PaO₂ sabit kalır',
      'PEEP ihtiyacı artar',
    ],
    correctAnswerIndex: 1,
    explanation:
        '%100 FiO₂ ile nitrojen alveolden uzaklaştırılırsa, alveoller kollabe olabilir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi inspirasyon sonunda ölçülen en yüksek basıncı temsil eder?',
    options: [
      'PEEP',
      'Ortalama havayolu basıncı',
      'Plateu basıncı',
      'Pik havayolu basıncı',
      'Transpulmoner basınç',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Pik basınç, inspirasyon sırasında ulaşılan maksimum basınçtır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi alveoler hipoventilasyonun göstergesidir?',
    options: [
      'PaCO₂ <35 mmHg',
      'PaO₂ >100 mmHg',
      'PaCO₂ >45 mmHg',
      'SpO₂ %100',
      'HCO₃ artışı',
    ],
    correctAnswerIndex: 2,
    explanation: 'Hipoventilasyonda CO₂ atılamaz → PaCO₂ yükselir.',
  ),
  Question(
    question:
        'Anestezi sırasında rezidüel fonksiyonel kapasite (FRC) azalırsa en çok hangisi görülür?',
    options: [
      'Oksijen tüketimi artar',
      'PaCO₂ düşer',
      'Alveoler kollaps',
      'Hematokrit yükselir',
      'Kalp debisi artar',
    ],
    correctAnswerIndex: 2,
    explanation: 'FRC azalınca alveoller kapanır ve atelektazi oluşur.',
  ),
  Question(
    question:
        'Anestezi sırasında en sık atelektaziye neden olan mekanizma hangisidir?',
    options: [
      'Bronkospazm',
      'Hipotermi',
      'Azalmış fonksiyonel rezidüel kapasite',
      'Solunum hızında artış',
      'Artmış V/Q oranı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'FRC azaldığında alveoller kollabe olur ve atelektazi gelişir.',
  ),
  Question(
    question:
        'Arteriyel kan gazında artmış A-a gradyanı (alveol-arteriyel O₂ farkı) hangi durumu gösterir?',
    options: [
      'Yüksek ventilasyon',
      'Normal diffüzyon',
      'V/Q dengesizliği veya şant',
      'Hipervolemi',
      'Artmış tidal volüm',
    ],
    correctAnswerIndex: 2,
    explanation:
        'A-a gradyanı arttığında akciğerlerde ventilasyon ve perfüzyon uyumsuzluğu düşünülür.',
  ),
  Question(
    question: 'Aşağıdaki durumlardan hangisinde alveolar ölü boşluk artar?',
    options: [
      'Atelektazi',
      'Pulmoner emboli',
      'Bronkospazm',
      'İnterstisyel fibrozis',
      'Pulmoner ödem',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Pulmoner embolide alveoller ventile olur ancak perfüze olmaz, bu da ölü boşluk oluşturur.',
  ),
  Question(
    question:
        'İnspiratuvar rezerv volümünün azalması en çok hangi durumda görülür?',
    options: [
      'Anestezi indüksiyonu',
      'Ağır egzersiz',
      'Pulmoner emboli',
      'Laparotomi pozisyonu',
      'Uyanık halde yatar pozisyon',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Anestezi altında göğüs duvarı ve diyafram hareketi azalır, inspiratuvar rezerv volüm de düşer.',
  ),
  Question(
    question:
        'SpO₂ %90 ölçülen bir hastada tahmini PaO₂ kaç mmHg civarındadır?',
    options: ['30', '45', '60', '75', '90'],
    correctAnswerIndex: 2,
    explanation:
        'Oksihemoglobin dissosiyasyon eğrisine göre SpO₂ %90 olduğunda PaO₂ ≈ 60 mmHg\'dır.',
  ),
  Question(
    question: 'Aşağıdakilerden hangisi solunum arrestine neden olabilir?',
    options: [
      'Hiperkapni',
      'Hipoksi',
      'Hiperoksi',
      'Solunum alkalozu',
      'Yüksek tidal volüm',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Şiddetli hipoksi beyin sapı fonksiyonlarını bozarak solunumu durdurabilir.',
  ),
  Question(
    question:
        'Anestezi sırasında en sık artmış airway resistance nedeni hangisidir?',
    options: [
      'Trakeal stenoz',
      'Bronkospazm',
      'Atelektazi',
      'Pulmoner emboli',
      'Hipoksemi',
    ],
    correctAnswerIndex: 1,
    explanation: 'Bronkospazm, hava yolu çapını daraltır → direnç artar.',
  ),
  Question(
    question: 'Anestezide plevral negatif basınç kaybolursa ne gelişir?',
    options: [
      'Bronkospazm',
      'Pneumotoraks',
      'Atelektazi',
      'Hiperventilasyon',
      'Solunum alkalozu',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Plevral negatif basınç korunamazsa akciğerin içeri çökmesine neden olur → pnömotoraks.',
  ),
  Question(
    question: 'Pulmoner shunt artarsa ne gelişir?',
    options: [
      'Hiperoksi',
      'Hiperventilasyon',
      'Hipoksemi',
      'Hipokapni',
      'Respiratuvar alkaloz',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Ventilasyon olmayan ama perfüze olan alanlar O₂ eksikliğine yol açar.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi ventilasyon-perfüzyon uyumsuzluğuna bağlı hipokseminin en iyi tedavisidir?',
    options: [
      'Bronkodilatör',
      'Diüretik',
      'Yüksek FiO₂',
      'PEEP',
      'Kortikosteroid',
    ],
    correctAnswerIndex: 3,
    explanation:
        'V/Q uyumsuzluğu genelde alveoler kollapsla ilişkili olduğu için PEEP ile düzeltilebilir.',
  ),
  Question(
    question:
        'Anestezi sırasında kapnografide "shark fin" görüntüsü hangi durumu düşündürür?',
    options: [
      'Atelektazi',
      'Bronkospazm',
      'Pulmoner emboli',
      'Solunum arresti',
      'Hipotermi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Ekshalasyon eğrisi köpekbalığı yüzgecini andırıyorsa hava akımı kısıtlıdır → bronkospazm.',
  ),
  Question(
    question: 'Solunum hızı sabitken CO₂ atılımı nasıl artırılır?',
    options: [
      'FiO₂ artırmak',
      'Tidal volüm artırmak',
      'PEEP düşürmek',
      'Ölü boşluğu artırmak',
      'Solunum derinliğini azaltmak',
    ],
    correctAnswerIndex: 1,
    explanation: 'Tidal volüm artırılarak daha fazla CO₂ atımı sağlanır.',
  ),
  Question(
    question: 'Hangisi pulmoner arter kateterizasyonunda ölçülemez?',
    options: [
      'Alveoler basınç',
      'Pulmoner arter basıncı',
      'Pulmoner kapiller wedge basıncı',
      'Kardiyak output',
      'Karışık venöz oksijen satürasyonu',
    ],
    correctAnswerIndex: 0,
    explanation:
        'PAC ile PAP, PCWP (≈LAP), CO (termodilüsyon), SvO₂ ölçülür. Alveoler basınç ventilatörden okunur.',
  ),
  Question(
    question: 'Hangisi solunum kaslarından değildir?',
    options: [
      'M. biceps brachii',
      'Diafragma',
      'M. interkostalis externus',
      'M. scalenus',
      'M. sternokleidomastoideus',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Inspiratuar kaslar: Diafragma (en önemli), eksternal interkostaller, aksesuar kaslar. Ekspirasyon pasiftir, zorlu ekspirasyonda internal interkostaller ve karın kasları çalışır.',
  ),
  Question(
    question: 'Hangisi solunum kontrolünde kemoreseptörlerin yeridir?',
    options: [
      'Medulla oblongata ve aortik/korpus karotikum',
      'Pons',
      'Serebral korteks',
      'Hipotalamus',
      'Spinal kord',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Santral kemoreseptörler (medulla) CO₂/pH\'ya, periferik kemoreseptörler (aortik/korpus karotikum) PaO₂\'ye duyarlıdır.',
  ),
  Question(
    question: 'Hangisi intraoperatif pulse oksimetre ile saptanamaz?',
    options: [
      'Methemoglobinemi',
      'Hipoksemi',
      'Perfüzyon yetersizliği',
      'Taşikardi',
      'Ekstremite iskemisi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'MetHb SpO₂\'yi ~%85\'te sabit gösterir. COHb ise yanlış yüksek değer verir. Tanı için CO-oximetre gerekir.',
  ),
  Question(
    question:
        'Hangisi solunum gazlarının alveoler difüzyonunu etkileyen faktördür?',
    options: [
      'Membran kalınlığı',
      'Hemoglobin seviyesi',
      'Kan basıncı',
      'Kalp hızı',
      'Plazma viskozitesi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Fick yasası: Difüzyon ∝ (Yüzey alanı × ΔP × Çözünürlük)/(Membran kalınlığı × √MW). Pulmoner fibroziste difüzyon kapasitesi azalır.',
  ),
  Question(
    question:
        'Hangisi egzersiz sırasında arteriyel kan gazında beklenen değişikliktir?',
    options: [
      'PaCO₂ azalması',
      'pH düşmesi',
      'PaO₂ artması',
      'HCO₃⁻ artması',
      'Laktat azalması',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Egzersizde artan alveolar ventilasyonla PaCO₂ düşer. Ağır egzersizde laktik asidoz gelişebilir.',
  ),
  Question(
    question: 'Hangisi solunum seslerinin iletilmesini artırır?',
    options: [
      'Pnömotoraks',
      'Plevral effüzyon',
      'Atelektazi',
      'Pulmoner ödem',
      'KOAH',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Solid dokularda ses iyi iletilir (bronşiyal ses). Pnömotoraksta amphorik ses, plevral effüzyonda ses azalır.',
  ),
  Question(
    question: 'Hangisi solunum yetmezliği tanımına uyar?',
    options: [
      'PaO₂ <60 mmHg ve/veya PaCO₂ >50 mmHg',
      'PaO₂ <80 mmHg',
      'PaCO₂ >35 mmHg',
      'SaO₂ <%90',
      'Solunum hızı >20/dk',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Tip 1 hipoksemik, Tip 2 hiperkapnik solunum yetmezliği. pH <7.25 ise akut kabul edilir.',
  ),
  Question(
    question:
        'KOAH\'lı bir hastada perioperatif solunum komplikasyonlarını en çok artıran faktör nedir?',
    options: [
      'FEV₁ <%50',
      'Sigara öyküsü <10 paket-yıl',
      'Hafif egzersiz toleransı',
      'Obezite',
      'Kontrollü hipertansiyon',
    ],
    correctAnswerIndex: 0,
    explanation:
        'FEV₁/FVC <%70 ve FEV₁ <%50 predikte ciddi risk artışı. Sigara bırakma 6-8 hafta önce yapılmalı.',
  ),
  Question(
    question:
        'Astımlı bir hastada anestezi indüksiyonunda hangi ajan bronkospazm riskini artırır?',
    options: ['Tiyopental', 'Propofol', 'Ketamin', 'Sevofluran', 'Ropivakain'],
    correctAnswerIndex: 0,
    explanation:
        'Tiyopental histamin salınımı yaparak bronkospazmı tetikleyebilir. Propofol ve ketamin bronkodilatör etkilidir.',
  ),
  Question(
    question:
        'Restriktif akciğer hastalığı olan bir hastada hangi ventilasyon parametresi ayarlanmalıdır?',
    options: [
      'Düşük tidal volüm (6-8 mL/kg)',
      'Yüksek PEEP (10-15 cmH₂O)',
      'Hızlı solunum hızı (>20/dk)',
      'İnspiratuar basınç >30 cmH₂O',
      'I:E oranı 1:1',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Restriktif hastalarda yüksek basınç ve volümden kaçınılır. PEEP 5-10 cmH₂O yeterlidir.',
  ),
  Question(
    question:
        'Obstrüktif uyku apnesi (OSA) olan bir hastada postoperatif izlemde en önemli risk nedir?',
    options: [
      'Opioid kaynaklı solunum depresyonu',
      'Hipertansiyon',
      'Hiperglisemi',
      'Ateş',
      'Bulantı-kusma',
    ],
    correctAnswerIndex: 0,
    explanation:
        'OSA\'lı hastalarda opioid duyarlılığı artar. Non-opioid analjezikler ve rejyonal teknikler tercih edilir.',
  ),
  Question(
    question:
        'Akut akciğer ödemi olan bir hastada hangi anestezik teknik kontrendikedir?',
    options: [
      'Spinal anestezi',
      'Genel anestezi',
      'Epidural anestezi',
      'Rejyonal blok',
      'Sedasyon',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Ani sempatik blokajla kardiyak output düşer. Epidural kademeli blokaj yaparak daha güvenlidir.',
  ),
  Question(
    question:
        'Pnömonektomi sonrası postoperatif solunum yetmezliği için en önemli risk faktörü nedir?',
    options: [
      'Preop FEV₁ <2 L',
      'Genç yaş',
      'Kadın cinsiyet',
      'Normal PaCO₂',
      'ASA 1',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Postpnömonektomi FEV₁ <800 mL veya DLCO <%40 mortaliteyi artırır. Karbon monoksit difüzyon testi [DLCO] önemli.',
  ),
  Question(
    question:
        'Astımlı bir hastada hangi kas gevşetici bronkospazmı tetikleyebilir?',
    options: [
      'Süksinilkolin',
      'Rokuronyum',
      'Atrakuryum',
      'Sisatrakuryum',
      'Mivakuryum',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Histamin salınımı yapan depolarizan ajanlardan kaçınılır. Atrakuryum/sisatrakuryum daha güvenlidir.',
  ),
  Question(
    question:
        'Pulmoner hipertansiyonu olan bir hastada hangi anestezik ajan kontrendikedir?',
    options: ['Ketamin', 'Propofol', 'Etomidat', 'Sevofluran', 'Remifentanil'],
    correctAnswerIndex: 0,
    explanation:
        'Sempatik aktivasyonla pulmoner arter basıncını artırır. Propofol ve opioidler tercih edilir.',
  ),
  Question(
    question:
        'Hangisi postoperatif pulmoner komplikasyonları (PPK) azaltmada en etkilidir?',
    options: [
      'Derin inspirasyon egzersizleri',
      'Yüksek doz opioid',
      'Erken entübasyon',
      'Sık pozisyon değişimi',
      'Antihipertansif tedavi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Preop pulmoner rehabilitasyon, IS (incentive spirometry) ve erken mobilizasyon PPK\'yı %50 azaltır.',
  ),
  Question(
    question:
        'Pulmoner emboli şüphesi olan bir hastada hangi anestezik teknik tercih edilir?',
    options: [
      'Rejyonal anestezi',
      'Genel anestezi',
      'Yüksek doz opioid',
      'İnhalasyon anestezisi',
      'Total intravenöz anestezi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Hemorajik komplikasyon riski nedeniyle spinal/epidural kontrendikedir. Genel anestezi gerekirse heparinizasyon dikkatle yönetilir.',
  ),
  Question(
    question: 'Hangisi intraoperatif bronkospazm bulgularından değildir?',
    options: [
      'ETCO₂\'de ani yükselme',
      'Wheezing',
      'İnspiratuar basınçta artış',
      'Oksijenasyon bozukluğu',
      'Plateau basıncı yükselmesi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Bronkospazmda ekspiratuar obstrüksiyon nedeniyle ETCO₂ düşer. Diğerleri tipik bulgulardır.',
  ),
  Question(
    question:
        'Akciğer rezeksiyonu sonrası kalan akciğer fonksiyonunu tahmin etmek için hangi test kullanılır?',
    options: [
      'Ventilasyon/perfüzyon sintigrafisi',
      'Akciğer grafisi',
      'Solunum fonksiyon testi',
      'Arteriyel kan gazı',
      'Toraks BT',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Opere edilecek lobun fonksiyonel katkısını gösterir. Postop FEV₁ tahmini için kullanılır.',
  ),
  Question(
    question: 'Hangisi pulmoner hipertansiyon tedavisinde kullanılmaz?',
    options: [
      'Beta blokerler',
      'Oksijen',
      'PDE-5 inhibitörleri (sildenafil)',
      'Prostasiklin analogları (epoprostenol)',
      'Endotelin reseptör antagonistleri (bosentan)',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Pulmoner vazodilatörler kullanılır. Beta blokerler sağ ventrikül fonksiyonunu bozar.',
  ),
  Question(
    question:
        'Hangisi torasik cerrahide tek akciğer ventilasyonu komplikasyonlarından değildir?',
    options: [
      'Hiperglisemi',
      'Hipoksemi',
      'Reekspansiyon ödemi',
      'Hemodinamik instabilite',
      'Ventilatör ilişkili akciğer hasarı',
    ],
    correctAnswerIndex: 0,
    explanation:
        'TAV komplikasyonları: Hipoksemi (%10-15), barotravma, trakeobronşiyal yaralanma.',
  ),
  Question(
    question: 'Hangisi postoperatif atelektazi için risk faktörüdür?',
    options: [
      'Üst abdominal cerrahi',
      'Genç yaş',
      'Sigara içmeme',
      'Normal BMI',
      'Epidural analjezi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Diyafram fonksiyon bozukluğu ve ağrıya bağlı sığ solunum atelektaziye yol açar. IS ve erken mobilizasyon önler.',
  ),
  Question(
    question:
        'Hangisi pulmoner hipertansiyonlu bir hastada anestezi yönetiminde önceliktir?',
    options: [
      'Sağ ventrikül afterloadını azaltma',
      'Sistemik vasküler direnci artırma',
      'Hiperkapni oluşturma',
      'Volüm yüklemesi',
      'Pozitif inotrop kullanımı',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Pulmoner vazodilatasyon için oksijen, NO, prostasiklinler kullanılır. Volüm yükünden kaçınılır.',
  ),
  Question(
    question: 'Hangisi postoperatif pnömoni için risk faktörü değildir?',
    options: [
      'Genç yaş',
      'KOAH',
      'Uzun süreli mekanik ventilasyon',
      'Aspirasyon',
      'Malnütrisyon',
    ],
    correctAnswerIndex: 0,
    explanation:
        'İleri yaş, sigara, immünsüpresyon ve üst abdominal cerrahi riski artırır.',
  ),
  Question(
    question:
        'Hangisi akut solunum sıkıntısı sendromunda (ARDS) kullanılan ventilasyon stratejisidir?',
    options: [
      'Düşük tidal volüm (6 mL/kg)',
      'Yüksek PEEP (>15 cmH₂O)',
      'Hızlı solunum hızı (>25/dk)',
      'İnspiratuar basınç >35 cmH₂O',
      'I:E oranı 1:1',
    ],
    correctAnswerIndex: 0,
    explanation:
        'ARDSNet protokolü: Tidal volüm 6 mL/kg, plateau basıncı <30 cmH₂O, PEEP/FiO₂ titrasyonu.',
  ),
  Question(
    question: 'Hangisi pulmoner hipertansiyonun EKG bulgularından değildir?',
    options: [
      'Sol ventrikül hipertrofisi',
      'Sağ aks deviasyonu',
      'P pulmonale',
      'Sağ ventrikül hipertrofisi',
      'S1Q3T3 paterni',
    ],
    correctAnswerIndex: 0,
    explanation:
        'PH\'de sağ ventrikül yüklenme bulguları görülür: R/S >1 V1\'de, derin S dalgaları.',
  ),
  Question(
    question: 'Hangisi bronkospazm tedavisinde kullanılmaz?',
    options: [
      'Lidokain (IV)',
      'Salbutamol (inhale)',
      'Adrenalin (IV/IM)',
      'Hidrokortizon (IV)',
      'Magnezyum sülfat (IV)',
    ],
    correctAnswerIndex: 0,
    explanation:
        'IV lidokain bronkospazmı tetikleyebilir. İnhale lidokain öksürük refleksini baskılamak için kullanılır.',
  ),
  Question(
    question: 'Hangisi pulmoner emboli tanısında altın standarttır?',
    options: [
      'BT pulmoner anjiyografi',
      'D-dimer',
      'Akciğer grafisi',
      'Ventilasyon/perfüzyon sintigrafisi',
      'EKG',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Duyarlılık ve özgüllüğü yüksektir. D-dimer taramada kullanılır ancak spesifik değildir.',
  ),
  Question(
    question:
        'Hangisi postoperatif solunum yetmezliği için risk faktörü değildir?',
    options: [
      'Genç yaş',
      'ASA ≥3',
      'Üst abdominal cerrahi',
      'Kronik alkol kullanımı',
      'KOAH',
    ],
    correctAnswerIndex: 0,
    explanation:
        'İleri yaş, obezite, nöromusküler hastalıklar ve uzun cerrahi süre riski artırır.',
  ),
  Question(
    question:
        'Hangisi akciğer transplantasyonu sonrası mortaliteyi en çok etkileyen faktördür?',
    options: [
      'Bronşiyal anastomoz yetmezliği',
      'Hipertansiyon',
      'Diabetes mellitus',
      'Obezite',
      'Minimal invaziv cerrahi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Erken dönemde enfeksiyon ve hava yolu komplikasyonları, geç dönemde kronik allograft disfonksiyonu önemlidir.',
  ),
];
