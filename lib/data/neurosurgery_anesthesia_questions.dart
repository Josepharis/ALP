import '../models/question.dart';

final List<Question> neurosurgeryAnesthesiaQuestions = <Question>[
  Question(
    question: "Nörocerrahi sırasında en çok tercih edilen anestezik ajan hangisidir?",
    options: [
      "Ketamin",
      "Propofol",
      "Halotan",
      "Nitröz oksit",
      "Morfin"
    ],
    correctAnswerIndex: 1,
    explanation: "Propofol, hızlı etki başlangıcı, kısa etki süresi ve ICP'yi azaltıcı etkisi nedeniyle tercih edilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),
  
  Question(
    question: "Subaraknoid kanama sonrası vazospazmı önlemek için en uygun tedavi hangisidir?",
    options: [
      "Mannitol",
      "Nimodipin",
      "Ketamin",
      "Dopamin",
      "Fenobarbital"
    ],
    correctAnswerIndex: 1,
    explanation: "Nimodipin, kalsiyum kanal blokeridir ve SAH sonrası gelişen serebral vazospazmı önlemek için kullanılır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi nörocerrahi hastasında propofol kullanımının olumlu etkilerinden biridir?",
    options: [
      "BOS üretimini artırması",
      "Serebral metabolizmayı artırması",
      "CMRO₂'yi azaltması",
      "ICP'yi artırması",
      "EEG aktivitesini artırması"
    ],
    correctAnswerIndex: 2,
    explanation: "Propofol, beyin metabolizmasını ve kan akımını azaltır → ICP düşürülür, beyin relaksasyonu sağlanır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Kraniyotomi sonrası en sık görülen komplikasyon aşağıdakilerden hangisidir?",
    options: [
      "Sepsis",
      "Hidrosefali",
      "Nöbet",
      "Pnömoni",
      "Hiponatremi"
    ],
    correctAnswerIndex: 2,
    explanation: "Postoperatif nöbetler, kraniyotomi sonrası en sık komplikasyonlardan biridir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi intraoperatif nöbet riskini artırabilecek bir uygulamadır?",
    options: [
      "Yeterli anestezi derinliği",
      "Normoventilasyon",
      "Ketamin kullanımı",
      "Midazolam premedikasyonu",
      "Tiyopental kullanımı"
    ],
    correctAnswerIndex: 2,
    explanation: "Ketamin, NMDA reseptör stimülasyonu ile nöbet eşiğini düşürebilir, dikkatli kullanılmalıdır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi kraniotomi sırasında kafa içi basıncı azaltma stratejisi değildir?",
    options: [
      "Baş pozisyonunun nötr ve yukarıda tutulması",
      "İdrar çıkışının sağlanması",
      "Hiperventilasyon",
      "Hiperkapni oluşturulması",
      "Osmotik diürez"
    ],
    correctAnswerIndex: 3,
    explanation: "Hiperkapni, serebral vazodilatasyon yaparak ICP'yi artırır, istenmeyen bir durumdur.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi nörocerrahi sırasında ani bradikardi gelişmesi halinde ilk düşünülmesi gereken durumdur?",
    options: [
      "Hipovolemi",
      "Anestezi derinliği",
      "Cushing refleksi",
      "Hipotermi",
      "İlaç alerjisi"
    ],
    correctAnswerIndex: 2,
    explanation: "ICP artışı, vagal yanıtla bradikardiye neden olur → Cushing triadı bu durumu tanımlar.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Supraklaviküler tümör cerrahisinde havayolu yönetimiyle ilgili en kritik durum hangisidir?",
    options: [
      "Zor entübasyon",
      "Bronkospazm",
      "Laringospazm",
      "Subglottik stenoz",
      "Aspirasyon"
    ],
    correctAnswerIndex: 0,
    explanation: "Servikal veya supraklaviküler kitleler hava yolu anatomisini bozarak zor entübasyona neden olabilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Kraniotomi yapılan hastada ideal pozisyonlama nasıl olmalıdır?",
    options: [
      "Baş aşağı Trendelenburg",
      "Supin pozisyon",
      "Baş 30° elevasyonda",
      "Sol lateral pozisyon",
      "Düz yatış pozisyonu"
    ],
    correctAnswerIndex: 2,
    explanation: "Başın 30° yukarıda tutulması venöz drenajı artırarak ICP'yi düşürmeye yardımcı olur.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi nörocerrahiden sonra erken dönemde en sık görülen komplikasyonlardan biridir?",
    options: [
      "Derin ven trombozu",
      "Aspirasyon pnömonisi",
      "Kanama ve hematom",
      "İdrar retansiyonu",
      "Nöropatik ağrı"
    ],
    correctAnswerIndex: 2,
    explanation: "Cerrahi sonrası hematom, yeniden bası oluşturabilir → erken dönemde dikkat edilmesi gereken ciddi bir komplikasyondur.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Subdural hematom cerrahisinde en sık postoperatif komplikasyon nedir?",
    options: [
      "Pnömoni",
      "Enfeksiyon",
      "Nöbet",
      "Hiponatremi",
      "Konfüzyon"
    ],
    correctAnswerIndex: 2,
    explanation: "Subdural hematom sonrası nöbet riski yüksektir, profilaksi gerekebilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Kraniotomi sonrası nörolojik muayeneyi en hızlı yapabilmek için hangi anestezik tercih edilir?",
    options: [
      "Ketamin",
      "Desfluran",
      "Propofol",
      "İzofluran",
      "Nitröz oksit"
    ],
    correctAnswerIndex: 2,
    explanation: "Propofol, kısa etkili olması nedeniyle hızlı uyanma sağlar ve nörolojik değerlendirmenin erken yapılmasına imkân tanır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi nörocerrahi hastada başın pozisyonu için uygundur?",
    options: [
      "Aşağıya eğik ve öne bükük",
      "Trendelenburg pozisyonu",
      "Hafif yukarıda ve nötr pozisyonda",
      "Sola tam rotasyon",
      "Geriye aşırı ekstansiyon"
    ],
    correctAnswerIndex: 2,
    explanation: "Başın yukarıda ve nötr pozisyonda tutulması, venöz dönüşü kolaylaştırarak ICP'nin azalmasını sağlar.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi subaraknoid kanama sonrası en sık görülen komplikasyonlardan biridir?",
    options: [
      "Serebral vazospazm",
      "Hipotermi",
      "Hipoglisemi",
      "Kraniyal sinir felci",
      "BOS fistülü"
    ],
    correctAnswerIndex: 0,
    explanation: "Subaraknoid kanamadan sonra, genellikle 3–14. günler arasında serebral vazospazm gelişebilir, iskemik komplikasyonlara yol açabilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Anevrizma klipleme operasyonu sırasında geçici arteriyel kliplemeye bağlı iskemiye karşı beyin koruması için aşağıdakilerden hangisi tercih edilir?",
    options: [
      "Ketamin",
      "Hipotermi",
      "Hiperventilasyon",
      "Hiperkapni",
      "Sıvı kısıtlaması"
    ],
    correctAnswerIndex: 1,
    explanation: "Hafif hipotermi, serebral metabolizmayı azaltarak iskemiye karşı koruma sağlar.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Nörocerrahi hastasında mannitol kullanımının istenmeyen etkilerinden biri aşağıdakilerden hangisidir?",
    options: [
      "Hiponatremi",
      "Hipoglisemi",
      "Hiperkalemi",
      "Hacim yüklemesi ve hipervolemi",
      "Bradykardi"
    ],
    correctAnswerIndex: 3,
    explanation: "Mannitol, ozmotik diüretik olmasına rağmen damar içi hacmi başlangıçta artırabilir → hipervolemi ve kalp yüklenmesi riski vardır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Nörocerrahi operasyonlarında pozisyonla ilişkili en sık sinir hasarı hangisinde görülür?",
    options: [
      "Uyluk siniri",
      "Brakiyal pleksus",
      "Fasiyal sinir",
      "Median sinir",
      "Radial sinir"
    ],
    correctAnswerIndex: 1,
    explanation: "Oturur ve supin pozisyonlarda uygun yastıklama yapılmazsa brakiyal pleksus zedelenebilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi nörocerrahiden sonra en çok mortaliteyle ilişkilendirilen komplikasyondur?",
    options: [
      "Derin ven trombozu",
      "Postoperatif kanama",
      "Enfeksiyon",
      "Hipotansiyon",
      "Bulantı-kusma"
    ],
    correctAnswerIndex: 1,
    explanation: "Postop hematom veya beyin içi kanama, kafa içi basıncı artırarak hayati risk oluşturabilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi nörocerrahi operasyonlarında kullanılan en sık beyin koruma stratejilerindendir?",
    options: [
      "Hiperkapni oluşturmak",
      "Ketamin infüzyonu",
      "Normoglisemi sağlamak",
      "Hipervolemi oluşturmak",
      "Nitröz oksit kullanımı"
    ],
    correctAnswerIndex: 2,
    explanation: "Normoglisemi, iskemik hasarı sınırlamak açısından önemlidir. Hiperglisemi, nöronal hasarı artırır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Spinal cerrahilerde beyin omurilik sıvısı kaçağını azaltmak için hangi pozisyon önerilir?",
    options: [
      "Trendelenburg",
      "Oturur pozisyon",
      "Baş yukarı 30°",
      "Baş aşağı pozisyon",
      "Yüzüstü pozisyon"
    ],
    correctAnswerIndex: 2,
    explanation: "BOS kaçağı riskini azaltmak için en uygun pozisyon başın 30° yukarı kaldırıldığı pozisyondur.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi infratentorial cerrahilerde en sık karşılaşılan postoperatif risklerden biridir?",
    options: [
      "Hipotermi",
      "Laringospazm",
      "Hiperventilasyon",
      "Glottik ödem",
      "Solunum yetmezliği"
    ],
    correctAnswerIndex: 4,
    explanation: "Infratentorial cerrahiler, beyin sapına yakınlığı nedeniyle postop solunum depresyonu ve yetmezlik riski taşır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Beyin sapı manipülasyonlarında intraoperatif gelişen ani bradikardi ve hipertansiyonun birlikte görülmesi aşağıdaki durumu düşündürür:",
    options: [
      "Hipovolemi",
      "Cushing yanıtı",
      "Anestezi yetersizliği",
      "Parasempatik blok",
      "Hava embolisi"
    ],
    correctAnswerIndex: 1,
    explanation: "Cushing refleksi, ICP artışına karşılık gelişen sempatik hipertansiyon ve vagal bradikardiyle karakterizedir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi nörocerrahi sırasında hava embolisi riskinin en fazla olduğu durumdur?",
    options: [
      "Spinal tümör eksizyonu",
      "Subdural hematom boşaltılması",
      "Supraklaviküler sinir bloğu",
      "Oturur pozisyonda posterior fossa cerrahisi",
      "Lateral pozisyonda meningioma rezeksiyonu"
    ],
    correctAnswerIndex: 3,
    explanation: "Oturur pozisyon, cerrahi alanın kalp seviyesinden yukarıda olması nedeniyle hava embolisi riskini belirgin artırır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi hava embolisinin intraoperatif en erken göstergelerinden biridir?",
    options: [
      "Bradikardi",
      "Hipotermi",
      "ETCO₂'de ani düşüş",
      "İdrar çıkışında azalma",
      "Pupilla dilatasyonu"
    ],
    correctAnswerIndex: 2,
    explanation: "Hava embolisinde, pulmoner perfüzyon bozulur → ETCO₂ hızla düşer → en erken göstergelerden biridir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Oturur pozisyonda yapılan bir nörocerrahi operasyon sırasında hava embolisinden şüphelenildiğinde ilk yapılması gereken nedir?",
    options: [
      "Cerrahın operasyonu durdurması",
      "Trendelenburg pozisyonu verilmesi",
      "100% O₂ verilmesi ve aspirasyon denenmesi",
      "Hava yolu kapatılması",
      "BIS izlemine geçilmesi"
    ],
    correctAnswerIndex: 2,
    explanation: "100% O₂ verilerek azot ortamdan uzaklaştırılır, santral kateter varsa hava aspirasyonu yapılır. Eşzamanlı cerrahi müdahale gerekebilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi kraniotomi sonrası uyanma sürecinde gelişen ajitasyonun muhtemel nedeni değildir?",
    options: [
      "Hipoksemi",
      "Hiperkapni",
      "Yetersiz analjezi",
      "Yüksek sedasyon düzeyi",
      "Hipertansiyon"
    ],
    correctAnswerIndex: 3,
    explanation: "Yüksek sedasyon, ajitasyon değil, uyuşukluk yapar. Ajitasyon daha çok ağrı, hipoksi veya hiperkapni kaynaklıdır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi infratentorial tümör cerrahisinde özel dikkat gerektiren intraoperatif durumlardan biridir?",
    options: [
      "Spinal iskemi",
      "Hipotermi",
      "Beyin sapı reflekslerinin baskılanması",
      "Kraniyal sinir monitorizasyonu",
      "İntrakranial hematom"
    ],
    correctAnswerIndex: 3,
    explanation: "Infratentorial cerrahiler, kraniyal sinir çekirdeklerine yakındır → motor ve duyusal yolların izlenmesi (nöromonitörizasyon) önemlidir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Posterior fossa cerrahisinde en sık görülen postoperatif komplikasyon hangisidir?",
    options: [
      "Pnömoni",
      "Hidrosefali",
      "Nöbet",
      "Bulantı-kusma",
      "Disfaji"
    ],
    correctAnswerIndex: 3,
    explanation: "Bulantı ve kusma, beyin sapına yakınlık ve vagal uyarı nedeniyle sık görülür.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "İntrakraniyal tümör cerrahisinde sıvı tedavisinde hangisinden kaçınılmalıdır?",
    options: [
      "İzotonik salin",
      "Mannitol",
      "Laktatlı Ringer",
      "Hipertonik salin",
      "Jelatin bazlı kolloid"
    ],
    correctAnswerIndex: 2,
    explanation: "Laktatlı Ringer solüsyonu (ve diğer bazik kristalloidler) içerdiği hipotonik özellik nedeniyle serebral ödemi artırabilir ve beyin dokusunda şişmeye yol açabilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Spinal cerrahilerde kullanılan uyarılmış potansiyel monitörizasyonunun avantajı nedir?",
    options: [
      "Sadece motor fonksiyon takibi",
      "Kısa sürede uygulanabilir olması",
      "Sinir yolu bütünlüğünü canlı izleme",
      "İntrakraniyal basınç izlemi",
      "Otonom fonksiyonların değerlendirilmesi"
    ],
    correctAnswerIndex: 2,
    explanation: "SEP ve MEP gibi uyarılmış potansiyel yöntemleri, spinal kord ve sinir yollarının gerçek zamanlı izlenmesini sağlar.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi nörocerrahiden sonra uyanma sırasında nörolojik durumun izlenmesi için ilk yapılması gereken testlerden biridir?",
    options: [
      "SpO₂ ölçümü",
      "Motor fonksiyon testi",
      "PaCO₂ ölçümü",
      "EEG izleme",
      "BIS izleme"
    ],
    correctAnswerIndex: 1,
    explanation: "Motor fonksiyon testi, beyin sapı ve kortikal işlevlerin iyileşmesini izlemek için ilk adım olarak yapılmalıdır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi kraniyofaringioma cerrahisi sırasında nöroanestezi yönetiminin özel gerekliliklerinden biridir?",
    options: [
      "Postoperatif solunum yetmezliği",
      "Kraniyal sinirlerin korunması",
      "Nöromonitörizasyon gerekliliği",
      "Hiperkapniye izin verilmesi",
      "Laringospazm öncesi ilaç kullanımı"
    ],
    correctAnswerIndex: 1,
    explanation: "Kraniyofaringioma cerrahisi, kraniyal sinirlerin ve hipofiz fonksiyonlarının korunmasına özel dikkat gerektirir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi nöroanestezide en önemli solunum parametrelerinden biridir?",
    options: [
      "PaO₂",
      "PaCO₂",
      "FiO₂",
      "Tidal volüm",
      "Solunum sayısı"
    ],
    correctAnswerIndex: 1,
    explanation: "PaCO₂ düzeyleri, serebral vazokonstriksiyon veya vazodilatasyona yol açabilir, bu da ICP'yi etkiler. Bu nedenle çok önemli bir parametredir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Meningiom cerrahisi sonrası sık görülen komplikasyon hangisidir?",
    options: [
      "Kafa içi kanama",
      "Hipotermi",
      "Aritmi",
      "Hiperkalemi",
      "Bronkospazm"
    ],
    correctAnswerIndex: 0,
    explanation: "Meningiomlar hipervasküler olabilir; cerrahi sonrası kanama riski yüksektir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi nöroanestezide intracranial basıncı azaltmak için en sık kullanılan farmakolojik ajandır?",
    options: [
      "Sevofluran",
      "Nitröz oksit",
      "Mannitol",
      "Desfluran",
      "Propofol"
    ],
    correctAnswerIndex: 2,
    explanation: "Mannitol, osmotik etkisiyle ICP'yi azaltmak için en sık kullanılan ajandır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Kraniyofaringiomada en sık görülen postoperatif komplikasyonlardan biri aşağıdakilerden hangisidir?",
    options: [
      "Hipotansiyon",
      "Nöbetler",
      "Hiperkalemi",
      "Solunum depresyonu",
      "Hiponatremi"
    ],
    correctAnswerIndex: 4,
    explanation: "Kraniyofaringioma cerrahisinde, hiponatremi, su tutulumu ve SIADH (Syndrome of Inappropriate Antidiuretic Hormone Secretion) gibi sıvı dengesizlikleri en sık görülen komplikasyonlardır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdaki serebral vasküler olaylar ile ilgili hangi ifade yanlıştır?",
    options: [
      "Vazospazm, subaraknoid kanama sonrası 3–14 gün arasında görülebilir.",
      "Serebral iskemik hasar, genellikle hipotansiyon ile ilişkilidir.",
      "Vazodilatasyon, hiperkapni ile gelişir.",
      "Serebral hipoksi, beyin fonksiyonlarını doğrudan etkiler.",
      "Hipertermi, serebral kan akımını artırır."
    ],
    correctAnswerIndex: 1,
    explanation: "Serebral iskemik hasar, hipotansiyon yerine genellikle hiperkapni ve hipoksi ile ilişkilidir, hipotansiyon doğrudan vasküler hasar oluşturmaz.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi beyin cerrahisi sırasında baş pozisyonunun neden kritik önem taşır?",
    options: [
      "Venöz dönüşü düzenler",
      "Akciğer fonksiyonlarını etkiler",
      "Solunum yolu tıkanıklığına neden olur",
      "Kan basıncını düşürür",
      "Serebral kan akımını arttırır"
    ],
    correctAnswerIndex: 0,
    explanation: "Baş pozisyonu, venöz dönüşü etkileyerek ICP'yi kontrol etmek için kritik rol oynar. Yüksek pozisyon venöz dönüşü artırabilir, ICP'yi düşürür.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Infratentorial bir tümör rezeksiyonunda anestezi yönetimi açısından aşağıdakilerden hangisi doğrudur?",
    options: [
      "Yüksek doz opioid kullanımı tercih edilir",
      "Nöromusküler blokaj genellikle tercih edilmez",
      "Etomidat ve sevofluran birlikte kullanılır",
      "Hipotermi yaratmak ICP'yi artırır",
      "Spinal anestezi genellikle tercih edilir"
    ],
    correctAnswerIndex: 1,
    explanation: "Nöromusküler blokaj, infratentorial cerrahilerde kullanılarak kas hareketi engellenir, fakat dikkatlice yapılması gerekir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Nöroanestezide postoperatif ağrı kontrolü için en yaygın kullanılan yöntem aşağıdakilerden hangisidir?",
    options: [
      "Spinal anestezi",
      "Epidural analjezi",
      "Lokal anestezikler",
      "IV opioid infüzyonu",
      "Parenteral parasetamol"
    ],
    correctAnswerIndex: 1,
    explanation: "Epidural analjezi, nörocerrahi hastalarında postoperatif ağrı yönetimi için en etkili yöntemlerden biridir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Oturur pozisyonda kraniyotomi yapılan hastada venöz hava embolisi gelişimini izlemek için en hassas monitörizasyon yöntemi nedir?",
    options: [
      "SpO₂",
      "Transözofageal ekokardiyografi (TEE)",
      "EKG",
      "EtCO₂",
      "Arteriyel kan basıncı"
    ],
    correctAnswerIndex: 1,
    explanation: "TEE venöz hava embolisini en erken ve hassas şekilde tespit edebilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi nörocerrahi hastasında spinal anestezi uygulanırken dikkat edilmesi gereken en önemli faktördür?",
    options: [
      "Cerrahiden önce hipervolemi oluşturulması",
      "Yüksek anestezi derinliği",
      "Spinal kanama riski",
      "Solunum desteği sağlanması",
      "Hasta pozisyonunun değiştirilmesi"
    ],
    correctAnswerIndex: 2,
    explanation: "Spinal anestezi, spinal kanama riski taşıyabilir, özellikle travma veya koagülopati durumlarında dikkatli olunmalıdır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Posterior fossa cerrahisi sonrası solunum depresyonu geliştiyse en olası neden nedir?",
    options: [
      "Morfin infüzyonu",
      "Bulbar merkez basısı",
      "Hidrosefali",
      "Hipotermi",
      "Hipovolemi"
    ],
    correctAnswerIndex: 1,
    explanation: "Posterior fossadaki cerrahi işlemler, medulladaki solunum merkezini etkileyebilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Tümör cerrahisi sırasında kullanılan mikroanestezi tekniği ile ilgili aşağıdaki ifadelerden hangisi doğrudur?",
    options: [
      "Mikroanestezi, hastanın tamamen uyanık olmasını sağlar",
      "Beyin fonksiyonlarının izlenmesi için kas gevşetici kullanılmaz",
      "Genellikle epidural anestezi ile birlikte uygulanır",
      "Lokal anestezi ile tümör eksizyonu yapılabilir",
      "Genel anestezi ile mikroanestezi uygulanmaz"
    ],
    correctAnswerIndex: 1,
    explanation: "Mikroanestezi, özellikle nöroşirürjide —örneğin epilepsi cerrahisi ya da motor kortekse yakın tümörlerin eksizyonunda— kullanılan bir tekniktir. Bu teknikte, intraoperatif nöromonitorizasyon büyük önem taşır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Kraniyotomi hastasında intraoperatif hipotansiyon gelişirse ilk yaklaşım ne olmalıdır?",
    options: [
      "TIVA durdurulmalı",
      "Vazopressör başlanmalı",
      "Propofol dozu artırılmalı",
      "Sıvı kısıtlanmalı",
      "Hiperventilasyon artırılmalı"
    ],
    correctAnswerIndex: 1,
    explanation: "MAP'yi koruyarak CPP'nin düşmesini engellemek için hipotansiyonda vazopressör tercih edilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi intraoperatif nöbetlerin en önemli sebeplerinden biridir?",
    options: [
      "Hipoglisemi",
      "Hiperkalemi",
      "Hipotermi",
      "Barbitürat kullanımı",
      "Anestezi derinliğinin aşırı azalması"
    ],
    correctAnswerIndex: 4,
    explanation: "Anestezi derinliğinin aşırı azalması, intraoperatif nöbetlere neden olabilir, özellikle beyin fonksiyonları uyarıldığında.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Nörocerrahi hastalarında postoperatif ağrı yönetiminde epidural analjezi kullanımının avantajları arasında hangisi yer almaz?",
    options: [
      "Daha az opioid ihtiyacı",
      "Daha az solunum depresyonu",
      "Daha hızlı iyileşme",
      "Daha az beyin kan akımı",
      "Daha az komplikasyon"
    ],
    correctAnswerIndex: 3,
    explanation: "Epidural analjezi, ağrı yönetimini etkin şekilde sağlar; ancak beyin kan akımını etkilemez.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Anevrizma rüptürü sırasında en önemli anestezik hedef nedir?",
    options: [
      "Kalp hızını artırmak",
      "Hipotansiyon oluşturmak",
      "Hemodinamik stabiliteyi sağlamak",
      "Hiperventilasyon",
      "Anestezi derinliğini artırmak"
    ],
    correctAnswerIndex: 2,
    explanation: "Rüptür anında ani tansiyon dalgalanmaları mortaliteyi artırır; bu nedenle stabilite temel hedeftir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi nörocerrahi operasyonlarında özel anestezi yönetimi gereksinimlerinden biridir?",
    options: [
      "Sadece inhalasyon anestezi uygulanması",
      "Baş pozisyonunun stabil tutulması",
      "Solunum yolu tıkanıklığına yol açacak durumlardan kaçınılması",
      "Sıvı yüklemesinin azaltılması",
      "Spinal anestezi yerine genel anestezi kullanılması"
    ],
    correctAnswerIndex: 1,
    explanation: "Baş pozisyonunun stabil tutulması, intrakraniyal basıncın kontrol edilmesi ve venöz dönüşün artırılması açısından kritik öneme sahiptir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi beyin cerrahisi sırasında preoperatif nörolojik değerlendirme için en önemli parametredir?",
    options: [
      "Kas gücü ve tonusu",
      "Beyin dalgası izleme",
      "Öğürme refleksi",
      "Kognitif fonksiyonlar",
      "Motor fonksiyonlar"
    ],
    correctAnswerIndex: 4,
    explanation: "Motor fonksiyonlar, beyin fonksiyonlarının izlenmesi açısından çok kritik olup, preoperatif nörolojik değerlendirmede önemli bir yer tutar.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Posterior fossa cerrahisi sırasında en önemli pozisyon komplikasyonu nedir?",
    options: [
      "Brakiyal pleksus hasarı",
      "Venöz hava embolisi",
      "Pnömotoraks",
      "Hipotermi",
      "Bası yarası"
    ],
    correctAnswerIndex: 1,
    explanation: "Oturur pozisyonda yapılan posterior fossa cerrahilerinde venöz hava embolisi riski yüksektir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Nörocerrahi sırasında hemodinamik instabiliteye neden olan en sık metabolik sorun nedir?",
    options: [
      "Hiponatremi",
      "Hiperglisemi",
      "Hipokalemi",
      "Hipokalsemi",
      "Hiperkapni"
    ],
    correctAnswerIndex: 0,
    explanation: "Hiponatremi, SIADH veya beyin cerrahisine bağlı olarak gelişebilir ve ciddi kardiyovasküler etkiler oluşturabilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Kraniotomi sonrası en sık karşılaşılan sıvı-elektrolit dengesizliği hangisidir?",
    options: [
      "Hiperkalemi",
      "Hiponatremi",
      "Hiperkalsemi",
      "Hipofosfatemi",
      "Hipomagnezemi"
    ],
    correctAnswerIndex: 1,
    explanation: "SIADH veya serebral tuz kaybı sendromuna bağlı olarak hiponatremi sık görülür.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Spinal cerrahilerde, omurilik bütünlüğünün takibi için en uygun monitörizasyon hangisidir?",
    options: [
      "EEG",
      "SEP",
      "EMG",
      "TCD",
      "BIS"
    ],
    correctAnswerIndex: 1,
    explanation: "SEP (Somatosensory Evoked Potentials), spinal kord duyu yollarının izlenmesini sağlar.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Anevrizma cerrahisi sırasında transkranial Doppler ile aşağıdakilerden hangisi izlenebilir?",
    options: [
      "CPP",
      "Oksijen saturasyonu",
      "Vazospazm gelişimi",
      "EEG aktivitesi",
      "Metabolik hız"
    ],
    correctAnswerIndex: 2,
    explanation: "Transkranial Doppler, serebral arterlerdeki akım hızlarını değerlendirerek vazospazm tespiti sağlar.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Posterior fossa cerrahisi sonrası görülen solunum depresyonunun nedeni en olası nedir?",
    options: [
      "Propofol kullanımı",
      "Medulla oblongata'ya bası",
      "Epidural hematom",
      "Hiponatremi",
      "Hipotermi"
    ],
    correctAnswerIndex: 1,
    explanation: "Posterior fossadaki işlemlerde beyin sapına yakınlık, medulla oblongata'ya basıya neden olarak solunum depresyonu oluşturabilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Anevrizma klipleme sırasında geçici arteriyel oklüzyon yapılacaksa serebral iskemiye karşı en iyi koruyucu strateji hangisidir?",
    options: [
      "Hipokapni indüksiyonu",
      "Sıvı kısıtlaması",
      "Hafif hipotermi",
      "Ketamin uygulanması",
      "Hipertansiyon oluşturulması"
    ],
    correctAnswerIndex: 2,
    explanation: "Hafif hipotermi serebral metabolik hızı düşürerek iskemiye karşı nöroprotektif etki sağlar.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Kraniotomi sonrası en erken dönemde izlenmesi gereken parametre hangisidir?",
    options: [
      "Vücut ısısı",
      "İdrar çıkışı",
      "Pupilla reaksiyonu",
      "Arteriyel kan gazı",
      "Kreatinin düzeyi"
    ],
    correctAnswerIndex: 2,
    explanation: "Pupilla çapı ve ışık refleksi, olası nörolojik komplikasyonların erken bulgularını verebilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Nörocerrahi hastasında pozisyon sırasında brakiyal pleksus hasarını önlemek için en uygun yaklaşım hangisidir?",
    options: [
      "Kollar tam abdüksiyona alınmalı",
      "Baş yastıksız konumlandırılmalı",
      "Omuzlar yukarı kaldırılmalı",
      "Kollar gövdeye yakın ve destekli pozisyonda olmalı",
      "Ellere turnike uygulanmalı"
    ],
    correctAnswerIndex: 3,
    explanation: "Kolların gövdeye yakın tutulması ve uygun yastıklama brakiyal pleksus hasarını önler.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Spinal tümör cerrahisinde en çok dikkat edilmesi gereken intraoperatif parametre nedir?",
    options: [
      "Vücut ısısı",
      "Arteriyel basınç",
      "Kas gevşekliği",
      "Nöromonitorizasyon sinyalleri",
      "Solunum sayısı"
    ],
    correctAnswerIndex: 3,
    explanation: "SEP/MEP gibi nöromonitorizasyon sinyallerinin stabil olması spinal kord bütünlüğünü gösterir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Subaraknoid kanama sonrası gelişen en sık erken komplikasyon hangisidir?",
    options: [
      "Hidrosefali",
      "Nöbet",
      "Hiperkalemi",
      "Hipotermi",
      "Tromboz"
    ],
    correctAnswerIndex: 1,
    explanation: "SAH sonrası ilk 24 saatte nöbet gelişimi sık görülür; nöbet profilaksisi gerekebilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Anevrizma cerrahisinde post-klipleme dönemde en çok izlenmesi gereken komplikasyon nedir?",
    options: [
      "Vazospazm",
      "Hipotermi",
      "Hipovolemi",
      "Enfeksiyon",
      "Hiperkapni"
    ],
    correctAnswerIndex: 0,
    explanation: "Vazospazm, özellikle 5–10. günlerde serebral iskemiye yol açabilecek ciddi bir komplikasyondur.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Supraklaviküler yerleşimli tümör cerrahisinde en olası postoperatif solunum komplikasyonu hangisidir?",
    options: [
      "Trakeal stenoz",
      "Bronkospazm",
      "Frenik sinir hasarı",
      "Apne",
      "Laringospazm"
    ],
    correctAnswerIndex: 2,
    explanation: "Frenik sinir hasarı diyafram hareketlerini bozarak solunum sıkıntısına neden olabilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Anevrizma cerrahisinde \"geçici klip uygulaması\" sırasında hangi nöroprotektif ajan kullanılır?",
    options: [
      "Tiyopental (3-5 mg/kg)",
      "Morfin",
      "Ketamin",
      "Nitröz oksit",
      "Halotan"
    ],
    correctAnswerIndex: 0,
    explanation: "Beyin metabolik hızını azaltarak iskemi hasarını önler; etomidat veya propofol de kullanılabilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Spinal kord travması olan bir hastada hangi kas gevşetici kontrendikedir?",
    options: [
      "Süksinilkolin",
      "Rokuronyum",
      "Atrakuryum",
      "Sisatrakuryum",
      "Vekuronyum"
    ],
    correctAnswerIndex: 0,
    explanation: "Travmadan 48 saat sonra denervasyon hiperkalemisi riski nedeniyle ölümcül hiperkalemi yapabilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Subaraknoid kanama (SAK) sonrası gelişen serebral vazospazm tedavisinde hangisi kullanılır?",
    options: [
      "Nimodipin (60 mg/4 saat oral)",
      "Propranolol",
      "Nitrogliserin",
      "Hidralazin",
      "Labetalol"
    ],
    correctAnswerIndex: 0,
    explanation: "L tipi kalsiyum kanal blokeri; SAK sonrası 21 gün verilerek vazospazmı önler.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "İntrakranial hipertansiyonda hiperventilasyonun hedef PaCO₂ değeri nedir?",
    options: [
      "30-35 mmHg",
      "20-25 mmHg",
      "35-40 mmHg",
      "40-45 mmHg",
      "25-30 mmHg"
    ],
    correctAnswerIndex: 0,
    explanation: "Aşırı hiperventilasyon (PaCO₂ <25 mmHg) serebral iskemiye yol açabilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Beyin tümörü cerrahisinde \"awake kraniyotomi\" endikasyonu nedir?",
    options: [
      "Eloktif korteks yakınındaki lezyonlar",
      "Posterior fossa tümörleri",
      "Spinal kord tümörleri",
      "Asemptomatik meningiomlar",
      "Hipofiz adenomları"
    ],
    correctAnswerIndex: 0,
    explanation: "Konuşma/motor fonksiyonların korunması için hasta uyanıkken kortikal haritalama yapılır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Spinal şok tablosunda hangi bulgu görülmez?",
    options: [
      "Hipertansiyon",
      "Arefleksi",
      "Hipotonik sfinkterler",
      "Flasid paralizi",
      "Bradikardi"
    ],
    correctAnswerIndex: 0,
    explanation: "Spinal şokta hipotansiyon ve nörojenik şok görülür; otonom disrefleksi T6 üstü lezyonlarda olur.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Akromegaliye bağlı spinal stenozu olan bir hastada hangi anestezi tekniği risklidir?",
    options: [
      "Spinal anestezi",
      "Genel anestezi",
      "Epidural anestezi",
      "Kombine spinal-epidural",
      "Rejyonal blok"
    ],
    correctAnswerIndex: 0,
    explanation: "Spinal kanal dar olduğu için yüksek blok ve solunum yetmezliği riski vardır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi intrakranial hipertansiyonun radyolojik bulgularından değildir?",
    options: [
      "Sulkusların belirginleşmesi",
      "Ventriküllerin daralması",
      "Bazal sisternaların silinmesi",
      "Beyin ödemi",
      "Midlin şift"
    ],
    correctAnswerIndex: 0,
    explanation: "Sulkusların silinmesi tipiktir; belirginleşme atrofide görülür.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi nöroşirürjide \"stereotaktik cerrahi\"nin avantajıdır?",
    options: [
      "Minimal invaziv ve yüksek doğruluk",
      "Geniş cerrahi alan",
      "Uzun operasyon süresi",
      "Yüksek kanama riski",
      "Postoperatif deliryum"
    ],
    correctAnswerIndex: 0,
    explanation: "Lezyona direkt ulaşım sağlar; awake cerrahi ile kombine edilebilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Kraniyal sinir monitorizasyonu hangi cerrahide kullanılır?",
    options: [
      "Akustik nörinom",
      "Spinal disk hernisi",
      "Kraniyosinostoz",
      "Epidural hematom",
      "Subdural hematom"
    ],
    correctAnswerIndex: 0,
    explanation: "Fasiyal sinir [CN VII] korunması için EMG ile monitorize edilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi intrakranial hipertansiyonun geç bulgusudur?",
    options: [
      "Cushing triadı (HT, bradikardi, düzensiz solunum)",
      "Baş ağrısı",
      "Bulantı-kusma",
      "Papil ödemi",
      "Bilinç değişikliği"
    ],
    correctAnswerIndex: 0,
    explanation: "Herniasyon öncesi terminal bulgudur; erken bulgular baş ağrısı ve bilinç değişikliğidir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi nöroşirürjide \"jet ventilasyon\" endikasyonudur?",
    options: [
      "Laringoskopi sırasında İKB kontrolü",
      "Obezite",
      "Astım",
      "KOAH",
      "Pnömotoraks"
    ],
    correctAnswerIndex: 0,
    explanation: "Yüksek frekanslı jet ventilasyon ile kafa içi basınç dalgalanmaları önlenir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi spinal kord stimülasyonu endikasyonudur?",
    options: [
      "Kronik nöropatik ağrı",
      "Akut postoperatif ağrı",
      "Malign hipertermi",
      "İntrakranial hipertansiyon",
      "Status epileptikus"
    ],
    correctAnswerIndex: 0,
    explanation: "CRPS, failed back sendromu gibi durumlarda kullanılır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi nöroşirürjide \"awake extübasyon\" gerektirir?",
    options: [
      "Posterior fossa cerrahisi",
      "Spinal diskektomi",
      "Kraniyal meningiom",
      "Epidural hematom",
      "Ventriküloperitoneal şant"
    ],
    correctAnswerIndex: 0,
    explanation: "Beyin sapı fonksiyonlarının değerlendirilmesi için hasta uyanık extübe edilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi nöroşirürjide \"mikrovasküler dekompresyon\" endikasyonudur?",
    options: [
      "Trigeminal nevralji",
      "Spinal stenoz",
      "Beyin absesi",
      "Subdural hematom",
      "Hidrosefali"
    ],
    correctAnswerIndex: 0,
    explanation: "Kranial sinir köklerinin vasküler basısının giderilmesi için yapılır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Hangisi nöroanestezide \"alpha-2 agonist\" kullanımının avantajıdır?",
    options: [
      "İKB'yi düşürme ve sedasyon sağlama",
      "Hipertansif kriz riski",
      "Bradikardi yapma",
      "Solunum depresyonu",
      "Postoperatif deliryum"
    ],
    correctAnswerIndex: 0,
    explanation: "Deksmedetomidin serebral vazokonstriksiyon yaparak İKB'yi düşürür; deliryumu önler.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Alzheimer hastalığı olan bir hastada anestezi yönetimi için aşağıdaki faktörlerden hangisi özellikle önemlidir?",
    options: [
      "Anestezi derinliğinin minimumda tutulması",
      "Kas gevşetici kullanımının artması",
      "Sadece lokal anestezi kullanımı",
      "Anestezi ajanlarının kısa etkili olması",
      "Derin sedasyon uygulanması"
    ],
    correctAnswerIndex: 3,
    explanation: "Alzheimer hastalığı, anesteziklerin etkilerini uzatabilir. Kısa etkili ajanlar kullanmak, beyin fonksiyonlarını daha iyi korur.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Parkinson hastalığı olan bir hastada anestezi sırasında en büyük risklerden biri aşağıdakilerden hangisidir?",
    options: [
      "Hiperkapni",
      "Hipertermi",
      "Hipotansiyon",
      "Solunum depresyonu",
      "Kas gevşeticiye yanıtın değişmesi"
    ],
    correctAnswerIndex: 4,
    explanation: "Parkinson hastalığı, kas tonusunda değişiklikler yapabilir ve kas gevşetici ilaçların yanıtını etkileyebilir. Bu, nörolojik hastalıklarda anestezi yönetimi açısından dikkat edilmesi gereken bir durumdur.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Multiple skleroz hastasında anestezi yönetimi sırasında hangi ilaç kullanımı özellikle dikkat gerektirir?",
    options: [
      "Nitröz oksit",
      "Midazolam",
      "Etomidat",
      "Ketamin",
      "Sevofluran"
    ],
    correctAnswerIndex: 3,
    explanation: "Ketamin, multiple skleroz hastalarında, santral sinir sistemi üzerindeki etkileri nedeniyle dikkatle kullanılmalıdır, çünkü excitotoksik etki riski taşır.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Psikiyatrik hastalığı olan bir hastada anestezi yönetiminde aşağıdakilerden hangisi en önemli faktörlerden biri değildir?",
    options: [
      "İlaç etkileşimleri",
      "Anestezi ajanın dozajı",
      "Postoperatif deliryum riski",
      "Nöromüsküler blokajın kullanımı",
      "Spinal anestezi gereksinimi"
    ],
    correctAnswerIndex: 4,
    explanation: "Spinal anestezi, psikiyatrik hastalığı olan hastalarda daha nadiren tercih edilir. İlaç etkileşimleri, postoperatif deliryum gibi faktörler çok daha belirgin etkiler yapabilir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),

  Question(
    question: "Aşağıdakilerden hangisi nörocerrahi hastalarında postoperatif ağrı yönetimi için en uygun yöntemlerden biridir?",
    options: [
      "İnterkostal sinir blokajı",
      "Epidural analjezi",
      "Sadece IV opioid kullanımı",
      "Nonsteroid antiinflamatuar ilaçlar",
      "Subkutan morfin infüzyonu"
    ],
    correctAnswerIndex: 1,
    explanation: "Epidural analjezi, nörocerrahi hastalarda postoperatif ağrı yönetimi için en etkili ve güvenli yöntemlerden biridir.",
    category: "Nörocerrahide Anestezi",
    difficulty: 2,
  ),
];
