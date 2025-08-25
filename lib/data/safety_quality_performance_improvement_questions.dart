import '../models/question.dart';

final List<Question> safetyQualityPerformanceImprovementQuestions = <Question>[
  Question(
    question:
        "Aşağıdakilerden hangisi, anestezi uygulamalarında hasta güvenliğini artırmaya yönelik en etkili stratejilerden biri olarak kabul edilir?",
    options: [
      "Ameliyat sonrası vizit yapılmaması",
      "Anestezik dozların kişisel deneyime göre belirlenmesi",
      "Cerrahla sözel iletişim yerine yazılı not kullanılması",
      "Cerrahi kontrol listesi (safety checklist) uygulanması",
      "Ameliyat öncesi hasta ile iletişim kurulmadan doğrudan anestezi verilmesi",
    ],
    correctAnswerIndex: 3,
    explanation:
        "WHO Cerrahi Güvenlik Kontrol Listesi, mortalite ve morbiditeyi azaltmada kanıta dayalı etkili bir yaklaşımdır.",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
  Question(
    question:
        "Anesteziyoloji pratiğinde 'hata zincirinin son halkası' kavramı aşağıdakilerden hangisini ifade eder?",
    options: [
      "Medikal kayıt sisteminde eksiklik",
      "Hasta dosyasında yazım hatası",
      "Doğrudan hastaya zarar veren olay",
      "İlaçların benzer kutuda bulunması",
      "Hasta güvenliği ile ilgili eğitim eksikliği",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Hata zincinin son halkası, doğrudan hastaya zarar veren 'sentinel olay'dır. Öncesinde birçok sistemsel eksiklik olabilir.",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
  Question(
    question:
        "Anestezide kullanılan 'time out' uygulamasının temel amacı aşağıdakilerden hangisidir?",
    options: [
      "Anesteziyi başlatma zamanını belirlemek",
      "Ekibin mola süresini ayarlamak",
      "İstatistiksel kalite verisi toplamak",
      "Cerrahi girişim öncesi doğru hasta, doğru taraf ve doğru prosedürün doğrulanması",
      "İlaç stok kontrolü yapmak",
    ],
    correctAnswerIndex: 3,
    explanation:
        "'Time out', cerrah, anestezist ve hemşirenin birlikte doğru hastada, doğru işlem ve doğru yer olduğuna emin oldukları duraksama anıdır.",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
  Question(
    question:
        "Kalite iyileştirme döngüsünde 'PDSA'nın A'sı neyi temsil eder?",
    options: [
      "Adjust",
      "Action",
      "Analyze",
      "Act",
      "Audit",
    ],
    correctAnswerIndex: 3,
    explanation:
        "PDSA döngüsü: Plan – Do – Study – Act → 'Act' aşaması düzeltici önlemleri içerir.",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, performans iyileştirme sürecinde 'hizmet kalitesinin objektif olarak ölçülmesi' için kullanılan bir göstergedir?",
    options: [
      "Hasta memnuniyeti",
      "Şikâyet sayısı",
      "Postoperatif bulantı-kusma oranı",
      "Hasta yaşı",
      "ASA skoru",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Klinik kalite göstergeleri örneği olan PONV oranı, performansın ölçümünde kullanılabilir.",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, kök neden analizi (root cause analysis) uygulamasıyla amaçlanan hedeflerden biridir?",
    options: [
      "Hatalı personele cezai işlem uygulamak",
      "Sorumlu kişileri belirlemek",
      "Sistemsel nedenleri analiz ederek benzer olayları önlemek",
      "Hasta memnuniyetini ölçmek",
      "İlaç dozajlarını karşılaştırmak",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Kök neden analizi, hataya neden olan sistemsel sorunları ortaya çıkarmayı ve önleyici stratejiler geliştirmeyi amaçlar.",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
  Question(
    question:
        "Anestezi güvenliği ile ilgili aşağıdakilerden hangisi doğrudur?",
    options: [
      "Hataların çoğu bireysel dikkatsizlikten kaynaklanır",
      "Otomatik sistemler tüm hataları önler",
      "Hata önleme sistemleri reaktif olmalıdır",
      "Sistem tabanlı yaklaşımlar hataları daha etkili önler",
      "Hatalar sadece komplikasyonla sonuçlandığında önemlidir",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Sistem yaklaşımı, bireyi suçlamadan önce süreci sorgular ve kalıcı iyileştirmelere katkı sağlar.",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, anesteziyolojide sentinel olay (önemli hasta güvenliği ihlali) olarak kabul edilir?",
    options: [
      "Minor postoperatif bulantı",
      "Anestezi sırasında geçici hipotansiyon",
      "Yanlış hastaya anestezi uygulanması",
      "Premedikasyon uygulanmaması",
      "IV yolun geç açılması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sentinel olay, ciddi zarara yol açabilecek olaydır → yanlış hastaya müdahale bu sınıfa girer.",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
  Question(
    question:
        "'Just Culture' (adil kültür) yaklaşımında temel hedef nedir?",
    options: [
      "Hataları cezasız bırakmak",
      "Bireyleri suçlamak",
      "Sistemin güvenliğini geliştirmek",
      "Performansa dayalı maaş vermek",
      "Hataları gizlemek",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Adil kültür yaklaşımı, hataların cezalandırılmadan raporlanmasını ve sistem iyileştirmesini amaçlar.",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
  Question(
    question:
        "Performans ölçümü için aşağıdakilerden hangisi klinik kalite göstergesi olarak kabul edilir?",
    options: [
      "Hasta memnuniyet anketi sonucu",
      "Hemşirelerin dinlenme süresi",
      "Sezaryen oranı",
      "Renkli kod sistemine katılım",
      "Eğitim düzeyi",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Sezaryen oranı, belirli bir uygulamanın klinik çıktılarını ölçer → kalite göstergesi olarak kullanılır.",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
  Question(
    question:
        "WHO Cerrahi Güvenlik Kontrol Listesi üç aşamada uygulanır. Aşağıdakilerden hangisi bu aşamalardan biri değildir?",
    options: [
      "Ameliyat öncesi",
      "'Time-out' aşaması",
      "Ameliyat sonrası",
      "Ayaktan poliklinik viziti",
      "Cerrahi saha işaretleme",
    ],
    correctAnswerIndex: 3,
    explanation:
        "Liste, ameliyat öncesi, 'time-out' (prosedürden hemen önce) ve ameliyat sonrası olmak üzere 3 aşamalıdır.",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
  Question(
    question:
        "SBAR (Situation, Background, Assessment, Recommendation) iletişim modeli en çok hangi alanda kullanılır?",
    options: [
      "Hasta eğitimi",
      "Yoğun bakım taburculuğu",
      "Sağlık çalışanları arası kritik bilgi aktarımı",
      "İlaç reçetesi yazımı",
      "İzin planlaması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "SBAR, sağlık profesyonelleri arasında hızlı, net ve yapılandırılmış bilgi aktarımı için kullanılır.",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
  Question(
    question:
        "Anestezi uygulamalarında 'near-miss' olaylar ile ilgili en doğru ifade aşağıdakilerden hangisidir?",
    options: [
      "Mutlaka zarar ile sonuçlanır",
      "Sadece hasta yakını tarafından fark edilir",
      "Gerçekleşmemiş ama gerçekleşme ihtimali olan hatalardır",
      "Rapor edilmesine gerek yoktur",
      "Sadece yeni başlayan personel tarafından yapılır",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Near-miss, hata oluşmuş ancak zarara yol açmadan önlenmiş olaylardır. Rapor edilmesi sistem güvenliği açısından önemlidir.",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
  Question(
    question:
        "FMEA (Failure Modes and Effects Analysis) ne zaman uygulanır?",
    options: [
      "Hata sonrası",
      "Sadece adli olaylarda",
      "Yeni bir süreç başlamadan önce",
      "Taburculuk sonrası",
      "Olay raporu gönderildikten sonra",
    ],
    correctAnswerIndex: 2,
    explanation:
        "FMEA, olası hataları önceden belirlemek ve önlem almak için süreç başlamadan önce uygulanır (proaktif analiz).",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, anesteziyoloji pratiğinde kalite göstergesi olarak doğrudan kullanılabilir?",
    options: [
      "Cerrahi süre",
      "Anestezi süresi",
      "Hastanın mesleği",
      "ASA sınıfı",
      "Postop ağrı kontrol başarısı",
    ],
    correctAnswerIndex: 4,
    explanation:
        "Postoperatif analjezi başarısı, hasta konforunu ve hizmet kalitesini doğrudan etkiler → kalite göstergesidir.",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
  Question(
    question:
        "Aşağıdakilerden hangisi, WHO hasta güvenliği çözümleri arasında yer almaz?",
    options: [
      "Güvenli ameliyat uygulamaları",
      "Güvenli ilaç uygulama",
      "Güvenli havalandırma sistemi",
      "Sağlık hizmetine ulaşım",
      "El hijyeninin sağlanması",
    ],
    correctAnswerIndex: 2,
    explanation:
        "Hasta güvenliği çözümleri, özellikle el hijyeni, ameliyat güvenliği ve ilaç güvenliği üzerine odaklanır.",
    category: "Güvenlik, Kalite ve Performans İyileştirme",
    difficulty: 2,
  ),
];
