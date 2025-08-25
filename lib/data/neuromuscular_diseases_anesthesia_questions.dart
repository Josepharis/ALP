import '../models/question.dart';

final List<Question> neuromuscularDiseasesAnesthesiaQuestions = <Question>[
  Question(
    question:
        "Aşağıdakilerden hangisi duyarlı bir nöromüsküler blokaj yanıtı olan hastalarda kullanılmaması gereken ajandır?",
    options: [
      "Rocuronyum",
      "Atrakurium",
      "Süksinilkolin",
      "Vekuronyum",
      "Cisatrakurium",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Süksinilkolin, hiperkalemi riskini artırabilir ve nöromüsküler hastalıklarda ciddi komplikasyonlara neden olabilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Duchenne Musküler Distrofisi (DMD) olan bir hastada süksinilkolin kullanımı neden kontrendikedir?",
    options: [
      "Hipotermiye neden olması",
      "Bradikardi yapması",
      "Hiperkalemi ve kardiyak arrest riski",
      "Aşırı bronkospazma neden olması",
      "Renal yetmezlik oluşturması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "DMD hastalarında süksinilkolin, upregüle olmuş asetilkolin reseptörleri nedeniyle şiddetli hiperkalemiye ve kardiyak arreste yol açabilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myastenia Gravis hastasında aşağıdaki kas gevşeticilerden hangisi en düşük dozda kullanılmalıdır?",
    options: [
      "Rokuronyum",
      "Vekuronyum",
      "Cisatrakurium",
      "Atrakurium",
      "Tüm nondepolarizan ajanlar",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Myastenia gravis, nondepolarizan kas gevşeticilere aşırı duyarlılık oluşturur; bu nedenle hepsi çok düşük dozda kullanılmalıdır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumların hangisinde nöromüsküler ileti bozulması nedeniyle anestezi yönetimi daha kompleks hale gelir?",
    options: [
      "Hipertiroidi",
      "Parkinson hastalığı",
      "Myastenia Gravis",
      "Alzheimer hastalığı",
      "Hipoglisemi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Myastenia Gravis, postsinaptik asetilkolin reseptörlerinin bozulması nedeniyle nöromüsküler iletide zayıflık yapar ve anesteziyi karmaşıklaştırır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Lambert-Eaton miyastenik sendromu ile ilgili olarak aşağıdaki ifadelerden hangisi doğrudur?",
    options: [
      "Asetilkolin miktarında artış olur",
      "Presinaptik kalsiyum kanalları etkilenmiştir",
      "Postsinaptik reseptörler bloklanır",
      "Kas gücü sabittir",
      "Anesteziklere direnç gelişir",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Lambert-Eaton sendromunda presinaptik kalsiyum kanallarına karşı antikorlar gelişir → asetilkolin salınımı azalır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi nöromüsküler hastalıklarda anestezi uygulamasında depolaran kas gevşeticilerin kullanımına bağlı ortaya çıkabilecek bir komplikasyondur?",
    options: [
      "Hipotansiyon",
      "Bradikardi",
      "Hiperkalemi",
      "Hipoglisemi",
      "Aşırı sedasyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Depolarizan ajanlar (özellikle süksinilkolin) aşırı potasyum çıkışına neden olur → hiperkalemi ve hatta kardiyak arrest gelişebilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myotonik distrofi hastasında en sık karşılaşılan anestezik komplikasyon aşağıdakilerden hangisidir?",
    options: [
      "Artmış analjezi gereksinimi",
      "Prolong nöromüsküler blok",
      "Kas spazmları ve laringospazm",
      "Hipotermi gelişimi",
      "Solunum sayısında artış",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Myotonik distrofi hastalarında kas spazmları, özellikle laringospazm, anestezi sırasında önemli komplikasyonlardandır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi myotonik distrofi hastalarında anestezi sırasında konvülziyon benzeri kasılmaların en olası sebebidir?",
    options: [
      "Hiperventilasyon",
      "Atrakurium kullanımı",
      "Soğuk uyaranlar",
      "Anestezik derinliğin azalması",
      "Yüksek FiO₂ kullanımı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Soğuk uyaranlar (örneğin cilt temizliği için alkol uygulaması), myotonik kas spazmlarını tetikleyebilir. Bu hastalarda ısı kontrolü önemlidir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Lambert-Eaton miyastenik sendromu olan hastada nöromüsküler blokaj yanıtı nasıldır?",
    options: [
      "Hem depolarizan hem nondepolarizan ajanlara dirençlidir",
      "Sadece depolarizanlara duyarlıdır",
      "Nondepolarizan ajanlara aşırı duyarlıdır",
      "Nöromüsküler blokaj oluşmaz",
      "Tüm ajanlara tolerans gelişir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "LEMS hastalarında: Nondepolarizan nöromüsküler blokörlere karşı aşırı duyarlılık görülür. → Bu ajanlar zaten azalmış olan asetilkolin etkisini daha da engeller, ciddi ve uzun süren paraliziye neden olabilir. → Doz azaltılmalı ve dikkatli monitörize edilmelidir. Süksinilkolin (depolarizan ajan) bazen dirençli olabilir, çünkü etkin kas kontraksiyonu için yeterli asetilkolin bulunmaz. Ancak bu durum hastadan hastaya değişebilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi duyarlı nöromüsküler hastalığı olan bir hastada postoperatif dönemde kas güçsüzlüğü ile ayırıcı tanıda düşünülmelidir?",
    options: [
      "Metabolik alkaloz",
      "Residüel nöromüsküler blok",
      "Yetersiz hidrasyon",
      "Hiperkalsemi",
      "Oksijen fazlalığı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Kas güçsüzlüğü en sık olarak rezidüel kas gevşetici etkisine bağlıdır ve nöromüsküler hastalıklarda bu risk daha yüksektir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki nöromüsküler hastalıklardan hangisinde halotan gibi ajanların kullanımına özellikle dikkat edilmelidir?",
    options: [
      "Myastenia Gravis",
      "Lambert-Eaton sendromu",
      "Duchenne Musküler Distrofisi",
      "Guillain-Barré sendromu",
      "Myotonik distrofi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Duchenne Musküler Distrofisi hastalarında volatile ajanlar ve süksinilkolin, malign hipertermi benzeri tabloya ve rabdomiyolize neden olabilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi nöromüsküler hastalığı olan çocuklarda anestezi sırasında en çok gözlenmesi gereken komplikasyonlardan biridir?",
    options: [
      "Laringospazm",
      "Postoperatif bulantı",
      "Hipertermi",
      "Kas sertliği",
      "Rabdomiyoliz",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Özellikle Duchenne ve Becker tipi distrofililerde, rabdomiyoliz en ciddi komplikasyonlardan biridir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Guillain-Barré sendromu olan hastalarda anestezide en dikkat edilmesi gereken komplikasyon hangisidir?",
    options: [
      "İntrakraniyal basınç artışı",
      "İlaç alerjisi",
      "Otonomik instabilite ve kardiyak aritmiler",
      "Hipoglisemi",
      "Artmış ağrı eşiği",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Guillain-Barré hastalarında otonomik dengesizlik sık görülür. Bu durum ani bradikardi, aritmi ve tansiyon düşmeleriyle kendini gösterebilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumların hangisinde anestezi öncesi pulmoner fonksiyon testleri yapılması özellikle önerilir?",
    options: [
      "Hipotroidi",
      "Hafif astım",
      "Myotonik distrofi",
      "Sol kalp yetmezliği",
      "Obstrüktif uyku apnesi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Myotonik distrofi gibi nöromüsküler hastalıklarda solunum kasları da etkilenebilir, bu nedenle preoperatif PFT kritik öneme sahiptir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nöromüsküler iletim hastalıklarında nöromüsküler blokajdan dönüş için en güvenli reversiyon ajanı hangisidir?",
    options: [
      "Neostigmin",
      "Atropin",
      "Edrofonyum",
      "Sugammadeks",
      "Midazolam",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Sugammadeks, özellikle steroid yapılı nondepolarizan ajanları (rocuronyum, vekuronyum) güvenle antagonize eder ve myasteni gibi hastalarda tercih edilebilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Duchenne Musküler Distrofisi olan bir çocukta genel anestezi sırasında aşağıdakilerden hangisi en ciddi komplikasyon olabilir?",
    options: [
      "Alerjik reaksiyon",
      "Solunum alkalozu",
      "Malign hipertermi benzeri tablo",
      "Bradikardi",
      "Reversiyon yetersizliği",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Duchenne Musküler Distrofisi (DMD) olan çocuklarda, genel anestezi sırasında karşılaşılabilecek en ciddi ve hayatı tehdit eden komplikasyon, malign hipertermi (MH) benzeri tablodur.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi nöromüsküler hastalığı olanlarda anestezi yönetimi sırasında kas gevşetici kullanımını en iyi yönlendiren yöntemdir?",
    options: [
      "Solunum sayısı takibi",
      "Elektromiyografi",
      "TOF monitörizasyonu",
      "BIS monitörizasyonu",
      "SpO₂ izlenmesi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "TOF monitörizasyonu, kas gevşetici etkisinin düzeyini değerlendirmek için en yaygın ve güvenilir yöntemdir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myotonik distrofi hastasında hangi ilaç kas spazmını tetikleyebilir?",
    options: [
      "Propofol",
      "Neostigmin",
      "Midazolam",
      "Ketamin",
      "Fentanil",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Neostigmin, asetilkolin seviyesini artırarak istemsiz kas kasılmalarını (myotoni) tetikleyebilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki durumlardan hangisinde nondepolarizan kas gevşeticiye karşı artmış duyarlılık beklenir?",
    options: [
      "Sağlıklı birey",
      "Kronik alkol kullanımı",
      "Myastenia Gravis",
      "Hiperkalsemi",
      "Anksiyete bozukluğu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Myastenia Gravis, nondepolarizan kas gevşeticilere aşırı duyarlılık oluşturur; bu nedenle dozlar çok dikkatli titrasyonla verilmelidir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Guillain-Barré sendromu tanısı olan bir hastada süksinilkolin uygulanması aşağıdakilerden hangisine neden olabilir?",
    options: [
      "Hipotermi",
      "Kas spazmı",
      "Hiperkalemi ve aritmi",
      "Hipoglisemi",
      "Ağrı eşiğinin artması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "GBS hastalarında upregüle olmuş asetilkolin reseptörleri nedeniyle süksinilkolin kullanımı ciddi hiperkalemiye ve kardiyak aritmilere yol açabilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki ajanlardan hangisi, nöromüsküler hastalığı olanlarda kas tonusunu baskılamadan anestezi sağlar?",
    options: [
      "Sevofluran",
      "Propofol",
      "Ketamin",
      "Rocuronyum",
      "Süksinilkolin",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Ketamin, kas gevşetici etkisi olmadan sedasyon ve analjezi sağlayabilir. Bu yönüyle nöromüsküler hastalarda avantajlı olabilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myotonik distrofide spinal anesteziyle ilgili aşağıdakilerden hangisi doğrudur?",
    options: [
      "Kontrendikedir çünkü nöbeti tetikler",
      "Mutlak olarak tercih edilir",
      "Kas spazmını azaltıcı etkisi olabilir",
      "Postoperatif ağrıyı artırır",
      "Kardiyak aritmiyi kolaylaştırır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Spinal anestezi, myotonik spazmları baskılayabilir ve kas gevşeticiye duyulan ihtiyacı azaltabilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nöromüsküler hastalığı olan hastalarda TIVA (total intravenöz anestezi) neden sıklıkla tercih edilir?",
    options: [
      "Kas spazmlarını artırmak için",
      "Etkisi uzun olduğu için",
      "Kas gevşeticiye olan ihtiyacı artırdığı için",
      "Volatil ajanların olası yan etkilerinden kaçınmak için",
      "Bilinci açık bırakmak için",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Volatil ajanlar, özellikle Duchenne distrofi gibi hastalıklarda malign hipertermi benzeri reaksiyonlara yol açabilir. Bu nedenle TIVA daha güvenlidir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi myotonik kas spazmlarının intraoperatif tetikleyicilerinden biri değildir?",
    options: [
      "Elektrik stimülasyonu",
      "Soğuk",
      "Neostigmin",
      "Ketamin",
      "Mekanik uyarı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Ketamin, kas spazmı tetiklemez; aksine kas tonusunu korur. Diğerleri spazm tetikleyici olabilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myastenia Gravis hastasında kas gevşetici verilmeden entübasyon planlanıyorsa hangi ajan en uygundur?",
    options: [
      "Sevofluran",
      "Midazolam",
      "Etomidat",
      "Propofol",
      "Ketamin",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Kas gevşetici verilmeden entübasyon planlanan Myastenia Gravis hastasında, hızlı etkili ve uygun sedasyon sağlayan propofol en uygun seçenektir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi nöromüsküler hastalığı olan hastalarda, anesteziye bağlı uzamış kas güçsüzlüğünün en olası sebebidir?",
    options: [
      "Derin sedasyon",
      "Hipoglisemi",
      "Reversiyon ajanının yetersizliği",
      "Hiperkapni",
      "Propofol infüzyonu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Nondepolarizan kas gevşeticilerin etkilerinin yeterince antagonize edilememesi, özellikle myastenia gravis gibi hastalarda, postoperatif uzamış kas güçsüzlüğüne yol açabilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myastenia Gravis hastasında planlanan cerrahi öncesi aşağıdaki testlerden hangisi özellikle solunum yetmezliği riskini öngörmek için kullanılır?",
    options: [
      "SpO₂",
      "Vital kapasite",
      "TOF",
      "ECG",
      "EEG",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Vital kapasite ölçümü, diyafram ve solunum kaslarının rezervini değerlendirir ve postoperatif ventilatör ihtiyacını öngörmede önemlidir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Lambert-Eaton miyastenik sendromu ile Myastenia Gravis arasındaki en belirgin farmakolojik fark aşağıdakilerden hangisidir?",
    options: [
      "MG'de presinaptik kalsiyum kanalları etkilenir",
      "Lambert-Eaton'da asetilkolin reseptörleri bloke olur",
      "Lambert-Eaton'da kas kuvveti egzersizle artar",
      "MG'de nöromüsküler blokaj olmaz",
      "Lambert-Eaton kas gevşeticiye çok duyarlıdır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Lambert-Eaton sendromunda kas kuvveti egzersizle artar, çünkü presinaptik asetilkolin salınımı uyarılır. MG'de ise tersi görülür.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myotonik distrofide intraoperatif kas spazmlarını azaltmak için aşağıdakilerden hangisi kaçınılması gereken bir durumdur?",
    options: [
      "Sıcak tutulması",
      "Derin anestezi sağlanması",
      "Neostigmin verilmesi",
      "Nazal oksijen desteği",
      "Kas stimülasyonunun azaltılması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Neostigmin, asetilkolin düzeyini artırarak istemsiz kas kontraksiyonlarını (myotoni) tetikleyebilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nöromüsküler hastalığı olan bir hastada spinal anestezi düşünülüyorsa, aşağıdakilerden hangisi en doğru ifadedir?",
    options: [
      "Mutlak kontrendikedir",
      "Risklidir ama uygulanabilir",
      "Düşük doz lokal anestezikle dikkatli şekilde yapılabilir",
      "Önce genel anestezi verilmelidir",
      "Spinal yerine sadece sedasyon uygulanmalıdır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Nöromüsküler hastalıklarda, spinal anestezi düşük doz ve dikkatli teknikle uygulanabilir, fakat her hasta özel değerlendirilmelidir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myotonik distrofi hastasında kas spazmı nedeniyle gelişebilecek hava yolu komplikasyonu hangisidir?",
    options: [
      "Stridor",
      "Laringospazm",
      "Bronkospazm",
      "Trakeomalazi",
      "Subglottik stenoz",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Myotonik kas spazmı, en ciddi haliyle laringospazma neden olabilir, bu da akut havayolu tıkanıklığı riski oluşturur.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki ilaçlardan hangisi nöromüsküler hastalığı olan bir hastada kas gevşetici etkisi olmamasına rağmen kas tonusunu daha fazla baskılayabilir?",
    options: [
      "Propofol",
      "Ketamin",
      "Midazolam",
      "Deksmedetomidin",
      "Halotan",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Halotan, volatil bir ajan olarak kas tonusunu azaltabilir. Kas gevşetici etkisi yoktur, yani doğrudan nöromüsküler kavşakta etki etmez.Ancak, santral sinir sistemi depresyonu yoluyla kas tonusunu baskılar.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Guillain-Barré sendromunda anestezide en çok dikkat edilmesi gereken komplikasyon hangisidir?",
    options: [
      "Bronkospazm",
      "Hipertansiyon",
      "Bradykardi",
      "Hiperkalemi",
      "Laringospazm",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Denervasyon nedeniyle Süksinilkolin kullanımı hiperkalemiye neden olabilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Lambert-Eaton miyastenik sendromunda non-depolarizan kas gevşeticilere karşı yanıt nasıldır?",
    options: [
      "Normal",
      "Artmış duyarlılık",
      "Azalmış duyarlılık",
      "Tam direnç",
      "Önemsiz etki",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Presinaptik asetilkolin salınımının bozulduğu bu hastalarda non-depolarizan ajanlara karşı duyarlılık artmıştır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myastenia gravis hastasında perioperatif dönemde ekstübasyon kararı neye göre verilmelidir?",
    options: [
      "Cerrahi süresi",
      "SpO₂ değeri",
      "Vital kapasite ve negatif inspiratuar basınç",
      "Sedasyon düzeyi",
      "Göz kası hareketi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Solunum kas zayıflığı olan bu hastalarda ekstübasyon öncesi solunum fonksiyonları objektif ölçütlerle değerlendirilmelidir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myastenik kriz ile kolinerjik krizin ayrımında en çok kullanılan tanısal test hangisidir?",
    options: [
      "EMG",
      "Edrofonyum (Tensilon) testi",
      "Kan gazı",
      "Kas biyopsisi",
      "Elektrolit düzeyleri",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Edrofonyum testi, kolinerjik kriz ile myastenik krizin ayrımında yardımcı olur.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Amyotrofik lateral skleroz (ALS) hastasında anestezi planlanırken dikkat edilmesi gereken en önemli husus nedir?",
    options: [
      "Hipovolemi riski",
      "Antibiyotik profilaksisi",
      "Solunum rezervinin azalmış olması",
      "Artmış kanama riski",
      "Hepatik metabolizma bozukluğu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "ALS hastalarında diyafragma dahil olmak üzere solunum kasları etkilenmiş olabilir; solunum rezervleri yetersizdir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myastenia gravis hastasında preoperatif dönemde asetilkolinesteraz inhibitörlerinin kesilmesi aşağıdakilerden hangisine neden olabilir?",
    options: [
      "Artmış salivasyon",
      "Postoperatif kas güçsüzlüğü",
      "Hipotermi",
      "Hiperkalemi",
      "Uzamış uyanma",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Asetilkolinesteraz inhibitörlerinin kesilmesi kas kuvvetinde belirgin azalmaya neden olabilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "DMD hastalarında anestezi sırasında en sık karşılaşılan kardiyak komplikasyon nedir?",
    options: [
      "Ventriküler taşikardi",
      "Atriyal fibrilasyon",
      "Bradikardi",
      "Kalp bloğu",
      "QT kısalması",
    ],
    correctAnswerIndex: 0,
    explanation:
        "DMD hastaları kardiyomiyopatiye yatkındır, bu da ventriküler taşikardi gibi ritim bozukluklarına neden olabilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myotonik distrofi hastalarında hipotermi neden risklidir?",
    options: [
      "Hızlı uyanmaya neden olur",
      "Kalp hızında artışa yol açar",
      "Myotoni ataklarını tetikleyebilir",
      "Vazodilatasyon oluşturur",
      "Hiperkalemiye neden olur",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Hipotermi bu hastalarda istemsiz kas kasılmalarını (myotoni) artırabilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "DMD hastasında preoperatif değerlendirmede hangi sistemik komplikasyon daha sık görülür?",
    options: [
      "Hepatik disfonksiyon",
      "Renal yetmezlik",
      "Kardiyomiyopati",
      "Nöropati",
      "Tiroid disfonksiyonu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Duchenne hastalarında kalp kası tutulumu sık görülür; kardiyak değerlendirme şarttır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myotonik distrofi hastasında kas gevşetici seçimiyle ilgili en doğru yaklaşım nedir?",
    options: [
      "Süksinilkolin tercih edilir",
      "Roküronyum kullanımı güvenlidir",
      "Kas gevşetici verilmemelidir",
      "Non-depolarizanlar da sakıncalıdır",
      "Neostigmin kullanımı myotoni yapar",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Myotonik distrofi hastalarında kas gevşetici kullanımı mümkünse sınırlandırılmalı, anestezi planı buna göre yapılmalıdır. Eğer kas gevşetici gerekiyorsa, dozlar çok dikkatle ayarlanmalı ve nöromüsküler monitörizasyon şarttır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "ALS hastasında en güvenli kas gevşetici seçenek hangisidir?",
    options: [
      "Roküronyum",
      "Atrakurium",
      "Süksinilkolin",
      "Cisatrakuryum",
      "Veküronyum",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Cisatrakuryum organ bağımsız yıkıldığı için ALS gibi hastalıklarda güvenli kas gevşetici ajanlardandır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myastenia gravisli hastada postop dönemde entübasyonun uzamasına neden olabilecek ilaç hangisidir?",
    options: [
      "Neostigmin",
      "Veküronyum",
      "Propofol",
      "Sevofluran",
      "Fentanil",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Non-depolarizan ajanlara duyarlılık arttığından düşük doz bile uzamış etkiler gösterebilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Duchenne musküler distrofi hastasında inhalasyon anestezikleriyle ilgili en önemli risk nedir?",
    options: [
      "Bradikardi",
      "Anestezi derinliğinin kontrolü zorlaşır",
      "Malign hipertermi benzeri tablo",
      "Hiponatremi gelişmesi",
      "Vazodilatasyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "DMD'de volatiller malign hipertermi benzeri tabloya yol açabilir, dikkatli olunmalıdır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myotonik distrofi hastasında genel anestezi sonrası en sık görülen komplikasyon hangisidir?",
    options: [
      "Bradikardi",
      "Postop ağrı",
      "Kas rijiditesi (myotoni)",
      "Nöbet",
      "Hiperglisemi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Bu hastalarda istemsiz kas kasılmaları ameliyat sonrası da devam edebilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "ALS hastasında postop dönemde en sık karşılaşılan mortalite nedeni nedir?",
    options: [
      "Kalp yetmezliği",
      "Pnömoni",
      "Renal yetersizlik",
      "Tromboemboli",
      "Malignite",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Solunum kas zayıflığı nedeniyle sekresyonların atılamaması, pnömoni gelişimine yol açar.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Guillain-Barré hastasında en uygun premedikasyon seçeneği hangisidir?",
    options: [
      "Antikolinerjik + opioid",
      "Benzodiazepin",
      "Antiemetik",
      "Kas gevşetici",
      "Steroid",
    ],
    correctAnswerIndex: 1,
    explanation:
        "GBS hastalarında benzodiazepin ile anksiyete kontrolü sağlanabilir, kas gevşetici ve antikolinerjiklerden kaçınılmalıdır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Malign hipertermi (MH) krizinde ilk verilmesi gereken ilaç hangisidir?",
    options: [
      "Dantrolen",
      "Dantrolen sodyum",
      "Propranolol",
      "Kalsiyum glukonat",
      "Lidokain",
    ],
    correctAnswerIndex: 1,
    explanation:
        "MH tedavisinde altın standarttır; 2.5 mg/kg IV olarak başlanır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Lambert-Eaton myastenik sendromunda (LEMS) hangi anestezik ajanın etkisi uzar?",
    options: [
      "Aminosteroid kas gevşeticiler (Rokuronyum)",
      "Süksinilkolin",
      "Benzodiazepinler",
      "Opioidler",
      "İnhalasyon anestezikleri",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Presinaptik voltaj kapılı kalsiyum kanal bozukluğu nedeniyle kas gevşeticilere aşırı duyarlılık vardır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Malign hipertermi krizinde laboratuvar bulgularından hangisi görülmez?",
    options: [
      "Hipokalsemi",
      "Hiperkalemi",
      "Metabolik asidoz",
      "Hipertermi",
      "CK yüksekliği",
    ],
    correctAnswerIndex: 0,
    explanation:
        "MH'de hücre içi Ca⁺⁺ artışı olur; hiperkalemi, asidoz ve CK >20.000 IU/L tipiktir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myotonik distrofi tip 1 (Steinert hastalığı) olan bir hastada hangi komplikasyon beklenmez?",
    options: [
      "Malign hipertermi",
      "Kardiyak aritmi",
      "Prolonge apne",
      "Aspirasyon pnömonisi",
      "Postoperatif solunum yetmezliği",
    ],
    correctAnswerIndex: 0,
    explanation:
        "MH ile ilişkisi yoktur; diğer komplikasyonlar sıktır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myastenia gravisli bir hastada ameliyat öncesi neostigmin hangi durumda kesilmelidir?",
    options: [
      "Ameliyat sabahı",
      "1 hafta önce",
      "3 gün önce",
      "Kesilmez, devam edilir",
      "Sadece akşam dozu kesilir",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Kolinesteraz inhibitörleri kas gevşeticilerin etkisini değiştirebilir; ameliyat sabahı kesilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Nöromusküler hastalıklarda hangi opioid daha güvenlidir?",
    options: [
      "Remifentanil",
      "Morfin",
      "Meperidin",
      "Fentanil",
      "Kodein",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Kısa etkili ve ekstrahepatik metabolizma ile güvenlidir; morfinin aktif metabolitleri birikir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi Duchenne musküler distrofisinin kardiyak komplikasyonlarından değildir?",
    options: [
      "Hipertansiyon",
      "Dilate kardiyomiyopati",
      "Mitral yetmezlik",
      "QT uzaması",
      "Sağ ventrikül disfonksiyonu",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Kardiyomiyopati ve aritmiler sıktır; hipertansiyon tipik değildir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myastenia gravisli bir hastada hangi kas gevşetici dozu %50 azaltılmalıdır?",
    options: [
      "Rokuronyum",
      "Süksinilkolin",
      "Atrakuryum",
      "Sisatrakuryum",
      "Mivakuryum",
    ],
    correctAnswerIndex: 0,
    explanation:
        "MG'de asetilkolin reseptör sayısı az olduğu için kas gevşeticilere duyarlılık artar.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi myotonik distrofide görülen sistemik bulgulardan değildir?",
    options: [
      "Hipertiroidi",
      "Kardiyak iletim defektleri",
      "Katarakt",
      "Testiküler atrofi",
      "Frontotemporal kellik",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Endokrin tutulumda diabetes mellitus ve hipogonadizm görülür; hipertiroidi tipik değildir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi malign hipertermi tanısında kullanılan \"kafein-halotan kontraktür testi\" için doğrudur?",
    options: [
      "Kas biyopsisinde anormal kasılma yanıtı",
      "Serum CK düzeyi ölçümü",
      "Genetik test ile RYR1 mutasyonu saptanması",
      "İdrar miyoglobin düzeyi",
      "EKG'de QT uzaması",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Kas dokusunun kafein/halotana aşırı kasılma yanıtı tanı koydurucudur.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Myastenia gravisli bir hastada timomektomi sonrası hangi komplikasyon beklenir?",
    options: [
      "Myastenik kriz",
      "Malign hipertermi",
      "Akut böbrek yetmezliği",
      "Hepatik ensefalopati",
      "Pulmoner hipertansiyon",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Postoperatif dönemde kolinerjik veya myastenik kriz gelişebilir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi nöromusküler hastalıklarda kontrendike olan anestezik yaklaşımdır?",
    options: [
      "Yüksek doz depolarizan kas gevşetici",
      "Total intravenöz anestezi (TIVA)",
      "Rejyonal anestezi",
      "Düşük doz nondepolarizan kas gevşetici",
      "İnhalasyon anestezikleri",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Rabdomiyoliz ve hiperkalemi riski nedeniyle süksinilkolinden kaçınılmalıdır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi nöromusküler hastalıklarda görülen \"restriktif akciğer paterni\"nin sonucudur?",
    options: [
      "Vital kapasitede azalma",
      "FEV1/FVC oranında artış",
      "Ekspiratuar wheezing",
      "Pulsus paradoksus",
      "Plevral effüzyon",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Solunum kas güçsüzlüğü ve skolyoza bağlı restriktif patern gelişir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi myotonik distrofide anestezi sırasında görülen komplikasyondur?",
    options: [
      "Myotoni (kas gevşemesinde gecikme)",
      "Malign hipertermi",
      "Hipertansif kriz",
      "Akut böbrek yetmezliği",
      "Hepatik ensefalopati",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Soğuk, mekanik uyaran veya depolarizan kas gevşeticiler myotoniyi tetikler.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi nöromusküler hastalıklarda \"aspirasyon pnömonisi\" riskini artıran faktördür?",
    options: [
      "Bulber kas tutulumu",
      "Hipertansiyon",
      "Diabetes mellitus",
      "Obezite",
      "Hiperlipidemi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Yutma güçlüğü ve öksürük refleksinin zayıflığı aspirasyon riskini artırır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi myastenia gravisli bir hastada \"kolinerjik kriz\" bulgusudur?",
    options: [
      "Fasikülasyonlar ve aşırı sekresyon",
      "Hipertansiyon",
      "Ateş",
      "Oligüri",
      "Deri döküntüsü",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Aşırı kolinerjik stimülasyon ile muskarinik/nikotinik bulgular görülür.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi Duchenne musküler distrofisinde görülen solunum komplikasyonudur?",
    options: [
      "Restriktif akciğer hastalığı",
      "Astım",
      "Kronik bronşit",
      "Amfizem",
      "Plevral effüzyon",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Diyafram ve interkostal kas tutulumu nedeniyle VC azalır.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi nöromusküler hastalıklarda \"postoperatif ventilasyon\" gerektiren durumdur?",
    options: [
      "Vital kapasite <15 mL/kg",
      "Normal solunum fonksiyon testleri",
      "ASA 1 hastalar",
      "Kısa süreli cerrahi",
      "Lokal anestezi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "VC <15 mL/kg veya negatif inspiratuar basınç <30 cmH₂O ventilasyon gerektirir.",
    category: "Nöromüsküler Hastalığı Olanlarda Anestezi",
    difficulty: 2,
  ),
];
