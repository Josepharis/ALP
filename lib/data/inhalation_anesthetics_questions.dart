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

  Question(
    question:
        "Solunum havasına %1 oranında halotan verildiğinde, alveollerdeki halotan konsantrasyonunun artış hızı en çok aşağıdakilerden hangisine bağlıdır?",
    options: [
      "Ajanın lipid çözünürlüğü",
      "Kardiyak output",
      "Solunum sayısı",
      "Kan/gaz çözünürlük katsayısı",
      "Tidal volüm",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Kan/gaz çözünürlük katsayısı ne kadar düşükse, alveol konsantrasyonu o kadar hızlı artar → indüksiyon hızlı olur.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisinin indüksiyon ve derlenme süresi en hızlıdır?",
    options: ["Halotan", "Sevofluran", "İzofluran", "Desfluran", "Enfluran"],
    correctAnswerIndex: 3,
    explanation:
        "Desfluran'ın kan/gaz çözünürlük katsayısı çok düşüktür (~0.42) → hızlı indüksiyon ve hızlı uyanma sağlar.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki inhalasyon ajanlarından hangisi ateşli malignite riski ile en çok ilişkilidir?",
    options: ["N₂O", "Sevofluran", "Halotan", "İzofluran", "Desfluran"],
    correctAnswerIndex: 2,
    explanation:
        "Tüm volatil ajanlar (N2O ve Xenon hariç) MH riski taşır. En sık Halotan tetikler. Süksinilkolin ile kombine olursa risk artar.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki inhalasyon anesteziklerinden hangisinin kalp debisi düşük olan bir hastada etki başlangıcı daha hızlıdır?",
    options: ["Halotan", "İzofluran", "Sevofluran", "Desfluran", "N₂O"],
    correctAnswerIndex: 3,
    explanation:
        "Düşük kardiyak outputta, akciğerden kana ilaç geçişi azalır → alveoler konsantrasyon daha hızlı artar → özellikle çözünürlüğü düşük ajanlarda (desfluran, sevofluran) etki hızlanır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 3,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi inhalasyon ajanları için tipik bir özellik değildir?",
    options: [
      "Pulmoner arter basıncını artırmaları",
      "Beyin kan akımını artırmaları",
      "Kas gevşetici etkileri",
      "Solunum depresyonu yapmaları",
      "MAC'ın yaşla değişmesi",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Uçucu ajanlar genellikle sistemik vazodilatasyon yapar. Pulmoner vasküler direnç üzerinde belirgin etkileri yoktur (istisna: N₂O hafif artırabilir).",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "N₂O'nun uzun süreli kullanımı aşağıdaki vitamin eksikliğine yol açabilir:",
    options: [
      "A vitamini",
      "D vitamini",
      "K vitamini",
      "B₁₂ vitamini",
      "Folik asit",
    ],
    correctAnswerIndex: 3,
    explanation:
        "N₂O, B₁₂'yi okside ederek metionin sentetaz enzimini inhibe eder → megaloblastik anemi ve nörolojik bulgular görülebilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi yüksek akımda sevofluran kullanımıyla ilişkilidir?",
    options: [
      "Methemoglobinemi",
      "Hepatik nekroz",
      "Compound A oluşumu azalır",
      "İntrakraniyal basınç artışı",
      "Renal toksisite riski azalır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sevofluran, düşük taze gaz akımı ve soda lime ile reaksiyona girerek compound A oluşturur. Yüksek akım → bu riski azaltır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "İnhalasyon anestezik ajanların bronkodilatör etkisi en belirgin olanı hangisidir?",
    options: ["Halotan", "İzofluran", "Sevofluran", "Desfluran", "N₂O"],
    correctAnswerIndex: 2,
    explanation:
        "Sevofluran hem minimal irritan olması hem de bronkodilatör etkisi nedeniyle astımlı hastalarda sık tercih edilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisi yüksek çözünürlük katsayısı nedeniyle yavaş uyanma ile ilişkilidir?",
    options: ["Halotan", "Sevofluran", "Desfluran", "N₂O", "Ketamin"],
    correctAnswerIndex: 0,
    explanation:
        "Halotan'ın kan/gaz çözünürlük katsayısı yüksektir (~2.4) → kanda daha çok çözünür → derlenme süresi uzundur.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki inhalasyon ajanlarından hangisi oda sıcaklığında en uçucu özellik gösterir?",
    options: ["Halotan", "Sevofluran", "İzofluran", "Desfluran", "N₂O"],
    correctAnswerIndex: 3,
    explanation:
        "Desfluran'ın buhar basıncı çok yüksektir (~669 mmHg) → buharlaştırıcısı özel olmalıdır ve oda sıcaklığına çok duyarlıdır. Bu nedenle standart vaporizatörlerle kullanılmaz, özel ısıtmalı vaporizatör gerekir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Enfluran ve izofluranın farkı aşağıdakilerden hangisidir?",
    options: [
      "Her ikisi de epilepsiye yatkındır",
      "İzofluran daha hızlı metabolize olur",
      "İzofluran daha az serebral kan akımı artırır",
      "Enfluranın buhar basıncı daha düşüktür",
      "İzofluran Compound A üretir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İzofluran, serebral vazodilatasyon yapmasına rağmen enflurana göre daha az CBF artışı yapar ve daha stabil beyin perfüzyonu sağlar.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "İnert gazlardan biri olan nitröz oksitin vücuttaki farmakokinetik özelliği nedir?",
    options: [
      "Metabolize olur",
      "Plazma proteinine bağlanır",
      "Nefesle değişmeden atılır",
      "Karaciğerde konjuge edilir",
      "Renal atılım gösterir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "N₂O metabolize olmaz, inerttir ve değişmeden akciğer yoluyla atılır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki inhalasyon ajanlarından hangisi en az metabolize olur?",
    options: ["Halotan", "Sevofluran", "Desfluran", "Enfluran", "İzofluran"],
    correctAnswerIndex: 2,
    explanation:
        "Desfluran, %0.02 gibi çok düşük oranda metabolize edilir; bu özelliğiyle hepatotoksisite riski en az olan ajanlardan biridir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "İzofluranın tercih edilme nedenlerinden biri aşağıdakilerden hangisidir?",
    options: [
      "Hepatotoksik olması",
      "Yüksek metabolizma oranı",
      "Stabil kardiyovasküler etkiler",
      "Nöbetleri tetiklemesi",
      "İrritan kokuya sahip olması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İzofluran, sistemik vasküler direnci düşürerek kan basıncında hafif azalma yapar ama miyokard depresyonu azdır; kardiyovasküler olarak stabildir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "İnhalasyon anesteziklerinin \"wash-in\" (alveole geçiş) hızını artıran faktör hangisidir?",
    options: [
      "Düşük inspiratuar konsantrasyon",
      "Düşük ventilasyon",
      "Yüksek kalp debisi",
      "Düşük kan/gaz çözünürlük katsayısı",
      "Yüksek solunumsal ölü boşluk",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Düşük çözünürlük katsayısı olan ajanlar hızlıca kana geçemez, alveolde birikir ve beyne ulaşarak hızlı indüksiyon sağlar.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Desfluranın endokrin sistem üzerindeki olası etkisi nedir?",
    options: [
      "Kortizol düzeyini artırır",
      "TSH düzeyini yükseltir",
      "Glukozu artırabilir",
      "Prolaktini artırır",
      "İnsülin salgısını artırır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Desfluran, katekolamin düzeylerini etkileyerek glukoz düzeylerinde artışa yol açabilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki inhalasyon ajanlarından hangisi \"non-irritan\" olması nedeniyle inhalasyon indüksiyonunda özellikle çocuklarda tercih edilir?",
    options: ["Desfluran", "İzofluran", "Sevofluran", "Halotan", "Enfluran"],
    correctAnswerIndex: 2,
    explanation:
        "Sevofluran kokusuz, solunum yollarını tahriş etmeyen bir ajan olup özellikle pediatrik hastalarda inhalasyon indüksiyonunda yaygın olarak kullanılır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 1,
  ),

  Question(
    question:
        "Aşağıdaki ajanlardan hangisinin CO₂ absorbanları ile reaksiyonu sonucu karbonmonoksit üretme potansiyeli en fazladır?",
    options: ["Sevofluran", "İzofluran", "Halotan", "Desfluran", "Nitröz oksit"],
    correctAnswerIndex: 3,
    explanation:
        "Desfluran, kuru soda lime ile reaksiyona girerek karbonmonoksit üretir; bu nedenle taze CO₂ absorbanı kullanımı önemlidir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Volatil anesteziklerle ilgili olarak \"wake-up test\" sırasında tercih edilen ajan hangisidir?",
    options: ["Halotan", "İzofluran", "Desfluran", "Sevofluran", "Enfluran"],
    correctAnswerIndex: 2,
    explanation:
        "Desfluran düşük çözünürlüğü sayesinde hızlı uyanma sağlar; skolyoz cerrahilerinde wake-up testte tercih edilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Sevofluran ile ilgili aşağıdaki ifadelerden hangisi doğrudur?",
    options: [
      "Buhar basıncı çok yüksektir",
      "Karbonmonoksit üretimi en fazladır",
      "Compound A oluşum potansiyeli vardır",
      "Yavaş indüksiyon sağlar",
      "Sinir sistemi uyarıcı etkisi belirgindir",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sevofluran, kuru soda lime ile reaksiyona girerek Compound A oluşturabilir; bu madde nefrotoksiktir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "İntrakraniyal cerrahilerde en az serebral vazodilatasyon yapan volatil ajan hangisidir?",
    options: ["İzofluran", "Sevofluran", "Halotan", "Desfluran", "Enfluran"],
    correctAnswerIndex: 0,
    explanation:
        "İzofluran, beyin cerrahisinde en sık kullanılan volatil ajandır çünkü CBF'yi fazla artırmadan anestezi sağlar.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Volatil anesteziklerin kan/gaz çözünürlük katsayısı neyi belirler?",
    options: [
      "Toksik doz aralığını",
      "Solunum depresyonunu",
      "Beyne geçiş süresini",
      "Anestezik potensi",
      "Buhar basıncını",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kan/gaz çözünürlük katsayısı düşük olan ajanlar daha hızlı alveolden beyne geçer; bu indüksiyon ve derlenme süresini etkiler.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Sevofluran kullanımında nefrotoksisite riskini azaltmak için hangisine dikkat edilmelidir?",
    options: [
      "CO₂ absorbanının kuru olmaması",
      "Solunan gaz akışının düşük tutulması",
      "Yüksek inspiratuar oksijen kullanımı",
      "Nitrat içeren ilaçların verilmesi",
      "Anestezi süresinin uzatılması",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Sevofluran kuru soda kireci ile reaksiyona girerek nefrotoksik Compound A üretir. Bu nedenle absorban nemli olmalıdır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Halotan anestezisi sonrası gelişen hepatotoksisitenin tipi nedir?",
    options: [
      "Doza bağımlı, hafif toksisite",
      "Doza bağımsız, immünolojik hepatit",
      "Kolestatik hepatopati",
      "Direkt safra kanal hasarı",
      "Periportal fibrozis",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Halotan hepatiti genellikle ikinci maruziyetten sonra gelişir, doza bağlı değildir ve immünolojik kökenlidir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "İzofluranın kardiyovasküler etkilerinden biri aşağıdakilerden hangisidir?",
    options: [
      "Miyokardiyal oksijen tüketimini artırır",
      "Kalp hızını belirgin şekilde düşürür",
      "Sistemik vasküler direnci azaltır",
      "Kardiyak outputu artırır",
      "QT aralığını uzatır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İzofluran sistemik vazodilatasyon yapar ve SVR'yi düşürür. Bu etkisiyle hafif hipotansiyona neden olabilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi inhalasyon anesteziklerinin kardiyovasküler etkilerinden biri değildir?",
    options: [
      "Sistemik vasküler direnci azaltma",
      "Myokard depresyonu",
      "Baroreseptör refleksini inhibe etme",
      "Koroner çalma sendromuna yol açma",
      "Kalp hızını artırma (tüm ajanlarda)",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Desfluran ve izofluran taşikardi yapabilirken, sevofluran kalp hızını genellikle değiştirmez.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Hangisi inhalasyon anesteziklerinin böbrek üzerine olumsuz etkilerinden biri değildir?",
    options: [
      "Renal kan akımını azaltma",
      "Fluor iyonu üretimi (sevofluran)",
      "Serum kreatinin düzeylerinde artış",
      "Tubüler hasar (Compound A)",
      "ADH salınımını inhibe etme",
    ],
    correctAnswerIndex: 4,
    explanation:
        "İnhalasyon anestezikleri ADH salınımını inhibe etmez. Aksine, cerrahi stres ADH artışına yol açar.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Hangi inhalasyon anestezik karbonmonoksit (CO) zehirlenmesi riski taşır?",
    options: [
      "Desfluran",
      "Sevofluran",
      "İzofluran",
      "Halotan",
      "Kuru CO2 absorbanda kullanılan tüm ajanlar",
    ],
    correctAnswerIndex: 0,
    explanation:
        "Desfluran, kuru baralim/sodalim ile reaksiyona girerek CO oluşturabilir. Bu nedenle anestezi makinelerinde absorbant nem kontrolü yapılmalıdır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi inhalasyon anesteziklerinin solunum sistemi üzerine etkilerinden biri değildir?",
    options: [
      "Solunum depresyonu",
      "Bronkodilatasyon",
      "Hipoksik pulmoner vazokonstrüksiyonu inhibe etme",
      "Öksürük refleksini artırma",
      "V/Q uyumsuzluğuna yol açma",
    ],
    correctAnswerIndex: 3,
    explanation:
        "İnhalasyon anestezikleri öksürük refleksini baskılar. Bu nedenle derin anestezide laringospazm riski azalır.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdaki inhalasyon anesteziklerinden hangisi intraoperatif nöromonitorizasyon (örn. SSEP/MEP) sırasında en az etkiye sahiptir?",
    options: [
      "Halotan",
      "İzofluran",
      "Sevofluran",
      "Desfluran",
      "Nitröz oksit",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sevofluran, diğer volatil ajanlara kıyasla daha az amplitüd supresyonu yapar ve nöromonitorizasyonla daha uyumludur.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi inhalasyon anesteziklerinin eliminasyon yollarından biri değildir?",
    options: [
      "Akciğerler yoluyla",
      "Karaciğer metabolizması",
      "Böbreklerden atılım",
      "Deri yoluyla difüzyon",
      "Biyotransformasyon",
    ],
    correctAnswerIndex: 2,
    explanation:
        "İnhalasyon anestezikleri böbreklerden atılmaz. Temel eliminasyon yolu akciğerlerdir; bazıları (halotan, sevofluran) karaciğerde metabolize olur.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi sevofluranın metabolizması sırasında oluşan ve böbrek toksisitesine yol açabilen maddedir?",
    options: [
      "Fluor iyonu",
      "Compound A",
      "Karbonmonoksit",
      "Metabolik asidoz",
      "Siyanür",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Sevofluran, düşük akımlı anestezi sırasında Compound A oluşturur ve bu madde tubüler nekroza neden olabilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi inhalasyon anesteziklerinin karaciğer üzerindeki tipik etkilerinden biri değildir?",
    options: [
      "Hepatik kan akımında azalma",
      "Metabolik yük oluşturma",
      "Direkt hepatosit toksisitesi (özellikle halotan)",
      "Portal ven akımında artış",
      "İmmünolojik hepatit gelişimi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Volatil ajanlar genel olarak hepatik kan akımını azaltır. Portal ven akımı da azalır veya değişmez. Halotan ciddi hepatit yapabilir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "İnhalasyon anestezikleriyle MAC değeri üzerine en az etkili faktör aşağıdakilerden hangisidir?",
    options: [
      "Yaş",
      "Hipotermi",
      "Opiat kullanımı",
      "Hipovolemi",
      "Vücut kitle indeksi (BMI)",
    ],
    correctAnswerIndex: 4,
    explanation:
        "MAC değeri yaş, vücut ısısı, ilaç kullanımı, elektrolit dengesi gibi birçok faktörden etkilenir; BMI genellikle etkili değildir.",
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
        "Desfluran ile anestezi uygulanan bir hastada ani taşikardi ve hipertansiyon gelişiyor. En olası neden nedir?",
    options: [
      "Hipovolemi",
      "Yetersiz anestezi derinliği",
      "Metabolik alkaloz",
      "Ajanın yavaş artışı",
      "Vagal bradikardiye karşı kompansasyon",
    ],
    correctAnswerIndex: 1,
    explanation:
        "Desfluran hızlı artarsa sempatik aktiviteyi tetikler → taşikardi ve hipertansiyon oluşabilir. Uygulama hızı önemlidir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi bir inhalasyon ajanı için ideal özelliklerden biri değildir?",
    options: [
      "Düşük kan/gaz çözünürlük katsayısı",
      "Non-irritan olması",
      "Stabil hemodinami",
      "Toksik metabolit üretmemesi",
      "Yüksek yağ/gaz çözünürlüğü",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Yüksek yağ/gaz çözünürlüğü potensi artırır ama uyanmayı geciktirir. İdeal ajan düşük çözünürlük katsayısına sahip olmalıdır → hızlı derlenme sağlar.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),

  Question(
    question:
        "Aşağıdakilerden hangisi inhalasyon anesteziklerinin malign hipertermi riskini artıran faktörlerden biri değildir?",
    options: [
      "Genetik yatkınlık",
      "Süksinilkolin kullanımı",
      "Volatil ajan kullanımı",
      "Hipertermi öyküsü",
      "Nitröz oksit kullanımı",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Nitröz oksit malign hipertermi tetiklemez. Volatil ajanlar ve süksinilkolin MH tetikleyicileridir.",
    category: "İnhalasyon Anestezikleri",
    difficulty: 2,
  ),
];
