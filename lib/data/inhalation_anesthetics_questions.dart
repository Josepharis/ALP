import '../models/question.dart';

final inhalationAnestheticsQuestions = <Question>[
  Question(
    question:
        "İnhalasyon anesteziklerinin etkinliği hangi ölçüm ile kıyaslanır?",
    options: [
      "Dağılım hacmi",
      "EC50",
      "Minimum alveolar konsantrasyon",
      "Yarı ömür",
      "Plazma düzeyi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "MAK, inhalasyon anesteziklerinin potensi için kullanılan standart ölçümdür; %50 hastada cerrahi stimülasyona yanıtı engelleyen alveoler konsantrasyondur.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question: "Aşağıdaki ajanlardan hangisi en düşük MAK değerine sahiptir?",
    options: [
      "Desfluran",
      "Sevofluran",
      "Halotan",
      "İzofluran",
      "Nitröz oksit",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Halotan MAK değeri yaklaşık %0.75 ile en düşük olan ajandır; bu da onu en potent volatil ajan yapar.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangi inhalasyon anesteziği hızlı indüksiyon ve hızlı derlenme avantajına sahiptir?",
    options: [
      "Halotan",
      "Sevofluran",
      "İzofluran",
      "Metoksifluran",
      "Nitröz oksit",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Sevofluran, düşük kan/gaz çözünürlük katsayısı ve hoş kokusuyla hem hızlı indüksiyon hem de hızlı derlenme sağlar.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 1,
  ),
  Question(
    question:
        "En fazla hepatotoksik potansiyele sahip inhalasyon anesteziği hangisidir?",
    options: [
      "Desfluran",
      "Sevofluran",
      "Halotan",
      "Nitröz oksit",
      "İzofluran",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Halotan hepatiti nadir ama ciddi bir komplikasyondur; immünolojik mekanizmalarla ilişkilidir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi düşük kan/gaz çözünürlüğüne sahip olduğundan hızlı derlenme sağlar?",
    options: [
      "Halotan",
      "İzofluran",
      "Sevofluran",
      "Metoksifluran",
      "Desfluran",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Desfluran'ın kan/gaz çözünürlüğü 0.42'dir, bu da hızlı eliminasyon ve derlenme sağlar.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question: "Nitröz oksitin en belirgin dezavantajı nedir?",
    options: [
      "Renal toksisite",
      "Kas gevşetici etki",
      "Düşük potens (MAK ~%105)",
      "Yavaş indüksiyon",
      "Hepatotoksisite",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Nitröz oksit tek başına yeterli anestezi sağlamaz çünkü MAK değeri %100'ün üzerindedir; diğer ajanlarla kombine edilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "\"İkincil gaz etkisi\" aşağıdaki ajanlardan hangisiyle ilgilidir?",
    options: [
      "Halotan",
      "Nitröz oksit",
      "Sevofluran",
      "İzofluran",
      "Desfluran",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Nitröz oksitin hızla absorbe edilmesi, diğer inhalasyon ajanlarının alveolar konsantrasyonunu artırarak etkilerini güçlendirir; bu ikincil gaz etkisidir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 3,
  ),
  Question(
    question: "Aşağıdaki durumlardan hangisi MAK değerini artırmaz?",
    options: [
      "Hipertermi",
      "Kronik alkol kullanımı",
      "Hiperkapni",
      "Amfetamin kullanımı",
      "Genç yaş",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Hiperkapni (ve hipoksi, hipotermi gibi durumlar) MAK'ı azaltır. Hipertermi, genç yaş, kronik alkol kullanımı MAK'ı artırır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "İnhalasyon anesteziklerinden hangisi epileptiform EEG değişiklikleri ile en çok ilişkilendirilmiştir?",
    options: [
      "İzofluran",
      "Desfluran",
      "Halotan",
      "Sevofluran",
      "Nitröz oksit",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Sevofluran, özellikle çocuklarda yüksek dozlarda EEG'de epileptiform aktiviteye neden olabilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi inhalasyon anesteziklerinin merkezi etki mekanizmasını açıklayan teoridir?",
    options: [
      "Farmakodinamik model",
      "Meyer-Overton kuralı",
      "GABA antagonizması",
      "Presinaptik blokaj",
      "Doku çözünürlük teorisi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Meyer-Overton hipotezi, anestezik etkinin lipofiliklik ile ilişkili olduğunu, yani yağda çözünürlük arttıkça potensin arttığını ileri sürer.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 3,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi sevofluranın soda kireciyle reaksiyona girerek oluşturduğu toksik bileşiktir?",
    options: [
      "Triflorasetik asit",
      "Serbest radikal",
      "Compound A",
      "Karbonmonoksit",
      "Fosgen",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sevofluran alkali CO₂ absorberleriyle etkileşerek Compound A (nefrotoksik bir madde) oluşturabilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki ajanlardan hangisinin karbonmonoksit üretimi en fazladır?",
    options: [
      "Halotan",
      "Sevofluran",
      "İzofluran",
      "Desfluran",
      "Nitröz oksit",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Desfluran, kuru soda kireci ile etkileşerek karbonmonoksit oluşumuna en yatkın inhalasyon ajanıdır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question: "Enfluranın dezavantajlarından biri aşağıdakilerden hangisidir?",
    options: [
      "Kan basıncını artırması",
      "EEG'de epileptiform aktivite oluşturması",
      "Yavaş indüksiyon",
      "MAK'ının çok düşük olması",
      "Hiperkalemiye neden olması",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Enfluran yüksek dozda epileptiform EEG aktivitesi oluşturabilir; bu nedenle epileptik hastalarda dikkatli kullanılır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question: "Hangi inhalasyon ajanı en yüksek buhar basıncına sahiptir?",
    options: ["Halotan", "Sevofluran", "İzofluran", "Desfluran", "Enfluran"],
    correctAnswerIndex: 3,
    explanation:
        "Desfluran'ın buhar basıncı çok yüksektir (~664 mmHg); özel ısıtmalı vaporizatör gerektirir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki inhalasyon ajanlarından hangisi non-pungent (keskin kokulu olmayan) olup pediatrik indüksiyona uygundur?",
    options: ["İzofluran", "Desfluran", "Halotan", "Sevofluran", "Enfluran"],
    correctAnswerIndex: 3,
    explanation:
        "Sevofluran, kokusuz ve tahriş edici olmadığı için çocuklarda maskeyle indüksiyon için tercih edilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 1,
  ),
  Question(
    question:
        "Aşağıdaki faktörlerden hangisi inhalasyon anesteziklerinin indüksiyon hızını artırır?",
    options: [
      "Yüksek kan/gaz çözünürlüğü",
      "Düşük alveoler ventilasyon",
      "Yüksek kalp debisi",
      "Düşük solunan gaz hacmi",
      "Düşük kan/gaz çözünürlük katsayısı",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Düşük çözünürlük, kandaki çözünme hızını azaltır; bu da beyne ulaşımı hızlandırır, indüksiyon süresini kısaltır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "İnhalasyon anesteziklerinin en önemli eliminasyon yolu hangisidir?",
    options: [
      "Renal atılım",
      "Hepatik konjugasyon",
      "Akciğer yoluyla değişmeden atılım",
      "Biliyer atılım",
      "Tükürükle atılım",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Volatil ajanların çoğu metabolize edilmeden akciğer yoluyla dışarı atılır. Karaciğerden geçen miktar genellikle düşüktür.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 1,
  ),
  Question(
    question:
        "Nitröz oksit uzun süreli kullanıldığında hangi vitaminin metabolizmasını bozar?",
    options: [
      "Vitamin B12",
      "Vitamin D",
      "Vitamin C",
      "Vitamin E",
      "Vitamin A",
    ],
    correctAnswerIndex: 0,
    explanation:
        "N₂O metionin sentetazı inhibe ederek B12 vitamini metabolizmasını bozar. Uzun süreli kullanımda megaloblastik anemi ve nöropati riski vardır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangi inhalasyon anesteziği, malign hipertermi riskini artırmaz?",
    options: [
      "Halotan",
      "Sevofluran",
      "İzofluran",
      "Desfluran",
      "Nitröz oksit",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Nitröz oksit, malign hipertermiye neden olmaz. Diğer volatil ajanlar bu riski taşır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi volatil anesteziklerin serebral etkisidir?",
    options: [
      "Serebral kan akımını azaltır",
      "Serebral metabolizmayı artırır",
      "İntrakraniyal basıncı artırabilir",
      "EEG aktivitesini uyarır",
      "Nöbet eşiklerini düşürmez",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Volatil ajanlar serebral vazodilatasyon yapar, bu da intrakraniyal basıncı (ICP) artırabilir. Sevofluran ve izofluran bu etkiyi orta düzeyde yapar.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question: "En düşük kan/gaz çözünürlük katsayısına sahip ajan hangisidir?",
    options: ["Halotan", "İzofluran", "Sevofluran", "Desfluran", "Enfluran"],
    correctAnswerIndex: 3,
    explanation:
        "Desfluran'ın kan/gaz çözünürlük katsayısı 0.42 olup, bu değer xenon'dan sonra en düşük olanıdır. Bu özelliğiyle hızlı indüksiyon ve uyanma sağlar.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki inhalasyon ajanlarından hangisinin MAC (Minimal Alveolar Konsantrasyon) değeri en yüksektir?",
    options: ["Halotan", "İzofluran", "Sevofluran", "Desfluran", "N₂O"],
    correctAnswerIndex: 4,
    explanation:
        "MAC, bir inhalasyon ajanının güçsüzlük derecesini gösterir. N₂O'nun MAC değeri %105'tir → en zayıf ajandır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "İnhalasyon anesteziklerinin minimal kardiyak depresyon yapanı hangisidir?",
    options: ["Halotan", "İzofluran", "Desfluran", "Enfluran", "Sevofluran"],
    correctAnswerIndex: 4,
    explanation:
        "Sevofluran, özellikle pediatrik hastalarda tercih edilir çünkü kardiyak depresyonu minimaldir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question: "MAC değeri ile yaş arasında nasıl bir ilişki vardır?",
    options: [
      "Yaş arttıkça MAC artar",
      "Yaş arttıkça MAC değişmez",
      "Yaşla birlikte MAC azalır",
      "Yaşa bağlı sadece sevofluran etkilenir",
      "Yaş arttıkça etki süresi kısalır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Yaş arttıkça anestezik gereksinim azalır → MAC değeri düşer (yaklaşık her 10 yılda %6–7 azalma olur).",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "İnhalasyon ajanlarının beyin üzerindeki etkileriyle ilgili hangisi yanlıştır?",
    options: [
      "CMRO₂ (beyin metabolizma hızı) azalır",
      "Beyin kan akımı artabilir",
      "EEG'de yavaşlama olabilir",
      "İntrakraniyal basıncı düşürür",
      "Derin anestezide izoelektrik EEG olabilir",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Volatil ajanlar CMRO₂'yi düşürse de beyin vazodilatasyonu yaptıkları için intrakraniyal basıncı artırabilirler.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Sevofluranın metabolizmasında hangi iyon düzeyinde artış beklenebilir?",
    options: ["K⁺", "Na⁺", "Ca²⁺", "Cl⁻", "F⁻"],
    correctAnswerIndex: 4,
    explanation:
        "Sevofluranın bir kısmı karaciğerde metabolize olur → flor iyonları açığa çıkar. Yüksek flor seviyesi teorik nefrotoksisiteye neden olabilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 3,
  ),
  Question(
    question:
        "Aşağıdaki faktörlerden hangisi bir inhalasyon anestezi ajanının indüksiyon süresini kısaltır?",
    options: [
      "Yüksek kan/gaz çözünürlük katsayısı",
      "Artmış kardiyak debi",
      "Yüksek tidal volüm",
      "Ajanın yüksek yağ/gaz çözünürlüğü",
      "Düşük alveoler ventilasyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Tidal volüm arttıkça alveole ulaşan ilaç miktarı artar → dengeye ulaşma ve indüksiyon hızlanır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "İnhalasyon anestezik ajanların santral sinir sistemi üzerine etkilerinden hangisi doğrudur?",
    options: [
      "EEG aktivitesini artırırlar",
      "CMRO₂'yi artırırlar",
      "Nöbet eşiğini düşürürler",
      "CMRO₂'yi azaltırlar",
      "Nöronal hiperaktiviteye neden olurlar",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Volatil ajanlar (N2O hariç) beyin metabolizma hızını (CMRO₂) azaltır. Bu durum nöroprotektif olabilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question: "MAC değeri aşağıdaki durumlardan hangisinde artar?",
    options: [
      "Yaşlılık",
      "Hipotermi",
      "Gebelik",
      "Hipernatremi",
      "Sedatif ilaç kullanımı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Hipernatremi, santral nöronal membranları daha stabil hale getirir → MAC değerinin artmasına neden olur.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 3,
  ),
  Question(
    question:
        "Aşağıdaki inhalasyon ajanlarından hangisi en az metabolize edilir?",
    options: ["Halotan", "Sevofluran", "İzofluran", "Desfluran", "N₂O"],
    correctAnswerIndex: 4,
    explanation:
        "N₂O neredeyse hiç metabolize edilmeden (%0.004) akciğer yoluyla atılır → hepatik metabolizma yok denecek kadar azdır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "İnhalasyon anesteziklerinde, beyin kan akımı (CBF) ile beyin metabolizma hızı (CMRO₂) arasındaki ilişki nasıldır?",
    options: [
      "Her ikisi de artar",
      "Her ikisi de azalır",
      "CBF artar, CMRO₂ azalır",
      "CBF azalır, CMRO₂ artar",
      "Aralarında belirgin ilişki yoktur",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Volatil ajanlar CMRO₂'yi düşürürken, beyin vazodilatasyonu nedeniyle CBF'yi artırabilir → bu nedenle ICP artabilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 3,
  ),
  Question(
    question:
        "Desfluran kullanımında dikkat edilmesi gereken hemodinamik etki hangisidir?",
    options: [
      "Kalp debisinde belirgin artış",
      "Baroreseptör refleks baskılanması",
      "Sempatik aktivite artışı ile taşikardi",
      "Ventriküler taşiaritmi",
      "Hipokalemiye bağlı hipotansiyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Desfluran hızlı konsantrasyon artışlarında sempatik sistem aktivitesini artırır → taşikardi ve hipertansiyon yapabilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "MAC değerini azaltan fizyolojik durumlardan biri aşağıdakilerden hangisidir?",
    options: [
      "Ateş",
      "Hipernatremi",
      "Alkol bağımlılığı",
      "Gebelik",
      "Hipertermi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Gebelikte progesteron düzeyinin artışı santral sinir sistemini depresyona daha duyarlı yapar → MAC düşer.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi ateşli malignite (malign hipertermi) riski taşımayan ajanlardan biridir?",
    options: ["Sevofluran", "Desfluran", "Süksinilkolin", "N₂O", "İzofluran"],
    correctAnswerIndex: 3,
    explanation:
        "N₂O MH ile ilişkilendirilmemiştir. Diğer uçucu ajanlar ve özellikle süksinilkolin MH tetikleyicilerindendir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Bir inhalasyon ajanının yağ/gaz çözünürlük katsayısı ne kadar yüksekse, aşağıdakilerden hangisi artar?",
    options: [
      "Beyin metabolizma hızı",
      "Potens",
      "Eliminasyon hızı",
      "MAC değeri",
      "İrritan etkisi",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Yağda çözünebilirlik, santral sinir sistemine geçişi artırır → genellikle MAC düşer → potensi artar.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 3,
  ),
  Question(
    question:
        "İnhalasyon ajanlarının neden olduğu difüzyonel hipoksiyi önlemek için ne yapılmalıdır?",
    options: [
      "Yüksek doz fentanil verilmesi",
      "N₂O kesildikten sonra %100 O₂ ile ventilasyon",
      "Tidal volüm düşürülmesi",
      "Sevofluranla devam edilmesi",
      "Hiperkapni oluşturulması",
    ],
    correctAnswerIndex: 1,
    explanation:
        "N₂O hızla difüze olur ve alveolde oksijeni seyreltir → hipoksi riski. Bu yüzden kesildikten sonra mutlaka birkaç dakika %100 O₂ verilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdaki inhalasyon anesteziklerinden hangisi lökosit fonksiyonlarını baskılayarak immün yanıtı etkileyebilir?",
    options: ["Sevofluran", "İzofluran", "Halotan", "Desfluran", "N₂O"],
    correctAnswerIndex: 4,
    explanation:
        "N₂O lökosit DNA sentezini baskılar, B₁₂'yi inhibe eder → uzun süreli kullanımda immünosupresif etki potansiyeli vardır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 3,
  ),
  Question(
    question:
        "Hangisi inhalasyon anesteziklerinin genel etki mekanizmasıyla ilgili doğru bir ifade değildir?",
    options: [
      "GABA-A reseptörlerini aktive eder",
      "NMDA reseptörlerini inhibe eder",
      "Potasyum kanallarını açar",
      "Sodyum kanallarını bloke eder",
      "İyon kanallarının konformasyonunu değiştirir",
    ],
    correctAnswerIndex: 3,
    explanation:
        "İnhalasyon anestezikleri sodyum kanallarını doğrudan bloke etmez. Etkilerini GABA-A agonizması, NMDA inhibisyonu ve iki fazlı teorilerle açıklanır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 3,
  ),
  Question(
    question:
        "Hangi inhalasyon anestezik beyin metabolik oksijen tüketimini (CMRO2) en belirgin azaltır?",
    options: [
      "Halotan",
      "İzofluran",
      "Sevofluran",
      "Desfluran",
      "Nitröz oksit",
    ],
    correctAnswerIndex: 1,
    explanation:
        "İzofluran, CMRO2'yi %50'ye varan oranda azaltarak nöroprotektif etki gösterir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi inhalasyon anesteziklerinin avantajlarından biri değildir?",
    options: [
      "Bronkodilatasyon yapması",
      "Kardiyak depresyonun doz bağımlı olması",
      "Kas gevşemesi sağlaması",
      "Uyanma süresinin öngörülebilir olması",
      "Postoperatif bulantı-kusmayı azaltması",
    ],
    correctAnswerIndex: 4,
    explanation:
        "İnhalasyon anestezikleri (özellikle nitröz oksit) PONV riskini artırır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangi inhalasyon anestezik uzun süreli kullanımda kemik iliği supresyonuna yol açabilir?",
    options: [
      "Halotan",
      "Nitröz oksit",
      "İzofluran",
      "Sevofluran",
      "Desfluran",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Nitröz oksit, vitamin B12'in metilasyonunu inhibe ederek metionin sentaz aktivitesini bozar. Uzun süreli (>6 saat) kullanımda megaloblastik anemiye neden olabilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "İnhalasyon anesteziklerinin MAC değerini artıran faktör hangisidir?",
    options: [
      "Hipertermi",
      "Alkolizm",
      "Opioid kullanımı",
      "Yaşlılık",
      "Anemi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Hipertermi, MAK değerini artırırken; yaşlılık, opioidler, gebelik, alkolizm ve hipotermi azaltır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangi inhalasyon anestezik indüksiyon sırasında laringospazm riskini en çok artırır?",
    options: [
      "Sevofluran",
      "Desfluran",
      "İzofluran",
      "Halotan",
      "Nitröz oksit",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Desfluran, yüksek irritan özelliği nedeniyle solunum yolu reflekslerini tetikleyerek laringospazma yol açabilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Hangisi nitröz oksitin kontrendike olduğu durumlardan biri değildir?",
    options: [
      "Pnömotoraks",
      "Orta kulak cerrahisi",
      "Pulmoner hipertansiyon",
      "Diyabetes mellitus",
      "İntrakraniyal basınç artışı",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Nitröz oksit, kapalı boşluklarda genişleme yaparak (pnömotoraks, hava embolisi) ve IKB'yi artırarak kontrendike olur. Diyabetes mellitus ile direkt ilişkisi yoktur.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "İnhalasyon anesteziklerinin teratojenik etkisi en çok hangi dönemde belirgindir?",
    options: [
      "1. trimester",
      "2. trimester",
      "3. trimester",
      "Doğum sırasında",
      "Postpartum",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Özellikle organogenez dönemi (gebeliğin ilk 8 haftası) inhalasyon anesteziklerine en duyarlı dönemdir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Desfluran kullanımı sırasında dikkat edilmesi gereken en önemli klinik durum nedir?",
    options: [
      "Hepatik nekroz",
      "Böbrek toksisitesi",
      "Hava yolu irritasyonu",
      "Kalp bloğu",
      "Hipoglisemi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Desfluran, pungent (keskin) kokulu bir ajandır ve hava yolu irritasyonuna neden olabilir → öksürük, laringospazm riski artar.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Volatil ajanların sıklıkla neden olduğu fizyolojik değişiklik hangisidir?",
    options: [
      "Hiperglisemi",
      "Hiperkalemi",
      "Hipotermi",
      "Hiponatremi",
      "Hipomagnezemi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Volatil ajanlar termoregülasyonu bozar, periferik vazodilatasyon yapar ve ısı kaybını artırır; bu da hipotermiye neden olur.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Sevofluran kullanımında düşük akımlı anesteziden kaçınma nedeni nedir?",
    options: [
      "Yavaş indüksiyon riski",
      "Hipotansiyon gelişimi",
      "Compound A üretiminin artması",
      "Volatil kaybının fazla olması",
      "Kalp debisinin azalması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Düşük taze gaz akımı, Sevofluran'ın soda lime ile daha uzun süre temasına neden olur ve Compound A üretimini artırır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
  Question(
    question:
        "Volatil anesteziklerin kardiyovasküler sistem üzerindeki tipik etkisi hangisidir?",
    options: [
      "Kalp debisini artırır",
      "Miyokardiyal kontraktiliteyi artırır",
      "Sistemik vasküler direnci düşürür",
      "Kalp hızını yavaşlatır",
      "Sistolik basıncı artırır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Volatil ajanlar genellikle vazodilatasyon yaparak sistemik vasküler direnci düşürür ve buna bağlı hipotansiyon oluşabilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
];
