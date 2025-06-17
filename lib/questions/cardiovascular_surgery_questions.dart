import '../models/question.dart';

final List<Question> cardiovascularSurgeryQuestions = [
  Question(
    question:
        'Kardiyopulmoner bypass (KPB) sırasında en sık görülen hemodinamik komplikasyon hangisidir?',
    options: [
      'Hipertansiyon',
      'Hipovolemi',
      'Hipotansiyon',
      'Bradyaritmi',
      'Hipoksi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'KPB sırasında hemodilüsyon, sistemik vazodilatasyon ve soğutma gibi faktörler nedeniyle en sık hipotansiyon görülür.',
  ),
  Question(
    question:
        'Kardiyopulmoner bypass (CPB) sırasında kullanılan pompa tipi hangisidir?',
    options: [
      'Peristaltik pompa',
      'Santrifüj pompa',
      'Pnömatik pompa',
      'Basınçlı piston',
      'Laminer akış pompası',
    ],
    correctAnswerIndex: 1,
    explanation:
        'CPB\'de en sık santrifüj pompalar kullanılır; daha az hemoliz ve emboli riski taşırlar.',
  ),
  Question(
    question: 'Açık kalp cerrahisinde kross klemp süresi neyi ifade eder?',
    options: [
      'Kalbin durdurulma süresi',
      'Anestezinin başlama süresi',
      'Kanülasyon süresi',
      'Aortik akımın durdurulma süresi',
      'CPB\'nin başlatıldığı süre',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Kross klemp süresi, aortun klemplendiği (kan akımının kesildiği) süredir ve iskemi süresi ile doğrudan ilişkilidir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi CPB sırasında en sık görülen komplikasyondur?',
    options: [
      'Tromboz',
      'Hipertermi',
      'Hemoliz',
      'Hiperkalsemi',
      'Hiperglisemi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'CPB sırasında kanın yabancı yüzeylerle teması hemolize neden olabilir.',
  ),
  Question(
    question:
        'KPB\'de kullanılan kanülasyon sırasında en çok dikkat edilmesi gereken komplikasyon hangisidir?',
    options: [
      'Hipotermi',
      'Hava embolisi',
      'Hipotansiyon',
      'Hiperkalemi',
      'Aritmi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Açık kalp cerrahisinde venöz veya aortik kanülasyon sırasında hava embolisi riski yüksektir → dikkatli hava boşaltımı gerekir.',
  ),
  Question(
    question:
        'CPB sonlandırılırken dolaşımın yeniden başlatılması sırasında en dikkat edilmesi gereken parametre nedir?',
    options: [
      'Vücut sıcaklığı',
      'Oksijen satürasyonu',
      'Kan şekeri',
      'Sistemik vasküler direnç',
      'Kalp ritmi',
    ],
    correctAnswerIndex: 4,
    explanation:
        'CPB sonlandırılirken kalbin ritmik ve efektif çalıştığının doğrulanması gerekir.',
  ),
  Question(
    question:
        'CPB sırasında hematokrit hangi düzeyin altında tutulursa doku oksijenasyonu bozulabilir?',
    options: ['%40', '%35', '%30', '%25', '%20'],
    correctAnswerIndex: 3,
    explanation:
        'Genellikle CPB\'de hematokrit %25\'in altına düşürülmez, çünkü dokulara oksijen taşıma kapasitesi azalır.',
  ),
  Question(
    question:
        'CPB sırasında serebral perfüzyonun izlenmesinde en sık kullanılan yöntem hangisidir?',
    options: [
      'EEG',
      'BIS monitörü',
      'NIRS (yakın kızılötesi spektroskopi)',
      'Entropi',
      'ETCO₂',
    ],
    correctAnswerIndex: 2,
    explanation:
        'NIRS, frontal beyin dokusunda oksijenlenmeyi izler ve serebral hipoperfüzyonun erken saptanmasını sağlar.',
  ),
  Question(
    question:
        'Açık kalp cerrahisinden sonra en sık görülen ritim bozukluğu hangisidir?',
    options: [
      'Ventriküler taşikardi',
      'Atrial fibrilasyon',
      'Sinüs arresti',
      'Ventriküler fibrilasyon',
      'AV blok',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Postoperatif atriyal fibrilasyon, özellikle ilk 2-3 gün içinde açık kalp cerrahisi sonrası en sık gelişen ritim bozukluğudur.',
  ),
  Question(
    question: 'Kardiyak cerrahi sonrası en sık karşılaşılan aritmi nedir?',
    options: [
      'Ventriküler taşikardi',
      'Ventriküler fibrilasyon',
      'Atriyal fibrilasyon',
      'AV blok',
      'Sinüs bradikardisi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Atriyal fibrilasyon, özellikle ilk 48 saatte en sık gözlenen postoperatif aritmidir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi kardiyopulmoner bypass sonrası erken dönemde en sık görülen komplikasyonlardan biridir?',
    options: [
      'Aort diseksiyonu',
      'Akut renal yetmezlik',
      'Hipertansif kriz',
      'Kafa içi basınç artışı',
      'Pankreatit',
    ],
    correctAnswerIndex: 1,
    explanation:
        'KPB sonrası düşük perfüzyon ve inflamatuvar yanıt nedeniyle böbrek fonksiyonları sık etkilenir → akut renal yetmezlik sık görülür.',
  ),
  Question(
    question:
        'CPB sırasında kullanılan prime solüsyonu genellikle aşağıdakilerden hangisini içermez?',
    options: [
      'Kristalloid solüsyon',
      'Mannitol',
      'Heparin',
      'İzotonik glukoz',
      'Düşük doz dopamin',
    ],
    correctAnswerIndex: 4,
    explanation:
        'CPB prime solüsyonları kristalloid, heparin, mannitol gibi içeriklerle hazırlanır. Dopamin içermez.',
  ),
  Question(
    question:
        'KPB sırasında soğuk kardiyoplejinin içeriğinde yüksek miktarda bulunan iyon hangisidir?',
    options: ['Sodyum', 'Magnezyum', 'Potasyum', 'Kalsiyum', 'Klor'],
    correctAnswerIndex: 2,
    explanation:
        'Kardiyopleji solüsyonu, yüksek potasyum içeriğiyle depolarizasyon blokajı yaparak kalbi durdurur.',
  ),
  Question(
    question:
        'CPB sırasında hipotermi uygulamasının en olası yan etkisi nedir?',
    options: [
      'Hiperkalsemi',
      'Koagülopati',
      'Hiperglisemi',
      'Aritmi',
      'Hipotansiyon',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Hipotermi kanın pıhtılaşmasını bozar ve koagülopati riskini artırır.',
  ),
  Question(
    question:
        'KPB sırasında heparin dozunun yetersizliğini saptamak için hangi test kullanılır?',
    options: [
      'INR',
      'ACT (Activated Clotting Time)',
      'aPTT',
      'TT',
      'Fibrinojen düzeyi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'ACT, heparin etkisini değerlendirmede kullanılır. KPB için genellikle >400–480 sn hedeflenir.',
  ),
  Question(
    question:
        'CPB sonlandırılmadan önce ısıtma işleminde hedef vücut sıcaklığı nedir?',
    options: ['30°C', '32°C', '34°C', '36°C', '38°C'],
    correctAnswerIndex: 3,
    explanation:
        'CPB sonlandırılmadan önce vücut sıcaklığı yaklaşık 36°C\'ye çıkarılmalıdır.',
  ),
  Question(
    question: 'CPB sonrası geç uyanma olgularında en sık neden hangisidir?',
    options: [
      'Residüel hipnotik ilaç',
      'Hipotermi',
      'Hiperglisemi',
      'Aritmi',
      'Anemi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Hipotermi, metabolizmayı yavaşlatarak geç uyanmaya neden olabilir.',
  ),
  Question(
    question:
        'KPB sonrasında protamin verilmesiyle en çok karşılaşılan komplikasyon hangisidir?',
    options: [
      'Hiperglisemi',
      'Aritmi',
      'Hipotansiyon',
      'Hipertansiyon',
      'Renal disfonksiyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Protamin, hızlı verilirse histamin salınımına ve vazodilatasyona yol açar → hipotansiyon gelişebilir.',
  ),
  Question(
    question:
        'KPB uygulanan hastada vazoplejik sendrom gelişirse en uygun tedavi yaklaşımı nedir?',
    options: [
      'Dopamin infüzyonu',
      'Yüksek doz sıvı yüklemesi',
      'Metilen mavisi',
      'Adrenalin bolusu',
      'Deksametazon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Vazoplejik sendrom, NO artışına bağlı refrakter hipotansiyondur → metilen mavisi, NO yolunu bloke ederek tedavi sağlar.',
  ),
  Question(
    question:
        'Kardiyak cerrahi sonrası en sık görülen solunum sistemi komplikasyonu nedir?',
    options: [
      'Bronkospazm',
      'Pulmoner emboli',
      'Atelektazi',
      'Pnömotoraks',
      'ARDS',
    ],
    correctAnswerIndex: 2,
    explanation:
        'CPB sonrası en sık görülen pulmoner komplikasyon atelektazidir.',
  ),
  Question(
    question:
        'KPB sırasında sistemik inflamatuvar yanıtın başlıca nedeni nedir?',
    options: [
      'Soğuk uygulama',
      'Kanın yapay yüzeylerle teması',
      'Kardiyopleji uygulaması',
      'Hipotermi',
      'Heparin kullanımı',
    ],
    correctAnswerIndex: 1,
    explanation:
        'KPB\'de kanın yapay yüzeylerle teması, sitokin salınımı ve inflamatuvar yanıtı tetikler → SIRS benzeri tablo gelişebilir.',
  ),
  Question(
    question:
        'Kalp cerrahisinde re-entübasyon ihtiyacı en sık hangi nedenle olur?',
    options: [
      'Hipoglisemi',
      'Hipotermi',
      'Solunum depresyonu ve ödem',
      'Hipokalsemi',
      'Yüksek hematokrit',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Pulmoner ödem, solunum depresyonu ve yetersiz solunum → re-entübasyonun başlıca nedenleridir.',
  ),
  Question(
    question:
        'Kardiyak cerrahi sonrası kullanılan en yaygın analjezik ajan hangisidir?',
    options: ['Paracetamol', 'Morfin', 'Ketamin', 'Lidokain', 'Tramadol'],
    correctAnswerIndex: 1,
    explanation:
        'Morfin, güçlü analjezik etkisi nedeniyle kardiyak cerrahi sonrası sık kullanılır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi KPB sonrası gelişen beyin hasarının en sık nedenlerinden biridir?',
    options: [
      'Hiperkalemi',
      'İntraoperatif hiperventilasyon',
      'Embolizasyon',
      'Hipotermi',
      'Hipokapni',
    ],
    correctAnswerIndex: 2,
    explanation:
        'KPB sırasında hava ya da pıhtı embolileri serebral dolaşıma geçebilir → nörolojik defisit en sık bu nedenle gelişir.',
  ),
  Question(
    question:
        'Kardiyovasküler cerrahilerde intraoperatif hipotermiye bağlı gelişebilecek en önemli komplikasyon hangisidir?',
    options: [
      'Hipoglisemi',
      'Koagülopati',
      'Bradikardi',
      'Hipertansiyon',
      'Hiperkapni',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Hipotermi pıhtılaşma faktörlerini inhibe ederek kanama riskini artırır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi kardiyopulmoner bypass sırasında tercih edilen ideal hematokrit aralığıdır?',
    options: ['%20–25', '%25–30', '%30–35', '%35–40', '%40–45'],
    correctAnswerIndex: 1,
    explanation:
        'Hemodilüsyon nedeniyle %25–30 arası hematokrit, oksijen taşıma ve viskozite dengesi açısından idealdir.',
  ),
  Question(
    question:
        'Kardiyak cerrahide kullanılan monitörlerden hangisi kardiyak output\'u direkt olarak ölçer?',
    options: [
      'EKG',
      'Pulse oksimetre',
      'Arteriyel basınç monitörü',
      'Swan-Ganz kateteri',
      'NIBP monitörü',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Swan-Ganz kateteri ile kardiyak output termodilüsyon yöntemiyle direkt ölçülebilir.',
  ),
  Question(
    question:
        'KPB sırasında hücre koruyucu ajan olarak kullanılan ve antioksidan özellik taşıyan madde aşağıdakilerden hangisidir?',
    options: ['Dopamin', 'Glukoz', 'Mannitol', 'Metilen mavisi', 'Furosemid'],
    correctAnswerIndex: 2,
    explanation:
        'Mannitol, osmotik diüretik etkisinin yanı sıra serbest radikal temizleyici (antioksidan) özellik taşır → hücreleri korur.',
  ),
  Question(
    question: 'CPB sonrası gelişen "pump head" sendromu ne ile karakterizedir?',
    options: [
      'Hipotansiyon',
      'Nörokognitif bozukluk',
      'Arteriyel tromboz',
      'Hipertermi',
      'Sinüs bradikardisi',
    ],
    correctAnswerIndex: 1,
    explanation:
        '"Pump head" CPB sonrası geçici veya kalıcı bilişsel bozulma ile karakterizedir.',
  ),
  Question(
    question: 'KPB sırasında soğutulmuş kan verilmesinin amacı nedir?',
    options: [
      'Kalp hızını artırmak',
      'Vazodilatasyonu artırmak',
      'Metabolizmayı yavaşlatmak',
      'Hipotansiyonu düzeltmek',
      'Koagülasyonu artırmak',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Hipotermi, hücre metabolizmasını yavaşlatır → iskemik hasarı azaltır ve organ koruması sağlar.',
  ),
  Question(
    question:
        'Aşağıdaki ajanlardan hangisi protamin reaksiyonu riskini artırır?',
    options: [
      'Beta bloker',
      'Nitrik oksit',
      'NPH insülin',
      'Antibiyotik',
      'Heparin',
    ],
    correctAnswerIndex: 2,
    explanation:
        'NPH insülinde protamin sülfat bulunur → daha önce maruz kalan bireylerde alerjik reaksiyon riski artar.',
  ),
  Question(
    question:
        'CPB sonrası ilk spontan kalp atımı genellikle hangi ritimle başlar?',
    options: [
      'Sinüs ritmi',
      'Ventriküler taşikardi',
      'Atriyal fibrilasyon',
      'Ventriküler fibrilasyon',
      'AV blok',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Kalp yeniden çalıştığında sıklıkla ventriküler fibrilasyon gelişir ve defibrilasyon gerekebilir.',
  ),
  Question(
    question:
        'KPB sırasında hava embolisini önlemek için en önemli uygulama hangisidir?',
    options: [
      'Trendelenburg pozisyonu',
      'Arteriyel kanülasyona geçmeden önce hava tahliyesi',
      'Antikoagülasyon',
      'Oksijenin artırılması',
      'Hiperventilasyon',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Kanülasyonda hava girişi riski vardır → özellikle arteriyel hatta hava tahliyesi yapılmadan sistem çalıştırılmamalıdır.',
  ),
  Question(
    question:
        'Kardiyak cerrahi sırasında transözofageal ekokardiyografi (TEE) kullanımı neyi değerlendirmede en faydalıdır?',
    options: [
      'Elektrolit dengesini',
      'Karaciğer perfüzyonunu',
      'Sol ventrikül fonksiyonunu',
      'İntraoperatif kan kaybını',
      'CPB basıncını',
    ],
    correctAnswerIndex: 2,
    explanation:
        'TEE en iyi sol ventrikül fonksiyonunu ve valvüler yapıları değerlendirir.',
  ),
  Question(
    question:
        'KPB sırasında gelişen hemodilüsyonun potansiyel etkisi aşağıdakilerden hangisidir?',
    options: [
      'Hiperkalsemi',
      'Artmış kan viskozitesi',
      'Düşük oksijen taşıma kapasitesi',
      'Hipotermi toleransının azalması',
      'Koagülasyonun artması',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Hemodilüsyon, eritrosit sayısını ve hemoglobini düşürür → oksijen taşıma kapasitesi azalır.',
  ),
  Question(
    question:
        'KPB sırasında perfüzyon basıncı düşerse en önce etkilenecek organ hangisidir?',
    options: ['Deri', 'Akciğer', 'Beyin', 'Karaciğer', 'Kas'],
    correctAnswerIndex: 2,
    explanation:
        'Beyin, perfüzyon basıncına karşı çok duyarlıdır → MAP düşerse ilk etkilenen kritik organdır.',
  ),
  Question(
    question:
        'CPB sırasında oluşabilecek sistemik inflamasyonun azaltılmasında aşağıdaki önlemlerden hangisi en etkisizdir?',
    options: [
      'Ultrafiltrasyon',
      'Steroid kullanımı',
      'Heparin kaplı devreler',
      'Hipotermi',
      'İnterlökin-6 inhibitörleri',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Hipotermi inflamasyonu azaltmaz; aksine bazı inflamatuvar süreçleri artırabilir.',
  ),
  Question(
    question:
        'KPB sırasında serum elektrolit düzeylerinin takibi neden önemlidir?',
    options: [
      'Hipokalemi miyokardiyal iletiyi bozabilir',
      'Hipernatremi trombozu artırır',
      'Hipokalsemi pıhtılaşmayı hızlandırır',
      'Hipomagnezemi taşikardiyi önler',
      'Hipokloremi alkalozu baskılar',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Hipokalemi, ventriküler aritmilere yol açabilir → KPB sırasında düzenli elektrolit izlemi önemlidir.',
  ),
  Question(
    question:
        'CPB sonrası gelişen düşük kardiyak output sendromunun (LCOS) tedavisinde ilk tercih edilen ajan hangisidir?',
    options: ['Dopamin', 'Dobutamin', 'Adrenalin', 'Noradrenalin', 'Furosemid'],
    correctAnswerIndex: 1,
    explanation:
        'Dobutamin pozitif inotrop etkisiyle düşük kalp debisini düzeltmekte ilk tercihtir.',
  ),
  Question(
    question:
        'KPB sonrası gelişen "low output sendromu" için ilk tedavi yaklaşımı nedir?',
    options: [
      'Vazodilatör verilmesi',
      'Yüksek doz furosemid',
      'Inotropik ajan başlanması',
      'Beta bloker verilmesi',
      'Nitrik oksit uygulanması',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Low output sendromu, kardiyak pompa yetmezliğidir → dobutamin gibi inotropik ajanlar ilk tercihtir.',
  ),
  Question(
    question:
        'CPB sonrası kan transfüzyonu yapılırken en çok dikkat edilmesi gereken parametre nedir?',
    options: [
      'Kan şekeri',
      'Kalsiyum düzeyi',
      'Magnezyum düzeyi',
      'Kreatinin',
      'Potasyum',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Sitratlı kan ürünleri kalsiyum bağlayarak hipokalsemiye neden olabilir.',
  ),
  Question(
    question:
        'Aşağıdaki ajanlardan hangisi kardiyopleji çözeltisinde bulunmaz?',
    options: ['Potasyum', 'Sodyum', 'Magnezyum', 'Kalsiyum', 'Adrenalin'],
    correctAnswerIndex: 4,
    explanation:
        'Adrenalin, kardiyoplejide yer almaz. Kardiyopleji, genellikle yüksek potasyum, düşük kalsiyum içerir.',
  ),
  Question(
    question:
        'Kardiyak cerrahiden sonra en sık görülen postoperatif nörolojik komplikasyon nedir?',
    options: [
      'Epileptik nöbet',
      'Deliryum',
      'İskemik inme',
      'Subaraknoid kanama',
      'Posterior reversibl ensefalopati',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Deliryum, özellikle yaşlı hastalarda CPB sonrası sık gözlenen bir komplikasyondur.',
  ),
  Question(
    question:
        'KPB sonrası sternal ayrılma ve mediastinit riskini artıran faktörlerden biri hangisidir?',
    options: [
      'Hipotermi',
      'Sigara kullanımı',
      'Preop aspirin kullanımı',
      'Erkek cinsiyet',
      'İntraoperatif hipertansiyon',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Sigara, doku iyileşmesini bozar ve enfeksiyon riskini artırır → mediastinit ve sternal komplikasyonlar riski yükselir.',
  ),
  Question(
    question:
        'CPB sırasında pulmoner arter basıncını doğrudan etkileyen en önemli faktör nedir?',
    options: [
      'Santral venöz basınç',
      'Sol atriyum basıncı',
      'Pulmoner vasküler direnç',
      'Kardiyak output',
      'Hematokrit',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Pulmoner vasküler direnç, pulmoner arter basıncının belirleyicisidir.',
  ),
  Question(
    question:
        'KPB sonrası uzamış ventilasyon ihtiyacı en sık hangi durumla ilişkilidir?',
    options: [
      'Hipernatremi',
      'Preoperatif pulmoner hastalık',
      'İntraoperatif hipertansiyon',
      'Hipoglisemi',
      'Kalsiyum fazlalığı',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Preop KOAH veya sigara öyküsü, postop dönemde uzamış entübasyon ve ventilasyon ihtiyacını artırır.',
  ),
  Question(
    question:
        'CPB sırasında hipoterminin minimum hedef sıcaklığı genellikle kaç °C\'dir?',
    options: ['28°C', '25°C', '30°C', '34°C', '36°C'],
    correctAnswerIndex: 0,
    explanation:
        'Kardiyoprotektif amaçlı orta derece hipotermide genellikle 28°C hedeflenir.',
  ),
  Question(
    question:
        'KPB sonrası gelişen metabolik asidozun en olası nedeni hangisidir?',
    options: [
      'Respiratuvar depresyon',
      'Laktat birikimi',
      'Hipernatremi',
      'Hiperventilasyon',
      'Oksijen fazlalığı',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Düşük perfüzyon → anaerobik metabolizma → laktik asit artışı → metabolik asidoz gelişir.',
  ),
  Question(
    question:
        'CPB sonrası ventilatörden ayırma (weaning) sırasında öncelikle değerlendirilmesi gereken nedir?',
    options: [
      'Potasyum düzeyi',
      'Kalp ritmi ve debisi',
      'Vücut sıcaklığı',
      'Hematokrit',
      'Kan glukozu',
    ],
    correctAnswerIndex: 1,
    explanation:
        'CPB sonrası kalp yeterli ritim ve debi sağlayabiliyor mu, en kritik değerlendirmedir.',
  ),
  Question(
    question:
        'KPB sırasında heparin dozu yeterli olmasına rağmen ACT yüksek değilse ilk yapılması gereken nedir?',
    options: [
      'Protamin verilmesi',
      'ACT cihazını değiştirmek',
      'Heparin düzeyini artırmak',
      'Antitrombin III düzeyi kontrolü',
      'Transfüzyon yapılması',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Antitrombin III eksikliği, heparin etkisini bozar. ACT yeterince uzamıyorsa AT III düzeyi kontrol edilmeli ve gerekirse replasman yapılmalıdır.',
  ),
  Question(
    question:
        'CPB sonrası gelişen pulmoner hipertansiyonun en olası nedeni nedir?',
    options: [
      'Hipotermi',
      'Pulmoner emboli',
      'Mikrotrombozlar',
      'Sol ventrikül disfonksiyonu',
      'Yüksek doz diüretik',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Sol ventrikül disfonksiyonu, pulmoner konjesyon ve sekonder pulmoner hipertansiyona neden olabilir.',
  ),
  Question(
    question:
        'KPB sonrası gelişen sistemik inflamatuvar yanıtın (SIRS) kliniğini destekleyen bulgulardan biri değildir:',
    options: [
      'Ateş veya hipotermi',
      'Takipne',
      'Lökositoz veya lökopeni',
      'Hipoglisemi',
      'Taşikardi',
    ],
    correctAnswerIndex: 3,
    explanation:
        'SIRS kriterleri içinde glukoz düzeyi yer almaz. Ateş, solunum ve dolaşım parametreleri temel kriterlerdendir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi KPB sonrası gelişen "göğüs tüpü drenajı >100 mL/saat" durumunda ilk değerlendirilmesi gereken faktördür?',
    options: [
      'Hiponatremi',
      'Pıhtılaşma parametreleri',
      'Glukoz düzeyi',
      'Sodyum-potasyum dengesi',
      'Üre-kreatinin',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Anormal drenaj, genellikle koagülopatiye bağlıdır. İlk değerlendirme INR, aPTT, trombosit ile yapılmalıdır.',
  ),
  Question(
    question:
        'Kardiyak cerrahide kullanılan intraaortik balon pompası (IABP) aşağıdakilerden hangisini desteklemek için kullanılır?',
    options: [
      'Postoperatif analjezi',
      'Oksijen taşınımı',
      'Kardiyak output',
      'Nörolojik fonksiyonlar',
      'Renal perfüzyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'IABP, afterload\'u düşürerek ve koroner perfüzyonu artırarak kalbin iş yükünü azaltır, CO\'yu destekler.',
  ),
  Question(
    question:
        'Kardiyak cerrahi sonrası en sık görülen enfeksiyon türü hangisidir?',
    options: [
      'İYE',
      'Mediastinit',
      'Kateter ilişkili bakteriyemi',
      'Pnömoni',
      'Yara enfeksiyonu',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Mekanik ventilasyon, CPB ve immünsüpresyon nedeniyle pnömoni en sık görülen enfeksiyondur.',
  ),
  Question(
    question: 'KPB sonrasında reperfüzyon hasarı en çok hangi organda görülür?',
    options: ['Akciğer', 'Kalp', 'Karaciğer', 'Böbrek', 'Dalak'],
    correctAnswerIndex: 1,
    explanation:
        'Kross klemp sonrası açılan kalpte ani oksijenlenme ve radikal oluşumu → miyokardiyal reperfüzyon hasarı oluşturabilir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi protamin verilmesine bağlı anafilaktoid reaksiyonun en güçlü belirtisidir?',
    options: [
      'Taşikardi',
      'Hipertansiyon',
      'Bradikardi',
      'Ani hipotansiyon ve bronkospazm',
      'Ateş',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Protamin alerjisi, ani bronkospazm, cilt döküntüsü ve ciddi hipotansiyon ile kendini gösterebilir → acil müdahale gerekir.',
  ),
  Question(
    question:
        'Açık kalp cerrahisinde kanın "hemşire tarafından ısıtılması" yerine kan ısıtıcısı kullanılmasının en önemli nedeni nedir?',
    options: [
      'Kan kaybının azalması',
      'Hızlı transfüzyon yapılabilmesi',
      'Kanın pH\'sının korunması',
      'Hipoterminin önlenmesi',
      'Elektrolit dengesinin korunması',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Transfüzyonla verilen soğuk ürünler, hipotermiye yol açabilir. Kan ısıtıcı cihazlarla ideal sıcaklıkta verilmesi sağlanır.',
  ),
  Question(
    question:
        'CPB sonrası hipomagnezemi gelişirse en çok hangi komplikasyon beklenir?',
    options: [
      'Sinüs taşikardisi',
      'Ventriküler aritmi',
      'Atriyal fibrilasyon',
      'AV blok',
      'Bradikardi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Hipomagnezemi özellikle ventriküler ektopik ritimlere neden olabilir.',
  ),
  Question(
    question:
        'KPB sonrası erken dönemde gelişen bradikardi en sık hangi elektrolit bozukluğuna bağlıdır?',
    options: [
      'Hipokalemi',
      'Hiperkalemi',
      'Hipomagnezemi',
      'Hiponatremi',
      'Hipokalsemi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Hiperkalemi, kardiyak iletim sistemini baskılayarak sinüs düğüm fonksiyonunu azaltır → bradikardiye neden olur.',
  ),
  Question(
    question:
        'KPB sonrası hasta ekstübe edilmeden önce en çok dikkat edilmesi gereken kriter aşağıdakilerden hangisidir?',
    options: [
      'Hematokrit düzeyi',
      'Arteriyel basınç',
      'Spontan solunumun yeterliliği',
      'Kalp ritminin sinüs olması',
      'Vücut ısısı',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Ekstübasyon kararı, öncelikle spontan solunumun güvenli ve yeterli olduğuna dayanır.',
  ),
  Question(
    question: 'CPB sonrası en sık görülen elektrolit bozukluğu hangisidir?',
    options: [
      'Hiperkalemi',
      'Hiponatremi',
      'Hipokalsemi',
      'Hipomagnezemi',
      'Hipofosfatemi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Sitratlı kan ürünleri, hemodilüsyon ve paratiroid disfonksiyonu nedeniyle hipokalsemi en sık elektrolit bozukluğudur.',
  ),
  Question(
    question:
        'KPB sırasında pulmoner arter kateteri ile ölçülen "PCWP" yüksekse en olası yorum nedir?',
    options: [
      'Sağ kalp disfonksiyonu',
      'Sol kalp disfonksiyonu',
      'Hipovolemi',
      'Pulmoner emboli',
      'Sepsis',
    ],
    correctAnswerIndex: 1,
    explanation:
        'PCWP (pulmoner kapiller wedge basıncı), sol atriyum basıncını yansıtır → yüksekse sol ventrikül dolum basıncı artmıştır → sol kalp disfonksiyonu düşünülür.',
  ),
  Question(
    question:
        'Aşağıdaki ajanlardan hangisi protamin reaksiyonunu en aza indirmek için en sık kullanılan uygulamadır?',
    options: [
      'Yavaş infüzyon',
      'Glukokortikoid ön medikasyonu',
      'Antihistaminik eklenmesi',
      'Yüksek doz salin uygulanması',
      'Vazopressörle birlikte verilmesi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Protamin sülfat, hızlı verilirse ciddi hipotansiyon ve anaflaktik reaksiyona neden olabilir. Yavaş infüzyon ile bu risk azaltılır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi KPB sonrası en geç ortaya çıkan komplikasyonlardan biridir?',
    options: [
      'Aritmi',
      'Reperfüzyon hasarı',
      'Mediastinit',
      'Hipotermi',
      'Hipotansiyon',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Mediastinit, genellikle postoperatif 4–10. günlerde ortaya çıkar ve ciddi bir infeksiyon komplikasyonudur.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi KPB sırasında kalbin zarar görmemesi için uygulanan en etkili koruma stratejisidir?',
    options: [
      'Hiperkalemi indüksiyonu',
      'Isıtılmış kan verilmesi',
      'Kardiyopleji',
      'İnfüzyonla adrenalin verilmesi',
      'Kalbin hiperventilasyonu',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Kardiyopleji, kalbi depolarizasyon blokajıyla durdurur ve soğutularak metabolik ihtiyaçlar azaltılır, bu sayede kalp korunur.',
  ),
  Question(
    question:
        'KPB sonrası serum laktat düzeyinin yükselmesi neyin göstergesidir?',
    options: [
      'Hiperventilasyon',
      'Hipoventilasyon',
      'Düşük doku perfüzyonu',
      'Metabolik alkaloz',
      'Aşırı sıvı yükü',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Laktat artışı, anaerobik metabolizmanın bir göstergesidir ve yetersiz doku oksijenlenmesine işaret eder.',
  ),
  Question(
    question:
        'KPB sonrası gelişen hipotansiyonun en olası nedeni aşağıdakilerden hangisidir?',
    options: [
      'Hiperkalemi',
      'Hipoglisemi',
      'Vazodilatasyon ve düşük SVR',
      'Hipervolemi',
      'Hipernatremi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'KPB sonrası NO salınımı ve inflamatuvar yanıt nedeniyle vazodilatasyon oluşur → SVR düşer → hipotansiyon gelişebilir.',
  ),
  Question(
    question:
        'KPB sonrası en sık karşılaşılan hematolojik komplikasyon hangisidir?',
    options: [
      'Trombositopeni',
      'Eritrositoz',
      'Polistemi',
      'Hipofibrinojenemi',
      'Hipokoagulabilite',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Heparin kullanımı, hemodilüsyon ve aktivasyon nedeniyle trombositopeni sık gelişir.',
  ),
  Question(
    question:
        'Aşağıdaki durumlardan hangisinde metilen mavisi kullanımı endikedir?',
    options: [
      'Hiperkapni',
      'Hipokalemi',
      'Refrakter vazodilatasyon (vazopleji)',
      'Hiperglisemi',
      'Anemi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Vazopleji sendromunda, nitrik oksit artışı nedeniyle oluşan refrakter hipotansiyon için metilen mavisi tercih edilir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi kardiyopulmoner bypass (CPB) sırasında heparin direncinin en olası nedenidir?',
    options: [
      'Düşük antithrombin III seviyeleri',
      'Yüksek fibrinojen düzeyleri',
      'Trombositopeni',
      'Hiperkalemi',
      'Hipokalsemi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Heparin, antikoagülan etkisini antithrombin III (AT-III) üzerinden gösterir. Heparin, AT-III ile kompleks oluşturarak trombin ve faktör Xa gibi koagülasyon faktörlerinin inaktivasyonunu hızlandırır.',
  ),
  Question(
    question:
        'Koroner arter bypass greftleme (KABG) cerrahisi öncesi hangi ilacın kesilmesi en çok perioperatif koroner spazm riskini artırır?',
    options: [
      'Metoprolol',
      'Klopidogrel',
      'Nitratlar',
      'Diltiazem',
      'Statinler',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Nitratların ani kesilmesi, özellikle koroner arter hastalığı olan bireylerde, perioperatif koroner spazm riskini en fazla artıran durumdur.',
  ),
  Question(
    question:
        'Aort diseksiyonu olan bir hastada anestezi indüksiyonu sırasında en önemli hedef nedir?',
    options: [
      'Hızlı entübasyon',
      'Derin nöromüsküler blokaj',
      'Hemodinamik stabilizasyon (kontrolsüz hipertansiyondan kaçınma)',
      'Yüksek tidal volüm ventilasyonu',
      'Hızlı sıvı resüsitasyonu',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Aort diseksiyonunda anestezi indüksiyonu sırasında en önemli hedef, hemodinamik stabilitenin sağlanmasıdır — özellikle kontrolsüz hipertansiyon ve taşikardiden kaçınılmalıdır.',
  ),
  Question(
    question:
        'Kardiyopulmoner bypass (CPB) sonrası gelişen şiddetli sistemik inflamatuvar yanıtın en önemli belirteci hangisidir?',
    options: [
      'Lökopeni',
      'Yüksek C-reaktif protein (CRP)',
      'Kompleman aktivasyonu',
      'Hiperglisemi',
      'Hipernatremi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Kompleman aktivasyonu, CPB sonrası gelişen sistemik inflamatuvar yanıtın en erken ve en önemli belirtecidir.',
  ),
  Question(
    question:
        'Aort stenozu olan bir hastada anestezi yönetiminde en önemli prensip nedir?',
    options: [
      'Hızlı kalp hızı sağlanması',
      'Sistemik vasküler direncin düşürülmesi',
      'Normovolemi ve normal sinüs ritminin korunması',
      'Yüksek tidal volüm ventilasyonu',
      'Derin anestezi sağlanması',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Aort stenozlu hastalarda en önemli anestezi yönetimi prensibi, normovolemi ve normal sinüs ritminin korunmasıdır. Bu durum, sol ventrikülün dolumunu ve perfüzyonunu sürdürmek açısından kritik önemdedir.',
  ),
  Question(
    question:
        'Mitral stenozlu bir hastada perioperatif dönemde en çok hangi komplikasyondan kaçınılmalıdır?',
    options: [
      'Bradikardi',
      'Taşikardi',
      'Hipervolemi',
      'Hipoksi',
      'Hiperkapni',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Mitral stenozda en çok kaçınılması gereken durum taşikardidir, çünkü sol ventrikül dolumunu bozarak pulmoner konjesyona ve kalp yetmezliğine yol açar.',
  ),
  Question(
    question:
        'Kardiyopulmoner bypass (CPB) sırasında "pulmoner venöz dönüşün azalması" hangi duruma yol açar?',
    options: [
      'Sistemik hipotansiyon',
      'Pulmoner hipertansiyon',
      'Sol ventrikül distansiyonu',
      'Sağ ventrikül yetmezliği',
      'Aortik yetmezlik',
    ],
    correctAnswerIndex: 2,
    explanation:
        'CPB sırasında pulmoner venöz dönüşün azalması, sol ventrikülün boşalamamasına ve distansiyonuna neden olur. Bu durum, ciddi kardiyak komplikasyonlara yol açabileceğinden hızlı müdahale gerektirir.',
  ),
  Question(
    question:
        'Aortik cerrahide spinal koruma için en sık kullanılan yöntem hangisidir?',
    options: [
      'Yüksek doz heparin',
      'Distal aortik perfüzyon + hipotermi',
      'Sadece derin hipotermi',
      'Yüksek doz steroid',
      'Hiperbarik oksijen tedavisi',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Aort cerrahisinde spinal kord koruması için en sık ve etkili kullanılan yöntem, distal aortik perfüzyon ile birlikte uygulanan hipotermidir. Bu yaklaşım, iskemi süresini tolere edilebilir düzeye çekmeye çalışır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi kardiyopulmoner bypass sonrası "postperfüzyon sendromu" bulgularından biri değildir?',
    options: [
      'Akciğer kompliyansında azalma',
      'Sistemik vasküler dirençte artış',
      'Nörolojik disfonksiyon',
      'Böbrek yetmezliği',
      'Koagülopati',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Postperfüzyon sendromu bir vazodilatasyon ve inflamasyon tablosudur. Dolayısıyla "sistemik vasküler dirençte artış" bu sendromun bir parçası değildir.',
  ),
  Question(
    question:
        'Aortik yetmezliği olan bir hastada anestezi indüksiyonu sırasında hangi durumdan kaçınılmalıdır?',
    options: [
      'Hafif bradikardi',
      'Sistemik vasküler dirençte artış',
      'Hızlı kalp hızı',
      'Yüksek tidal volüm',
      'Derin anestezi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Aort yetmezliğinde bradikardiden mutlaka kaçınılmalıdır, çünkü bu durum regürjitan hacmi artırarak sol ventrikül yükünü dramatik şekilde artırır.',
  ),
  Question(
    question:
        'Kardiyopulmoner bypass sırasında "pulsatil olmayan akım"ın en önemli dezavantajı nedir?',
    options: [
      'Böbrek perfüzyonunda bozulma',
      'Serebral hipoksi',
      'Miyokardiyal iskemi',
      'Pulmoner ödem',
      'Koagülopati',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Pulsatil olmayan akımın en önemli ve doğrudan ilişkili komplikasyonu böbrek perfüzyonunun bozulmasıdır.',
  ),
  Question(
    question:
        'Hangi durumda transözofageal ekokardiyografi (TEE) kardiyak cerrahide en yararlıdır?',
    options: [
      'Hava embolisinin tespiti',
      'Kan şekeri takibi',
      'Karaciğer perfüzyonunun değerlendirilmesi',
      'Böbrek kan akımının ölçümü',
      'Nöromonitörizasyon',
    ],
    correctAnswerIndex: 0,
    explanation:
        'TEE, özellikle hava embolisi gibi hayatı tehdit eden komplikasyonları saptamada en duyarlı yöntemlerden biridir. Özellikle açık kalp cerrahisi ya da oturur pozisyonda kraniotomi gibi yüksek riskli durumlarda kullanılır.',
  ),
  Question(
    question:
        'Aortik cerrahide spinal koruma için ideal distal perfüzyon basıncı nedir?',
    options: [
      '20-30 mmHg',
      '40-60 mmHg',
      '70-90 mmHg',
      '100-120 mmHg',
      '>120 mmHg',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Aortik cerrahide spinal koruma amacıyla sağlanan distal aortik perfüzyonun basıncı 40–60 mmHg aralığında tutulmalıdır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi kardiyak tamponadın klasik Beck triadından biri değildir?',
    options: [
      'Juguler venöz dolgunluk',
      'Hipotansiyon',
      'Taşikardi',
      'Sessiz kalp (muffled heart sounds)',
      'Pulsus paradoksus',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Beck Triadı (Klasik 3 belirti): 1. Hipotansiyon – Düşük kardiyak output nedeniyle. 2. Juguler venöz dolgunluk (JVD) – Venöz dönüş engellendiği için. 3. Boğuk kalp sesleri (muffled heart sounds) – Perikardiyal sıvının ses iletimini azaltması nedeniyle.',
  ),
  Question(
    question:
        'Kardiyopulmoner bypass sırasında "heparin direnci" tanısı hangi laboratuvar testi ile konur?',
    options: [
      'ACT (Activated Clotting Time)',
      'INR',
      'aPTT',
      'Kan şekeri',
      'Serum kreatinin',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Standart heparin dozuna rağmen hedeflenen antikoagülasyonun (örneğin ACT > 400–480 sn) sağlanamaması ile tanınır.',
  ),
  Question(
    question:
        'Aortik yetmezliği olan bir hastada perioperatif dönemde en çok hangi durumdan kaçınılmalıdır?',
    options: [
      'Hızlı kalp hızı',
      'Sistemik vasküler dirençte düşme',
      'Bradikardi',
      'Hipervolemi',
      'Hipokapni',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Aortik yetmezlikte (AR), aort kapağı sistol sonrası kapanamadığı için sol ventriküle diyastolde geri akım (regürjitasyon) olur. Bu durum, kalp debisini düşürür ve ventrikül hacim yükü ile karşılaşır. Bradikardide diyastol süresi uzar, durum daha da ağırlaşır.',
  ),
  Question(
    question:
        'Aortik valv replasmanı planlanan hastada preoperatif ekokardiyografide sol ventrikül ejeksiyon fraksiyonu (SVEF) %30 olarak saptanıyor. Bu hasta için en uygun anestezi yönetimi hangisidir?',
    options: [
      'Yüksek doz opioid bazlı anestezi',
      'Volatil anesteziklerle derin anestezi',
      'Spinal anestezi',
      'Nitröz oksit kullanımı',
      'Hipertansif hedeflerle yönetim',
    ],
    correctAnswerIndex: 0,
    explanation:
        'EF %30 olan aortik valv replasmanı planlanan hastada, hemodinamik stabiliteyi sağlayan ve miyokard depresyonu yapmayan bir anestezi yaklaşımı tercih edilmelidir.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi kardiyak tamponadın klasik bulgularından biri değildir?',
    options: [
      'Pulsus paradoksus',
      'Juguler venöz dolgunluk',
      'Berrak akciğer sesleri',
      'Sistolik üfürüm',
      'Hipoksemi',
    ],
    correctAnswerIndex: 3,
    explanation:
        'Bulgular; Pulsus paradoksus, Juguler venöz dolgunluk, Hipotansiyon, Sessiz kalp sesleri, Berrak akciğer sesleri, Hipoksemi, Tansiyon eşitlenmesi kardiyak katlar arası diyastolik basınç eşitliği – ekokardiyografide.',
  ),
  Question(
    question:
        'Mitral kapak replasmanı sonrası gelişen şiddetli pulmoner hipertansiyon ve sağ ventrikül yetmezliğinde ilk tercih edilecek tedavi hangisidir?',
    options: [
      'İnotropik ajanlar (Dobutamin)',
      'Pulmoner vazodilatörler (NO)',
      'Diüretikler',
      'Beta blokerler',
      'Kalsiyum kanal blokerleri',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Mitral kapak replasmanı sonrası gelişen akut şiddetli PH ve sağ ventrikül yetmezliğinde, pulmoner vazodilatörler (özellikle inhale NO) ilk tercih edilen tedavidir.',
  ),
  Question(
    question:
        'Aort diseksiyonu nedeniyle acil cerrahi planlanan hastada anestezi indüksiyonu sırasında en önemli hedef nedir?',
    options: [
      'Hızlı entübasyon',
      'Derin anestezi sağlanması',
      'Hemodinaminin stabil tutulması',
      'Kas gevşetici kullanımı',
      'Hipertansiyonun önlenmesi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'Aort diseksiyonu olan hastada indüksiyon sırasında en önemli hedef hemodinamik stabilitenin sağlanmasıdır. Kan basıncı ve kalp hızındaki ani değişikliklerden kaçınılmalıdır.',
  ),
  Question(
    question:
        'Kardiyopulmoner bypass sonrası gelişen "pump lung" tablosunun en önemli patofizyolojik nedeni nedir?',
    options: [
      'Pulmoner emboli',
      'Nörojenik pulmoner ödem',
      'Sistemik inflamatuar yanıt',
      'Volüm aşırı yüklenmesi',
      'Atelektazi',
    ],
    correctAnswerIndex: 2,
    explanation:
        'CPB sırasında kanın yapay yüzeylerle temas etmesi nedeniyle sistemik inflamatuar yanıt sendromu (SIRS) tetiklenir. Bu yanıt, kompleman aktivasyonu, sitokin salınımı, nötrofil aktivasyonu ile sonuçlanır.',
  ),
  Question(
    question:
        'Karotis endarterektomi sırasında shunt kullanımını gerektiren en önemli durum nedir?',
    options: [
      'Kontralateral karotis darlığı',
      'İntraoperatif EEG değişiklikleri',
      'Hasta uyanıklığı',
      'Operasyon süresinin uzaması',
      'Hipertansiyon',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Karotis endarterektomi sırasında shunt kullanımı en çok intraoperatif EEG değişiklikleri ile gereklilik kazanır.',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi perioperatif miyokardiyal iskeminin en duyarlı göstergesidir?',
    options: [
      'ST segment depresyonu',
      'Taşikardi',
      'Hipoksemi',
      'Hipertansiyon',
      'Atrial fibrilasyon',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Perioperatif miyokardiyal iskemiyi tespit etmek için ST segment depresyonu en duyarlı ve erken gösterge olarak kabul edilir.',
  ),
  Question(
    question:
        'Transözefageal ekokardiyografide (TEE) sağ ventrikül disfonksiyonu gösteren bulgu hangisidir?',
    options: [
      'Septal paradoksal hareket',
      'Mitral kapak prolapsusu',
      'Sol ventrikül hipertrofisi',
      'Aortik plak',
      'Atrial septal defekt',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Septal paradoksal hareket, sağ ventrikül disfonksiyonunun tipik bir bulgusudur. Normalde interventriküler septum sistolde sol ventriküle doğru hareket eder.',
  ),
  Question(
    question: 'Kardiyak cerrahi sonrası en sık görülen aritmi hangisidir?',
    options: [
      'Ventriküler taşikardi',
      'Atrial fibrilasyon',
      'AV blok',
      'Sinüs bradikardisi',
      'WPW sendromu',
    ],
    correctAnswerIndex: 1,
    explanation:
        'Kardiyak cerrahi sonrası en sık aritmi atrial fibrilasyondur.',
  ),
  Question(
    question:
        'Aortik stenozlu bir hastada anestezi yönetiminde aşağıdakilerden hangisi kontrendikedir?',
    options: [
      'Hızlı sıvı yüklemesi',
      'Beta bloker kullanımı',
      'Volatil anestezikler',
      'Vazodilatör tedavi',
      'Epidural anestezi',
    ],
    correctAnswerIndex: 0,
    explanation:
        'Aortik stenozlu hastalarda anestezi yönetimi çok dikkat gerektirir çünkü kalp çıkışı daralmış ve sol ventrikül hipertrofiktir. Bu hastalarda hızlı sıvı yüklemesi kontrendikedir.',
  ),
  Question(
    question:
        'Kardiyopulmoner bypass sırasında en sık görülen nörolojik komplikasyon nedir?',
    options: [
      'İnme',
      'Delirium',
      'Periferik nöropati',
      'Retinal iskemi',
      'Kognitif disfonksiyon',
    ],
    correctAnswerIndex: 4,
    explanation:
        'Kardiyopulmoner bypass (CPB) sırasında ve sonrasında en sık görülen nörolojik komplikasyon postoperatif kognitif disfonksiyondur (POCD).',
  ),
  Question(
    question:
        'Aşağıdakilerden hangisi kardiyojenik şokta kullanılan mekanik destek cihazlarından biri değildir?',
    options: [
      'IABP (İntraaortik balon pompası)',
      'ECMO',
      'LVAD (Sol ventrikül destek cihazı)',
      'CRRT (Sürekli renal replasman tedavisi)',
      'Impella',
    ],
    correctAnswerIndex: 3,
    explanation:
        'CRRT (Sürekli renal replasman tedavisi) böbrek yetmezliği için kullanılır, kardiyojenik şok için mekanik kardiyak destek cihazı değildir.',
  ),
];
