import '../models/question.dart';

final List<Question> chronicPainTreatmentQuestions = [
  Question(
    question: "Aşağıdaki ağrı tiplerinden hangisi, nöropatik ağrı kategorisine girer?",
    options: [
      "Kemik metastazına bağlı ağrı",
      "Yanık sonrası oluşan ağrı",
      "Diyabetik periferik nöropati",
      "Romatoid artrite bağlı ağrı",
      "Visseral organ distansiyonuna bağlı ağrı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Nöropatik ağrı, sinir sisteminin kendisindeki hasardan kaynaklanır → diyabetik nöropati en sık örneklerindendir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Opioid rotasyonu ne amaçla uygulanır?",
    options: [
      "Opioid dozunu artırmak için",
      "Tolerans gelişimini hızlandırmak için",
      "Advers etkileri azaltmak ve analjeziyi korumak için",
      "Opioid bağımlılığı oluşturmak için",
      "Nöropatik ağrıyı azaltmak için"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Farklı opioidler farklı reseptör alt gruplarına bağlanabilir → rotasyon, analjeziyi korurken yan etkileri azaltabilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdaki ilaç gruplarından hangisi, adjuvan analjezik olarak kabul edilir?",
    options: [
      "NSAİİ",
      "Parasetamol",
      "Trisiklik antidepresanlar",
      "Morfin",
      "Fentanil"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Adjuvan analjezikler, doğrudan analjezik etkileri olmayan ama ağrı kontrolünü artıran ajanlardır → trisiklik antidepresanlar, nöropatik ağrıda kullanılır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, kronik ağrının fizyopatolojisinde rol alan mekanizmalardan biridir?",
    options: [
      "Sadece periferik sensitizasyon",
      "Sadece somatik ağrı yollarının aktivasyonu",
      "Santral sensitizasyon ve sinaptik plastisite",
      "Kemoreseptör hasarı",
      "Sadece inflamatuvar yanıt"
    ],
    correctAnswerIndex: 2,
    difficulty: 3,
    explanation: "Kronik ağrı, santral sinir sisteminde duyarlılığın artması (santral sensitizasyon) ve nöral plastisite ile karakterizedir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "WHO 3 basamaklı ağrı tedavi merdiveni modelinde 2. basamak tedavi seçeneği aşağıdakilerden hangisidir?",
    options: [
      "Sadece non-opioid analjezik",
      "Güçlü opioid",
      "Adjuvan tedavi",
      "Zayıf opioid + non-opioid",
      "Kortikosteroidler"
    ],
    correctAnswerIndex: 3,
    difficulty: 1,
    explanation: "WHO merdiveni: 1. basamak → non-opioid, 2. basamak → zayıf opioid + non-opioid, 3. basamak → güçlü opioidler.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, invaziv girişimsel ağrı tedavisi yöntemlerinden biridir?",
    options: [
      "Amitriptilin kullanımı",
      "Gabapentin başlamak",
      "Medulla spinalise opioid infüzyonu",
      "Fizik tedavi",
      "Psikoterapi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Girişimsel ağrı tedavisi, sinir blokları, sinir stimülasyonu ve intratekal ilaç uygulamaları gibi işlemleri kapsar.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kompleks Bölgesel Ağrı Sendromu (CRPS) ile ilgili aşağıdaki ifadelerden hangisi yanlıştır?",
    options: [
      "Otonomik disfonksiyon sık görülür",
      "Allodini ve hiperaljezi karakteristiktir",
      "Tip I formunda periferik sinir hasarı vardır",
      "Sempatik sinir blokları tedavide yer alabilir",
      "Erken mobilizasyon faydalıdır"
    ],
    correctAnswerIndex: 2,
    difficulty: 3,
    explanation: "CRPS Tip I'de periferik sinir hasarı yoktur (Refleks Sempatik Distrofi). Tip II (kausalgik tip) sinir hasarı içerir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdaki uygulamalardan hangisi, kapsaisin topikal tedavisinin etkili olduğu durumlardan biridir?",
    options: [
      "Akut inflamatuvar artrit",
      "Migren",
      "Fantom ağrı",
      "Postherpetik nevralji",
      "Viseral ağrı"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Kapsaisin, C-lifleri üzerinden etkili topikal bir ajandır → özellikle postherpetik nevraljide etkilidir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kronik kanser ağrısında transdermal fentanil ile ilgili aşağıdaki ifadelerden hangisi doğrudur?",
    options: [
      "Hızlı analjezi sağlar",
      "Akut ağrı ataklarında etkilidir",
      "72 saatlik salınım süresi vardır",
      "Her 12 saatte bir değiştirilmelidir",
      "Sadece terminal dönemde kullanılır"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Transdermal fentanil, yavaş salınan formdur → etkisi 12–24 saatte başlar, 72 saate kadar sürer.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, nöropatik ağrıyı somatik ağrıdan ayıran en belirgin özelliktir?",
    options: [
      "İyi lokalize edilebilmesi",
      "İnflamasyon bulgularının eşlik etmesi",
      "Allodini ve parestezinin varlığı",
      "Hareketle artması",
      "NSAİİ'lere yanıt vermesi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Allodini (normalde ağrılı olmayan uyaranın ağrı yapması) ve parestezi, nöropatik ağrının tipik özelliklerindendir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, opioid toleransı gelişiminin önlenmesinde etkili bir yaklaşımdır?",
    options: [
      "Doz aralığını kısaltmak",
      "Uzun etkili opioidleri tercih etmek",
      "Aynı dozu sürekli sürdürmek",
      "Adjuvan tedavi eklemek",
      "Tedaviye kortikosteroid eklemek"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Adjuvan ilaçlar (antidepresanlar, antikonvülzanlar) eklenerek opioid ihtiyacı azaltılabilir → tolerans gelişimi yavaşlatılır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Antikonvülzan ilaçlardan hangisi, kronik nöropatik ağrı tedavisinde en sık kullanılır?",
    options: [
      "Valproik asit",
      "Levetirasetam",
      "Gabapentin",
      "Fenobarbital",
      "Karbamazepin"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Gabapentin ve pregabalin, kronik nöropatik ağrının en yaygın kullanılan antikonvülzan tedavilerindendir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Spinal kord stimülasyonu, aşağıdaki ağrı tiplerinden hangisinde en fazla yarar sağlar?",
    options: [
      "Akut postoperatif ağrı",
      "Psikosomatik ağrı",
      "Viseral abdominal ağrı",
      "İskemik ekstremite ağrısı",
      "Osteoartrite bağlı ağrı"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Spinal kord stimülasyonu, özellikle kritik iskemi, refrakter anjina ve CRPS gibi durumlarda etkili bir girişimsel yöntemdir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Opioid hiperaljezi tanısı düşünülen hastada aşağıdaki yaklaşımlardan hangisi uygundur?",
    options: [
      "Opioid dozu artırılır",
      "Opioid rotasyonu yapılır",
      "Tedavi kesilir ve sadece NSAİİ verilir",
      "Sedasyon sağlanır",
      "Benzodiazepin başlanır"
    ],
    correctAnswerIndex: 1,
    difficulty: 3,
    explanation: "Opioid hiperaljezi, opioidlerin aşırı kullanımıyla ağrı duyarlılığının artmasıdır → opioid rotasyonu veya azaltılması önerilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisi, doz bağımlı nörotoksisite riski nedeniyle intratekal kullanıma uygun değildir?",
    options: [
      "Fentanil",
      "Morfin",
      "Ketamin",
      "Bupivakain",
      "Midazolam"
    ],
    correctAnswerIndex: 2,
    difficulty: 3,
    explanation: "Ketamin, koruyucu içeren formlarda intratekal uygulamada nörotoksisite riski taşır → dikkatli olunmalı, genellikle tercih edilmez.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Terminal dönemde ağrısı olan bir hastada oral alım mümkün değilse en uygun opioid uygulama yolu aşağıdakilerden hangisidir?",
    options: [
      "Transdermal",
      "İntranazal",
      "Enteral",
      "Subkutan",
      "Sublingual"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Subkutan opioid uygulaması, pratik ve etkili bir parenteral yoldur → özellikle terminal dönem hastalarında sık tercih edilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kronik ağrılı hastalarda depresyon ve anksiyete ile ilgili aşağıdakilerden hangisi doğrudur?",
    options: [
      "Ağrı kesildikçe psikolojik belirtiler genellikle artar",
      "Psikolojik belirtiler sadece opioid kullananlarda görülür",
      "Depresyon tedavisi ağrı tedavisine katkı sağlar",
      "Psikoterapi ağrıyı artırır",
      "Ağrı tedavisi ile psikiyatrik değerlendirme birlikte yapılmamalıdır"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Kronik ağrılı hastaların çoğunda depresyon ve anksiyete vardır → bu durumlar tedavi edilirse ağrı kontrolü de iyileşir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdaki yöntemlerden hangisi, medikal tedaviye dirençli kronik bel ağrısında invaziv tedavi seçeneğidir?",
    options: [
      "Ultrason eşliğinde tetik nokta enjeksiyonu",
      "Diskektomi",
      "İntratekal opioid infüzyonu",
      "TENS",
      "Epidural steroid enjeksiyonu"
    ],
    correctAnswerIndex: 2,
    difficulty: 3,
    explanation: "İntratekal opioid infüzyonu, refrakter vakalarda invaziv ağrı tedavisinin önemli bir parçasıdır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Opioid bağımlılığı riski en yüksek olan hasta profili aşağıdakilerden hangisidir?",
    options: [
      "Kronik nöropatik ağrı nedeniyle düşük doz opioid kullanan yaşlı",
      "Terminal dönem kanser hastası",
      "Anksiyete bozukluğu öyküsü olan genç erişkin",
      "Akut travma sonrası kısa süreli opioid kullanımı",
      "Cerrahi sonrası 3 gün opioid alan hasta"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Psikiyatrik hastalık öyküsü (özellikle anksiyete, depresyon) olan genç hastalarda opioid bağımlılığı riski daha yüksektir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, kronik ağrı yönetiminde multidisipliner yaklaşımın temel nedenlerinden biridir?",
    options: [
      "Yalnızca farmakolojik tedavi yetersiz olduğu için",
      "Cerrahi gereksinimi azaltmak için",
      "Fizyolojik, psikolojik ve sosyal bileşenlerin etkili olması",
      "Sadece opioid bağımlılığını önlemek için",
      "Tedavi süresini kısaltmak için"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Kronik ağrı, biyopsikososyal bir durumdur → multidisipliner yaklaşım, bu çoklu etkileri hedefler.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Duyusal nöronlar üzerindeki voltaj kapılı kalsiyum kanallarını bloke ederek analjezik etki gösteren ilaç aşağıdakilerden hangisidir?",
    options: [
      "Fentanil",
      "Amitriptilin",
      "Gabapentin",
      "Paroksetin",
      "Tramadol"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Gabapentin ve pregabalin, kalsiyum kanallarını inhibe ederek nöropatik ağrıda etkilidirler.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Nöropatik ağrı tanısında kullanılan en yaygın tarama aracı hangisidir?",
    options: [
      "DN4 (Douleur Neuropathique 4)",
      "McGill Pain Questionnaire",
      "VAS (Visual Analog Scale)",
      "Leeds Assessment of Neuropathic Symptoms",
      "Beck Depresyon Ölçeği"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "DN4, kısa ve hızlı uygulanabilir bir testtir → nöropatik ağrının tanısında yaygın kullanılır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisinin hem antidepresan hem analjezik etkisi vardır ve kronik ağrı yönetiminde sık kullanılır?",
    options: [
      "Sertralin",
      "Tramadol",
      "Amitriptilin",
      "Diazepam",
      "Furosemid"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Trisiklik antidepresanlar (özellikle amitriptilin) hem duygu durum düzenlemesi hem de analjezi sağlar → nöropatik ağrıda ilk seçeneklerdendir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kompleks Bölgesel Ağrı Sendromu (CRPS) tedavisinde sempatik blok en çok hangi amaçla yapılır?",
    options: [
      "Kalıcı iyileşme sağlamak",
      "Mekanik ağrıyı kesmek",
      "Tanısal ve terapötik değerlendirme için",
      "Sedasyon sağlamak",
      "Motor fonksiyon artırmak"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Sempatik blok, hem tanı koydurucu hem de geçici terapötik etki sağlayabilir → CRPS'de sık kullanılır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kapsaisin kremi aşağıdaki hangi nöropeptidin tükenmesine yol açarak analjezik etki gösterir?",
    options: [
      "CGRP",
      "Glutamat",
      "Substans P",
      "Endorfin",
      "Serotonin"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Kapsaisin, uzun süreli kullanımda substans P'nin tükenmesine yol açarak ağrı iletimini azaltır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Spinal kord stimülasyonu en az hangi durumda etkili kabul edilir?",
    options: [
      "CRPS",
      "Refrakter anjina",
      "İskemik bacak ağrısı",
      "Postherpetik nevralji",
      "Akut viseral ağrı"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Spinal kord stimülasyonu, akut viseral ağrılarda etkili değildir → kronik ve nöropatik kaynaklı ağrılarda kullanılır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kronik ağrının beyinde kalıcı yapısal değişikliklere neden olmasının temel fizyolojik açıklaması nedir?",
    options: [
      "Nöron sayısında artış",
      "Gliyal proliferasyon",
      "Sinaptik plastisite ve merkezi sensitizasyon",
      "Periferik reseptör sayısında artış",
      "BOS hacminde azalma"
    ],
    correctAnswerIndex: 2,
    difficulty: 3,
    explanation: "Kronik ağrı, sinaptik plastisite ve merkezi sensitizasyon ile beyin hacminde azalma ve işlevsel değişikliklere yol açabilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kronik ağrı tedavisinde opioid dışı farmakolojik yaklaşımlar ile ilgili olarak hangisi yanlıştır?",
    options: [
      "Antidepresanlar analjezik etkili olabilir",
      "Antikonvülzanlar nöropatik ağrıyı azaltabilir",
      "NMDA antagonistleri merkezi sensitizasyonu azaltabilir",
      "Glukokortikoidler direkt analjezik etkilidir",
      "Lokal anestezikler topikal olarak etkili olabilir"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Glukokortikoidler esas olarak anti-inflamatuvar etkilidir → direkt analjezik etkileri yoktur, ancak inflamatuvar ağrılarda yardımcı olabilirler.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, opioid bağımlılığı ile opioid toleransı arasındaki temel farktır?",
    options: [
      "Tolerans geri döndürülemezken bağımlılık geçicidir",
      "Bağımlılıkta ilaç kesilince yoksunluk gelişirken, toleransta gelişmez",
      "Tolerans sadece zayıf opioidlerde görülür",
      "Bağımlılık opioidin analjezik etkisini artırır",
      "Tolerans daha çok psikolojik temellidir"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Bağımlılık, ilaç kesildiğinde yoksunluk semptomlarıyla karakterizedir; toleransta ise sadece etki azalır, yoksunluk olmaz.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Nöropatik ağrının tanısında kullanılan özelliklerden hangisi diğerlerinden farklıdır?",
    options: [
      "Elektrik çarpması hissi",
      "Yanıcı ağrı",
      "Ağrılı uyaran olmadan ağrı hissi",
      "Şişlik ve kızarıklık",
      "Karıncalanma, iğnelenme hissi"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Şişlik ve kızarıklık, genellikle inflamatuvar veya viseral ağrıya işaret eder → nöropatik ağrıda görülmez.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Ziconotide, hangi mekanizma ile ağrı tedavisinde etkilidir?",
    options: [
      "NMDA antagonizması",
      "Kalsiyum kanalı blokajı",
      "GABA reseptör agonizması",
      "Substans P antagonizması",
      "Beta-endorfin salınımı"
    ],
    correctAnswerIndex: 1,
    difficulty: 3,
    explanation: "Ziconotide, N-tipi voltaj bağımlı kalsiyum kanallarını inhibe ederek analjezik etki gösterir → intratekal uygulanan bir peptid ajandır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, yüksek doz uzun süreli opioid kullanımı sonrası gelişen opioid hiperaljezinin tipik bulgularındandır?",
    options: [
      "Opioide karşı artmış yanıt",
      "Ağrının geniş bir alana yayılması",
      "Artmış efor kapasitesi",
      "Artan sedasyon",
      "Azalmış duyarlılık"
    ],
    correctAnswerIndex: 1,
    difficulty: 3,
    explanation: "Opioid hiperaljezide, ağrı daha yaygın ve daha yoğun hissedilir → paradoksal olarak ağrı artar.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kompleks Bölgesel Ağrı Sendromu (CRPS) Tip II ile ilgili doğru olan hangisidir?",
    options: [
      "Sinir hasarı yoktur",
      "Sempatik blok etkisizdir",
      "Sinir hasarı vardır",
      "Her zaman kas atrofisi eşlik eder",
      "Sadece alt ekstremitede görülür"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "CRPS Tip II, önceden tanımlanabilen sinir hasarına sekonder gelişir → Tip I'den farkı budur.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Girişimsel ağrı tedavisinde uygulanan radiofrekans ablasyon, aşağıdaki mekanizmalardan hangisine dayanır?",
    options: [
      "Kimyasal nöroliz",
      "Termal hasar oluşturarak sinir iletiminin durdurulması",
      "Elektriksel stimülasyonla analjezi",
      "Lokal anestezik etkisi",
      "İyon kanal açılımı"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Radiofrekans ablasyon, sinirde ısı ile termal hasar oluşturarak iletiyi keser, özellikle faset ağrısında kullanılır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Tramadol, hangi iki mekanizma ile analjezik etki gösterir?",
    options: [
      "NMDA antagonizması ve GABA agonizması",
      "Opioid reseptör agonizması ve serotonin/norepinefrin geri alım inhibisyonu",
      "Lokal anestezik etkisi ve COX-2 inhibisyonu",
      "Kortikosteroid salınımı ve Na kanal blokajı",
      "Antihistaminik etki ve antikolinerjik etki"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Tramadol, zayıf µ-opioid agonistidir ve aynı zamanda serotonin ve noradrenalin reuptake inhibitörüdür.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, kronik ağrı hastalarında opioid tedavisini kesmeyi gerektirecek durumlar arasında yer almaz?",
    options: [
      "Kontrolsüz sedasyon",
      "Opioid hiperaljezisi",
      "Artan doz ihtiyacı",
      "Ciddi respiratuvar depresyon",
      "Uygunsuz kullanım (abuse)"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Doz ihtiyacının artması, tek başına kesme nedeni değildir → uygun değerlendirme ve rotasyon denenebilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdaki durumların hangisinde kronik opioid tedavisi sırasında hastanın opioid rotasyonuna gitmek en uygundur?",
    options: [
      "Hastada hiçbir yan etki olmaması",
      "Uzun süreli aynı opioid ile stabil analjezi sağlanması",
      "Belirgin yan etkilerin ortaya çıkması",
      "Günlük doz ihtiyacının azalması",
      "Diğer analjeziklerin eklenmesine gerek olmaması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Belirgin sedasyon, bulantı, konstipasyon gibi yan etkiler oluşursa, opioid rotasyonu ile daha iyi tolere edilen bir ajan seçilebilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, kanser dışı kronik ağrı hastalarında opioid kullanımı için en az uygun olan durumdur?",
    options: [
      "Fonksiyonel iyileşme hedeflenmesi",
      "Uygun doz-titrasyonun planlanması",
      "Yalnızca ağrının derecesine odaklanılması",
      "Risk–fayda değerlendirmesi yapılması",
      "Multimodal tedavi yaklaşımının benimsenmesi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Opioid tedavisi, yalnızca ağrı skoruna göre değil; fonksiyonel kazanım, psikolojik durum ve risk analizi ile planlanmalıdır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdaki yöntemlerden hangisi, kronik bel ağrısında facet kaynaklı ağrının tanısal olarak değerlendirilmesini sağlar?",
    options: [
      "Diskografi",
      "EMG",
      "Epidural steroid enjeksiyonu",
      "Medial dal sinir blokajı",
      "TENS"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Facet eklem kaynaklı ağrılar, ilgili sinirin (medial dal) blokajı ile tanısal olarak değerlendirilebilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Amitriptilin, kronik ağrıda hangi özellikleri nedeniyle tercih edilir?",
    options: [
      "Yalnızca antikolinerjik etkisi",
      "GABA agonisti olması",
      "Norepinefrin ve serotonin geri alım inhibitörü olması",
      "Dopamin arttırıcı olması",
      "COX-2 inhibitörü olması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Trisiklik antidepresanlar, serotonin ve noradrenalin geri alımını inhibe ederek analjezik etkilerini gösterir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Adjuvan analjezikler ile ilgili hangisi yanlıştır?",
    options: [
      "Opioid doz ihtiyacını azaltabilirler",
      "Ağrının emosyonel bileşenine etki edebilirler",
      "Antidepresanlar, antikonvülzanlar bu gruptadır",
      "Visseral ağrıda tek başına yeterlidirler",
      "Nöropatik ağrıda sıklıkla kullanılırlar"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Visseral ağrı genellikle opioid/non-opioidlerle kontrol edilir → adjuvanlar tek başına yeterli değildir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdaki sinir bloklarından hangisi, postherpetik nevralji tedavisinde uygulanabilir?",
    options: [
      "Supraklaviküler blok",
      "Ganglion stellatum blokajı",
      "N. saphenus bloğu",
      "İnterskalen blok",
      "Femoral sinir bloğu"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Trigeminal ve servikal dermatoma tutulumlu postherpetik nevraljide, stellat ganglion blokajı etkili olabilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kronik ağrının santral sensitizasyonu için en çok hangi ilaç grubunun etkili olduğu düşünülmektedir?",
    options: [
      "NSAİİ",
      "NMDA antagonistleri",
      "SSRI antidepresanlar",
      "Benzodiazepinler",
      "Beta blokerler"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "NMDA reseptörleri, santral duyarlılığın artışında rol oynar → ketamin gibi NMDA antagonistleri bu süreci yavaşlatabilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, opioid tedavisi sırasında ciddi konstipasyonu yönetmekte öncelikli yaklaşımdır?",
    options: [
      "Laksatif başlanması",
      "Opioid kesilmesi",
      "SSRI verilmesi",
      "Prokinetik eklenmesi",
      "Yalnızca diyet değişikliği"
    ],
    correctAnswerIndex: 0,
    difficulty: 1,
    explanation: "Konstipasyon, opioid kullanımında en sık ve dirençli yan etkidir → tedaviye laksatifle başlanması gerekir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdaki durumların hangisinde, kronik ağrıda opioid tedavisi yerine spinal kord stimülasyonu daha uygundur?",
    options: [
      "Akut abdominal ağrı",
      "Kas-iskelet ağrısı",
      "İskemik bacak ağrısı (non-rekonstrüktif)",
      "Fibromiyalji",
      "Tension tipi baş ağrısı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Spinal kord stimülasyonu, özellikle kritik ekstremite iskemisi ve CRPS gibi durumlarda önerilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, spinal kord stimülasyonunun başarısını öngörmede en önemli kriterlerden biridir?",
    options: [
      "Ağrının viseral kaynaklı olması",
      "Önceden opioid kullanmış olması",
      "Semptomların 6 aydan uzun sürmesi",
      "Başarıyla tamamlanan bir deneme sürecinin olması",
      "Fizik tedaviye yanıtsızlık"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Spinal kord stimülasyonu öncesinde yapılan deneme (trial) uygulamasında %50 üzeri ağrı azalması, uygulamanın başarı şansını artırır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, gabapentin ve pregabalin'in ortak analjezik mekanizmasıdır?",
    options: [
      "NMDA reseptör antagonizması",
      "Na⁺ kanalı blokajı",
      "L-tipi kalsiyum kanal inhibisyonu",
      "Presinaptik voltaj-bağımlı kalsiyum kanalı modülasyonu",
      "Endojen opioid salınımı"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Bu ajanlar, presinaptik N-tipi voltaj-bağımlı kalsiyum kanallarını modüle ederek ağrı iletimini azaltır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Ziconotide ile ilgili olarak aşağıdakilerden hangisi doğrudur?",
    options: [
      "Oral yolla verilir",
      "GABA reseptörlerine etki eder",
      "İntratekal uygulanan bir konotoksindir",
      "NSAİİ benzeri etki gösterir",
      "SSRI'lar ile birlikte kullanımı zorunludur"
    ],
    correctAnswerIndex: 2,
    difficulty: 3,
    explanation: "Ziconotide, konus salyangozundan elde edilen bir konotoksindir ve yalnızca intratekal uygulanır → ciddi nöropsikiyatrik yan etkileri olabilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Opioidlerin bağımlılık yapma potansiyeli ile en güçlü ilişkili reseptör hangisidir?",
    options: [
      "Kappa",
      "Sigma",
      "Delta",
      "Mu-1",
      "Mu-2"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Mu-1 reseptörleri, analjezi ve euforia etkisinden sorumludur → bağımlılıkla en yakından ilişkilidir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "İntratekal opioid tedavisinde hangi özellik, morfinin fentanile göre daha uzun süre solunum depresyonu yapmasına neden olur?",
    options: [
      "Lipofilik olması",
      "Hidrofilik olması",
      "Güçlü bağlanma kapasitesi",
      "Kan-beyin bariyerini hızlı geçmesi",
      "Düşük reseptör afinitesi"
    ],
    correctAnswerIndex: 1,
    difficulty: 3,
    explanation: "Hidrofilik ilaçlar (morfin) BOS'ta daha uzun süre kalır ve rostral yayılım yaparak geç solunum depresyonuna neden olabilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Nöral destrüksiyon amacıyla yapılan girişimsel işlemlerde, aşağıdaki yöntemlerden hangisi geri dönüşsüz etkiye sahiptir?",
    options: [
      "Sempatik sinir blokajı",
      "Radiofrekans termokoagülasyon",
      "Pulsed radiofrekans",
      "Spinal kord stimülasyonu",
      "Lokal anestezik infiltrasyonu"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "RF termokoagülasyon, hedef sinirde ısı ile kalıcı hasar oluşturur → geri dönüşsüz bir nörolitik tekniktir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Opioid rotasyonu sırasında, yeni seçilecek opioidin başlangıç dozu nasıl belirlenmelidir?",
    options: [
      "Eşdeğer dozun %100'ü uygulanır",
      "Önceki doza göre daha yüksek başlanır",
      "Eşdeğer dozun %25–50'siyle başlanır",
      "Eski doza göre sabit başlanır",
      "Sabit düşük dozdan başlanmaz"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Opioid rotasyonunda, çapraz tolerans farkı nedeniyle yeni opioid, eşdeğer dozun %25–50'si ile başlanır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdaki durumların hangisinde, adjuvan analjezik olarak duloksetin kullanımının faydası en azdır?",
    options: [
      "Diyabetik nöropati",
      "Fibromiyalji",
      "Depresyon eşlik eden kronik bel ağrısı",
      "Trigeminal nevralji",
      "Anksiyete eşlikli somatik ağrı"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Trigeminal nevraljide en etkili tedavi karbamazepin gibi antikonvülzanlardır → duloksetin daha az tercih edilir. (SNRI)",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "İntratekal pompa tedavisi için aşağıdakilerden hangisi doğru bir göstergedir?",
    options: [
      "Akut postoperatif ağrı",
      "Ağrı şiddetinin sabit olması",
      "Girişimsel ağrı tedavilerine yanıtsızlık",
      "Psikiyatrik bozukluk varlığı",
      "Oral opioid toleransı olmayan hastalar"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "İntratekal pompa, girişimsel tedavilere yanıtsız refrakter hastalarda tercih edilir. Psikiyatrik bozukluklar kontrendikasyon olabilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdaki durumların hangisinde ağrı kronik ağrı olarak tanımlanır?",
    options: [
      "1 hafta süren baş ağrısı",
      "10 gün süren kas ağrısı",
      "3 ay veya daha uzun süren ağrı",
      "Menstrüel siklus boyunca hissedilen ağrı",
      "Postoperatif 5. gündeki cerrahi alan ağrısı"
    ],
    correctAnswerIndex: 2,
    difficulty: 1,
    explanation: "Kronik ağrı genellikle 3 aydan uzun süren ağrılar olarak tanımlanır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Nöropatik ağrıya en iyi örnek aşağıdakilerden hangisidir?",
    options: [
      "Apandisit ağrısı",
      "Migren",
      "Trigeminal nevralji",
      "Renal kolik",
      "Artrit"
    ],
    correctAnswerIndex: 2,
    difficulty: 1,
    explanation: "Nöropatik ağrı, sinir hasarına bağlıdır. Trigeminal nevralji tipik bir örnektir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "TENS (transkutanöz elektriksel sinir stimülasyonu) ile ilgili en doğru ifade hangisidir?",
    options: [
      "Sedasyon oluşturur",
      "Genellikle intratekal uygulanır",
      "A-fiberleri inhibe eder",
      "C-fiberlerin iletimini azaltır",
      "Ağrıyı geçici olarak modüle eder"
    ],
    correctAnswerIndex: 4,
    difficulty: 1,
    explanation: "TENS, cilt yüzeyine uygulanan elektriksel uyarı ile ağrıyı geçici olarak modüle eder.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kronik ağrı tedavisinde WHO 3 basamaklı analjezik basamak tedavisinde son basamak nedir?",
    options: [
      "NSAİİ + parasetamol",
      "Zayıf opioid + NSAİİ",
      "Güçlü opioid + adjuvan",
      "Antikonvülzan + trankilizan",
      "Steroid + asetaminofen"
    ],
    correctAnswerIndex: 2,
    difficulty: 1,
    explanation: "3. basamak: Şiddetli ağrı için güçlü opioid (örneğin morfin) ve adjuvan ilaçlardır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kompleks Bölgesel Ağrı Sendromu Tip I ile ilgili doğru ifade hangisidir?",
    options: [
      "Sinir hasarı mutlaka bulunur",
      "Kızarıklık ve sıcaklık artışı gözlenmez",
      "Otonomik değişiklikler eşlik eder",
      "Sadece alt ekstremitede görülür",
      "Antibiyotikle tedavi edilir"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Tip I'de sinir hasarı yoktur ama otonomik bulgular (renk değişikliği, terleme) mevcuttur.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kapsaisin kremi aşağıdaki mekanizmalarla etki eder:",
    options: [
      "COX-2 inhibisyonu",
      "NMDA antagonizmi",
      "TRPV1 reseptör desensitizasyonu",
      "GABA reseptör aktivasyonu",
      "Endorfin artışı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Kapsaisin, TRPV1 reseptörlerini desensitize ederek analjezik etki gösterir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Steroid enjeksiyonu aşağıdaki hangi kronik ağrı sendromunda en sık tercih edilir?",
    options: [
      "Trigeminal nevralji",
      "Fibromiyalji",
      "Piriformis sendromu",
      "Lomber disk hernisi",
      "Temporomandibular disfonksiyon"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Steroid enjeksiyonları lomber radikülopati gibi durumlarda sıklıkla kullanılır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Fibromiyalji için tanı kriterlerinde en önemli özellik hangisidir?",
    options: [
      "EMG ile sinir ileti bozukluğu",
      "Radyolojik olarak ispatlanabilir lezyon",
      "Yaygın vücut ağrısı ve hassas noktalar",
      "C-reaktif protein yüksekliği",
      "Düşük kreatin kinaz düzeyleri"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Fibromiyaljide yaygın vücut ağrısı ve ≥11 hassas nokta tanıda kullanılır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi kronik ağrının psikolojik etkilerinden biri değildir?",
    options: [
      "Depresyon",
      "Uyku bozuklukları",
      "Anksiyete",
      "Psikoz",
      "İşlevsellik kaybı"
    ],
    correctAnswerIndex: 3,
    difficulty: 1,
    explanation: "Psikoz kronik ağrıya özgü değildir, diğerleri sık karşılaşılan psikososyal etkileridir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdaki durumlardan hangisi opioid rotasyonu (opioid switching) için en sık nedendir?",
    options: [
      "Uyuşukluk gelişmesi",
      "Tolerans gelişimi",
      "Hipotansiyon",
      "Cilt döküntüsü",
      "Bulantı ve kusma"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Ağrıya karşı yanıt azaldığında (tolerans), farklı bir opioide geçilerek etki artırılabilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Tramadol'ün antinörosanaljezik etkisi aşağıdakilerden hangisine bağlıdır?",
    options: [
      "Dopamin antagonizmi",
      "NMDA antagonizmi",
      "Serotonin ve noradrenalin geri alım inhibisyonu",
      "GABA reseptör stimülasyonu",
      "Kalsiyum kanal blokajı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Tramadol hem zayıf opioid agonisti hem de serotonin/noradrenalin geri alım inhibitörüdür.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Nöromodülasyon yöntemlerinden biri aşağıdakilerden hangisidir?",
    options: [
      "TENS",
      "Lomber dekompresyon",
      "Antibiyotik tedavisi",
      "Steroid enjeksiyonu",
      "Kas gevşetici kullanımı"
    ],
    correctAnswerIndex: 0,
    difficulty: 1,
    explanation: "TENS, spinal cord stimulasyon gibi yöntemler nöromodülasyona örnektir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi opioid bağımlılığı değil, opioid toleransı belirtisidir?",
    options: [
      "Fiziksel yoksunluk",
      "İlaç arama davranışı",
      "Artan doz gereksinimi",
      "Sosyal izolasyon",
      "Kontrolsüz ilaç kullanımı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Doz artırma ihtiyacı toleransa işarettir; diğerleri daha çok bağımlılığı gösterir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Lidokain infüzyonu en çok hangi ağrı tipinde etkilidir?",
    options: [
      "Visseral ağrı",
      "Mekanik bel ağrısı",
      "Nöropatik ağrı",
      "Kemik metastazı ağrısı",
      "Myofasiyal ağrı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "İntravenöz lidokain infüzyonları özellikle nöropatik ağrıda etkilidir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Clonidine aşağıdaki hangi reseptör üzerinden analjezi sağlar?",
    options: [
      "Alfa-1",
      "Beta-2",
      "NMDA",
      "Alfa-2",
      "D1 dopaminik"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Clonidine santral alfa-2 agonistidir ve analjezik etki gösterir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Ziconotide, analjezik etkisini nerede gösterir?",
    options: [
      "Periferik sinirler",
      "Postsinaptik NMDA reseptörü",
      "Substantia gelatinosa'daki kalsiyum kanalları",
      "Thalamus GABA reseptörleri",
      "Kortikal opioid reseptörleri"
    ],
    correctAnswerIndex: 2,
    difficulty: 3,
    explanation: "Ziconotide, konotoksin türevi bir ilaçtır ve substantia gelatinosa'da N-tipi kalsiyum kanallarını bloke eder.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi fibromiyalji tedavisinde ilk basamak olarak önerilmez?",
    options: [
      "Aerobik egzersiz",
      "Uyku hijyeni",
      "Amitriptilin",
      "Opioid analjezik",
      "Psikoeğitim"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Opioidler fibromiyaljide genellikle etkili değildir ve önerilmez.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi nöropatik ağrının karakteristiğidir?",
    options: [
      "Derin, künt, visseral ağrı",
      "Lokalize, süreğen, gece artan ağrı",
      "Elektrik çarpması tarzında ağrı",
      "Basınca bağlı artan, lokal hassasiyet",
      "Somatik referanslı yayılım"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Nöropatik ağrı; yanma, batma, elektrik çarpması tarzında hissedilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Allodini tanımı aşağıdakilerden hangisidir?",
    options: [
      "Normalde ağrı yapan uyarana karşı artmış yanıt",
      "Uyaran olmaksızın ağrı hissi",
      "Normalde ağrıya neden olmayan uyaranın ağrılı algılanması",
      "Sinir hasarına bağlı olmayan ağrı",
      "Ciltte sürekli uyuşukluk hissi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Allodini, hafif dokunma gibi ağrılı olmayan uyaranlara ağrılı yanıt verilmesidir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdaki ilaçlardan hangisi visseral ağrı kontrolünde en çok tercih edilir?",
    options: [
      "Paroksetin",
      "Tramadol",
      "Morfin",
      "Pregabalin",
      "Naproksen"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Opioidler visseral ağrılarda etkilidir, özellikle morfin tercih edilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi trigeminal nevraljinin tedavisinde ilk seçenek olarak kullanılır?",
    options: [
      "Morfin",
      "Karbamazepin",
      "Amitriptilin",
      "Pregabalin",
      "Lidokain"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Karbamazepin, trigeminal nevraljide ilk basamak tedavidir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kronik ağrıda depresyon eşlik ediyorsa en uygun farmakolojik yaklaşım aşağıdakilerden hangisidir?",
    options: [
      "NSAİİ başlanması",
      "Opioid dozu artırılması",
      "SSRI veya TCA başlanması",
      "Antipsikotik verilmesi",
      "Lokal anestezik enjeksiyonu"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Depresyon eşlik eden kronik ağrılarda antidepresanlar hem duygudurum hem de analjezi açısından etkilidir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Myofasiyal ağrı sendromunda en sık görülen bulgu aşağıdakilerden hangisidir?",
    options: [
      "Hiperaljezik cilt alanları",
      "Belirgin sabah tutukluğu",
      "Trigger point (tetik noktalar)",
      "Motor yetersizlik",
      "Ateş ve CRP yüksekliği"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Trigger point'ler, myofasiyal ağrının tipik özelliğidir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Lomber epidural steroid enjeksiyonu aşağıdaki hangi durumda en sık uygulanır?",
    options: [
      "Fibromiyalji",
      "Lumbal spinal stenoz",
      "Trigeminal nevralji",
      "Refleks sempatik distrofi",
      "Parkinson hastalığı"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Epidural steroidler en sık lomber disk hernisi veya spinal stenoz gibi radikülopatik ağrılarda uygulanır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Spinal kord stimülasyonu (SCS) için en sık endikasyon hangisidir?",
    options: [
      "Multipl skleroz",
      "CRPS (Kompleks Bölgesel Ağrı Sendromu)",
      "Trigeminal nevralji",
      "Fibromiyalji",
      "Artrit"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "SCS, özellikle ilaç tedavisine dirençli CRPS için önerilen invazif tedavi yöntemidir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Nöropatik ağrı tanısında en çok kullanılan skorlama yöntemi aşağıdakilerden hangisidir?",
    options: [
      "Beck depresyon ölçeği",
      "VAS (Visual Analog Skala)",
      "DN4 (Douleur Neuropathique en 4 questions)",
      "McGill Pain Questionnaire",
      "Oswestry skorlaması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "DN4, nöropatik ağrı tanısında sık kullanılan pratik ve güvenilir bir testtir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Refleks Sempatik Distrofi (CRPS tip I) tedavisinde ilk basamak aşağıdakilerden hangisidir?",
    options: [
      "Radyoablasyon",
      "Spinal kord stimülasyonu",
      "Fizyoterapi ve analjezik",
      "Antibiyotik tedavisi",
      "Antikoagülan başlanması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "CRPS tip I tedavisinde erken mobilizasyon ve fizyoterapi çok önemlidir. Analjezikler destekleyicidir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kronik ağrıya bağlı işlevsellik kaybını ölçmek için en uygun değerlendirme hangisidir?",
    options: [
      "DN4 skoru",
      "NRS (numeric rating scale)",
      "Oswestry Disability Index",
      "GCS",
      "Karnofsky performans skalası"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Oswestry Skoru, özellikle bel ağrısına bağlı fonksiyonel kısıtlılık değerlendirmesinde kullanılır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Pregabalin kullanımının en sık yan etkisi hangisidir?",
    options: [
      "Bradikardi",
      "Sersemlik ve baş dönmesi",
      "Hipoglisemi",
      "Hipotermi",
      "Agranülositoz"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Pregabalin'in sık görülen yan etkileri baş dönmesi, somnolans ve sersemliktir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Tizanidin etki mekanizması aşağıdakilerden hangisidir?",
    options: [
      "NMDA reseptör antagonizmi",
      "Alfa-2 adrenerjik agonizm",
      "Beta-1 blokajı",
      "Dopamin salınımı artırma",
      "GABA-A reseptör aktivasyonu"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Tizanidin, santral alfa-2 agonist etkisiyle kas gevşetici ve analjezik etki gösterir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kanser ağrısında analjezik tedavide ilk basamak ilaç tercihi nedir?",
    options: [
      "Oksikodon",
      "Fentanil",
      "Morfin",
      "NSAİİ",
      "Pregabalin"
    ],
    correctAnswerIndex: 3,
    difficulty: 1,
    explanation: "Hafif ağrı durumunda WHO basamağına göre NSAİİ ve parasetamol ile başlanır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Radyofrekans ablasyon en sık hangi yapıya uygulanır?",
    options: [
      "Medulla spinalis",
      "Sakral pleksus",
      "Faset eklemleri medial dalları",
      "Disk içi nükleus",
      "N. sciaticus"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Faset eklem medial dal blokları sonrası olumlu yanıt alınırsa, radyoablasyon uygulanabilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kronik ağrıda hastaya ağrısını yönetme becerisi kazandıran terapi yöntemi hangisidir?",
    options: [
      "Antidepresan tedavi",
      "Akupunktur",
      "Fizyoterapi",
      "Bilişsel davranışçı terapi",
      "Hipnoz"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "BDT (CBT), hastaya ağrı ile başa çıkma becerileri kazandırır, davranış değişikliği sağlar.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi opioidlerin sık görülen endokrin yan etkilerinden biridir?",
    options: [
      "Hipertiroidi",
      "Prolaktin azalması",
      "Hipogonadizm",
      "ACTH artışı",
      "Testosteron artışı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Kronik opioid kullanımı hipotalamo-hipofizer-gonadal aksı baskılayarak hipogonadizme yol açabilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kanser ağrısı yönetiminde zayıf opioid olarak sınıflandırılan ilaç aşağıdakilerden hangisidir?",
    options: [
      "Morfin",
      "Oksikodon",
      "Tramadol",
      "Fentanil",
      "Metadon"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Tramadol ve kodein gibi ilaçlar zayıf opioidlerdir; orta şiddetli ağrılarda kullanılır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "NSAİİ kullanımı ile ilgili en önemli sistemik yan etki hangisidir?",
    options: [
      "Hiperglisemi",
      "Hipotansiyon",
      "Gastrointestinal kanama",
      "Hirsutizm",
      "Hiponatremi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "NSAİİ'ler özellikle yaşlılarda GİS kanama riskini artırır. Proton pompa inhibitörleriyle kombine edilmesi önerilir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Amitriptilin aşağıdaki durumların hangisinde kronik ağrı tedavisinde en sık kullanılır?",
    options: [
      "Gut artriti",
      "Lumbal stenoz",
      "Fibromiyalji",
      "Trigeminal nevralji",
      "Ankilozan spondilit"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Trisiklik antidepresanlar (özellikle amitriptilin), fibromiyaljide ilk basamak tedavi seçeneklerindendir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi antikonvülzanların potansiyel yan etkilerinden biri değildir?",
    options: [
      "Baş dönmesi",
      "Kilo artışı",
      "Sedasyon",
      "Anksiyete artışı",
      "Bulantı"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Antikonvülzanlar genellikle sedatif etki gösterir, anksiyete artışı ile ilişkili değildir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Spinal kord stimülasyonu hangi tip ağrıda daha az etkilidir?",
    options: [
      "Nöropatik ağrı",
      "CRPS",
      "İskemik ağrı",
      "Visseral ağrı",
      "Postlaminektomi sendromu"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Spinal kord stimülasyonu visseral ağrılarda genellikle etkili değildir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Nöral bloklar en sık hangi amaçla kullanılır?",
    options: [
      "Kalıcı ağrı kesici sağlamak",
      "Tanı koymak ve tedaviye yön vermek",
      "Tansiyon kontrolü",
      "Psikolojik destek sağlamak",
      "Antikoagülan ihtiyacını ortadan kaldırmak"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Tanı amaçlı bloklar, ağrının kaynağını belirlemede kullanılır ve tedavi planını yönlendirir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Koanaljezik olarak kullanılan ilaçlardan biri değildir?",
    options: [
      "Gabapentin",
      "Amitriptilin",
      "Paroksetin",
      "Morfin",
      "Pregabalin"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Koanaljezikler opioid olmayan, ağrıyı modüle eden ilaçlardır. Morfin doğrudan opioid analjeziktir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Fibromiyalji sendromunda aşağıdaki bulgulardan hangisi görülmez?",
    options: [
      "Yaygın kas-iskelet ağrısı",
      "Yorgunluk",
      "Uyku bozukluğu",
      "18 hassas nokta",
      "Eklem deformitesi"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Fibromiyaljide eklem deformitesi olmaz, yumuşak doku ağrısı ve hassas noktalar vardır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Santral duyarlılaşma aşağıdaki durumlardan hangisinde rol oynamaz?",
    options: [
      "Fibromiyalji",
      "Migren",
      "Osteoartrit",
      "İrritabl bağırsak sendromu",
      "Kronik bel ağrısı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Osteoartritte periferik nosiseptif mekanizmalar ön plandadır, santral duyarlılaşma daha az rol oynar.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Zona sonrası nöralji tedavisinde en etkili ilaç hangisidir?",
    options: [
      "Parasetamol",
      "İbuprofen",
      "Gabapentin",
      "Morfin",
      "Diazepam"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Gabapentin/pregabalin gibi antikonvülzanlar nöropatik ağrıda (zona sonrası nöralji) birinci seçenektir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Viseral ağrının özellikleri arasında aşağıdakilerden hangisi yoktur?",
    options: [
      "Yansıyan ağrı olabilir",
      "Diffüz lokalizasyon",
      "Otonomik bulgular (bulantı, terleme)",
      "Keskin, iyi lokalize ağrı",
      "Periton irritasyonu olmaz"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Viseral ağrı iyi lokalize değildir, somatik ağrı keskin ve lokalizedir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Ketamin hangi tür ağrı tedavisinde kullanılır?",
    options: [
      "Nosiseptif ağrı",
      "Nöropatik ağrı",
      "Opioid dirençli ağrı",
      "Migren",
      "Hepsi"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Ketamin, NMDA reseptör antagonisti olarak nosiseptif, nöropatik ve opioid dirençli ağrıda kullanılır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Fantom ağrısı hangi durumda görülür?",
    options: [
      "Ampute ekstremitede",
      "Migren atağında",
      "Zona sonrası",
      "Fibromiyaljide",
      "Kronik bel ağrısında"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Fantom ağrısı, amputasyon sonrası kaybedilen uzuvda hissedilen ağrıdır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi trigeminal nöralji tedavisinde kullanılmaz?",
    options: [
      "Karbamazepin",
      "Okskarbazepin",
      "Gabapentin",
      "Parasetamol",
      "Mikrovasküler dekompresyon"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Trigeminal nöraljide antikonvülzanlar (karbamazepin) veya cerrahi kullanılır, parasetamol etkisizdir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Myofasiyal ağrı sendromunda aşağıdakilerden hangisi görülür?",
    options: [
      "Tetik noktalar",
      "Eklem şişliği",
      "Nörolojik defisit",
      "Kemik erimesi",
      "Deri döküntüsü"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Myofasiyal ağrıda tetik noktalar ve lokal kas spazmı vardır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Epidural steroid enjeksiyonu hangi durumda kontrendikedir?",
    options: [
      "Diyabet",
      "Sistemik enfeksiyon",
      "Hipertansiyon",
      "Osteoporoz",
      "Astım"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Enfeksiyon varlığında epidural enjeksiyon yapılmaz (apse riski).",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Nörolitik blok hangi sinir için en sık kullanılır?",
    options: [
      "Femoral sinir",
      "Siyatik sinir",
      "Seliak pleksus",
      "Radial sinir",
      "Median sinir"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Seliak pleksus bloku, pankreas kanseri gibi viseral ağrılarda nörolitik ajanlarla (alkol/fenol) yapılır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Topikal kapsaisin hangi ağrı türünde kullanılır?",
    options: [
      "Postherpetik nöralji",
      "Migren",
      "Renal kolik",
      "Akut apandisit",
      "Peptik ülser"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Kapsaisin, postherpetik nöralji ve periferik nöropatilerde topikal olarak kullanılır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Psikojenik ağrıda aşağıdakilerden hangisi görülür?",
    options: [
      "Anatomik dağılıma uymayan ağrı",
      "Nörolojik defisit",
      "Laboratuvar bulgularında anormallik",
      "Görüntülemede patoloji",
      "Ağrının fiziksel aktivite ile ilişkisi"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Psikojenik ağrıda anatomik ve fizyolojik dağılıma uymayan belirtiler vardır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Bisifosfonatlar hangi kronik ağrı durumunda kullanılır?",
    options: [
      "Kemik metastaz ağrısı",
      "Fibromiyalji",
      "Migren",
      "Trigeminal nöralji",
      "Myofasiyal ağrı"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Bisifosfonatlar, kemik metastazına bağlı ağrıda kullanılır.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "TENS (Transkutanöz Elektriksel Sinir Stimülasyonu) hangi mekanizma ile ağrıyı azaltır?",
    options: [
      "Gate kontrol teorisi",
      "Sinir harabiyeti",
      "Kas gevşetmesi",
      "İltihap baskılanması",
      "Hormon salınımı"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "TENS, gate kontrol teorisine göre ağrı iletimini inhibe eder.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kronik baş ağrısında aşağıdaki ilaçlardan hangisi profilakside kullanılmaz?",
    options: [
      "Propranolol",
      "Amitriptilin",
      "Topiramat",
      "İbuprofen",
      "Valproik asit"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "İbuprofen akut tedavide kullanılır, profilakside değil.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kronik ağrıda psikolojik değerlendirme hangi amaçla yapılır?",
    options: [
      "Depresyon ve anksiyete taraması",
      "Ağrının fonksiyonel etkisini belirleme",
      "Başa çıkma stratejilerini ölçme",
      "Hepsi",
      "Hiçbiri"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Kronik ağrıda psikolojik değerlendirme multifaktöriyeldir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Kompleks bölgesel ağrı sendromu (CRPS) tanısında hangi test kullanılır?",
    options: [
      "EMG",
      "Termografi",
      "Direkt grafı",
      "Kan sayımı",
      "Karaciğer fonksiyon testi"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Termografi, CRPS'de cilt sıcaklık farkını gösterir.",
    category: "Kronik Ağrı Tedavisi",
  ),

  Question(
    question: "Palliatif ağrı tedavisinde öncelikli amaç nedir?",
    options: [
      "Hastanın yaşam kalitesini artırmak",
      "Hastalığı tedavi etmek",
      "Yaşam süresini uzatmak",
      "Tamamen ağrısız olmasını sağlamak",
      "Cerrahi girişim yapmak"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Palyatif bakımda yaşam kalitesi önceliklidir.",
    category: "Kronik Ağrı Tedavisi",
  ),
];