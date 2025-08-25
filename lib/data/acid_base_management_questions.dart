import '../models/question.dart';

final List<Question> acidBaseManagementQuestions = [
  Question(
    question: "Aşağıdakilerden hangisi, asit-baz dengesinin korunmasında başlıca tampon sistemlerinden biri değildir?",
    options: [
      "Bikarbonat tampon sistemi",
      "Hemoglobin tampon sistemi",
      "Fosfat tampon sistemi",
      "Protein tampon sistemi",
      "Klorür tampon sistemi"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Klorür iyonları dengeyi etkileyebilir ama primer tampon sistemi değildir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Metabolik alkalozun en sık nedeni aşağıdakilerden hangisidir?",
    options: [
      "Kusma veya nazogastrik drenaj",
      "İshal",
      "Ketoasidoz",
      "Renal yetmezlik",
      "Sepsis"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Gastrik asid kaybı (HCl), özellikle kusma veya NG drenajıyla, metabolik alkalozun en sık nedenidir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, anion gap normal metabolik asidoz nedenlerinden biridir?",
    options: [
      "Laktik asidoz",
      "Ketoasidoz",
      "Renal tübüler asidoz",
      "Aspirin zehirlenmesi",
      "Metanol intoksikasyonu"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "RTA, HCO₃⁻ kaybıyla karakterizedir ancak Cl⁻ artışı nedeniyle AG normal kalır → 'hiperkloremik asidoz'.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Delta anion gap hesaplaması, aşağıdaki asit-baz bozukluklarından hangisinin değerlendirilmesinde kullanılır?",
    options: [
      "Normal AG asidoz",
      "Respiratuvar alkaloz",
      "Yüksek AG metabolik asidoz + ek bozukluk",
      "Kronik hiperkapni",
      "Kompanse metabolik alkaloz"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Delta AG, eşlik eden ikili metabolik bozuklukları ortaya çıkarmak için kullanılır.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdaki durumların hangisinde anion gap artmaz?",
    options: [
      "Üremi",
      "Laktik asidoz",
      "Ketoasidoz",
      "İshal",
      "Metanol zehirlenmesi"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "İshal, HCO₃⁻ kaybı ile olur, ancak Cl⁻ artışıyla AG normal kalır.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, alkalozun solunum sistemine etkilerinden biridir?",
    options: [
      "Solunum arresti",
      "Kompansatuvar hiperventilasyon",
      "Oksijen satürasyonunda artış",
      "Hipoventilasyona bağlı hiperkapni",
      "Oksijen tüketiminde artış"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Metabolik alkalozda, PaCO₂ yükselerek pH'ı normale getirmek için solunum yavaşlar → hipoventilasyon ve hiperkapni gelişebilir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdaki durumlardan hangisi, respiratuvar alkaloz ile en çok ilişkilidir?",
    options: [
      "Akciğer yetmezliği",
      "Yavaş solunum",
      "Sepsis",
      "Hiperkalemi",
      "Opiat kullanımı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Sepsis, solunum merkezini uyararak hiperventilasyona neden olabilir → bu da respiratuvar alkaloz yaratır.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, baz fazlası (base excess) parametresinin artmasına neden olmaz?",
    options: [
      "Metabolik alkaloz",
      "Hipokalemi",
      "Metabolik asidoz",
      "Volüm kontraksiyonu",
      "Diüretik kullanımı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Metabolik asidozda baz eksikliği olur → base excess negatifleşir, azalır.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, bikarbonat tampon sisteminin esas aldığı dengeyi açıklar?",
    options: [
      "Gibbs-Donnan",
      "Henderson-Hasselbalch",
      "Starling denklemi",
      "Nernst potansiyeli",
      "Fick yasası"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Henderson-Hasselbalch denklemi, pH = 6.1 + log ([HCO₃⁻]/0.03×PaCO₂) ile asit-baz ilişkisini açıklar.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdaki bozukluklardan hangisinde kanda aniyon boşluğu (anion gap) hesaplamak tanıya yardımcı olur?",
    options: [
      "Metabolik alkaloz",
      "Respiratuvar asidoz",
      "Respiratuvar alkaloz",
      "Metabolik asidoz",
      "Hiperkalemi"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Metabolik asidozun yüksek AG'li mi yoksa normal AG'li mi olduğunun ayrımı tanısal açıdan önemlidir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdaki durumların hangisinde anion gap yüksek olmasına rağmen normal veya artmış serum bikarbonat düzeyi görülebilir?",
    options: [
      "RTA",
      "Metanol intoksikasyonu",
      "Laktik asidozun erken evresi",
      "Kronik ishal",
      "Volüm kontraksiyonu"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Laktik asidoz gibi durumlarda, AG artışı, bikarbonat tampon sistemini henüz aşmamışsa, HCO₃⁻ normal kalabilir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdaki asit-baz bozukluklarından hangisinde ikili bozukluk (karışık tablo) düşünülmelidir?",
    options: [
      "Yüksek AG asidoz ve normal AG asidoz",
      "Respiratuvar asidoz ve metabolik alkaloz",
      "Yalnızca metabolik asidoz",
      "Sadece respiratuvar alkaloz",
      "Yalnızca baz fazlası pozitifliği"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Örneğin KOAH'lı hastada (respiratuvar asidoz) eş zamanlı diüretik tedavisi (alkaloz) varsa ikili bozukluk düşünülmelidir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, Delta Anion Gap / Delta HCO₃⁻ oranı >2 olduğunda en çok akla gelmelidir?",
    options: [
      "Yalnızca metabolik asidoz",
      "Eşlik eden metabolik alkaloz",
      "Respiratuvar asidoz",
      "SIADH",
      "Hipokalemi"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Bu oran >2 ise, AG artışına rağmen HCO₃⁻ düzeyi beklenenden yüksek bulunur → eşlik eden metabolik alkaloz düşünülür.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, hidrojen iyonunun böbrekten atılımını artırarak asidozun düzelmesine katkı sağlar?",
    options: [
      "Hiperkalemi",
      "Hipokloremi",
      "Aldosteron",
      "ADH",
      "Hipoalbuminemi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Aldosteron, toplayıcı kanallarda H⁺ sekresyonunu artırır → metabolik asidozun düzelmesine katkı sağlar.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Non-anion gap metabolik asidoz için en olası örnek hangisidir?",
    options: [
      "Ketoasidoz",
      "Sepsis",
      "Laktik asidoz",
      "RTA Tip 1",
      "Metanol intoksikasyonu"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Renal tübüler asidoz (Tip 1, distal) tipik olarak Cl⁻ artışıyla AG normal kalır.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Yüksek anion gap metabolik asidoz ile birlikte hipokalemi olması en olası durumda görülür?",
    options: [
      "Ketoasidoz",
      "Metanol intoksikasyonu",
      "Salisilat zehirlenmesi",
      "DKA (tedavi başlangıcında)",
      "Hipokloremik alkaloz"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "DKA başlangıcında potasyum normal/görünürde yüksek olabilir → ancak insülin tedavisi ile hızla hücre içine girerek hipokalemi gelişir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Metabolik asidozda pH normal çıkmasına rağmen tanıdan şüphelenilmesine neden olan bulgu aşağıdakilerden hangisidir?",
    options: [
      "Yüksek HCO₃⁻",
      "Yüksek PaCO₂",
      "Yüksek AG",
      "Normal PaCO₂",
      "Negatif baz fazlası"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Yüksek AG, HCO₃⁻ düşmeden önce asidozun erken dönemini gösterir → pH henüz düşmemiş olabilir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, hipokloremik metabolik alkalozun temel nedenlerinden biridir?",
    options: [
      "Proksimal RTA",
      "Gastrik sıvı kaybı",
      "Laktik asidoz",
      "Salisilat toksisitesi",
      "Üremi"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Gastrik sıvılarda bol miktarda HCl bulunur → kusma/NG drenaj ile H⁺ ve Cl⁻ kaybı → hipokloremik metabolik alkaloz gelişir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, kronik respiratuvar asidozun karakteristik özelliğidir?",
    options: [
      "Yüksek PaCO₂, düşük HCO₃⁻",
      "Yüksek PaCO₂, yüksek HCO₃⁻",
      "Düşük PaCO₂, düşük HCO₃⁻",
      "Normal pH, normal PaCO₂",
      "Yüksek pH, düşük HCO₃⁻"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Kronik respiratuvar asidozda renal kompansasyonla HCO₃⁻ artar → pH normal veya hafif asidotik olabilir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Metabolik asidozda aşağıdaki elektrolit bozukluklarından hangisi sıklıkla eşlik eder?",
    options: [
      "Hipokalemi",
      "Hiponatremi",
      "Hiperkalemi",
      "Hipokalsemi",
      "Hipomagnezemi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "H⁺ hücre içine girerken K⁺ dışarı çıkar → hiperkalemi gelişebilir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, serum anion gap'ini yükseltir?",
    options: [
      "Hipokloremi",
      "Laktik asit",
      "Potasyum retansiyonu",
      "Albumin düşüklüğü",
      "Hipokalsemi"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Laktat, AG formülünde hesaba katılmayan anyonlardan biri olduğu için AG'yi artırır.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Kompansasyon cevabı yetersiz olan asit-baz bozukluğu için en olası durum nedir?",
    options: [
      "Akut respiratuvar asidoz",
      "Kronik respiratuvar alkaloz",
      "Metabolik alkaloz",
      "Akut metabolik asidoz",
      "Kronik metabolik asidoz"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Akut respiratuvar bozukluklarda renal kompansasyon zaman alır → pH hızlıca düşer, HCO₃⁻ henüz yükselmez.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, tampon sistemlerinin çalışmasını en iyi açıklar?",
    options: [
      "Asitlerin proteine bağlanması",
      "H⁺ iyonlarının hücre içine girmesi",
      "Zayıf asit ve konjugat bazın dengesi",
      "HCO₃⁻ reabsorpsiyonu",
      "Potasyumun böbrekten atılımı"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Tampon sistemleri, zayıf asit ve eşlenik baz arasındaki denge sayesinde pH değişimlerine karşı koyar.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Bikarbonat verilmesi aşağıdaki durumlardan hangisinde öncelikli tedavi değildir?",
    options: [
      "DKA",
      "Metanol intoksikasyonu",
      "Laktik asidoz",
      "RTA",
      "HCO₃⁻ düşüklüğüne rağmen iyi perfüze hasta"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Her düşük HCO₃⁻ değerinde bikarbonat gerekmez; semptomsuz veya iyi perfüze hastalarda dikkatli olunmalıdır.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, çift yönlü (karışık) asit-baz bozukluğunun en önemli kanıtıdır?",
    options: [
      "pH'nın normal sınırlarda olması",
      "HCO₃⁻ ve PaCO₂'nin aynı yönde değişmesi",
      "Beklenen kompansasyon dışında bir gaz değeri",
      "Kanda potasyum düşüklüğü",
      "Anion gap'in artması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Kompanse değerlerden sapma varsa, birden fazla bozukluk aynı anda olabilir → 'karışık tablo' düşünülmelidir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, böbreklerin asit-baz dengeye katkı yollarından biridir?",
    options: [
      "CO₂ hiperventilasyonu",
      "H⁺ sekresyonu ve HCO₃⁻ reabsorpsiyonu",
      "PaO₂ düzenlemesi",
      "Na⁺-K⁺ değişimi",
      "ADH salınımı"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Böbrekler, H⁺ sekresyonu ve HCO₃⁻ reabsorpsiyonu ile asit-baz dengesine katkı sağlar.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Winter formülü ile ne hesaplanır?",
    options: [
      "Metabolik alkaloz kompansasyonu",
      "Respiratuvar asidoz kompansasyonu",
      "Metabolik asidozda beklenen PaCO₂",
      "Anion gap",
      "Serum osmolalitesi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Winter formülü: PaCO₂ = (1.5 × HCO₃⁻) + 8 ± 2 → metabolik asidozda beklenen PaCO₂'yi hesaplar.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, respiratuvar bozukluklarda renal kompansasyonun zamanlamasını en doğru ifade eder?",
    options: [
      "Anında",
      "1 saat içinde",
      "6–12 saat içinde",
      "24–48 saat içinde",
      "Birkaç dakika içinde"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Respiratuvar bozukluklarda renal kompansasyon 24-48 saat içinde başlar.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, pH değerinde 0.1 birimlik düşüşe karşılık potasyum düzeyinde yaklaşık ne kadar artış beklenir?",
    options: [
      "0.1 mEq/L",
      "0.3 mEq/L",
      "0.6 mEq/L",
      "1.0 mEq/L",
      "2.0 mEq/L"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "pH'da 0.1 birimlik düşüşe karşılık potasyum düzeyinde yaklaşık 0.6 mEq/L artış beklenir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Albumin düzeyindeki düşüş, anion gap üzerinde nasıl etki yapar?",
    options: [
      "Artırır",
      "Değiştirmez",
      "Azaltır",
      "Sadece laktatla ilişkili",
      "Asidoz oluşturur"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "AG = Na⁺ - (Cl⁻ + HCO₃⁻) → albumin bir anyondur → düştüğünde AG de azalır.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, salisilat zehirlenmesinde görülen tipik asit-baz bozukluğu dizisidir?",
    options: [
      "Respiratuvar alkaloz → metabolik asidoz",
      "Metabolik alkaloz → respiratuvar alkaloz",
      "Metabolik asidoz → respiratuvar asidoz",
      "Respiratuvar asidoz → metabolik alkaloz",
      "Metabolik asidoz → metabolik alkaloz"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Salisilat zehirlenmesinde önce respiratuvar alkaloz, sonra metabolik asidoz gelişir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, metabolik alkalozun sürdürülmesinde etkili faktörlerden biridir?",
    options: [
      "Hipokalemi",
      "Hiperventilasyon",
      "Hiperkloremi",
      "Artmış GFR",
      "Asidoz"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Hipokalemi, metabolik alkalozun sürdürülmesinde etkili bir faktördür.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, respiratuvar alkalozda pH'yı normale getirmek için en hızlı müdahaledir?",
    options: [
      "HCO₃⁻ verilmesi",
      "O₂ kesilmesi",
      "Solunum yavaşlatılması",
      "Albumin verilmesi",
      "Diüretik başlanması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Respiratuvar alkalozda solunum yavaşlatılması pH'yı normale getirmek için en hızlı müdahaledir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, asidozun anestezi pratiğinde oluşturabileceği etkilerden biri değildir?",
    options: [
      "Katekolamin duyarlılığının azalması",
      "Kardiyak kontraktilitenin düşmesi",
      "Solunum merkezinin baskılanması",
      "Kas gevşeticilere duyarlılığın artması",
      "Aritmi riskinde artış"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Asidoz, solunum merkezini uyarır → baskılamaz, aksine hiperventilasyon gelişir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, kompanse metabolik asidoz için Winter formülüyle hesaplanan PaCO₂ değerinden belirgin sapma gösterirse, ek bir respiratuvar bozukluk varlığı düşünülür?",
    options: [
      "± 1 mmHg",
      "± 2 mmHg",
      "± 5 mmHg",
      "± 10 mmHg",
      "± 15 mmHg"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Winter formülü tolerans aralığı ±2 mmHg kabul edilir → >±5 mmHg sapma ek respiratuvar bozukluk düşündürür.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, yüksek AG metabolik asidoz ile birlikte eşlik eden metabolik alkalozu düşündürür?",
    options: [
      "HCO₃⁻ < 10 mEq/L",
      "Delta AG / Delta HCO₃⁻ > 2",
      "PaCO₂ > 55 mmHg",
      "pH < 7.10",
      "AG < 12"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Bu oran >2 ise, AG artışı ile birlikte HCO₃⁻ beklenenden daha az düşmüş → eşlik eden alkaloz düşünülür.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdaki klinik senaryolardan hangisi, aynı anda yüksek AG ve normal AG metabolik asidoz düşündürür?",
    options: [
      "Sepsis ve ishal birlikteliği",
      "Kusma ve hipokalemi birlikteliği",
      "Laktik asidoz ve respiratuvar alkaloz",
      "RTA ve metabolik alkaloz",
      "Kronik obstrüktif akciğer hastalığı (KOAH)"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Sepsis (laktik asidoz) → yüksek AG, ishal → hiperkloremik asidoz (normal AG) → karışık metabolik asidoz.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdaki asit-baz bozukluk çiftlerinden hangisi, karışık tablo oluşturduğunda pH'ı maskeleyebilir?",
    options: [
      "Metabolik asidoz + metabolik alkaloz",
      "Respiratuvar alkaloz + metabolik alkaloz",
      "Respiratuvar asidoz + respiratuvar alkaloz",
      "Metabolik asidoz + respiratuvar alkaloz",
      "Metabolik asidoz + respiratuvar asidoz"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Zıt yönlü metabolik bozukluklar (asidoz + alkaloz), pH'yı normal sınırda tutabilir → tablo maske olabilir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Albumin düzeyi 2.0 g/dL olan hastada AG hesaplanırken hangi düzeltme yapılmalıdır?",
    options: [
      "AG'ye 2 eklenir",
      "AG'den 2 çıkarılır",
      "AG'ye 2.5 eklenir",
      "AG'ye 4–6 eklenir",
      "AG'ye 0.25 × (4.0 - serum albümin) eklenir"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Her 1 g/dL düşük albumin için AG'ye yaklaşık 2.5–3 mEq/L eklenir → formül: AG + 0.25 × (4.0 - albumin).",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, 'hidrojen iyon konsantrasyonu arttığında' tamponlama için ilk devreye giren sistemdir?",
    options: [
      "Renal HCO₃⁻ tamponu",
      "Hemoglobin tampon sistemi",
      "Protein tampon sistemi",
      "Fosfat tampon sistemi",
      "Solunum kompansasyonu"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Hemoglobin, hücre içi ve dolaşımda bulunan en güçlü tamponlardan biridir → H⁺'u hızla bağlar.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, alkalozun anestezi altında önemli bir komplikasyonudur?",
    options: [
      "Solunum aktivasyonu",
      "Serebral vazodilatasyon",
      "Kas gevşetici ajanların etkisinin kısalması",
      "Serebral vazokonstriksiyon ve nöbet eşiğinin düşmesi",
      "Oksijen taşıma kapasitesinin artması"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Alkaloz, serebral vazokonstriksiyon yapar → nöbet eşiği düşer, bilinç değişiklikleri gelişebilir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Anyon gap nasıl hesaplanır?",
    options: [
      "Na⁺ + K⁺ – (Cl⁻ + HCO₃⁻)",
      "Na⁺ – (Cl⁻ + HCO₃⁻)",
      "K⁺ – (Na⁺ + Cl⁻)",
      "Cl⁻ – (Na⁺ + HCO₃⁻)",
      "Na⁺ + HCO₃⁻ – Cl⁻"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Anyon gap = Na⁺ – (Cl⁻ + HCO₃⁻); normal değer 8–12 mEq/L'dir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Tampon sistemleri içinde en güçlü olanı hangisidir?",
    options: [
      "Hemoglobin",
      "Bikarbonat",
      "Fosfat",
      "Plazma proteinleri",
      "Glutatyon"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Bikarbonat sistemi, asit-baz regülasyonunda en hızlı ve etkili tampon sistemidir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi metabolik asidoz durumunda böbreğin yanıtıdır?",
    options: [
      "HCO₃⁻ sekresyonu",
      "H⁺ retansiyonu",
      "H⁺ sekresyonu ve NH₄⁺ atılımı",
      "Na⁺ atılımı",
      "Su retansiyonu"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Asidozda böbrekler H⁺'ı atar, HCO₃⁻'u geri emer ve NH₄⁺ oluşturur.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Winter formülü ne için kullanılır?",
    options: [
      "Plazma ozmolalitesi hesaplama",
      "Anyon gap hesaplama",
      "Metabolik asidozda PaCO₂ beklenen değerini hesaplama",
      "Klor düzeyini değerlendirme",
      "Arteriyel oksijen satürasyonu değerlendirme"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Winter formülü: Beklenen PaCO₂ = (1.5 x HCO₃⁻) + 8 ± 2; metabolik asidozda kompansasyon yeterli mi değerlendirilir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Metabolik alkaloz durumunda aşağıdakilerden hangisi genellikle eşlik eder?",
    options: [
      "Hipokalemi",
      "Hipokalsemi",
      "Hipernatremi",
      "Hipermagnezemi",
      "Hiperkalemi"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Alkalozda K⁺ hücre içine girer → serumda hipokalemi olur.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdaki durumlardan hangisi bikarbonat tedavisinin mutlak endikasyonu sayılır?",
    options: [
      "DKA'da hafif asidoz (pH > 7.20)",
      "Metabolik alkaloz",
      "Laktik asidoz",
      "Şokta metabolik asidoz",
      "pH < 7.10 olan refrakter asidoz"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Bikarbonat, pH <7.10 olan şiddetli, yaşamı tehdit eden asidozda kullanılabilir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Bikarbonat tampon sistemi hangi enzimle çalışır?",
    options: [
      "Aldolaz",
      "Karbonik anhidraz",
      "Amilaz",
      "Fosfokinaz",
      "Sükzinat dehidrogenaz"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Karbonik anhidraz; H₂CO₃ ↔ H₂O + CO₂ dönüşümünü katalizler.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Metabolik asidozda PaCO₂ düşüşü Winter formülüne göre beklenenden fazla ise aşağıdakilerden hangisi eşlik ediyordur?",
    options: [
      "Respiratuvar alkaloz",
      "Respiratuvar asidoz",
      "Metabolik alkaloz",
      "Hipoksemi",
      "Hiperkloremi"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Beklenenden daha düşük CO₂ varsa ek olarak respiratuvar alkaloz eşlik ediyordur.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi bikarbonat tampon sistemi tarafından tamponlanamaz?",
    options: [
      "Laktik asit",
      "Ketoasit",
      "HCl",
      "CO₂ kaynaklı asit",
      "Sülfat"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "CO₂ asidi doğrudan tampon sistemin parçası olduğu için kendi kendini tamponlayamaz.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Delta-delta (ΔΔ) yöntemi hangi amaçla kullanılır?",
    options: [
      "pH ölçümünde",
      "Solunum kompansasyonunu değerlendirmede",
      "Kombine metabolik bozuklukları değerlendirmede",
      "Serum osmolalitesini hesaplamada",
      "Na⁺ dengesini belirlemede"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "ΔAG / ΔHCO₃⁻ oranı ile eşlik eden başka bir metabolik bozukluk olup olmadığı değerlendirilir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Normal anyon gapli metabolik asidozda hangi iyonun artışı dikkat çeker?",
    options: [
      "Na⁺",
      "K⁺",
      "Cl⁻",
      "HCO₃⁻",
      "Mg²⁺"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Bikarbonat kaybı Cl⁻ ile telafi edilir → hiperkloremik asidoz gelişir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi ketoasidozun laboratuvar bulgusudur?",
    options: [
      "Yüksek HCO₃⁻",
      "Düşük PaCO₂",
      "Aniyon gap artışı",
      "pH artışı",
      "Serum ketonlarının azalması"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Ketoasidozda ketonlar → AG artışı + metabolik asidoz oluşur.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdaki durumların hangisinde PaCO₂ düzeyi artmaz?",
    options: [
      "Hipoventilasyon",
      "Solunum depresyonu",
      "Kronik obstrüktif akciğer hastalığı",
      "Metabolik alkalozun kompansasyonu",
      "Sepsisle birlikte hiperventilasyon"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Sepsiste hiperventilasyon olur → PaCO₂ düşer.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Klorid düzeyinin normalden yüksek olduğu metabolik asidoz en çok hangi durumla ilişkilidir?",
    options: [
      "Laktik asidoz",
      "DKA",
      "Renal tübüler asidoz",
      "Sepsis",
      "Aspirin zehirlenmesi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "RTA'da HCO₃⁻ kaybı Cl⁻ artışı ile telafi edilir → hiperkloremik asidoz oluşur.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi tampon sisteminin zayıf halkasıdır?",
    options: [
      "Hemoglobin",
      "Bikarbonat",
      "Protein",
      "Fosfat",
      "Glukoz"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Glukoz bir tampon sistem bileşeni değildir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Metabolik alkaloz sırasında aşağıdaki iyonlardan hangisi artar?",
    options: [
      "H⁺",
      "K⁺",
      "Cl⁻",
      "HCO₃⁻",
      "Fosfat"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Metabolik alkalozda bikarbonat artar ve pH yükselir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Sepsis sırasında aşağıdaki asit-baz bozukluklarından hangisi en olasıdır?",
    options: [
      "Metabolik alkaloz",
      "Respiratuvar alkaloz",
      "Laktik asidoz → metabolik asidoz",
      "Hipokapni",
      "Hiperkloremik asidoz"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Sepsiste doku hipoksisi → anaerobik metabolizma → laktik asit üretimi → yüksek AG'li metabolik asidoz.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Normal anyon gapli metabolik asidozun en sık nedeni hangisidir?",
    options: [
      "DKA",
      "Laktik asidoz",
      "RTA",
      "Metanol zehirlenmesi",
      "Salisilat zehirlenmesi"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "RTA'da bikarbonat kaybı Cl⁻ artışı ile kompanse edilir → AG değişmez.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Salisilat zehirlenmesi ile gelişen asit-baz bozukluğu nedir?",
    options: [
      "Sadece metabolik asidoz",
      "Sadece respiratuvar alkaloz",
      "Kombine: respiratuvar alkaloz + metabolik asidoz",
      "Sadece metabolik alkaloz",
      "Respiratuvar asidoz"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Salisilatlar önce medullayı uyarır → respiratuvar alkaloz, sonra metabolik asidoz gelişir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Böbrekler, metabolik asidozda hangi değişikliği yaparak kompansasyon sağlar?",
    options: [
      "HCO₃⁻ sekresyonu",
      "NH₄⁺ atılımı ve HCO₃⁻ reabsorbsiyonu",
      "H⁺ emilimi",
      "K⁺ atılımı",
      "Su retansiyonu"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "H⁺ atılır, HCO₃⁻ tutulur, NH₄⁺ üretimi artar.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Asidoz ortamında albumine bağlı kalsiyum azalır ve iyonize kalsiyum artar. Bunun kliniğe yansıması nedir?",
    options: [
      "Tetani",
      "Kas güçsüzlüğü",
      "Hipotansiyon",
      "Pozitif inotropi",
      "Hiporefleksi"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "İyonize kalsiyum artışı → kas kontraktilitesi artar → pozitif inotrop etki oluşur.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi yüksek anyon gapli metabolik asidoz nedenidir?",
    options: [
      "Furosemid kullanımı",
      "İshal",
      "Laktik asidoz",
      "RTA",
      "Hipoaldosteronizm"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Laktat, keton, toksik asitler → AG artışı yapar.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Anksiyete nöbeti sonrası baş dönmesi, parestezi gelişen bir hastada en olası bulgu hangisidir?",
    options: [
      "Hipokalemi",
      "Respiratuvar alkaloz",
      "Hiponatremi",
      "Metabolik alkaloz",
      "Metabolik asidoz"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Anksiyete → hiperventilasyon → CO₂ azalır → pH artar → respiratuvar alkaloz.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi asit-baz dengesinin temel düzenleyicisidir?",
    options: [
      "Akciğerler",
      "Böbrekler",
      "Karaciğer",
      "A ve B",
      "Hepsi"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Akciğerler (CO2 atılımı) ve böbrekler (HCO3- düzenlemesi) asit-baz dengedenin primer düzenleyicileridir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Anyon açıklı metabolik asidozun en sık nedeni nedir?",
    options: [
      "Diyare",
      "Renal tübüler asidoz",
      "Laktik asidoz",
      "Asetazolamid kullanımı",
      "Üreteroenterik anastomoz"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Laktik asidoz (tip A/B), ketoasidoz, toksinler (metanol) anyon açıklı metabolik asidozun başlıca nedenleridir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi normal anyon açıklı metabolik asidoz nedenidir?",
    options: [
      "Metanol zehirlenmesi",
      "Diyare",
      "Üremi",
      "Etilen glikol zehirlenmesi",
      "Alkolik ketoasidoz"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Diyare (HCO3- kaybı) ve renal tübüler asidoz (RTA) normal AG'li metabolik asidoz yapar.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Metabolik asidozda beklenen respiratuar kompansasyon nedir?",
    options: [
      "PaCO2 = 1.5 × HCO3- + 8 (±2)",
      "PaCO2 = HCO3- + 15",
      "PaCO2 = 40 - (24 - HCO3-)",
      "PaCO2 = HCO3- × 0.7",
      "Kompansasyon olmaz"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Winter formülü: Beklenen PaCO2 = (1.5 × HCO3-) + 8 (±2); eğer ölçülen PaCO2 beklenenden yüksekse eşlik eden respiratuar asidoz vardır.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "'Klorid duyarlı' metabolik alkaloz hangi durumda görülür?",
    options: [
      "Primer hiperaldosteronizm",
      "Cushing sendromu",
      "Aşırı kusma",
      "Bartter sendromu",
      "Hiperkortizolizm"
    ],
    correctAnswerIndex: 2,
    difficulty: 2,
    explanation: "Klorid duyarlı alkaloz (örn. kusma, nazogastrik aspirasyon) NaCl infüzyonu ile düzelir; duyarsız alkaloz (hiperaldosteronizm) düzelmez.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Akut respiratuvar asidozda beklenen renal kompansasyon ne zaman başlar?",
    options: [
      "6-12 saat sonra",
      "24-48 saat sonra",
      "Hemen",
      "5-7 gün sonra",
      "Kompansasyon olmaz"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Respiratuvar asidozda renal kompansasyon (HCO3- retansiyonu) 24-48 saat sonra başlar, maksimum 3-5 günde olur.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Respiratuvar alkalozda beklenen metabolik kompansasyon nedir?",
    options: [
      "HCO3- 2-4 mEq/L düşer",
      "HCO3- 4-5 mEq/L düşer",
      "HCO3- 5-7 mEq/L düşer",
      "HCO3- değişmez",
      "HCO3- yükselir"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Akut respiratuvar alkalozda HCO3- 2-4 mEq/L, kronikte 4-5 mEq/L düşer.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Karışık asit-baz bozukluğu hangi durumda kesin tanımlanır?",
    options: [
      "pH normal, PaCO2 ve HCO3- anormal",
      "Kompansasyon kurallarına uymayan değerler",
      "Anyon açığının yüksek olması",
      "Hiperkloremik asidoz varlığı",
      "Hiçbiri"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Kompansasyon beklenen aralıkta değilse karışık bozukluk vardır (örn. metabolik asidoz + respiratuvar alkaloz).",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Kronik böbrek yetmezliğinde asit-baz bozukluğu nedir?",
    options: [
      "Anyon açıklı metabolik asidoz",
      "Normal anyon açıklı metabolik asidoz",
      "Respiratuvar asidoz",
      "Metabolik alkaloz",
      "Hiçbiri"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Üremide anyon açıklı metabolik asidoz (fosfat, sülfat birikimi) ve hiperkloremik asidoz görülür.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Asit-baz bozukluğunda 'üreminik asidoz' hangi mekanizmayla oluşur?",
    options: [
      "Proksimal tubülden HCO3- kaybı",
      "NH4+ atılımının azalması",
      "Laktat birikimi",
      "Ketoasit üretimi",
      "Hiçbiri"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Üremide böbreklerin NH4+ (asit) atılımı azalır ve anyon açığı artar.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Ringer laktat solüsyonu hangi asit-baz bozukluğuna yol açabilir?",
    options: [
      "Metabolik asidoz",
      "Metabolik alkaloz",
      "Respiratuvar asidoz",
      "Respiratuvar alkaloz",
      "Hiçbiri"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Ringer laktat (HCO3- prekürsörü içerir) karaciğerde metabolize olarak hafif alkaloz yapabilir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "'Triple bozukluk' hangi durumda görülür?",
    options: [
      "Metabolik asidoz + respiratuvar asidoz + metabolik alkaloz",
      "Respiratuvar asidoz + respiratuvar alkaloz + metabolik asidoz",
      "Anyon açıklı + normal anyon açıklı metabolik asidoz + respiratuvar alkaloz",
      "Hiperkloremik asidoz + laktik asidoz + üremik asidoz",
      "Hiçbiri"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Triple bozukluk: Örn. sepsis (metabolik asidoz) + KOAH (respiratuvar asidoz) + kusma (metabolik alkaloz).",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi 'tuz tutucu' metabolik alkaloz nedenidir?",
    options: [
      "Loop diüretikleri",
      "Primer hiperaldosteronizm",
      "Aşırı kusma",
      "Bartter sendromu",
      "Hiçbiri"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Hiperaldosteronizm ve Cushing sendromu gibi mineralokortikoid fazlalığında 'tuz tutucu' alkaloz olur (klorid duyarsız).",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Proksimal RTA (Tip 2) hangi özelliği gösterir?",
    options: [
      "İdrar pH >5.5",
      "Hipokalemi",
      "Hipoürisemi",
      "Hiperkalsiüri",
      "Hepsi"
    ],
    correctAnswerIndex: 4,
    difficulty: 2,
    explanation: "Proksimal RTA'da HCO3- geri emilimi bozulur, idrar pH >5.5, hipokalemi ve Fanconi sendromu (glukoz/fosfat/ürik asit kaybı) görülür.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Distal RTA (Tip 1) hangi komplikasyonla ilişkilidir?",
    options: [
      "Nefrokalsinozis",
      "Hipositratüri",
      "Kemik hastalığı",
      "Hepsi",
      "Hiçbiri"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Distal RTA'da kronik asidoz, hiperkalsiüri ve nefrokalsinozis riski vardır.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Kronik respiratuvar asidozda beklenen metabolik kompansasyon nedir?",
    options: [
      "HCO3- 1 mEq/L artar",
      "HCO3- 3-4 mEq/L artar",
      "HCO3- 1 mEq/L düşer",
      "HCO3- 4-5 mEq/L düşer",
      "Değişmez"
    ],
    correctAnswerIndex: 1,
    difficulty: 2,
    explanation: "Kronik respiratuvar asidozda HCO3- her 10 mmHg PaCO2 artışı için 3-4 mEq/L yükselir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "'Posthiperkapnik alkaloz' hangi durumda görülür?",
    options: [
      "KOAH'lı hastada mekanik ventilasyon",
      "DKA tedavisi",
      "Aşırı diüretik kullanımı",
      "Hiperaldosteronizm",
      "Hiçbiri"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Kronik hiperkapnisi olan hastada hızlı PaCO2 düşürülürse, yüksek HCO3- seviyesi metabolik alkaloz yapar.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi 'laktik asidoz' nedenidir?",
    options: [
      "Sepsis",
      "Hipoperfüzyon",
      "Metformin toksisitesi",
      "Hepsi",
      "Hiçbiri"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Tip A (hipoksi/şok) ve Tip B (metformin, malignite) laktik asidoz nedenleridir.",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "'Hipoproteinemi' hangi asit-baz bozukluğuna yol açar?",
    options: [
      "Anyon açıklı metabolik asidoz",
      "Normal anyon açıklı metabolik asidoz",
      "Respiratuvar asidoz",
      "Psödo-metabolik alkaloz",
      "Hiçbiri"
    ],
    correctAnswerIndex: 3,
    difficulty: 2,
    explanation: "Albumin (negatif yüklü) azalınca anyon açığı düşer ve 'psödo-alkaloz' görülür (gerçekte asidoz olabilir).",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Asit-baz bozukluğunda 'idrar anyon açığı' hangi durumda hesaplanır?",
    options: [
      "Normal anyon açıklı metabolik asidoz",
      "Anyon açıklı metabolik asidoz",
      "Metabolik alkaloz",
      "Respiratuvar asidoz",
      "Hiçbiri"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "İdrar anyon açığı (Na+ + K+ - Cl-), renal HCO3- üretimini değerlendirir (negatif değer renal asidozu ekarte ettirir).",
    category: "Asit-Baz Yönetimi",
  ),

  Question(
    question: "Aşağıdakilerden hangisi, metabolik asidozda potasyum dengesini en iyi açıklar?",
    options: [
      "H⁺ hücre içine girerken K⁺ dışarı çıkar",
      "K⁺ hücre içine girerken H⁺ dışarı çıkar",
      "Her ikisi de hücre içinde kalır",
      "Her ikisi de hücre dışında kalır",
      "Potasyum dengesi değişmez"
    ],
    correctAnswerIndex: 0,
    difficulty: 2,
    explanation: "Metabolik asidozda H⁺ hücre içine girerken K⁺ dışarı çıkar → hiperkalemi gelişir.",
    category: "Asit-Baz Yönetimi",
  ),
];
