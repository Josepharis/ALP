import '../models/question.dart';

final List<Question> neuromuscularBlockingAgentsQuestions = [
  Question(
    question: "Süksinilkolin'in etki mekanizması aşağıdakilerden hangisidir?",
    options: [
      "Nikotinik reseptör antagonizmi",
      "Muskarinik reseptör antagonizmi",
      "GABA-A reseptör agonizmi",
      "Depolarizan nikotinik reseptör agonizmi",
      "Presinaptik asetilkolin salınımı inhibisyonu",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Süksinilkolin, depolarizan nöromüsküler bloker olup nikotinik asetilkolin reseptörlerine bağlanarak sürekli depolarizasyona yol açar ve geçici felç oluşturur.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Non-depolarizan kas gevşetici ajanlar hangi reseptörü kompetitif olarak bloke eder?",
    options: [
      "Muskarinik M₃",
      "GABA-A",
      "Nikotinik N₂ (nöromüsküler kavşak)",
      "NMDA",
      "Alfa-2 adrenerjik",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Non-depolarizan ajanlar, nöromüsküler kavşaktaki nikotinik reseptörleri kompetitif şekilde bloke eder → asetilkolin etkisini engeller.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Süksinilkolin uygulaması sonrasında görülen en tipik yan etki aşağıdakilerden hangisidir?",
    options: [
      "Bradikardi",
      "Hipoglisemi",
      "Hipokalemi",
      "Miyalji",
      "Hipotermi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Süksinilkolin kas fasikülasyonlarına neden olur, bu da özellikle genç erişkinlerde postoperatif miyaljiye yol açabilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 1,
  ),

  Question(
    question: "Non-depolarizan nöromüsküler blokörlerin etkisi nasıl sonlanır?",
    options: [
      "Kolinesterazla yıkım",
      "Plazma esterazlarıyla hidroliz",
      "Organik asitlerle nötralizasyon",
      "Reseptör internalizasyonu",
      "Asetilkolin miktarının artmasıyla",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Non-depolarizan ajanlar asetilkolin reseptörlerini bloke eder; asetilkolin düzeyi artınca (örneğin neostigmin ile) bu blok geri çevrilebilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Süksinilkolin ile ilgili aşağıdakilerden hangisi doğrudur?",
    options: [
      "Histamin salınımı yapmaz",
      "Uzun etkili kas gevşeticidir",
      "Pseudo-kolinesteraz ile yıkılır",
      "Non-depolarizan etkili bir ajandır",
      "Plazma proteinlerine yüksek oranda bağlanır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Süksinilkolin, pseudo-kolinesteraz (plazma kolinesterazı) ile hızla yıkılır → kısa etkili kas gevşetici.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Hangisi Hofmann eliminasyonu ile yıkılan bir nöromüsküler blokördür?",
    options: [
      "Rokuronyum",
      "Atrakurium",
      "Vekuronyum",
      "Süksinilkolin",
      "Mivakuryum",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Atrakurium ve cisatrakurium Hofmann eliminasyonu ile spontan olarak yıkılır. Bu süreç pH ve ısıya bağlıdır; karaciğer veya böbreğe bağlı değildir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi non-depolarizan blokörlerin kullanımına bağlı gangliyon blokajı yapma riskini artırır?",
    options: [
      "Atrakurium",
      "Süksinilkolin",
      "Pankuronyum",
      "Cisatrakurium",
      "Vekuronyum",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Pankuronyum parasempatik gangliyonları inhibe edebilir, bu da taşikardi gibi otonom yan etkilere yol açar.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Süksinilkolin kullanımı hangi durumda hiperkalemiye neden olabilir?",
    options: [
      "Astım atağı",
      "Parkinson hastalığı",
      "Yanık hastaları",
      "Tiroid hastalıkları",
      "Glokom",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yanık, inme veya immobilizasyon gibi durumlarda asetilkolin reseptör sayısı artar. Süksinilkolin bu durumlarda ani ve ciddi hiperkalemiye yol açabilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Hangisi histamin salınımı riski yüksek olan nöromüsküler blokördür?",
    options: [
      "Cisatrakurium",
      "Rokuronyum",
      "Vekuronyum",
      "Atrakurium",
      "Pankuronyum",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Atrakurium histamin salınımına neden olabilir. Bu etki doza bağımlıdır ve hipotansiyon, bronkospazm gibi etkiler görülebilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi süksinilkolin kullanımına bağlı olarak görülebilir?",
    options: [
      "Uzamış nöromüsküler blok",
      "Asetilkolin artışı",
      "Kolinerjik kriz",
      "Parasempatik stimülasyon",
      "Fosfataz aktivasyonu",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Pseudocholinesteraz eksikliği veya atipik enzim varlığında süksinilkolin etkisi uzayabilir ve kalıcı paralizi gelişebilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Sugammadeks hangi ajanların etkisini geri çevirmek için kullanılır?",
    options: [
      "Atrakurium ve vekuronyum",
      "Süksinilkolin ve mivakuryum",
      "Rokuronyum ve vekuronyum",
      "Cisatrakurium ve pankuronyum",
      "Sadece süksinilkolin",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sugammadeks, özellikle rokuronyum ve kısmen vekuronyum gibi steroid yapılı non-depolarizan ajanları doğrudan bağlayarak etkisiz hale getirir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisi hem Hofmann eliminasyonu hem de esterazlarla yıkılır?",
    options: [
      "Vekuronyum",
      "Cisatrakurium",
      "Pankuronyum",
      "Mivakuryum",
      "Rokuronyum",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Cisatrakurium, atrakuriumun stereoizomeridir. Ana yıkım yolu Hofmann eliminasyonudur ama düşük düzeyde esteraz yıkımı da görülür.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki nöromüsküler blokörlerden hangisi plazma kolinesteraz ile yıkılır?",
    options: [
      "Atrakurium",
      "Rokuronyum",
      "Vekuronyum",
      "Mivakuryum",
      "Pankuronyum",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Mivakuryum ester yapısındadır ve plazma kolinesteraz tarafından yıkılır; bu nedenle etkisi oldukça kısa sürelidir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Sugammadeksin avantajı nedir?",
    options: [
      "Kolinesteraz inhibitörü olması",
      "Muskarinik reseptör aktivasyonu",
      "Antikolinesteraz gereksinimini ortadan kaldırması",
      "Asetilkolin salınımını artırması",
      "Dopamin aktivitesini artırması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sugammadeks, antikolinesterazlardan farklı olarak asetilkolin düzeyini artırmaz. Rokuronyum gibi steroidal ajanları direkt bağlayarak nöromüsküler bloku geri çevirir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Süksinilkolin uygulaması sonrası malign hipertermi riski artan hasta grubunda eşlik eden genetik defekt hangi proteine aittir?",
    options: [
      "Reseptör kinaz",
      "Dihidropiridin reseptör",
      "RyR1 (ryanodin reseptör tipi 1)",
      "Kalmodulin",
      "T-tübül proteini",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Malign hipertermi, sarkoplazmik retikulumdaki kalsiyum salınımını kontrol eden RyR1 mutasyonuna bağlıdır. Süksinilkolin ve volatil ajanlarla tetiklenebilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Hangisi non-depolarizan blokörlerin presinaptik etkisiyle açıklanabilir?",
    options: [
      "Fasilitasyon",
      "Artmış asetilkolin salınımı",
      "Blok derinleşmesi",
      "Kas kasılmasının artması",
      "Antagonist etki zayıflaması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Non-depolarizan ajanlar, presinaptik reseptörleri de bloke ederek asetilkolin salınımını azaltır ve blok derinliğini artırır.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisinin etkisi kolinesteraz inhibitörleriyle geri döndürülemez?",
    options: [
      "Rokuronyum",
      "Vekuronyum",
      "Pankuronyum",
      "Süksinilkolin (faz I blokta)",
      "Atrakurium",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Süksinilkolin'in faz I (depolarizan) blok etkisi kolinesteraz inhibitörleriyle geriye çevrilemez; hatta uzayabilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question: "Non-depolarizan blokörlerin etkisini artıran durum hangisidir?",
    options: [
      "Hiperkalsemi",
      "Hipermagnezemi",
      "Hipernatremi",
      "Hipotermi",
      "B ve D",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Hipermagnezemi, nöromüsküler iletimi baskılar. Hipotermi de ilaç klirensini azaltır; her ikisi de blok etkisini uzatır.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Vekuronyumun avantajlı özelliği nedir?",
    options: [
      "Uzun etkilidir",
      "Histamin salınımı yapar",
      "Kardiyovasküler etkisi minimaldir",
      "Hepatik metabolizmaya bağımlı değildir",
      "Hofmann yıkımına uğrar",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Vekuronyum kardiyovasküler sistemi minimal etkiler, histamin salınımı yapmaz ve orta etkili, güvenli bir ajandır.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Atrakurium kullanımı sırasında oluşan hipotansiyonun nedeni nedir?",
    options: [
      "Kardiyak depresyon",
      "Arteriyel vazokonstriksiyon",
      "Histamin salınımı",
      "Asetilkolin artışı",
      "Kolinesteraz inhibisyonu",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Atrakurium histamin salınımına neden olabilir. Bu da vazodilatasyon ve hipotansiyon ile sonuçlanır.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Süksinilkolin'in neden olduğu bradikardi özellikle hangi durumda daha sık görülür?",
    options: [
      "Tek doz kullanımda",
      "Yaşlı erkek hastalarda",
      "İkinci doz uygulandığında",
      "Gebelikte",
      "Hipovolemide",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Süksinilkolin tekrar dozlandığında muskarinik reseptörler üzerinden vagal uyarıya neden olarak bradikardi yapabilir. Özellikle çocuklarda daha belirgindir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisinin etkisi en kısa sürelidir?",
    options: [
      "Vekuronyum",
      "Rokuronyum",
      "Mivakuryum",
      "Atrakurium",
      "Pankuronyum",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Mivakuryum kısa etkili non-depolarizan ajandır ve plazma kolinesteraz ile yıkıldığı için etkisi hızlı sonlanır.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 1,
  ),

  Question(
    question: "Hangisi nöromüsküler blokajın derinliğini ölçmede kullanılır?",
    options: [
      "EKG",
      "Bispektral indeks (BIS)",
      "TOF (Train-of-Four) stimülasyonu",
      "EMG",
      "SpO₂",
    ],
    correctAnswerIndex: 2,
    explanation:
        "TOF (Train-of-Four) monitörizasyonu, periferik sinire verilen ardışık uyarılarla nöromüsküler blok derecesini değerlendirir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 1,
  ),

  Question(
    question:
        "Atrakuriumun yıkımı sırasında ortaya çıkan laudanozin ile ilişkili olası etki nedir?",
    options: [
      "Solunum depresyonu",
      "Bradikardi",
      "Nöbet eşiğinde azalma",
      "Hipotermi",
      "QT uzaması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Laudanozin santral stimülan bir metabolittir; teorik olarak yüksek dozda nöbet eşiğini düşürebilir. Klinik önemi çok düşüktür.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "TOF monitörizasyonunda her dört uyarıya yanıt alınamıyorsa bu neyi gösterir?",
    options: [
      "Hafif blok",
      "Orta düzey blok",
      "Derin blok",
      "İyileşmiş blok",
      "Blok yok",
    ],
    correctAnswerIndex: 2,
    explanation:
        "TOF cevabında 0/4 yanıt alınması derin nöromüsküler blok anlamına gelir. Güvenli ekstübasyon için en az 4/4 cevap alınmalı.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Vekuronyumun eliminasyon yolu ağırlıklı olarak neresidir?",
    options: [
      "Karaciğer",
      "Akciğer",
      "Plazma esterazları",
      "Hofmann yıkımı",
      "Safra ve idrar eşit",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Vekuronyum esas olarak hepatik yolla metabolize edilir ve atılır. Karaciğer fonksiyon bozukluğunda etkisi uzayabilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi süksinilkolin sonrası görülebilecek yan etki değildir?",
    options: [
      "Fasikülasyon",
      "Hiperkalemi",
      "Bradikardi",
      "Nöromüsküler blokun reversibilitesi",
      "İntrakraniyal basınç artışı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Süksinilkolin'in faz I bloğu antikolinesterazlarla geri döndürülemez. Diğer yan etkiler sıklıkla gözlenebilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Nöromüsküler blokerlerin etkisini güçlendiren durum hangisidir?",
    options: [
      "Hiperkalemi",
      "Antibiyotik kullanımı (aminoglikozid)",
      "Alkalemi",
      "Karbonik anhidraz inhibitörleri",
      "Dopamin agonistleri",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Aminoglikozidler (gentamisin gibi) nöromüsküler iletimi bozar ve blok etkisini artırabilir. Anestezide dikkatle izlenmelidir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi non-depolarizan nöromüsküler blokajın geri çevrilmesi için kullanılan ajanlardan biri değildir?",
    options: [
      "Neostigmin",
      "Edrofonyum",
      "Sugammadeks",
      "Atropin",
      "Pralidoksim",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Pralidoksim organofosfat zehirlenmesinde kullanılır. NMB reversiyonunda neostigmin, edrofonyum (antikolinesterazlar) ve sugammadeks kullanılır. Atropin ise muskarinik yan etkileri önlemek için verilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "TOF oranı ≥ %90 olan bir hastada anlamlı rezidüel nöromüsküler blok olasılığı nedir?",
    options: ["Yok denecek kadar az", "%5", "%20", "%50", "%70"],
    correctAnswerIndex: 0,
    explanation:
        "TOF oranı %90 ve üzerindeyse klinik olarak güvenli ekstübasyon yapılabilir; anlamlı rezidüel blok ihtimali çok düşüktür.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Süksinilkolin kullanımından sonra gelişen ve kalp durmasına neden olabilen en tehlikeli komplikasyon nedir?",
    options: [
      "Hipotansiyon",
      "Laringospazm",
      "Hiperkalemi",
      "Fasikülasyon",
      "Nefrotoksisite",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Özellikle yanık, travma veya nörolojik hastalık geçirmiş hastalarda süksinilkolin ciddi hiperkalemiye ve kalp durmasına neden olabilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question: "Hangisi nöromüsküler blokörlerin etkisini azaltabilir?",
    options: [
      "Aminoglikozid antibiyotikler",
      "Lityum",
      "Kalsiyum kanal blokerleri",
      "Karbamazepin",
      "Magnezyum sülfat",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Karbamazepin gibi ilaçlar non-depolarizan ajanlara karşı duyarlılığı azaltabilir ve nöromüsküler blok etkisini kısaltabilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question: "Pankuronyumun en belirgin yan etkisi nedir?",
    options: [
      "Bradikardi",
      "Histamin salınımı",
      "Kas fasikülasyonu",
      "Taşikardi",
      "Nefrotoksisite",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Pankuronyum, vagolitik etkisiyle kalp hızını artırabilir. Bu nedenle kardiyak hastalarda dikkatli kullanılmalıdır.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Süksinilkolin ile ilişkili intragastrik basınç artışının nedeni nedir?",
    options: [
      "Histamin salınımı",
      "Plazma kolinesteraz eksikliği",
      "Fasikülasyonlar",
      "Dopamin salınımı",
      "Muskarinik stimülasyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kas fasikülasyonları karın kaslarını kasarak intragastrik basıncı artırır. Bu da aspirasyon riskini artırabilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "TOF monitörizasyonunda \"fade\" (zayıflama) en çok hangi blok türünde görülür?",
    options: [
      "Faz I blok (süksinilkolin)",
      "Faz II blok",
      "Parsiyel lokal anestezi",
      "Kas gevşetici verilmemiş durumda",
      "Kolinerjik kriz",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Faz II blokta (süksinilkolin veya yüksek doz uzun süreli kullanım sonrası) veya non-depolarizan ajan kullanımında TOF cevabında \"fade\" görülür. Faz I blokta bu belirgin değildir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Nöromüsküler blokör uygulanan hastada ekstübasyon öncesi en güvenilir klinik test aşağıdakilerden hangisidir?",
    options: [
      "TOF oranı",
      "5 saniye baş kaldırma",
      "SpO₂ > %95",
      "Kalp hızı",
      "Pupilla cevabı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "5 saniyeden uzun baş kaldırma, genellikle yeterli kas gücüne işaret eder. Ancak en objektif yöntem TOF oranıdır (%90 üzeri olması önerilir).",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Süksinilkolin kullanımı sonrası görülen \"faz II blok\" nasıl tanımlanır?",
    options: [
      "Kalıcı depolarizasyon",
      "Reseptör duyarsızlaşması ve non-depolarizan benzeri özellik",
      "Asetilkolin yetersizliği",
      "Kas atrofisi",
      "Kolinesteraz fazlalığı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Faz II blok, süksinilkolin'in uzun süreli ya da yüksek doz kullanımında gelişen non-depolarizan benzeri blok türüdür; TOF'da \"fade\" görülür ve reversiyon yapılabilir hale gelir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki kas gevşetici ajanlardan hangisi özellikle hızlı sekans entübasyonunda tercih edilir?",
    options: [
      "Atrakurium",
      "Vekuronyum",
      "Süksinilkolin",
      "Pankuronyum",
      "Cisatrakurium",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Süksinilkolin, hızlı etki başlangıcı ve kısa süresi nedeniyle hızlı sekans entübasyonda en sık tercih edilen ajandır.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 1,
  ),

  Question(
    question:
        "Süksinilkolin'in intrakranial basıncı artırma mekanizması nedir?",
    options: [
      "Damar geçirgenliğini artırması",
      "Reseptör downregülasyonu",
      "Fasikülasyonlara bağlı venöz dönüşün azalması",
      "Hipoventilasyona yol açması",
      "Asetilkolin sentezini uyarması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Fasikülasyonlar, kas kontraksiyonu ve intratorasik basınç artışı nedeniyle serebral venöz dönüşü azaltır ve intrakranial basınç artışına neden olabilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question: "Sugammadeksin en sık görülen yan etkilerinden biri hangisidir?",
    options: [
      "Hiperkalemi",
      "Taşikardi",
      "Bradikardi",
      "QT uzaması",
      "Baş dönmesi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sugammadeks uygulaması nadiren bradikardiye yol açabilir; ciddi olgularda asistoli bile raporlanmıştır. Bu nedenle monitörizasyon önemlidir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi non-depolarizan nöromüsküler blokörler için yanlıştır?",
    options: [
      "Kas kasılmasını inhibe ederler",
      "Kolinesteraz inhibitörleri ile geri döndürülebilirler",
      "Muskarinik reseptörlere bağlanırlar",
      "Rekabetçi antagonistlerdir",
      "TOF'da \"fade\" oluştururlar",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Non-depolarizan ajanlar nikotinik reseptör antagonistleridir; muskarinik reseptörlerle ilişkileri yoktur.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi Hofmann eliminasyonu ile yıkılan ve bu nedenle organ yetmezliği olan hastalarda güvenle kullanılabilen bir ajandır?",
    options: [
      "Rokuronyum",
      "Atrakurium",
      "Pankuronyum",
      "Vekuronyum",
      "Süksinilkolin",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Atrakurium ve cisatrakurium, Hofmann eliminasyonuyla yıkılır ve karaciğer/böbrek fonksiyonlarından bağımsızdır.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Süksinilkolin uygulamasında görülen miyaljiler en çok hangi hasta grubunda belirgindir?",
    options: [
      "Çocuklar",
      "Yaşlılar",
      "Gebeler",
      "Genç, sağlıklı erişkinler",
      "Hipotiroidili hastalar",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Genç, sağlıklı erişkinlerde kas fasikülasyonları sonrası miyalji daha sık ve belirgin görülür.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki hastalıklardan hangisinde süksinilkolin kontrendikedir?",
    options: [
      "Astım",
      "Parkinson hastalığı",
      "Multipl skleroz",
      "Tip 2 diyabet",
      "Hipertansiyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "MS gibi kas denervasyonu olan durumlarda asetilkolin reseptör sayısı artar; bu da süksinilkolin ile hiperkalemi riskini artırır.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question: "Nöromüsküler blokörlerle ilgili doğru olan hangisidir?",
    options: [
      "Hepsi karaciğerden atılır",
      "Solunum kasları en son etkilenir",
      "Göz kapakları ve fasiyal kaslar en erken etkilenir",
      "Tüm kaslarda aynı etki süresi vardır",
      "Reversiyon öncesi kas gücü değerlendirilmez",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Göz kapakları, yüz ve boyun kasları nöromüsküler blokaja ilk yanıt veren kaslardır. Diyafram ve interkostal kaslar daha geç etkilenir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Depolarizan blokta faz I blok özelliği aşağıdakilerden hangisidir?",
    options: [
      "TOF oranında artış",
      "Fasikülasyon yokluğu",
      "Antikolinesterazlarla kolaylıkla geri döndürülmesi",
      "Pre-junksiyonel etkisizlik",
      "TOF'da fade (azalma) olmaması",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Faz I blokta TOF cevabı eşit azalmıştır, yani fade yoktur. Bu, depolarizan blok için tipiktir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki kas gevşeticilerden hangisinin etkisi yaşlı bireylerde uzayabilir?",
    options: [
      "Cisatrakurium",
      "Rokuronyum",
      "Atrakurium",
      "Süksinilkolin",
      "Mivakuryum",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Rokuronyum hepatik eliminasyona bağlıdır → karaciğer fonksiyonu azaldıkça etkisi uzayabilir → yaşlı bireylerde dikkat.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Süksinilkolin kullanımında hiperkalemi riski hangi hasta grubunda daha fazladır?",
    options: [
      "Astım",
      "Myastenia gravis",
      "Yanıklı hastalar",
      "Parkinson hastaları",
      "Obstrüktif uyku apnesi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yanık, travma, denervasyon gibi durumlarda ekstra-junksiyonel asetilkolin reseptörleri artar → süksinilkolinle ani hiperkalemi olabilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question: "Hofmann eliminasyon hızı aşağıdakilerden hangisinden etkilenir?",
    options: [
      "Kreatinin düzeyi",
      "Serum kalsiyumu",
      "Vücut ısısı ve pH",
      "Pseudo-kolinesteraz düzeyi",
      "Plazma protein düzeyi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Hofmann eliminasyonu spontane bir parçalanma olup, yalnızca sıcaklık ve pH'ya bağlıdır.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Non-depolarizan kas gevşeticilerin etkisini uzatabilecek antibiyotik grubu hangisidir?",
    options: [
      "Penisilinler",
      "Aminoglikozidler",
      "Tetrasiklinler",
      "Makrolidler",
      "Sefalosporinler",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Aminoglikozidler, nöromüsküler iletimi inhibe eder → non-depolarizan ajanların etkisini uzatır.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdaki kas gevşeticilerden hangisi en kısa etkilidir?",
    options: [
      "Rokuronyum",
      "Cisatrakurium",
      "Süksinilkolin",
      "Vekuronyum",
      "Pankuronyum",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Süksinilkolin çok hızlı başlar ve kısa sürede (5–10 dk) etkisi biter → kısa işlemler için tercih edilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 1,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi nöromüsküler monitörizasyon için en sık kullanılan uyarı tipidir?",
    options: [
      "Tek uyarı",
      "Çift uyarı",
      "Tetanik uyarı",
      "TOF (train-of-four)",
      "Post-tetanic count",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Klinik pratikte TOF (Train-of-Four) en sık kullanılan nöromüsküler blokaj monitörüdür → blok derinliğini değerlendirir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 1,
  ),

  Question(
    question: "Aşağıdakilerden hangisi faz II blok ile ilgili bir özelliktir?",
    options: [
      "TOF'da fade görülmez",
      "Neostigmin etkisizdir",
      "Uzamış süksinilkolin etkisiyle gelişebilir",
      "Kas fasikülasyonları belirgindir",
      "Antagonist ile geri döndürülemez",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Uzun süren süksinilkolin kullanımı sonrası faz II blok gelişebilir → non-depolarizan bloka benzer ve neostigminle geri döndürülebilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Nöromüsküler monitörizasyon sırasında TOF cevabı: 4 eşit kasılma görülmesi neyi gösterir?",
    options: [
      "Derin blok",
      "Orta blok",
      "Hafif blok",
      "Geri dönüş yok",
      "Faz II blok",
    ],
    correctAnswerIndex: 2,
    explanation:
        "4 eşit cevap = hafif blok. TOF oranı ≥ %90 olduğunda hastada kas fonksiyonu klinik olarak geri dönmüş kabul edilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Kas gevşeticilere dirençli olan hastalık aşağıdakilerden hangisidir?",
    options: ["Myastenia gravis", "Yanık", "Hiperkalemi", "Hipotermi", "SIADH"],
    correctAnswerIndex: 1,
    explanation:
        "Yanıklı hastalarda, asetilkolin reseptör sayısı artar → non-depolarizan ajanlara karşı direnç gelişebilir → yüksek doz gerekir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question: "Süksinilkolin'in en erken görülebilecek yan etkisi nedir?",
    options: [
      "Bradikardi",
      "Miyalji",
      "Fasikülasyon",
      "Hiperkalemi",
      "Malign hipertermi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Süksinilkolin uygulandıktan hemen sonra fasikülasyon başlar → en erken gözlenen etki budur.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 1,
  ),

  Question(
    question:
        "Atrakuriumun metabolizması sonucunda oluşan ve nöbet riski taşıyan yan ürün hangisidir?",
    options: [
      "Mivakron",
      "Hofmann türevi",
      "Laudanosin",
      "Rocuronat",
      "Histamin",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Atrakurium'un metabolizmasından açığa çıkan laudanosin, yüksek dozlarda serebral stimülasyon ve nöbet riski oluşturabilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question: "Aşağıdaki kas gevşeticilerden hangisi aminosteroid yapılıdır?",
    options: [
      "Atrakurium",
      "Süksinilkolin",
      "Mivakuryum",
      "Vekuronyum",
      "Cisatrakurium",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Vekuronyum, aminosteroid yapılı bir non-depolarizan kas gevşeticidir → sugammadeks ile etkili şekilde antagonize edilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "TOF oranı %50'nin altındaysa en uygun klinik yaklaşım nedir?",
    options: [
      "Trakeal ekstübasyon yapılabilir",
      "Sugammadeks başlanır",
      "Neostigmin verilmez",
      "Antagonist verilmeden hasta uyandırılır",
      "Spontan solunum yeterlidir",
    ],
    correctAnswerIndex: 1,
    explanation:
        "TOF < %90 → rezidüel paralizi riski taşır. TOF %50'nin altındaysa sugammadeks en hızlı ve etkili reversiyondur.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Sugammadeks hangi reseptör veya sistem üzerinde etki göstererek reversiyon sağlar?",
    options: [
      "GABA-A reseptörü",
      "Nikotinik reseptör",
      "Kolinesteraz inhibisyonu",
      "Steroid kapsülasyonu",
      "NMDA antagonizması",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Sugammadeks, aminosteroid yapıdaki kas gevşeticileri (rokuronyum, vekuronyum) kapsülleyerek etkisiz hale getirir → reseptöre bağlanmaz.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki kas gevşeticilerden hangisi en az histamin salınımı yapar?",
    options: [
      "Atrakurium",
      "Süksinilkolin",
      "Vekuronyum",
      "Mivakuryum",
      "Morfin",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Vekuronyum güvenli profiliyle bilinir → histamin salınımı minimaldir → hemodinamik olarak stabildir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisi TOF cevabında \"fade\" (azalma) oluşturmayan tek kas gevşeticidir?",
    options: [
      "Rokuronyum",
      "Vekuronyum",
      "Cisatrakurium",
      "Atrakurium",
      "Süksinilkolin (faz I blok)",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Faz I depolarizan blokta TOF cevapları eşit azalır → fade görülmez. Non-depolarizanlarda ise fade tipiktir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "TOF'da 4 cevabın da gözlenmesi fakat son cevabın ilkine göre daha zayıf olması neyi gösterir?",
    options: [
      "Tam iyileşme",
      "Hafif paralizi",
      "Rezidüel nöromüsküler blok",
      "Faz I blok",
      "Total paralizi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "TOF cevabında fade varsa bu, rezidüel blok göstergesidir → yeterli iyileşme olmadığını işaret eder.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Neostigmin verilmesine rağmen kas gücü geri dönmeyen bir hastada ne düşünülmelidir?",
    options: [
      "Düşük potasyum düzeyi",
      "Faz II blok gelişimi",
      "Pseudo-kolinesteraz eksikliği",
      "Sugammadeks ile reversiyon",
      "Antikolinerjik eksikliği",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Uzun süren süksinilkolin kullanımı veya yüksek doz sonrası faz II blok gelişebilir → neostigmine direnç görülebilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki durumların hangisinde non-depolarizan kas gevşeticilere karşı artmış duyarlılık beklenir?",
    options: [
      "Yanık",
      "Myastenia gravis",
      "Hiperkalemi",
      "Guillain-Barre sendromu",
      "Distrofi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Myastenia gravis, nikotinik reseptör sayısının azalmasına yol açar → non-depolarizan ajanlara aşırı duyarlılık oluşur → düşük doz verilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "İntraoperatif nöromüsküler izlem için en uygun kas grubu aşağıdakilerden hangisidir?",
    options: [
      "Orbikülaris okuli",
      "Masseter",
      "Adduktor pollicis",
      "Gluteus",
      "Gastroknemius",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Adduktor pollicis kası, ulnar sinir üzerinden izlenir ve nöromüsküler izlemde en sık tercih edilen kas grubudur.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Süksinilkolin kullanımında görülen \"faz II blok\" hangi özellik ile karakterizedir?",
    options: [
      "Antikolinesterazlarla düzeltilebilmesi",
      "Tetanik stimülasyonda fade olmaması",
      "Post-tetanik potentiasyon görülmesi",
      "Asetilkolin esteraz inhibitörlerine dirençli olması",
      "Sadece yüksek dozlarda ortaya çıkması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Faz II blok, uzun süreli/yüksek doz süksinilkolin kullanımında gelişir ve non-depolarizan blok özellikleri gösterir (post-tetanik potentiasyon, antikolinesterazlarla düzelme).",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Hangisi süksinilkolin kullanımında görülen bradikardi için risk faktörüdür?",
    options: [
      "Hipertansiyon",
      "Çocuk yaş grubu",
      "Beta blokör kullanımı",
      "Tekrarlayan dozlar",
      "Hipokalemi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Süksinilkolin, muskarinik reseptörleri uyararak bradikardi yapabilir. Tekrarlayan dozlarda ve pediatrik hastalarda risk artar. Atropin profilaksi için kullanılabilir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Hangisi non-depolarizan nöromusküler blokörlerin etkisini uzatır?",
    options: [
      "Hiperkalsemi",
      "Hipermagnezemi",
      "Alkaloz",
      "Hipoglisemi",
      "Hipernatremi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Hipermagnezemi, asetilkolin salınımını inhibe ederek non-depolarizan blokörlerin etkisini artırır. Aminoglikozidler, lokal anestezikler ve hipotermi de etkiyi uzatır.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi atraküryumun metabolizmasını sağlayan mekanizmadır?",
    options: [
      "Asetilkolin esteraz ile hidroliz",
      "Hofmann eliminasyonu",
      "Renal atılım",
      "Sitokrom P450 ile metabolizma",
      "Glukuronidasyon",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Atraküryum, Hofmann eliminasyonu (pH ve ısıya bağımlı non-enzimatik parçalanma) ile metabolize olur. Laudanozin (nörotoksik metabolit) oluşturur.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Nöromusküler blokun monitorizasyonunda hangisi TOF (Train-of-Four) oranının klinik anlamını doğru tanımlar?",
    options: [
      "TOF <0.7: Derin blok",
      "TOF 0.5-0.7: Yeterli cerrahi relaksasyon",
      "TOF 0.7-0.9: Ekstübasyon için uygun",
      "TOF >0.9: Nöromusküler fonksiyonun tam geri dönüşü",
      "TOF 0.9-1.0: Rezidüel paralizi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "TOF oranı: 4. twitch / 1. twitch şeklinde hesaplanır. <0.5: Derin blok, 0.5-0.9: Rezidüel paralizi (ekstübasyon riskli), >0.9: Güvenli ekstübasyon",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi antikolinesterazların yan etkilerinden değildir?",
    options: [
      "Bradikardi",
      "Bronkospazm",
      "GIS motilitesinde artış",
      "Hipersalivasyon",
      "Hipertansiyon",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Neostigmin/edrofonyum, asetilkolin esterazı inhibe ederek parasempatik yan etkiler (bradikardi, bronkospazm, salivasyon) yapar. Atropin/glycopyrrolate ile premedikasyon gerekir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question:
        "Hangisi süksinilkolin kullanım kontrendikasyonlarından değildir?",
    options: [
      "Masif travma (24 saat sonra)",
      "Glokom",
      "Hiperkalemi",
      "Malign hipertermi öyküsü",
      "Miyotonik distrofi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Masif travma/yanık/omurilik yaralanmasında (48 saat-6 ay içinde) süksinilkolin hiperkalemi riski nedeniyle kontrendikedir. Glokom, malign hipertermi öyküsü ve miyotonik distrofi de kontrendikasyonlardır.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question: "Hangisi psödokolinesteraz eksikliğinde görülmez?",
    options: [
      "Süksinilkolin etki süresinde uzama",
      "Mivakuryum etki süresinde uzama",
      "Artmış malign hipertermi riski",
      "Prokain metabolizmasında yavaşlama",
      "Lokal anestezik toksisite riskinde artış",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Psödokolinesteraz (butirilkolinesteraz), süksinilkolin/mivakuryum/prokain gibi ilaçları metabolize eder. Eksikliğinde bu ilaçların etki süresi uzar. Malign hipertermi ile direkt ilişkisi yoktur (RYR1 gen mutasyonu kaynaklı).",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki durumların hangisinde süksinilkolin kullanımı göreceli olarak güvenlidir?",
    options: [
      "72 saat önce geçirilmiş masif yanık",
      "Kronik böbrek yetmezliği (K+: 5.6 mEq/L)",
      "Açık göz yaralanması",
      "Miyotonik distrofi öyküsü",
      "6 aylık spinal kord yaralanması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Açık göz yaralanmasında süksinilkolin göziçi basıncını geçici artırsa da klinik önemi tartışmalıdır (kullanılabilir). Mutlak kontrendikasyonlar: Malign hipertermi öyküsü, Hiperkalemi (K+ >5.5 mEq/L), 48 saat-6 ay arası masif travma/yanık/spinal kord yaralanması, Miyotonik distrofi",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 3,
  ),

  Question(
    question:
        "Hangisi nöromusküler blok monitorizasyonunda \"double burst stimülasyon (DBS)\"in avantajıdır?",
    options: [
      "Derin blokun değerlendirilmesi",
      "Rezidüel paralizinin klinik olarak tanınması",
      "TOF'den daha objektif sonuç vermesi",
      "Post-tetanik sayım gerektirmemesi",
      "Non-depolarizan blokörlere özgü olması",
    ],
    correctAnswerIndex: 1,
    explanation:
        "DBS, iki kısa tetanik stimülasyonun ardışık uygulanmasıdır. TOF'ye göre rezidüel paraliziyi daha iyi gösterir (subjektif değerlendirmede avantaj). TOF >0.9 veya DBS'de fade olmaması, güvenli ekstübasyon için kriterlerdir.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi cisatraküryumun avantajıdır?",
    options: [
      "Renal yetmezlikte doz ayarı gerektirmemesi",
      "Hızlı başlangıç süresi (30 sn)",
      "Psödokolinesteraz ile metabolizma",
      "Kardiyak stabilite sağlaması",
      "Ucuz olması",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Cisatraküryum, Hofmann eliminasyonu ile metabolize olduğundan renal/hepatik yetmezlikte doz değişikliği gerekmez. Başlangıç süresi 2-3 dakikadır (roküronyum daha hızlıdır).",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi sugammadeksin özelliklerinden biri değildir?",
    options: [
      "Steroid yapılı non-depolarizan blokörleri bağlar",
      "Plazma psödokolinesteraz aktivitesinden etkilenir",
      "Roküronyum ve veküronyumu antagonize eder",
      "Böbrek yoluyla atılır",
      "Histamin salınımına neden olmaz",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Sugammadeks, gamma-siklodekstrin türevi olup steroid yapılı blokörlerle (roküronyum/veküronyum) 1:1 kompleks oluşturur. Psödokolinesterazdan bağımsız çalışır. Böbrek yoluyla değişmeden atılır.",
    category: "nöromüsküler bloker ajanlar",
    difficulty: 2,
  ),
];
