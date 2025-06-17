import '../models/question.dart';

final pharmacologicalPrinciplesQuestions = <Question>[
  Question(
    question: "Bir ilacın biyoyararlanımı en doğru şekilde nasıl tanımlanır?",
    options: [
      "İlacın dokulara dağılımı",
      "İlacın metabolizma hızı",
      "Sistemik dolaşıma ulaşan ilaç miktarı",
      "İlaç eliminasyon süresi",
      "İlaç plazma proteinine bağlanma oranı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Biyoyararlanım, bir ilacın sistemik dolaşıma ulaşan miktarıdır; oral yolda enzimatik yıkıma uğrama nedeniyle düşebilir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi \"first-pass\" (ilk geçiş) etkisine en fazla maruz kalır?",
    options: [
      "İnhalasyon ilaçları",
      "IV ilaçlar",
      "Oral ilaçlar",
      "Subkutan ilaçlar",
      "Sublingual ilaçlar",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Oral ilaçlar, portal dolaşıma uğradıktan sonra karaciğerde metabolize olur ve biyoyararlanımı azalır.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Dağılım hacmi (Vd) yüksek olan bir ilaç için aşağıdakilerden hangisi doğrudur?",
    options: [
      "Kan plazmasında yoğun bulunur",
      "Sadece karaciğerde metabolize olur",
      "Vücut dokularına yayılımı fazladır",
      "Böbreklerden hızla atılır",
      "Lipofilik değildir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yüksek Vd, ilacın plazmadan dokulara yayılımının fazla olduğunu gösterir; genellikle lipofilik ilaçlarda görülür.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdaki yolların hangisinde \"first-pass\" etkisi minimaldir?",
    options: ["Oral", "Rektal", "Subkutan", "İntramüsküler", "İntravenöz"],
    correctAnswerIndex: 4,
    explanation:
        "IV ilaçlar doğrudan sistemik dolaşıma verilir ve karaciğere uğramaz, bu nedenle first-pass etkisi yoktur.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Sıfırıncı derece kinetiğe uyan ilaçlarla ilgili doğru ifade hangisidir?",
    options: [
      "Yarı ömrü doza bağlı değişmez",
      "Eliminasyon sabit hızla olur",
      "Eliminasyon enzime bağlı değildir",
      "Eliminasyon doza bağlı artar",
      "Eliminasyon doymamıştır",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Sıfırıncı derece kinetikte eliminasyon sabit bir hızla olur, doza bağlı olarak hız değişmez (örn. etanol, fenitoin).",
    category: "Farmakolojik Prensipler",
    difficulty: 3,
  ),

  Question(
    question:
        "Karaciğerden yüksek ekstraksiyon oranına sahip ilaçlarla ilgili doğru ifade nedir?",
    options: [
      "Plazma proteinine bağlanmaları yüksektir",
      "Karaciğer kan akımı eliminasyon oranını belirler",
      "Metabolizma enzim kapasitesine bağlıdır",
      "Eliminasyon doza bağımlıdır",
      "Safra yoluyla atılır",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Yüksek ekstraksiyon oranına sahip ilaçların eliminasyonu esas olarak karaciğer kan akımına bağımlıdır (flow-dependent clearance).",
    category: "Farmakolojik Prensipler",
    difficulty: 3,
  ),

  Question(
    question:
        "Bir ilacın yarı ömrünü en çok etkileyen iki farmakokinetik parametre hangisidir?",
    options: [
      "Biyoyararlanım ve dağılım",
      "Dağılım hacmi ve klirens",
      "Eliminasyon ve absorpsiyon",
      "Plazma proteine bağlanma ve doz",
      "Doz ve uygulama yolu",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Yarı ömür = (0.693 x Vd) / Klirens. Yani Vd arttıkça, klirens azaldıkça yarı ömür uzar.",
    category: "Farmakolojik Prensipler",
    difficulty: 3,
  ),

  Question(
    question:
        "Farmakodinami ile ilgili aşağıdaki ifadelerden hangisi doğrudur?",
    options: [
      "İlacın vücuda verdiği etkidir",
      "İlacın emilim hızıdır",
      "İlacın dağılım volümüdür",
      "İlacın eliminasyon sürecidir",
      "İlacın metabolizma yoludur",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Farmakodinami, ilacın hedef reseptörler üzerindeki etkisini, yanıtını ve mekanizmasını inceler.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Plazma proteine yüksek oranda bağlanan bir ilaç için aşağıdakilerden hangisi doğrudur?",
    options: [
      "Dağılım hacmi artar",
      "Serbest ilaç fraksiyonu yüksektir",
      "Etki süresi kısadır",
      "Etkin olmayan fraksiyon artar",
      "Böbrek eliminasyonu kolaylaşır",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Plazma proteinine bağlı ilaç inaktiftir; yalnızca serbest (bağlanmamış) ilaç aktif etki gösterir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki metabolik reaksiyonlardan hangisi faz I reaksiyonudur?",
    options: [
      "Konjugasyon",
      "Asetilasyon",
      "Glukuronidasyon",
      "Oksidasyon",
      "Sülfat konjugasyonu",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Faz I reaksiyonları genellikle oksidasyon, redüksiyon ve hidrolizdir; ilaç molekülünü polar hâle getirir",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Karaciğerde CYP enzimlerinden sorumlu en yaygın izoform hangisidir?",
    options: ["CYP1A2", "CYP2C9", "CYP2D6", "CYP3A4", "CYP2E1"],
    correctAnswerIndex: 3,
    explanation:
        "CYP3A4, karaciğerde en yaygın bulunan ve en çok ilaç metabolize eden sitokrom P450 izoenzimidir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "\"Hepatik metabolizmanın doyması\" hangi kinetik tipi ile ilgilidir?",
    options: [
      "Sıfırıncı derece eliminasyon",
      "Birinci derece emilim",
      "Dağılım volüm artışı",
      "Yarı ömür sabitliği",
      "Eliminasyon klirens artışı",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Enzimatik sistem doygun hale geldiğinde, eliminasyon sabit hızda olur. Bu sıfırıncı derece kinetiktir.",
    category: "Farmakolojik Prensipler",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi faz II metabolik reaksiyonlardan biridir?",
    options: [
      "Redüksiyon",
      "Glukuronidasyon",
      "Hidroliz",
      "Oksidasyon",
      "Dealkilasyon",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Faz II reaksiyonlar konjugasyon reaksiyonlarıdır. Glukuronidasyon en yaygın olanıdır.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Bir ilacın farmakolojik etkisini artırmak için yapılacak en etkili müdahale hangisidir?",
    options: [
      "Yarı ömrünü uzatmak",
      "Dağılım hacmini artırmak",
      "Biyoyararlanımı artırmak",
      "Metabolizmayı hızlandırmak",
      "Klirensi artırmak",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sistemik dolaşıma ulaşan ilaç miktarı ne kadar fazla olursa, farmakolojik etki de o kadar artar.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question: "Farmakokinetiğin dört temel aşaması aşağıdakilerden hangisidir?",
    options: [
      "Etki – doz – yanıt – eliminasyon",
      "Absorpsiyon – dağılım – metabolizma – eliminasyon",
      "Emilim – etki – yanıt – atılım",
      "Farmakodinami – toksisite – tolerans – klirens",
      "Biyoyararlanım – protein bağlanma – etki – metabolizma",
    ],
    correctAnswerIndex: 1,
    explanation:
        "ADME (Absorpsiyon, Dağılım, Metabolizma, Eliminasyon) farmakokinetiğin temel süreçlerini oluşturur.",
    category: "Farmakolojik Prensipler",
    difficulty: 1,
  ),

  Question(
    question: "Aşağıdakilerden hangisi bir ilacın plazma yarı ömrünü kısaltır?",
    options: [
      "Dağılım hacminin artması",
      "Karaciğer yetmezliği",
      "Klirensin artması",
      "Protein bağlanma oranının artması",
      "Lipofilisitenin artması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Klirens arttıkça ilaç sistemden daha hızlı atılır, bu da yarı ömrün kısalmasına neden olur.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Enterohepatik sirkülasyon aşağıdakilerden hangisi için geçerlidir?",
    options: [
      "Yalnızca böbrek atılımlı ilaçlar",
      "Suda çözünür ilaçlar",
      "Safraya atılan ve tekrar emilen ilaçlar",
      "Sadece peptid yapılı ilaçlar",
      "Plazmada tam çözünmeyen ilaçlar",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Bazı ilaçlar safra ile atılır, bağırsaktan tekrar emilir; bu sürece enterohepatik sirkülasyon denir (örn. morfin, oral kontraseptifler).",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Bir ilacın reseptöre bağlanarak maksimum yanıt oluşturma kapasitesine ne ad verilir?",
    options: [
      "Potensi",
      "Tolerans",
      "Etkinlik (efficacy)",
      "Yarı ömür",
      "İndüksiyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Etkinlik (efficacy), bir ilacın maksimum terapötik yanıt oluşturabilme kapasitesini ifade eder.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi bir ilacın potensi hakkında bilgi verir?",
    options: [
      "Uygulama yolu",
      "Yarı ömür",
      "Doz-yanıt eğrisindeki EC50 değeri",
      "Dağılım hacmi",
      "Eliminasyo hızı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "EC50, etkinin %50'sini oluşturmak için gereken dozdur. EC50 düşükse potensi yüksektir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi CYP enzim sistemini indükleyen bir ilaçtır?",
    options: [
      "Ketokonazol",
      "Simetidin",
      "Rifampin",
      "Grapefruit (greyfurt) ekstresi",
      "Eritromisin",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Rifampin, CYP enzimlerini indükleyerek birçok ilacın metabolizmasını hızlandırır ve etkisini azaltabilir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "İlacın plazma proteinine bağlanma oranı artarsa, aşağıdaki etkilerden hangisi beklenmez?",
    options: [
      "Serbest ilaç fraksiyonu azalır",
      "Etkinlik azalabilir",
      "Dağılım azalır",
      "Eliminasyon hızı artar",
      "Yarı ömür uzayabilir",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Bağlı fraksiyon atılamaz; serbest ilaç klirense uğrar. Bu nedenle protein bağlanma artışı klirensi azaltır.",
    category: "Farmakolojik Prensipler",
    difficulty: 3,
  ),

  Question(
    question:
        "Bir ilacın terapötik indeksi aşağıdakilerden hangisiyle ifade edilir?",
    options: [
      "ED50 / LD50",
      "LD50 / ED50",
      "EC50 x Tmax",
      "Vd / t1/2",
      "Cmax / tmax",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Terapötik indeks = LD50 / ED50. Değer ne kadar büyükse ilaç o kadar güvenlidir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki farmakokinetik parametrelerden hangisi ilaç dozu ile değişmez?",
    options: [
      "Dağılım hacmi (Vd)",
      "Yarı ömür (t½)",
      "Plazma konsantrasyonu",
      "Klirens",
      "Biyoyararlanım",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Klirens genellikle sabittir ve doza bağlı değişmez. Ancak bazı doygunluk durumlarında bu değişebilir (örn. sıfırıncı derece eliminasyon).",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question: "\"Doz-cevap eğrisi\"nde plato bölgesi neyi gösterir?",
    options: [
      "Maksimum yanıt oluştuğunu",
      "İlaç etkisinin başladığını",
      "Terapötik etkinin olmadığını",
      "Toksik doz aralığını",
      "Eliminasyonun tamamlandığını",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Plato kısmı, ilacın daha fazla doz artışıyla ek terapötik etki oluşturmadığı noktadır.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Doz artırıldığında, ilaç toksisitesi artıyor ancak terapötik etki artmıyorsa bu neyi gösterir?",
    options: [
      "Tolerans",
      "Sıfırıncı derece kinetik",
      "Terapötik indeksin düşük olduğunu",
      "Klirens artışı",
      "Yüksek biyoyararlanım",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Terapötik indeks dar olan ilaçlarda toksisite ile terapötik doz birbirine yakındır, doz artışı risklidir.",
    category: "Farmakolojik Prensipler",
    difficulty: 3,
  ),

  Question(
    question: "Aşağıdakilerden hangisi non-kompetitif antagonizmayı tanımlar?",
    options: [
      "Reseptörün geçici blokajı",
      "Agonist dozuyla bloke edilebilir",
      "Reseptör dışı yoldan etki eder",
      "Maksimum etkiyi azaltır, EC50'yi değiştirmez",
      "EC50'yi sola kaydırır",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Non-kompetitif antagonizmada maksimum yanıt azalır, EC50 genellikle değişmez.",
    category: "Farmakolojik Prensipler",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdaki ilaçlardan hangisi \"doz-bağımlı sıfırıncı derece eliminasyon\"a örnektir?",
    options: ["Morfin", "Midazolam", "Furosemid", "Fenitoin", "Dekzametazon"],
    correctAnswerIndex: 3,
    explanation:
        "Fenitoin, enzim sisteminin doygunluğuna bağlı olarak sıfırıncı derece kinetik gösteren bir ilaçtır.",
    category: "Farmakolojik Prensipler",
    difficulty: 3,
  ),

  Question(
    question:
        "Plazma proteinine bağlanma oranı yüksek bir ilaçta serbest fraksiyon artarsa ne olur?",
    options: [
      "Etki azalır",
      "Eliminasyon hızı düşer",
      "Farmakolojik etki artabilir",
      "Dağılım hacmi azalır",
      "Terapötik indeks genişler",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Serbest fraksiyon farmakolojik olarak aktif olan kısımdır. Serbest ilaç artarsa etki de artabilir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi farmakodinamik bir parametredir?",
    options: [
      "Klirens",
      "EC50",
      "Dağılım hacmi",
      "Yarı ömür",
      "Absorpsiyon oranı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "EC50, ilacın %50 maksimum etki yaptığı konsantrasyon olup farmakodinamik bir parametredir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi plazma ilaç düzeyini azaltmak için doğru değildir?",
    options: [
      "Aktif kömür vermek",
      "Hemodiyaliz uygulamak",
      "CYP indüksiyonu yapmak",
      "Enterohepatik sirkülasyonu artırmak",
      "Asidifikasyon yapmak",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Enterohepatik sirkülasyon ilacın yeniden emilimini artırır, plazma düzeyini azaltmaz; tersine uzatabilir.",
    category: "Farmakolojik Prensipler",
    difficulty: 3,
  ),

  Question(
    question:
        "Tolerans gelişimi en hızlı olan opioid ajan aşağıdakilerden hangisidir?",
    options: ["Morfin", "Fentanil", "Meperidin", "Sufentanil", "Remifentanil"],
    correctAnswerIndex: 4,
    explanation:
        "Remifentanil kısa etkili olup tolerans çok hızlı gelişir. Bu nedenle infüzyon sonrasında rebound ağrı olabilir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi doza bağlı olarak etkisi değişmeyen ilaçlardan biridir?",
    options: [
      "Parasetamol",
      "Morfin",
      "Propofol",
      "Aspirin (trombosit inhibitör dozda)",
      "Midazolam",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Düşük doz aspirin irreversibl trombosit siklooksijenaz inhibisyonu yapar; bu etki doza bağlı artmaz, sabittir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi enzim inhibisyonu ile ilaç düzeyinin artmasına neden olur?",
    options: [
      "Rifampin",
      "Karbamazepin",
      "Greyfurt suyu",
      "Fenobarbital",
      "Furosemid",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Greyfurt suyu CYP3A4'ü inhibe ederek birçok ilacın plazma düzeyini yükseltebilir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question: "Bir ilacın eşik (threshold) dozu nedir?",
    options: [
      "Maksimum etkili dozu",
      "Etkinin ilk görüldüğü en düşük doz",
      "Toksik etkilerin başladığı doz",
      "Eliminasyonun başladığı doz",
      "Plazma konsantrasyonunun sabitlendiği doz",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Eşik doz, ilacın ilk terapötik etkinin gözlendiği en düşük dozudur.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Dağılım hacmi (Vd) yüksek olan bir ilaçla ilgili aşağıdaki ifadelerden hangisi doğrudur?",
    options: [
      "Suya çözünürlüğü yüksektir",
      "Plazmada kalır",
      "Lipofilik yapısı vardır",
      "Yalnızca renal atılıma uğrar",
      "Hızlı metabolize olur",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Vd yüksek ilaçlar genellikle lipofilik yapıdadır ve dokulara yayılır, plazmada düşük düzeyde kalırlar.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi bir ilacın terapötik aralığını belirlemede kullanılır?",
    options: [
      "Yarı ömür ve Cmax",
      "Minimum toksik ve minimum etkili konsantrasyon",
      "Tmax ve biyoyararlanım",
      "Klirens ve dağılım hacmi",
      "Plazma protein bağlanma oranı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Terapötik aralık, minimum etkili ve minimum toksik konsantrasyonlar arasındaki farktır; ilacın güvenli doz aralığını gösterir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Lipofilik ilaçlar yaşlı hastalarda hangi nedenle daha uzun etkili olabilir?",
    options: [
      "Klirens artışı",
      "Yağ dokusunda birikme",
      "Su hacminin artması",
      "Karaciğer kan akımının artması",
      "Protein bağlanmasının azalması",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Yaşlılarda yağ dokusu arttığı için lipofilik ilaçlar bu dokularda birikir ve eliminasyonları yavaşlayarak etki süreleri uzar.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdaki farmakokinetik tanımlardan hangisi doğrudur?",
    options: [
      "Yarı ömür (t½), sadece eliminasyon hızıyla ilgilidir",
      "Dağılım hacmi, ilaç plazma konsantrasyonuyla ters orantılıdır",
      "Biyoyararlanım, sadece parenteral ilaçlar için kullanılır",
      "Klirens, ilacın biyolojik etkisini gösterir",
      "Tmax, en düşük plazma düzeyinin görüldüğü zamanı gösterir",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Dağılım hacmi = Total ilaç miktarı / Plazma konsantrasyonu. Konsantrasyon azaldıkça Vd artar.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Bir ilacın doz-cevap eğrisi aşağıdakilerden hangisini belirlemede yardımcı olmaz?",
    options: ["ED₅₀", "LD₅₀", "Etkinlik", "Potens", "Yarı ömür"],
    correctAnswerIndex: 4,
    explanation:
        "Yarı ömür farmakokinetik bir kavramdır. Doz-cevap eğrisi ise farmakodinamik bilgileri verir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "İlaçların farmakokinetik özelliklerinden birinci dereceden eliminasyon ile ilgili hangisi doğrudur?",
    options: [
      "Sabit miktarda ilaç atılır",
      "Sabit oranda ilaç atılır",
      "Sadece doza bağlı olarak değişir",
      "Doyurulabilir metabolizma yoludur",
      "Enzim doygunluğuna ulaşıldığında geçerlidir",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Birinci derece eliminasyonda sabit oran (%), sıfır derece eliminasyonda sabit miktar (mg) atılır.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question: "Dağılım hacmi (Vd) en çok hangi durumda azalır?",
    options: [
      "Gebelik",
      "Sepsis",
      "Hipoproteinemi",
      "Plazma proteinlerine yüksek bağlanma",
      "Yanık",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Yüksek protein bağlanması, ilacın plazma içinde kalmasına neden olur. Bu da Vd'yi azaltır.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi plazma protein bağlanması yüksek olan bir ilacın özelliğidir?",
    options: [
      "Serbest fraksiyon artar",
      "Dokuya geçiş kolaylaşır",
      "Etki süresi kısalır",
      "Dağılım hacmi azalır",
      "Klirens artar",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Plazma proteinlerine sıkı bağlanan ilaçlar dolaşımda kalır, dokulara daha az geçer → Vd düşer.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Bir ilacın yarı ömrünü (t½) artıran durum aşağıdakilerden hangisidir?",
    options: [
      "Klirensin artması",
      "Dağılım hacminin artması",
      "Metabolizmanın hızlanması",
      "Böbrek fonksiyonlarının artması",
      "Düşük lipofiliklik",
    ],
    correctAnswerIndex: 1,
    explanation:
        "t½ = (0.693 × Vd) / Klirens. Vd artarsa yarı ömür uzar. Klirens artarsa yarı ömür kısalır.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Suda çözünürlüğü yüksek olan bir ilaç için aşağıdaki ifadelerden hangisi doğrudur?",
    options: [
      "Santral sinir sistemine kolay geçer",
      "Plazma proteinlerine sıkı bağlanır",
      "Böbrekten eliminasyonu yavaştır",
      "Dağılım hacmi genellikle düşüktür",
      "Karaciğer metabolizmasına uğrar",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Suda çözünen ilaçlar hücre zarlarını geçemez, plazmada kalır. Bu da düşük Vd ile ilişkilidir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question: "Bir ilacın ED₅₀ değeri neyi ifade eder?",
    options: [
      "İlacın yarı ömrü",
      "Toksik dozun yarısı",
      "İlaç etkisinin başlangıç zamanı",
      "Popülasyonun %50'sinde terapötik etki oluşturan doz",
      "Plazmada ölçülebilir en düşük konsantrasyon",
    ],
    correctAnswerIndex: 3,
    explanation:
        "ED₅₀ (median effective dose), ilacın %50 etkili olduğu dozdur. Klinik olarak potensle ilişkilidir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki seçeneklerden hangisi sıfır derece eliminasyon gösteren bir ilaçtır?",
    options: ["Fentanil", "Heparin", "Etanol", "Lidokain", "Propofol"],
    correctAnswerIndex: 2,
    explanation:
        "Etanol, doygunluk kinetiği gösterir ve sabit miktarda (sıfır derece) atılır. Karaciğer enzimleri doyar.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Bir ilacın infüzyonla verilmesinde \"kararlı durum\" konsantrasyonuna ulaşma süresi en çok neye bağlıdır?",
    options: [
      "Doz miktarına",
      "Veriliş yoluna",
      "İlaç yarı ömrüne",
      "Vücut ağırlığına",
      "Kreatinin klirensine",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kararlı duruma ulaşma süresi ≈ 4-5 yarı ömürdür. Yani t½ ne kadar uzunsa bu süre de o kadar uzar.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdaki ajanlardan hangisi enzim inhibitörüdür?",
    options: [
      "Rifampisin",
      "Karbamazepin",
      "Ketokonazol",
      "Fenobarbital",
      "Sigara dumanı",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Ketokonazol, sitokrom P450 enzim inhibitörüdür. Diğerleri ise çoğunlukla indükleyicidir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "İlaçların farmakokinetiğinde Tmax aşağıdakilerden hangisini ifade eder?",
    options: [
      "İlacın maksimum toksik etkisini",
      "Minimum etkili dozu",
      "Maksimum etki süresini",
      "Maksimum plazma düzeyine ulaşma süresi",
      "Eliminasyon başlangıç süresini",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Tmax, ilacın uygulandıktan sonra plazmada en yüksek konsantrasyona ulaştığı zamandır.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Lipofilik ilaçlarla ilgili aşağıdaki ifadelerden hangisi yanlıştır?",
    options: [
      "Kolayca hücre zarını geçebilirler",
      "Vd yüksektir",
      "Hızla renal atılırlar",
      "Santral sinir sistemine geçebilirler",
      "Genellikle hepatik metabolizmaya uğrarlar",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Lipofilik ilaçlar suda çözünmez → böbrekler bu tür molekülleri doğrudan atamaz → genellikle önce karaciğerde metabolize edilir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisinin farmakolojik etkisi reseptör affinitesi ile daha yakından ilişkilidir?",
    options: ["Potens", "Etkinlik", "Tmax", "Klirens", "Yarı ömür"],
    correctAnswerIndex: 0,
    explanation:
        "Potens (güç), ilacın reseptöre olan ilgisini (afinitesini) ve düşük dozda etki oluşturma yeteneğini yansıtır.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Terapötik indeksi en dar olan ilaç sınıfı aşağıdakilerden hangisidir?",
    options: [
      "Parasetamol",
      "Lokal anestezikler",
      "Benzodiazepinler",
      "Digoksin",
      "İnhalasyon anestezikleri",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Digoksin gibi kardiyotonikler dar terapötik indekse sahiptir → doz ayarı çok hassastır.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "İlacın etkinliği (efficacy) ile ilgili en doğru ifade aşağıdakilerden hangisidir?",
    options: [
      "Reseptör affinitesiyle doğrudan ilişkilidir",
      "Potensle eşdeğerdir",
      "Maksimum etkisini tanımlar",
      "Etki başlama süresidir",
      "Terapötik indeksle ölçülür",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Etkinlik, bir ilacın oluşturabileceği maksimum biyolojik yanıt miktarıdır. Potensle karıştırılmamalıdır.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question: "İlacın doz-cevap eğrisinde sağa kayma neyi gösterir?",
    options: [
      "Potens artışı",
      "Potens azalması",
      "Etkinlik artışı",
      "Vd artışı",
      "Tmax artışı",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Eğri sağa kayarsa, aynı etki için daha yüksek doz gerekir → potens düşmüştür.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Bir ilacın t½ süresi 6 saat ise, sabit infüzyonla yaklaşık kaç saatte kararlı duruma ulaşır?",
    options: ["6 saat", "12 saat", "24 saat", "30 saat", "48 saat"],
    correctAnswerIndex: 2,
    explanation:
        "Kararlı duruma ulaşma süresi ≈ 4–5 yarı ömürdür → 4 × 6 = 24 saat.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question: "İlacın terapötik indeksi nedir?",
    options: [
      "ED₅₀ / TD₅₀",
      "LD₅₀ / ED₅₀",
      "Tmax / t½",
      "Plazma düzeyi / Vd",
      "Klirens / ED₅₀",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Terapötik indeks = LD₅₀ (ölümcül doz) / ED₅₀ (etkin doz). Aralık ne kadar genişse ilaç o kadar güvenlidir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi birinci geçiş etkisini bypass eden uygulama yoludur?",
    options: [
      "Oral",
      "Rektal (üst bölge)",
      "Sublingual",
      "Enteral tüp",
      "Transdermal olmayan krem",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sublingual uygulama → doğrudan sistemik dolaşıma geçer → karaciğerin ilk geçişine uğramaz.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "İlaçların plazma proteinlerine bağlanma oranını aşağıdakilerden hangisi etkilemez?",
    options: [
      "Albumin düzeyi",
      "İlacın lipofilik özelliği",
      "Kan pH'sı",
      "İlacın molekül ağırlığı",
      "α₁-asit glikoprotein düzeyi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "İlaçların plazma proteinlerine (albumin, α₁-asit glikoprotein) bağlanması, protein düzeyleri, lipofilisite ve pH gibi faktörlerden etkilenir. Molekül ağırlığı ise bağlanmayı doğrudan etkilemez.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Hangisi yüksek hepatik ilk geçiş etkisine (first-pass effect) sahip bir ilaçtır?",
    options: ["Propofol", "Fentanil", "Morfin", "Lidokain", "Ketamin"],
    correctAnswerIndex: 2,
    explanation:
        "Morfin, yüksek hepatik ilk geçiş etkisine sahiptir ve oral alındığında biyoyararlanımı düşüktür. Diğer seçeneklerdeki ilaçlar (lidokain, fentanil) de bir derece first-pass metabolizmaya uğrasa da morfin bu konuda belirgindir.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi nonkompetitif antagonistin özelliğidir?",
    options: [
      "Reseptör afinitesi yoktur",
      "Maksimal yanıtı azaltır",
      "ED₅₀ değerini artırır",
      "Geri dönüşümlüdür",
      "Agonistle aynı bölgeye bağlanır",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Nonkompetitif antagonistler, maksimal yanıtı (Eₘₐₓ) azaltır ve geri dönüşümsüzdür. Kompetitif antagonistler ise ED₅₀'yı artırır ve geri dönüşümlüdür.",
    category: "Farmakolojik Prensipler",
    difficulty: 3,
  ),

  Question(
    question: "Hangisi CYP3A4 enzimini güçlü şekilde inhibe eder?",
    options: [
      "Rifampin",
      "Fenitoin",
      "Karbamazepin",
      "Eritromisin",
      "Barbitüratlar",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Eritromisin, CYP3A4'ü inhibe ederken; rifampin, fenitoin, karbamazepin ve barbitüratlar indükler.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Hangisi intravenöz anesteziklerin etki sonlanmasında en az rol oynar?",
    options: [
      "Redistribüsyon",
      "Hepatik metabolizma",
      "Renal atılım",
      "Ekstrahepatik metabolizma",
      "Plazma esterazları",
    ],
    correctAnswerIndex: 2,
    explanation:
        "IV anesteziklerin etki sonlanmasında redistribüsyon ve metabolizma ön plandadır. Renal atılım, suda çözünen metabolitler için geçerlidir ve etki sonlanmasında en az rol oynar.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi minimum alveolar konsantrasyon (MAC) değerini artırır?",
    options: [
      "Hipertermi",
      "Hiponatremi",
      "Alkol kullanımı",
      "Opioidler",
      "Yaşlılık",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Hipertermi, MAC'ı artırır. Hiponatremi, opioidler, alkol ve yaşlılık ise MAC'ı azaltır.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),

  Question(
    question:
        "Hangisi non-depolarizan nöromusküler blokörlerin etkisini uzatır?",
    options: [
      "Asetilkolinesteraz inhibitörleri",
      "Hipokalemi",
      "Hipermagnezemi",
      "Alkaloz",
      "Kalsiyum glukonat",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Hipermagnezemi, nöromusküler blokajı arttırır. Asetilkolinesteraz inhibitörleri (neostigmin) ise etkiyi sonlandırır.",
    category: "Farmakolojik Prensipler",
    difficulty: 2,
  ),
];
