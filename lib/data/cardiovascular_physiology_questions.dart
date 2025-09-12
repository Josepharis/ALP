import '../models/question.dart';

final List<Question> cardiovascularPhysiologyQuestions = [
  Question(
    question:
        'Kardiyak debi aşağıdaki parametrelerden hangisinin çarpımı ile elde edilir?',
    options: [
      'Kalp hızı × arteryel basınç',
      'Preload × afterload',
      'Kalp hızı × inotropi',
      'Kalp hızı × stroke volüm',
      'Kalp hızı × sistemik vasküler direnç',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Kardiyak debi (CO) = Kalp hızı × Stroke volüm. Kalbin bir dakikada pompaladığı kan miktarını gösterir.',
  ),
  Question(
    question: 'Kardiyak output (kalp debisi) hangi formülle hesaplanır?',
    options: ['SV x HR', 'MAP / SVR', 'EF x EDV', 'HR / SV', 'CO / BSA'],
    correctAnswerIndex: 0,
    explanation: 'Kalp debisi (CO) = Stroke volume (SV) x Kalp hızı (HR)',
  ),
  Question(
    question:
        'Afterload\'un artması kardiyak output üzerinde nasıl bir etki yapar?',
    options: [
      'Artırır',
      'Sabit tutar',
      'Azaltır',
      'Önce artırır sonra azaltır',
      'Etki etmez',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Afterload (ventrikülün karşılaştığı direnç) arttığında kalbin pompalaması zorlaşır → stroke volüm azalır → CO düşer.',
  ),
  Question(
    question:
        'Anestezik ajanların çoğu myokardiyal kontraktiliteyi nasıl etkiler?',
    options: [
      'Artırır',
      'Değiştirmez',
      'Azaltır',
      'Dönemsel artırır',
      'Ritim bozukluğu yapar',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Çoğu inhalasyon ve IV anestezik ajan, negatif inotropik etki ile kontraktiliteyi azaltır.',
  ),
  Question(
    question:
        'Sistemik vasküler direnç (SVR) formülünde aşağıdaki değişkenlerden hangisi yer almaz?',
    options: [
      'Orta arter basıncı',
      'Santral venöz basınç',
      'Kardiyak output',
      'Kalp hızı',
      'Hepsi yer alır',
    ],
    correctAnswerIndex: 3,
    explanation: 'SVR = (MAP – CVP) / CO × 80 formülünde kalp hızı yer almaz.',
  ),
  Question(
    question:
        'Aşağıdaki anesteziklerden hangisi kardiyak output\'u en az etkileyen inhalasyon ajanıdır?',
    options: ['Halotan', 'İzofluran', 'Sevofluran', 'Desfluran', 'Enfluran'],
    correctAnswerIndex: 2,
    explanation:
        'Sevofluran, diğer volatil ajanlara göre kardiyovasküler stabilitesi daha iyi olan bir ajandır.',
  ),
  Question(
    question:
        'Anestezi sırasında hipotansiyon geliştiğinde ilk tedavi yaklaşımı hangisidir?',
    options: [
      'Dopamin infüzyonu',
      'Epinefrin bolusu',
      'Pozisyon değiştirme ve sıvı desteği',
      'Beta bloker verilmesi',
      'Nitrat uygulanması',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Anestezi altında hipotansiyonda önce neden araştırılır, genellikle volüm desteği ve pozisyon ayarlanması ilk adımdır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi koroner perfüzyon basıncını (CPP) belirleyen temel faktördür?',
    options: [
      'Sistolik arter basıncı',
      'Sol atriyal basınç',
      'Aort diyastolik basıncı – LVEDP',
      'Kardiyak output',
      'Pulmoner arter basıncı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'CPP = Aort diyastolik basınç – Sol ventrikül diyastolik basınç (LVEDP). Bu fark koroner dolaşımı belirler.',
  ),
  Question(
    question:
        'Kardiyopulmoner bypass sırasında en sık karşılaşılan hemodinamik problem hangisidir?',
    options: ['Hipertansiyon', 'Hipotermi', 'Hipotansiyon', 'Asidoz', 'Aritmi'],
    correctAnswerIndex: 2,
    explanation:
        'KPB sırasında, hemodilüsyon ve sistemik vazodilatasyon nedeniyle hipotansiyon sık görülür.',
  ),
  Question(
    question:
        'Anestezi indüksiyonu sırasında, aort stenozlu bir hastada en çok kaçınılması gereken durum hangisidir?',
    options: [
      'Hafif bradikardi',
      'Hafif taşikardi',
      'Düşük sistemik vasküler direnç',
      'Yüksek preload',
      'Stabil ritim',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Aort stenozunda kalp sabit bir çıkışa sahip olduğu için SVR düşerse perfüzyon ciddi bozulur → hipotansiyon ve iskemi gelişir.',
  ),
  Question(
    question:
        'Aşağıdaki durumların hangisinde kalp debisi artmasına rağmen arteriyel basınç normal kalabilir?',
    options: [
      'Hipovolemi',
      'Sepsis',
      'Kardiyojenik şok',
      'Pulmoner emboli',
      'Aort stenozu',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Sepsis, periferik vazodilatasyon ile SVR\'yi düşürür. Kalp debisi artsa da arteriyel basınç normal kalabilir veya düşebilir.',
  ),
  Question(
    question: 'Afterload en çok hangi parametreyle ilişkilidir?',
    options: [
      'Venöz dönüş',
      'Kalp hızı',
      'Sistemik vasküler direnç (SVR)',
      'Preload',
      'Kardiyak output',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Afterload, esas olarak SVR (arteriyel direnç) ile belirlenir.',
  ),
  Question(
    question:
        'Kardiyak output artarken pulse basıncı da artıyorsa bu duruma örnek olarak hangisi verilebilir?',
    options: [
      'Aort darlığı',
      'Aort yetmezliği',
      'Mitral stenoz',
      'Hipovolemi',
      'Pulmoner hipertansiyon',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Aort yetmezliğinde, yüksek stroke volüm ve düşük diyastol nedeniyle sistolik-diyastolik fark (pulse basınç) artar.',
  ),
  Question(
    question:
        'Sevofluran, kardiyovasküler sistem üzerinde hangi etkileri daha az gösterir?',
    options: [
      'Kalp hızında artış',
      'Kontraktilitede azalma',
      'SVR\'de azalma',
      'Kardiyak output\'ta azalma',
      'Kan basıncında düşüş',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Sevofluran, diğer volatil ajanlara göre kalp hızını daha az etkiler, bu da pediatride avantaj sağlar.',
  ),
  Question(
    question:
        'Kardiyopulmoner bypass sırasında sistemik hipotansiyonun başlıca nedeni nedir?',
    options: [
      'Hiperkalemi',
      'Hipoksi',
      'Vazodilatasyon ve hemodilüsyon',
      'Hipotermi',
      'Sol ventrikül disfonksiyonu',
    ],
    correctAnswerIndex: 2,
    explanation:
        'KPB sırasında, kullanılan pompalar nedeniyle hemodilüsyon ve kullanılan ajanlarla vazodilatasyon oluşur → hipotansiyon gelişir.',
  ),
  Question(
    question: 'Aşağıdakilerden hangisi baroreseptör cevabının bir sonucudur?',
    options: [
      'Arteriyel basınçta artış → bradikardi',
      'Arteriyel basınçta düşüş → bradikardi',
      'Kalp hızında artış → SVR düşmesi',
      'Hipoksi → parasempatik aktivasyon',
      'Hiperkapni → bradikardi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Baroreseptörler, arteriyel basınç yükseldiğinde parasempatik aktiviteyi artırarak kalp hızını azaltır (bradikardi).',
  ),
  Question(
    question:
        'Kardiyak output\'un artmasına rağmen arteriyel basınç düşüyorsa, en olası neden nedir?',
    options: [
      'Artan preload',
      'Artan afterload',
      'Düşük SVR',
      'Yüksek hematokrit',
      'Kalp hızı düşüklüğü',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Arteriyel basınç = CO × SVR. Eğer CO artmış ama basınç düşüyorsa, SVR düşük olmalıdır → örneğin sepsis.',
  ),
  Question(
    question: 'Pozitif basınçlı ventilasyon, hemodinami üzerinde nasıl bir etki yapar?',
    options: [
      'Preload\'u artırır',
      'Venöz dönüşü artırır',
      'Preload\'u azaltır',
      'Arteriyel basıncı artırır',
      'Kalp hızını sabit tutar',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Pozitif basınç, torasik basıncı artırarak venöz dönüşü (preload) azaltır, bu da CO\'yu düşürebilir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi kardiyak output\'u belirleyen majör faktörlerden biri değildir?',
    options: [
      'Preload',
      'Afterload',
      'Kontraktilite',
      'Kalp hızı',
      'Hematokrit',
    ],
    correctAnswerIndex: 4,
    explanation:
        'CO = HR × SV (SV ise preload, afterload ve kontraktiliteye bağlıdır). Hematokrit dolaylı etki eder ama majör belirleyici değildir.',
  ),
  Question(
    question: 'Kardiyak debiyi artıran fizyolojik durum hangisidir?',
    options: [
      'Uyku',
      'Hipotermi',
      'Egzersiz',
      'Bradikardi',
      'Parasempatik tonus artışı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Egzersiz, hem kalp hızı hem de kontraktiliteyi artırarak kardiyak output\'u yükseltir.',
  ),
  Question(
    question: 'Aşağıdaki ilaçlardan hangisi negatif inotropik etkiye sahiptir?',
    options: ['Dopamin', 'Dobutamin', 'Ketamin', 'Propofol', 'Adrenalin'],
    correctAnswerIndex: 3,
    explanation:
        'Propofol, negatif inotropik etki yaparak kalp kontraktilitesini azaltır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi kardiyak output\'u düşüren faktörlerden biridir?',
    options: [
      'Anemi',
      'Hipoksi',
      'Artmış afterload',
      'Hafif taşikardi',
      'Artmış preload',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Afterload (çıkış direnci) artarsa, ventrikül daha fazla çalışmak zorunda kalır → stroke volüm düşer → CO azalır.',
  ),
  Question(
    question:
        'Aşağıdaki durumlardan hangisi vazodilatasyona bağlı hipotansiyona örnek teşkil eder?',
    options: [
      'Hipovolemik şok',
      'Kardiyojenik şok',
      'Sepsis',
      'Aort diseksiyonu',
      'Perikardiyal tamponad',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Sepsiste, sistemik vazodilatasyon olur → SVR düşer → hipotansiyon gelişir.',
  ),
  Question(
    question:
        'Aşağıdaki durumların hangisinde ST depresyonu görülmesi en olasıdır?',
    options: [
      'Hiperkalemi',
      'Akut miyokard infarktüsü',
      'Subendokardiyal iskemi',
      'Perikardit',
      'Hipotermi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'ST depresyonu, genellikle subendokardiyal iskemi veya anemi, takikardi gibi oksijen arz-talep dengesizliğinde görülür.',
  ),
  Question(
    question: 'Kardiyak fizyolojide Frank-Starling mekanizması neyi açıklar?',
    options: [
      'Artmış preload → artmış kontraktilite',
      'Artmış afterload → artmış SVR',
      'Artmış HR → azalmış diastol',
      'Azalan preload → artmış stroke volüm',
      'Artmış SVR → artmış CO',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Frank-Starling mekanizması, ventrikül diyastolde ne kadar gerilirse sistolde o kadar güçlü kasılır → preload ile SV artar.',
  ),
  Question(
    question:
        'Kardiyovasküler sistemde "afterload" en çok hangi fizyolojik parametre ile ilişkilidir?',
    options: [
      'Preload',
      'Sol ventrikül diyastolik hacmi',
      'Aortik direnç',
      'Kalp hızı',
      'Pulmoner arter basıncı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Afterload, ventrikülün karşılaştığı çıkış direncidir ve en çok aortik direnç (SVR) ile ilgilidir.',
  ),
  Question(
    question:
        'Anestezi sırasında hipotansif bir hastada inotrop ihtiyacı varsa ilk seçenek olarak hangisi kullanılır?',
    options: [
      'Adrenalin',
      'Dopamin (orta doz)',
      'Noradrenalin',
      'Furosemid',
      'Beta bloker',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Dopamin, orta dozda beta-1 etkisiyle inotropi sağlar, hipotansiyon ve bradikardide tercih edilir.',
  ),
  Question(
    question:
        'Anestezi sırasında miyokardiyal iskemiyi en iyi gösteren monitörizasyon hangisidir?',
    options: ['SpO₂', 'NIBP', 'ST segment takibi', 'ETCO₂', 'Vücut ısısı'],
    correctAnswerIndex: 2,
    explanation:
        'ST segment elevasyon veya depresyonu, iskemiye özgü EKG bulgularıdır, en erken belirti olabilir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi ventriküler dolum basıncını (preload) etkileyen faktörlerden biri değildir?',
    options: [
      'Venöz dönüş',
      'Ventrikül uyumu (compliance)',
      'Kalp hızı',
      'Aortik basınç',
      'İntravasküler volüm',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Aortik basınç, afterload ile ilişkilidir; preload\'u doğrudan etkilemez.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi anestezi sırasında kardiyak output\'u düşürebilecek bir etkendir?',
    options: [
      'Yüksek inspiratuvar oksijen fraksiyonu',
      'Derin anestezi',
      'Taşikardi',
      'Normotermi',
      'Trendelenburg pozisyonu',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Derin anestezi, negatif inotropi ve vazodilatasyon yoluyla CO\'yu düşürebilir.',
  ),
  Question(
    question: 'Preload\'un en iyi göstergelerinden biri hangisidir?',
    options: [
      'Kalp hızı',
      'Santral venöz basınç (CVP)',
      'Arter basıncı',
      'Kardiyak output',
      'Solunum sayısı',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Preload\'un dolaylı göstergesi olan CVP, sağ kalbe dönen venöz doluşu temsil eder.',
  ),
  Question(
    question:
        'Aşağıdaki parametrelerden hangisi Swan-Ganz kateteri ile direkt olarak ölçülemez?',
    options: [
      'Pulmoner arter basıncı',
      'Kardiyak output',
      'Pulmoner kapiller wedge basıncı',
      'Sol atriyum basıncı',
      'Santral venöz basınç',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Sol atriyum basıncı, doğrudan ölçülemez; PCWP dolaylı bir göstergesidir.',
  ),
  Question(
    question:
        'Hangi volatil anestezik ajan, kardiyak sensitizasyon nedeniyle katekolaminle ilişkili aritmilere en çok eğilimlidir?',
    options: ['Sevofluran', 'İzofluran', 'Desfluran', 'Halotan', 'Enfluran'],
    correctAnswerIndex: 3,
    explanation:
        'Halotan, katekolaminlere karşı ventriküler aritmiye neden olabilecek şekilde miyokardı duyarlı hale getirir.',
  ),
  Question(
    question: 'Aşağıdakilerden hangisi afterload\'un artmasına neden olur?',
    options: [
      'Hipotermi',
      'Hipovolemi',
      'Aort stenozu',
      'Sepsis',
      'Venodilatasyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Aort stenozu, sol ventrikül çıkışını zorlaştırır, böylece afterload\'u artırır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi anestezi altında kompansatuvar bradikardiyi tetikleyebilir?',
    options: [
      'Hipotermi',
      'Hipoksi',
      'Yüz siniri uyarısı (örn. okülokardiyak refleks)',
      'Sempatik aktivasyon',
      'Anemi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Özellikle okülokardiyak refleks gibi vagal refleksler, anestezi sırasında bradikardiye neden olabilir.',
  ),
  Question(
    question:
        'Pulmoner kapiller wedge basıncı (PCWP) artarsa aşağıdaki hangi durumdan şüphelenilmelidir?',
    options: [
      'Hipovolemi',
      'Sol ventrikül yetmezliği',
      'Sağ kalp yetmezliği',
      'Periferik vazodilatasyon',
      'Aort koarktasyonu',
    ],
    correctAnswerIndex: 1,
    explanation:
        'PCWP, sol atriyal ve dolaylı olarak sol ventrikül diyastolik basıncını gösterir. Sol kalp yetmezliğinde artar.',
  ),
  Question(
    question:
        'Kardiyopulmoner bypass sırasında hemodilüsyonun başlıca olumsuz etkisi nedir?',
    options: [
      'Hiperkoagülasyon',
      'Hiperkalemi',
      'Düşük oksijen taşıma kapasitesi',
      'Hipervolemi',
      'Artmış viskozite',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Hemodilüsyon, hemotokriti düşürür → oksijen taşıma kapasitesi azalır → doku hipoksisi gelişebilir.',
  ),
  Question(
    question:
        'Anestezi sırasında kalp debisini artıran en önemli fizyolojik parametre hangisidir?',
    options: [
      'Kalp hızı',
      'Sistemik vasküler direnç',
      'Sol atriyal basınç',
      'Solunum sayısı',
      'Perikardiyal sıvı miktarı',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Kalp debisi = SV x HR formülüne göre kalp hızı direkt etkilidir.',
  ),
  Question(
    question: 'Anestezi altında en sık görülen bradikardi nedeni nedir?',
    options: [
      'Kan kaybı',
      'Hipoksi',
      'Vagal uyarı',
      'Hipervolemi',
      'Hipoglisemi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Trakeal manipülasyon ve periton çekilmesi gibi durumlar vagal uyarıya yol açabilir.',
  ),
  Question(
    question:
        'Kardiyak output artışı için en uygun intravasküler sıvı tipi hangisidir?',
    options: [
      'Dekstroz 5%',
      'İzotonik salin',
      'Hipotonik solüsyon',
      'Sodyum bikarbonat',
      'Albumin',
    ],
    correctAnswerIndex: 4,
    explanation:
        'Koloid solüsyonlar (örneğin albumin) intravasküler volümde daha uzun süre kalır.',
  ),
  Question(
    question:
        'Sol ventrikül ejeksiyon fraksiyonu %35 olan hastada hangi durum beklenir?',
    options: [
      'Normal sistolik fonksiyon',
      'Sistolik disfonksiyon',
      'Diyastolik disfonksiyon',
      'Pulmoner hipertansiyon',
      'Aort darlığı',
    ],
    correctAnswerIndex: 1,
    explanation: 'EF <40 olan durumlar sistolik disfonksiyonla uyumludur.',
  ),
  Question(
    question: 'Valsalva manevrası sırasında venöz dönüş ne olur?',
    options: [
      'Artar',
      'Değişmez',
      'Azalır',
      'Önce artar sonra azalır',
      'Periferik direnç artar',
    ],
    correctAnswerIndex: 2,
    explanation: 'Torasik basınç artışı nedeniyle venöz dönüş azalır.',
  ),
  Question(
    question:
        'Ejektif fraksiyon (EF) %25 olan bir hastada hangi klinik bulgu daha olasıdır?',
    options: [
      'Ortostatik hipertansiyon',
      'Konfüzyon ve dispne',
      'Bradikardi',
      'Hipervolemiye bağlı taşikardi',
      'Hipoksemi olmadan taşipne',
    ],
    correctAnswerIndex: 1,
    explanation:
        'EF %25 ciddi sistolik disfonksiyona işaret eder ve düşük perfüzyona bağlı konfüzyon, akciğer konjesyonuna bağlı dispne görülür.',
  ),
  Question(
    question: 'Hiperkapni (PaCO₂ ↑) kalp üzerinde nasıl bir etki yapar?',
    options: [
      'Vazokonstriksiyon',
      'Vazodilatasyon ve taşikardi',
      'Bradikardi ve hipotansiyon',
      'Kontraktilite artışı',
      'Otonomik inhibisyon',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Hiperkapni sempatik sistemi aktive ederek taşikardi ve vazodilatasyona neden olur.',
  ),
  Question(
    question:
        'Kardiyopulmoner baypas sırasında en sık kullanılan hipotermi tipi nedir?',
    options: [
      'Derin hipotermi (<20°C)',
      'Hafif hipotermi (34–36°C)',
      'Orta hipotermi (28–32°C)',
      'Normotermi',
      'Aşırı hipotermi (<10°C)',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Orta dereceli hipotermi organ koruması sağlar ve yaygın olarak tercih edilir.',
  ),
  Question(
    question:
        'Kalp debisinin sürekliliğini sağlayan en önemli parametre hangisidir?',
    options: [
      'Aortik darlık',
      'Sol atriyum basıncı',
      'Venöz dönüş',
      'Pulmoner vasküler direnç',
      'Kardiyak kontraktilite',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Venöz dönüş kalbin doluşunu etkileyerek CO üzerinde belirleyicidir.',
  ),
  Question(
    question: 'Kardiyojenik şokta en sık kullanılan inotrop ajan hangisidir?',
    options: [
      'Fenilefrin',
      'Noradrenalin',
      'Dopamin',
      'Dobutamin',
      'Adrenalin',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Dobutamin β1 agonisttir, kardiyak kontraktiliteyi artırarak kardiyojenik şokta etkilidir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi myokardiyal kontraktiliteyi doğrudan artırır?',
    options: [
      'Beta-1 adrenerjik stimülasyon',
      'Vagus siniri aktivasyonu',
      'Aortik kan basıncının düşmesi',
      'Preload artışı',
      'Postload azalması',
    ],
    correctAnswerIndex: 0,
    explanation:
        'β1 reseptör stimülasyonu (örneğin dobutamin ile) pozitif inotrop etki ile kontraktiliteyi artırır.',
  ),
  Question(
    question:
        'Anestezide kullanılan hangi inhalasyon ajanı en fazla hipotansiyona yol açabilir?',
    options: ['İzofluran', 'Halotan', 'Sevofluran', 'Desfluran', 'N₂O'],
    correctAnswerIndex: 0,
    explanation:
        'İzofluran, sistemik vazodilatasyon yaparak belirgin hipotansiyona neden olabilir.',
  ),
  Question(
    question:
        'Kalp hızı çok arttığında (örneğin >150/dk) kalp debisinde ne olur?',
    options: [
      'Artar',
      'Değişmez',
      'Hafif azalır',
      'Belirgin azalır',
      'Önce artar sonra azalır',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Hızlı kalp atışı diyastolik doluşu kısaltır → stroke volume düşer → CO azalır.',
  ),
  Question(
    question: 'Kardiyak output ölçümünde en sık kullanılan yöntem hangisidir?',
    options: [
      'Ekokardiyografi',
      'Swan-Ganz kateteri (termodilüsyon)',
      'Arteriyel kan basıncı',
      'Elektrokardiyografi',
      'Pulse oksimetre',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Termodilüsyon yöntemiyle CO ölçümü genellikle Swan-Ganz kateteriyle yapılır.',
  ),
  Question(
    question: 'Anestezide baroreseptör refleksi baskılanırsa ne olur?',
    options: [
      'Hipertansiyona karşı daha hızlı yanıt',
      'Hipotansiyona karşı kompansasyon artar',
      'Kalp hızı düşer',
      'Taşikardi yanıtı zayıflar',
      'Refleks bradikardi artar',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Baroreseptör duyarlılığı azalınca hipotansiyona karşı kompansatuvar taşikardi azalır.',
  ),
  Question(
    question:
        'Düşük ejeksiyon fraksiyonu olan hastada anestezi sırasında en dikkat edilmesi gereken parametre?',
    options: [
      'Kalp hızı',
      'SpO₂',
      'Solunum sayısı',
      'Arter basıncı',
      'Kontraktilite',
    ],
    correctAnswerIndex: 4,
    explanation:
        'EF düşük olan hastada kontraktiliteyi korumak, kardiyak output için kritik önemdedir.',
  ),
  Question(
    question:
        'Kardiyak kontraktiliteyi değerlendirmede en uygun ölçüm hangisidir?',
    options: [
      'Kalp hızı',
      'Santral venöz basınç',
      'Ejektif fraksiyon (EF)',
      'Arteriyel tansiyon',
      'Pulmoner arter basıncı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'EF, sol ventrikülün sistolik performansını değerlendirmede kullanılır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi kalp debisini artıran fizyolojik bir durumdur?',
    options: [
      'Vagal tonus artışı',
      'Anestezi derinliğinin artması',
      'Egzersiz',
      'Hipotermi',
      'Sedasyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Egzersiz sırasında sempatik aktivite artar, bu da kalp hızını ve kasılmayı artırır.',
  ),
  Question(
    question:
        'Hangi ilaç pulmoner vasküler direnci artırarak sağ ventrikül yükünü yükseltebilir?',
    options: [
      'Dobutamin',
      'Adenozin',
      'Noradrenalin',
      'Nitrat',
      'Prostacyclin',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Noradrenalin sistemik ve pulmoner vazokonstriksiyona yol açarak sağ ventrikül yükünü artırabilir.',
  ),
  Question(
    question: 'Kalbin diyastol süresi ne ile ilişkilidir?',
    options: [
      'Kalp hızı',
      'Preload',
      'Kontraktilite',
      'Afterload',
      'Sol atriyum basıncı',
    ],
    correctAnswerIndex: 0,
    explanation: 'Kalp hızı arttıkça diyastol süresi kısalır.',
  ),
  Question(
    question: 'Kalp hızı aniden düştüğünde stroke volüm ne olur?',
    options: [
      'Artar',
      'Azalır',
      'Değişmez',
      'Önce artar sonra düşer',
      'Sistol süresi uzar',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Kalp hızı düştüğünde doluş süresi uzar, bu da stroke volume\'ü artırır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi arteriyel kan basıncını belirleyen ana faktörlerden biridir?',
    options: [
      'Venöz kapakçıklar',
      'Plazma ozmolaritesi',
      'Kardiyak output',
      'Solunum hızı',
      'Santral sinir sistemi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Arteriyel kan basıncı = CO x SVR formülüne göre kardiyak output belirleyicidir.',
  ),
  Question(
    question:
        'Kalbin oksijen tüketimini en fazla etkileyen determinan hangisidir?',
    options: [
      'Duvar gerilimi',
      'Kalp hızı',
      'Kontraktilite',
      'Afterload',
      'Preload',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Laplace yasasına göre duvar gerilimi (T) = (P × r) / 2h; miyokard O₂ tüketiminin %50\'sinden sorumludur.',
  ),
  Question(
    question: 'Hangisi pulmoner vasküler direnci (PVR) artıran faktördür?',
    options: [
      'Hipoksi',
      'Asetilkolin',
      'Nitrik oksit',
      'Prostasiklin',
      'Alkaloz',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Hipoksik pulmoner vazokonstriksiyon (Euler-Liljestrand refleksi) PVR\'yi artırır.',
  ),
  Question(
    question: 'Koroner perfüzyon basıncı (CPP) nasıl hesaplanır?',
    options: [
      'CPP = Diyastolik AO basıncı - LVEDP',
      'CPP = Sistolik AO basıncı - CVP',
      'CPP = MAP - PCWP',
      'CPP = PAOP - RVEDP',
      'CPP = DBP - RAP',
    ],
    correctAnswerIndex: 0,
    explanation: 'Koroner dolum diyastolde olur; normal CPP >60 mmHg\'dır.',
  ),
  Question(
    question: '"Preload"ı en iyi temsil eden klinik ölçüm hangisidir?',
    options: [
      'Pulmoner kapiller kama basıncı (PCWP)',
      'Sistemik vasküler direnç',
      'Ortalama arter basıncı',
      'Santral venöz basınç',
      'Kardiyak output',
    ],
    correctAnswerIndex: 0,
    explanation:
        'PCWP ≈ sol ventrikül end-diyastolik basınç (LVEDP); normal 8-12 mmHg.',
  ),
  Question(
    question: 'Hangisi kardiyojenik şokta görülen hemodinamik profildir?',
    options: [
      '↓CO, ↑PCWP, ↑SVR',
      '↑CO, ↓PCWP, ↓SVR',
      '↑CO, ↑PCWP, ↑SVR',
      '↓CO, ↓PCWP, ↓SVR',
      'Normal CO, normal PCWP',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Kardiyak pompa yetersizliği → düşük debi, yüksek dolum basınçları, kompansatuar vazokonstriksiyon.',
  ),
  Question(
    question: 'Hangisi pulmoner hipertansiyon tedavisinde kullanılmaz?',
    options: [
      'Beta blokerler',
      'Nitrik oksit',
      'Prostasiklin',
      'Sildenafil',
      'Kalsiyum kanal blokerleri',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Beta blokerler sağ kalp afterloadını artırarak durumu kötüleştirir; diğerleri pulmoner vazodilatördür.',
  ),
  Question(
    question: 'Hangisi volüm yüklenmesinin en erken bulgusudur?',
    options: [
      'PCWP artışı',
      'Periferik ödem',
      'Pulmoner ödem',
      'Oligüri',
      'Hepatomegali',
    ],
    correctAnswerIndex: 0,
    explanation:
        'PCWP >18 mmHg pulmoner konjesyonu gösterir; klinik bulgular daha geç ortaya çıkar.',
  ),
  Question(
    question: 'Hangisi anestezi sırasında kardiyak arrestin en sık nedenidir?',
    options: [
      'Hipoksi',
      'Hiperkalemi',
      'Asidoz',
      'Hipertansiyon',
      'Hipertermi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Hava yolu komplikasyonlarına bağlı hipoksi, kardiyak arrestin önlenebilir en sık nedenidir.',
  ),
  Question(
    question: 'Hangisi mitral stenozda görülen hemodinamik profildir?',
    options: [
      '↑PCWP, ↓CO, pulmoner hipertansiyon',
      '↓PCWP, ↑CO, sistemik hipotansiyon',
      'Normal PCWP, normal CO',
      '↑CVP, ↓PAOP',
      '↓SVR, ↑PVR',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Mitral darlık → sol atriyal basınç artışı → pulmoner venöz konjesyon → sağ kalp yüklenmesi.',
  ),
  Question(
    question: 'Hangisi aort stenozunda kontrendike olan anestezik yaklaşımdır?',
    options: [
      'Hipovolemi ve vazodilatasyon',
      'Yavaş kalp hızı',
      'Normovolemi',
      'Yüksek sistemik vasküler direnç',
      'Sinüs ritmi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'AS\'de sabit CO nedeniyle SVR düşüşü ciddi hipotansiyon yapar; volüm ve SVR korunmalıdır.',
  ),
  Question(
    question:
        'Hangisi perioperatif miyokard infarktüsünün en sık görüldüğü dönemdir?',
    options: [
      'Postoperatif 3. gün',
      'İndüksiyon sırasında',
      'Cerrahi kesi sırasında',
      'Ekstübasyon sonrası',
      'Anestezi başlangıcında',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Stres yanıtın zirve yaptığı dönem; en sık postop 24-72 saatte görülür.',
  ),
  Question(
    question:
        'Hangisi perioperatif statin kullanımının kardiyoprotektif etki mekanizmasıdır?',
    options: [
      'Plak stabilizasyonu + endotel fonksiyonunu düzeltme',
      'Kan basıncını düşürme',
      'Kalp hızını azaltma',
      'Koagülasyonu inhibe etme',
      'Bronkodilatasyon',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Statinler inflamasyonu azaltarak perioperatif kardiyak olayları %30-50 önler.',
  ),
  Question(
    question: 'Hangisi sağ kalp kateterizasyonunda ölçülemeyen parametredir?',
    options: [
      'Sol ventrikül end-diyastolik basınç (LVEDP)',
      'Pulmoner arter basıncı',
      'Kardiyak output',
      'Santral venöz basınç',
      'Pulmoner kapiller kama basıncı',
    ],
    correctAnswerIndex: 0,
    explanation:
        'PCWP ≈ LVEDP kabul edilir; direkt ölçüm için sol kalp kateterizasyonu gerekir.',
  ),
  Question(
    question:
        'Hangisi perioperatif atrial fibrilasyon tedavisinde ilk seçenektir?',
    options: [
      'Beta blokerler',
      'Kalsiyum kanal blokerleri',
      'Digoksin',
      'Amiodaron',
      'Elektriksel kardiyoversiyon',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Hemorodinamik stabil hastalarda ilk seçenek; amiodaron ve CCB alternatiflerdir.',
  ),
  Question(
    question:
        'Hangisi anestezi sırasında pulmoner emboli şüphesinde ilk tanı yöntemidir?',
    options: [
      'EKG ve arteriyel kan gazı',
      'D-dimer',
      'BT pulmoner anjiyografi',
      'Ventilasyon/perfüzyon sintigrafisi',
      'Ekokardiyografi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'EKG\'de S1Q3T3 paterni, ABG\'de hipoksi+respiratuar alkaloz erken bulgulardır.',
  ),
];