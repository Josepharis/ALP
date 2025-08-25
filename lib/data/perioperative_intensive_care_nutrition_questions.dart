import '../models/question.dart';

final List<Question> perioperativeIntensiveCareNutritionQuestions = [
  Question(
    question: "Aşağıdakilerden hangisi, perioperatif beslenme desteği başlanması gereken hasta grubudur?",
    options: [
      "Ameliyat öncesi vücut ağırlığının %5'ini 1 haftada kaybetmiş hastalar",
      "Hafif hipoproteinemisi olan, oral alımı iyi hastalar",
      "Yoğun bakımda 2 gündür oral beslenebilen hastalar",
      "Elektif cerrahiye girecek, iyi beslenmiş hasta",
      "1 gün boyunca aç kalmış stabil hasta"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Kısa sürede anlamlı kilo kaybı, malnütrisyon göstergesidir → perioperatif beslenme desteği gerekir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdaki yöntemlerden hangisi, kalori ihtiyacının en doğru hesaplanmasını sağlar?",
    options: [
      "Vücut ağırlığına göre tahmin",
      "Boy-kilo endeksi",
      "Harris-Benedict formülü",
      "İndirekt kalorimetre",
      "Nitrojene göre hesaplama"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "İndirekt kalorimetre, oksijen tüketimi ve CO₂ üretimine göre enerji ihtiyacını en doğru şekilde hesaplar.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Refeeding sendromunda aşağıdaki elektrolit bozukluklarından hangisi en sık görülür?",
    options: [
      "Hiperkalemi",
      "Hiponatremi",
      "Hipofosfatemi",
      "Hiperkalsemi",
      "Hipokloremi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Refeeding sendromunda hücre içi glukoz alımı artar → ATP yapımı için fosfat harcanır → hipofosfatemi gelişir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi, yüksek protein ihtiyacına sahip klinik bir durumdur?",
    options: [
      "Serebrovasküler olay",
      "Kronik böbrek hastalığı",
      "Yanık",
      "Alzheimer hastalığı",
      "Parkinson hastalığı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Yanıklı hastalarda hipermetabolizma gelişir → protein yıkımı artar → yüksek protein desteği gerekir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdaki seçeneklerden hangisi, total parenteral beslenmenin komplikasyonları arasında yer almaz?",
    options: [
      "Hiperglisemi",
      "Hipofosfatemi",
      "Karaciğer disfonksiyonu",
      "Kateter sepsisi",
      "Hiperkalemi"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "TPN, genellikle hipokalemi eğilimindedir. Hiperkalemi nadir görülür.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi, beslenme durumunun değerlendirilmesinde kullanılan laboratuvar parametrelerinden biri değildir?",
    options: [
      "Albümin",
      "Prealbümin",
      "Transferrin",
      "CRP",
      "Hematokrit"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Hematokrit, beslenme durumundan çok kan kaybı ve sıvı durumuyla ilgilidir. Diğerleri nutrisyonel durum göstergeleridir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Glutamin ve arginin gibi aminoasitlerin, stresli hastalarda kullanım amacı nedir?",
    options: [
      "Kolesterol düşürmek",
      "Hidrasyonu artırmak",
      "Nitrojene bağlı karaciğer hasarını önlemek",
      "Bağışıklık sistemini desteklemek ve iyileşmeyi hızlandırmak",
      "Protein yıkımını durdurmak"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Bu aminoasitler, immün yanıtı güçlendirir, barsak bariyerini destekler → özellikle stresli hastalarda faydalıdır.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdaki yolların hangisi ile enteral beslenme uzun süreli olarak güvenle sürdürülebilir?",
    options: [
      "Oral alım",
      "Nazogastrik sonda",
      "Nazojejunal tüp",
      "Gastrostomi tüpü",
      "Rektal beslenme"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Gastrostomi, 4 haftadan uzun sürecek beslenmelerde tercih edilir → daha konforlu ve stabil bir yoldur.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi, parenteral beslenme sonrası gelişen karaciğer komplikasyonlarından biridir?",
    options: [
      "Hipoglisemi",
      "Hepatik steatoz (yağlanma)",
      "Safra taşı",
      "Portal hipertansiyon",
      "Trombositopeni"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Uzun süreli TPN, özellikle glukoz ağırlıklı içerikler, karaciğer yağlanması ve disfonksiyonuna neden olabilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi, nutrisyonel risk taşıyan hastalarda malnütrisyonun doğrudan sonuçlarından biri değildir?",
    options: [
      "Enfeksiyon riskinde artış",
      "Yara iyileşmesinde gecikme",
      "Solunum kas güçsüzlüğü",
      "Hipotermi",
      "Hipovolemi"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Malnütrisyon; kas zayıflığı, enfeksiyon, iyileşme bozukluğu gibi sistemik etkiler yapar, hipovolemiye neden olmaz.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdaki klinik durumlardan hangisinde azot dengesinin pozitif olması beklenir?",
    options: [
      "Travma sonrası dönem",
      "Sepsis",
      "Yanık",
      "Postoperatif katabolik dönem",
      "Gebelik"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Gebelik ve büyüme çağında, anabolizma baskındır → pozitif azot dengesi beklenir. Diğerlerinde yıkım fazladır.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi, enteral beslenmeye bağlı ishalin en muhtemel nedenidir?",
    options: [
      "Yetersiz sıvı alımı",
      "Hiperprotein içerikli mama",
      "Laksatif etkenli ilaçlar",
      "Gastrointestinal fistül",
      "Solunum yolu enfeksiyonu"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "İlaçlar, özellikle antibiyotikler ve laksatifler, enteral beslenmeyle birlikte ishale neden olabilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdaki formüllerden hangisi, obez hastalarda kalori gereksinimini belirlemede daha doğru sonuç verir?",
    options: [
      "Harris-Benedict",
      "Mifflin-St. Jeor",
      "Broca formülü",
      "BMI × 20",
      "Basal enerji × 1.2"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Mifflin-St. Jeor formülü, obezite dahil birçok klinik duruma daha uygun ve güncel bir hesaplama yaklaşımıdır.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi, gastrointestinal intoleransın objektif göstergelerinden biridir?",
    options: [
      "Açlık hissi",
      "Mide bulantısı",
      "250 mL'den fazla gastrik rezidü",
      "Hipoglisemi",
      "Kabızlık"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Gastrik rezidü ölçümü, özellikle 250–500 mL üzeri ise, GİS intoleransı düşündürür → beslenme planı gözden geçirilmelidir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Parenteral beslenme alan hastada karaciğer enzimlerinde yükselme saptanırsa, en olası neden aşağıdakilerden hangisidir?",
    options: [
      "Protein yetersizliği",
      "A vitamini toksisitesi",
      "Lipid içeriği yüksek solüsyonlar",
      "Çinko eksikliği",
      "Magnezyum fazlalığı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Uzun süreli lipid ağırlıklı TPN, karaciğer yağlanması ve kolestaza neden olabilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdaki beslenme yollarından hangisi, aspirasyon riski açısından en güvenli olanıdır?",
    options: [
      "Oral alım",
      "Nazogastrik tüp",
      "Gastrostomi",
      "Nazojejunal tüp",
      "İntravenöz sıvı"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Jejunal tüpler, mideden geçildiği için aspirasyon riskini en aza indirir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdaki beslenme destek ürünlerinden hangisi, antiinflamatuvar etkisiyle yoğun bakım hastalarında tercih edilebilir?",
    options: [
      "D-laktat",
      "Omega-3 yağ asitleri",
      "Trans yağ",
      "Kolesterol",
      "Laktoz"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Omega-3 yağ asitleri, sitrikin ve lökotrien sentezini düzenleyerek antiinflamatuvar etki gösterir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Yoğun bakımda beslenme yetersizliği saptanan hastada, aşağıdaki bulgulardan hangisi beklenmez?",
    options: [
      "Prealbümin düşüklüğü",
      "Negatif azot dengesi",
      "Lenfopeni",
      "Hipoproteinemi",
      "Hipernatremi"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Beslenme yetersizliğinde sıklıkla protein ve lenfosit düzeyleri düşer, ancak hipernatremi doğrudan ilişkili değildir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdaki hastalıklardan hangisinde, yüksek proteinli enteral beslenme formülleri özellikle tercih edilir?",
    options: [
      "Parkinson hastalığı",
      "Tip 2 diyabet",
      "Sepsis",
      "Kronik obstrüktif akciğer hastalığı",
      "Osteoartrit"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Sepsiste protein katabolizması yüksektir → yüksek proteinli formüller ile desteklenmelidir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdaki enteral beslenme komplikasyonlarından hangisi mekanik komplikasyon olarak sınıflandırılır?",
    options: [
      "Aspirasyon pnömonisi",
      "Hiperglisemi",
      "Kateter tıkanması",
      "İshal",
      "Hipofosfatemi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Kateter tıkanması, teknik uygulamaya bağlı gelişir → mekanik komplikasyon sayılır. Diğerleri metabolik veya gastrointestinaldir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi, TPN sırasında gelişebilecek metabolik komplikasyonlardan biri değildir?",
    options: [
      "Hiperglisemi",
      "Hipokalemi",
      "Hipofosfatemi",
      "Hipertrigliseridemi",
      "Hiponatremi"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "TPN, genellikle sodyumdan zengin olduğu için hiponatremi nadirdir. Diğer komplikasyonlar sık görülür.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdaki özelliklerden hangisi, immunonutrisyon ürünlerinin (örn. omega-3, arginin) yoğun bakım hastalarındaki etkileri açısından doğrudur?",
    options: [
      "Mortaliteyi artırır",
      "Barsak geçiş süresini uzatır",
      "Enfeksiyon oranlarını azaltabilir",
      "Karaciğer hasarı oluşturur",
      "Enteral beslenme intoleransını artırır"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Immunonutrisyon, bağışıklık fonksiyonlarını destekleyerek enfeksiyon oranlarını düşürebilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Prealbümin düzeyinin düşük olması, en çok neyin göstergesidir?",
    options: [
      "Akut böbrek hasarı",
      "Kronik hipovolemi",
      "Kısa süreli malnütrisyon",
      "Anemik sendrom",
      "Hipokalsemi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Prealbümin, yarı ömrü kısa olduğu için akut beslenme durumu değerlendirmesinde tercih edilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdaki hastalıklardan hangisinde negatif azot dengesi gelişme riski en yüksektir?",
    options: [
      "Gebelik",
      "Yanık",
      "Hipotiroidi",
      "Alzheimer hastalığı",
      "Stabil KOAH"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Yanık hastalarında, aşırı protein katabolizması olur → negatif azot dengesi gelişir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi, TPN infüzyonu sırasında gelişen hiperglisemiyle mücadelede önerilen bir yaklaşımdır?",
    options: [
      "Glukoz konsantrasyonunu artırmak",
      "Lipid oranını artırmak",
      "İntravenöz insülin infüzyonu başlamak",
      "TPN'yi kesip enteral beslenmeye geçmek",
      "Dextrozla sulandırmak"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "TPN kaynaklı hiperglisemide, insülin eklenerek glukoz regülasyonu sağlanmalıdır.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdaki besin içeriklerinden hangisi, glutamin desteği için doğrudan örnek oluşturur?",
    options: [
      "Orta zincirli yağ asitleri",
      "Esansiyel aminoasit karışımları",
      "Non-esansiyel aminoasit olan glutamin takviyesi",
      "Fruktoz içerikli karışımlar",
      "Serin ve treonin içeriği yüksek mamalar"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Glutamin, barsak hücreleri ve bağışıklık sistemi için önemlidir → parenteral ve enteral ürünlerde destek olarak eklenebilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi, kritik hastalarda enteral beslenmenin immünomodülatör etkisini artırmak için kullanılan içeriklerden biri değildir?",
    options: [
      "Arginin",
      "Omega-3 yağ asitleri",
      "Glutamin",
      "D-laktat",
      "Nukleotid"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "D-laktat, bakteriyel metabolit olup, beslenmede toksik etki gösterebilir → immün destek amaçlı kullanılmaz.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi, TPN ile uzun süreli beslenen hastalarda görülen kolestazın en olası nedenidir?",
    options: [
      "Hiperproteinemi",
      "Düşük kalori içeriği",
      "Yetersiz safra stimulasyonu (enteral yoksunluk)",
      "Hipokalemi",
      "B12 fazlalığı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Safra akışını uyaracak enteral stimülasyon olmadığında, safra stazı ve kolestaz gelişebilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi, TPN sırasında kanda izlenmesi en zor ama en tehlikeli komplikasyonlardan biri olarak kabul edilir?",
    options: [
      "Hipoglisemi",
      "Hipermagnezemi",
      "Refeeding sendromu",
      "Hipernatremi",
      "Lökopeni"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Refeeding sendromu, özellikle malnütrisyonlu hastalarda, ani TPN başlanmasıyla gelişebilir → hipofosfatemi ve kardiyak komplikasyonlar görülebilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdaki maddelerden hangisi, özellikle kritik hastalarda glutamin desteğinin faydası açısından kesin olarak önerilmez?",
    options: [
      "ARDS",
      "Sepsis",
      "Renal yetmezlik",
      "Yanık",
      "Kanser hastaları"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Renal yetmezlikte glutamin metabolizması bozulabilir, azot yükü artabilir → dikkatle kullanılır, hatta önerilmez.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Enteral beslenme formüllerinde bulunan orta zincirli trigliseridlerin (MCT) başlıca avantajı nedir?",
    options: [
      "Bağırsakta sindirilmeye gerek duymadan emilmesi",
      "Karaciğer glikojen sentezini artırması",
      "Hipoglisemi riskini artırması",
      "Pankreas enzimlerine bağımlı olması",
      "Kolesterolü yükseltmesi"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "MCT'ler, kısa zincirli yapıları sayesinde pankreatik lipaz olmadan emilebilir → emilim bozukluğu olanlarda tercih edilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi, yoğun bakımda immün destek amaçlı kullanılan bileşenlerden biri değildir?",
    options: [
      "Glutamin",
      "Arginin",
      "Omega-3",
      "Laktuloz",
      "Nukleotidler"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Laktuloz, laksatif amaçlı kullanılır → bağışıklık destekleyici özelliği yoktur.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdaki durumların hangisinde, enteral beslenme başarısız olduğunda parenteral beslenmeye geçiş en uygun yaklaşımdır?",
    options: [
      "Mide bulantısı",
      "Hafif distansiyon",
      "Günlük besin gereksiniminin %60'ı 5 günde sağlanamıyorsa",
      "Yalnızca serum sodyum yüksekse",
      "Obezite varlığı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Besin ihtiyacının %60'ı 5–7 gün içinde sağlanamıyorsa, ek veya tamamen parenteral beslenmeye geçilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "NPO (ağızdan bir şey verilmemesi) süresi uzadıkça en olası komplikasyon nedir?",
    options: [
      "Hipertansiyon",
      "Hiperglisemi",
      "Bağırsak mukozasında atrofi",
      "Pulmoner emboli",
      "Hipokalemi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Uzun süreli NPO kalmak intestinal bariyeri zayıflatır, atrofiye yol açar.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdaki parametrelerden hangisi beslenme durumunu izlemek için daha güvenilirdir?",
    options: [
      "Vücut kitle indeksi",
      "Albümin",
      "Prealbümin",
      "Total protein",
      "Hemoglobin"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Prealbümin kısa yarı ömrü sayesinde akut beslenme durumunu daha iyi yansıtır.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Parenteral beslenmenin en sık komplikasyonu aşağıdakilerden hangisidir?",
    options: [
      "Hiponatremi",
      "Hipoglisemi",
      "Enfeksiyon",
      "Protein eksikliği",
      "Hipokalemi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Santral kateter gerektirdiği için sepsis/paranteral beslenmeye bağlı enfeksiyon en sık komplikasyondur.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi enteral beslenmenin kontrendikasyonudur?",
    options: [
      "İntakt GİS",
      "Minimal bağırsak motilitesi",
      "Şok",
      "Uzamış NPO süresi",
      "Perioperatif dönem"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Perfüzyonun bozulduğu şok durumlarında enteral beslenme önerilmez.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Protein ihtiyacı artmış bir hastada günde önerilen miktar yaklaşık olarak kaç g/kg'dır?",
    options: [
      "0.5–0.8 g/kg",
      "1.0 g/kg",
      "1.2–2.0 g/kg",
      "2.5–3.0 g/kg",
      "3.5 g/kg ve üzeri"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Yoğun bakım hastalarında protein ihtiyacı genellikle 1.2–2.0 g/kg/gün'dür.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Total parenteral beslenmede lipit emülsiyonu için doğru ifade hangisidir?",
    options: [
      "Günlük kalorinin %10'unu oluşturur",
      "Lipit verilmesi zorunlu değildir",
      "Esansiyel yağ asitleri içermez",
      "Kalorik yoğunluğu karbonhidrattan düşüktür",
      "Enfeksiyon riskini azaltır"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Kısa süreli TPN'de lipit zorunlu değildir; fakat uzun sürede esansiyel yağ asidi eksikliği gelişebilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Nitrojen dengesi negatif olan bir hastada aşağıdakilerden hangisi doğru olur?",
    options: [
      "Anabolik süreçler artmıştır",
      "Kas yıkımı azalmıştır",
      "Protein alımı yeterlidir",
      "Katabolik süreçler baskındır",
      "Enerji ihtiyacı düşmüştür"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Negatif azot dengesi, protein yıkımının alımdan fazla olduğunu gösterir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Perioperatif beslenme desteğinde en önemli hedef aşağıdakilerden hangisidir?",
    options: [
      "Kilo almak",
      "Kas kütlesini artırmak",
      "Azot dengesini pozitife çevirmek",
      "Sıvı yükünü azaltmak",
      "Elektrolit kaybını artırmak"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Katabolik süreci durdurmak için hedef pozitif azot dengesine ulaşmaktır.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi TPN sırasında gelişebilecek metabolik komplikasyonlardan biridir?",
    options: [
      "Hipervolemi",
      "Hiponatremi",
      "Hipoglisemi",
      "Hiperglisemi",
      "Hipotansiyon"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "TPN, özellikle glukoz içeriği yüksek olduğunda hiperglisemiye neden olabilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "TPN alan bir hastada plazma trigliserid düzeyi yüksekse yapılacak ilk adım nedir?",
    options: [
      "Lipit infüzyonunu kesmek",
      "Dextroz oranını artırmak",
      "İnsülin infüzyonu başlamak",
      "Albümin vermek",
      "TPN'yi sonlandırmak"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Yüksek trigliserid değerlerinde ilk yaklaşım lipit infüzyonunu durdurmaktır.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Parenteral beslenme için santral venöz kateter tercih edilmesinin nedeni nedir?",
    options: [
      "Enfeksiyon riskini azaltması",
      "Hızlı erişim sağlaması",
      "Hiperozmotik solüsyonların periferde irritasyon yapması",
      "Elektrolit kaybını azaltması",
      "Kolay yerleştirilmesi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "TPN solüsyonları hiperozmotiktir, periferik damarları tahriş eder → santral damarlar tercih edilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Prealbümin düzeyi düşüklüğü aşağıdakilerden hangisini en iyi gösterir?",
    options: [
      "Kronik karaciğer hastalığı",
      "Glukoz intoleransı",
      "Kısa süreli protein yetersizliği",
      "Hiponatremi",
      "Malabsorbsiyon sendromu"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Prealbümin kısa yarı ömrü nedeniyle akut protein eksikliğini yansıtır.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Beslenme desteği başlanan bir hastada ilk 24 saatte en çok izlenmesi gereken komplikasyon nedir?",
    options: [
      "Enfeksiyon",
      "Hipokalemi",
      "Hipofosfatemi",
      "Hipotansiyon",
      "Lökositoz"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Özellikle malnütrisyon sonrası hızlı beslenme başlanan hastalarda refeeding sendromuna bağlı hipofosfatemi sık görülür.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Yoğun bakım hastasında enteral beslenme başlandıktan sonra karında distansiyon ve rezidü artışı görülüyorsa ilk yaklaşım ne olmalıdır?",
    options: [
      "TPN'e geçmek",
      "Enteral beslenmeyi hemen kesmek",
      "Beslenme hızını azaltmak",
      "Diyaliz başlamak",
      "Analjezik dozunu artırmak"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Distansiyon veya rezidü artışı durumunda önce beslenme hızı azaltılır, tolere edilmezse geçici durdurma düşünülebilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Enteral beslenmede fiber içeriği yüksek olan formüller aşağıdaki durumların hangisinde daha faydalıdır?",
    options: [
      "Sepsis",
      "İshal",
      "Kabızlık",
      "Akut pankreatit",
      "Hiperglisemi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Lifli (fiber) formüller bağırsak motilitesini artırarak kabızlığı önler.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "TPN ile beslenen bir hastada hipoglisemi gelişmesinin en olası nedeni nedir?",
    options: [
      "TPN içeriğinin eksik hazırlanması",
      "Kateter enfeksiyonu",
      "TPN infüzyonunun ani kesilmesi",
      "Düşük albümin düzeyi",
      "Yetersiz sıvı alımı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "TPN aniden kesilirse pankreatik insülin yanıtı devam eder → hipoglisemi gelişebilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Yoğun bakımda refeeding sendromu riski en yüksek hasta grubu hangisidir?",
    options: [
      "Obezite cerrahisi sonrası hastalar",
      "Gebeler",
      "Alkolik ve malnütrisyonlu hastalar",
      "Travma hastaları",
      "Hipertansif bireyler"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Uzun süre yetersiz beslenmiş, özellikle alkol bağımlısı hastalar en yüksek refeeding riski altındadır.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi beslenme intoleransını gösteren bir bulgudur?",
    options: [
      "Düşük hematokrit",
      "Yüksek prealbümin",
      "Yüksek gastrik rezidü",
      "Artmış kreatinin",
      "Azalmış glukoz"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Yüksek gastrik rezidü enteral beslenmeye toleransın azaldığını gösterir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Enteral beslenmede hedefe ulaşmak için genellikle kaç saatlik titrasyon süresi gerekir?",
    options: [
      "1–2 saat",
      "4–6 saat",
      "24–48 saat",
      "72 saat",
      "5 gün"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Enteral beslenmede tolere edilen hıza 24–48 saat içinde ulaşılması amaçlanır.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Parenteral beslenmeye bağlı hepatik komplikasyonları azaltmak için önerilen uygulama nedir?",
    options: [
      "Yalnızca glukoz verilmesi",
      "TPN'in kesintisiz 24 saat verilmesi",
      "İnsülin oranının artırılması",
      "Siklik TPN uygulaması",
      "Lipit oranının artırılması"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Siklik (örneğin gece 12 saat) TPN uygulaması karaciğer üzerindeki yükü azaltır.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Parenteral beslenme alan hastada en sık görülen metabolik bozukluk hangisidir?",
    options: [
      "Hiponatremi",
      "Hiperkalemi",
      "Hiperglisemi",
      "Hipokalsemi",
      "Hipofosfatemi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Parenteral glukozun yüksek olması nedeniyle hiperglisemi yaygındır.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Enteral beslenme için kontrendikasyon olmayan durum aşağıdakilerden hangisidir?",
    options: [
      "İskemik bağırsak",
      "Aktif GİS kanaması",
      "Ciddi hemodinamik instabilite",
      "Kısa barsak sendromu",
      "Mekanik ileus"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Kısa barsak sendromu varsa az da olsa fonksiyonel bağırsak varsa enteral beslenme denenebilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Enteral beslenmede besinlerin osmolalite seviyesi neyi etkiler?",
    options: [
      "Protein oranını",
      "Enfeksiyon riskini",
      "Gastrik boşalma hızını",
      "Hiperkalemi sıklığını",
      "Hipofosfatemi riskini"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Yüksek osmolalite → gastrik boşalma yavaşlayabilir → intolerans gelişebilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Refeeding sendromu gelişen bir hastada en olası ölüm nedeni nedir?",
    options: [
      "Hepatik yetmezlik",
      "Solunum yetmezliği",
      "Hiperkalemi",
      "Malabsorpsiyon",
      "Kardiyak aritmi"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Hipofosfatemiye bağlı gelişen aritmiler refeeding sendromunda ölümcül olabilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi enteral beslenmede doz artış hızını belirlemede en önemlidir?",
    options: [
      "Kreatinin düzeyi",
      "İdrar çıkışı",
      "Gastrik rezidü miktarı",
      "Albümin düzeyi",
      "Glukoz düzeyi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Besin toleransını belirleyen en iyi parametrelerden biri gastrik rezidüdür.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Enteral beslenmede en sık kullanılan besin öğesi nedir?",
    options: [
      "Lipid",
      "Aminoasit",
      "Glukoz",
      "Glutamin",
      "Esansiyel yağ asitleri"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Karbonhidratlar (özellikle glukoz) ana enerji kaynağı olarak formüllerde en sık yer alır.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi TPN'in aşırı glukoz içeriğine bağlı gelişen bir komplikasyondur?",
    options: [
      "Hiponatremi",
      "Non-alkolik hepatosteatoz",
      "Hipofosfatemi",
      "Hipokalsemi",
      "Hemoliz"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "TPN'deki aşırı glukoz karaciğerde yağlanmaya yol açabilir (non-alkolik steatoz).",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Parenteral beslenme sırasında gelişen hiperglisemi neyle ilişkilidir?",
    options: [
      "Hipotermi",
      "Azalan kortizol",
      "Artmış insülin direnci",
      "Hipokalemi",
      "Hiponatremi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Stres ve TPN'in glukoz içeriği → insülin direnci artar → hiperglisemi.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Nütrisyonel risk taraması için en sık kullanılan skorlama sistemi hangisidir?",
    options: [
      "NRS-2002 (Nutritional Risk Screening)",
      "MUST (Malnutrition Universal Screening Tool)",
      "SGA (Subjective Global Assessment)",
      "APACHE II",
      "SOFA"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "NRS-2002, perioperatif dönemde nütrisyonel risk taraması için en sık kullanılan yöntemdir (≥3 puan riskli kabul edilir).",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Ağır malnütrisyonlu (albümin <2.5 g/dL) bir hastada elektif cerrahi ne kadar ertelenmelidir?",
    options: [
      "24 saat",
      "48 saat",
      "7-10 gün",
      "3 hafta",
      "Ertelenmez"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Ağır malnütrisyonlu hastalarda 7-10 günlük preoperatif nütrisyonel destek, postoperatif komplikasyonları %50'ye varan oranda azaltır.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Nütrisyonel durum değerlendirmesinde en sensitif belirteç hangisidir?",
    options: [
      "Albümin",
      "Prealbümin",
      "Transferrin",
      "Lenfosit sayısı",
      "BMI"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Prealbümin (yarı ömrü 2 gün) albümine (yarı ömrü 20 gün) göre daha sensitiftir. <10 mg/dL ağır malnütrisyonu gösterir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Dipeptid formüllerinin avantajı nedir?",
    options: [
      "Glutamin stabilitesi",
      "Daha iyi tolerans",
      "Daha az diyare",
      "Hepsi",
      "Hiçbiri"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Alanin-glutamin dipeptid gibi formüller, glutaminin stabilitesini artırır ve intestinal toleransı iyileştirir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Serbest radikal hasarına karşı hangi antioksidan kullanılır?",
    options: [
      "Selenyum",
      "Çinko",
      "C vitamini",
      "Hepsi",
      "Hiçbiri"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Bu antioksidanlar, yoğun bakımda oksidatif stresi azaltır. Selenyumun sepsisli hastalarda mortaliteyi düşürdüğü gösterilmiştir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Nütrisyonel destek ekibi kimlerden oluşur?",
    options: [
      "Hekim",
      "Diyetisyen",
      "Hemşire",
      "Eczacı",
      "Hepsi"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Multidisipliner ekip, nütrisyonel desteğin etkinliğini %30 artırır ve komplikasyonları azaltır.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi enteral beslenmenin kontrendikasyonudur?",
    options: [
      "İntakt GİS",
      "Minimal bağırsak motilitesi",
      "Şok",
      "Uzamış NPO süresi",
      "Perioperatif dönem"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Perfüzyonun bozulduğu şok durumlarında enteral beslenme önerilmez.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi TPN sırasında gelişebilecek metabolik komplikasyonlardan biridir?",
    options: [
      "Hipervolemi",
      "Hiponatremi",
      "Hipoglisemi",
      "Hiperglisemi",
      "Hipotansiyon"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "TPN, özellikle glukoz içeriği yüksek olduğunda hiperglisemiye neden olabilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi TPN sırasında gelişebilecek metabolik komplikasyonlardan biridir?",
    options: [
      "Hipervolemi",
      "Hiponatremi",
      "Hipoglisemi",
      "Hiperglisemi",
      "Hipotansiyon"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "TPN, özellikle glukoz içeriği yüksek olduğunda hiperglisemiye neden olabilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi TPN sırasında gelişebilecek metabolik komplikasyonlardan biridir?",
    options: [
      "Hipervolemi",
      "Hiponatremi",
      "Hipoglisemi",
      "Hiperglisemi",
      "Hipotansiyon"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "TPN, özellikle glukoz içeriği yüksek olduğunda hiperglisemiye neden olabilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi TPN sırasında gelişebilecek metabolik komplikasyonlardan biridir?",
    options: [
      "Hipervolemi",
      "Hiponatremi",
      "Hipoglisemi",
      "Hiperglisemi",
      "Hipotansiyon"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "TPN, özellikle glukoz içeriği yüksek olduğunda hiperglisemiye neden olabilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi TPN sırasında gelişebilecek metabolik komplikasyonlardan biridir?",
    options: [
      "Hipervolemi",
      "Hiponatremi",
      "Hipoglisemi",
      "Hiperglisemi",
      "Hipotansiyon"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "TPN, özellikle glukoz içeriği yüksek olduğunda hiperglisemiye neden olabilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi TPN sırasında gelişebilecek metabolik komplikasyonlardan biridir?",
    options: [
      "Hipervolemi",
      "Hiponatremi",
      "Hipoglisemi",
      "Hiperglisemi",
      "Hipotansiyon"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "TPN, özellikle glukoz içeriği yüksek olduğunda hiperglisemiye neden olabilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
  Question(
    question: "Aşağıdakilerden hangisi TPN sırasında gelişebilecek metabolik komplikasyonlardan biridir?",
    options: [
      "Hipervolemi",
      "Hiponatremi",
      "Hipoglisemi",
      "Hiperglisemi",
      "Hipotansiyon"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "TPN, özellikle glukoz içeriği yüksek olduğunda hiperglisemiye neden olabilir.",
    category: "Perioperatif ve Yoğun Bakımda Beslenme",
  ),
];
