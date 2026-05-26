import 'package:flutter/material.dart';

class NoncardiovascularMonitoringItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NoncardiovascularMonitoringItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NoncardiovascularMonitoringCategory {
  final String categoryName;
  final List<NoncardiovascularMonitoringItem> items;

  NoncardiovascularMonitoringCategory({
    required this.categoryName,
    required this.items,
  });
}

class NoncardiovascularMonitoringData {
  static List<NoncardiovascularMonitoringCategory>
  getNoncardiovascularMonitoringData(BuildContext context) {
    return [
      NoncardiovascularMonitoringCategory(
        categoryName: 'Solunum Gaz Değişim Monitörleri',
        items: [
          NoncardiovascularMonitoringItem(
            title: "STETOSKOP (PREKORDİYAL VE ÖZOFAGEAL)",
            description: "Gelişmiş gaz monitörlerinin bulunmadığı durumlarda solunum seslerini ve kalp ritmini sürekli dinlemek için kullanılan temel yöntemdir.",
            subtitle: "Kontrendikasyon: Özofagus darlığı ve varis varlığı",
            additionalInfo: "Prekordiyal stetoskopi, göğüs duvarı veya suprasternal çentik üzerine yerleştirilerek uygulanır. Özofageal stetoskopi ise (8-24F) balonlu bir kateterin yemek borusuna yerleştirilmesiyle kalbe ve akciğerlere en yakın noktadan dinleme sağlar. Özellikle çocuk hastalarda entübasyon ve ventilasyon takibi için değerlidir.",
          ),
          NoncardiovascularMonitoringItem(
            title: "PULSE OKSİMETRE",
            description: "Her anestezi uygulamasında zorunlu olan, kandaki oksijen satürasyonunu (SpO2) ve nabzı noninvaziv olarak ölçen cihazdır.",
            subtitle: "Lambert-Beer Kanunu prensibiyle çalışır",
            additionalInfo: "Işık kaynağı ve sensör aracılığıyla 660 nm (deoksihemoglobin) ve 940 nm (oksihemoglobin) dalga boylarındaki ışık emilimini ölçer. Karbonmonoksit zehirlenmesi (COHb), methemoglobinemi, metilen mavisi kullanımı ve düşük perfüzyon durumları ölçümü yanıltabilir. SpO2'nin %90 ölçülmesi yaklaşık 60-65 mmHg'lik bir PaO2 değerine karşılık gelir.",
          ),
          NoncardiovascularMonitoringItem(
            title: "KAPNOGRAFİ (ETCO2)",
            description: "Exhale edilen havadaki karbondioksit miktarını izleyerek ventilasyonun yeterliliği ve metabolik durum hakkında anlık bilgi veren altın standarttır.",
            subtitle: "Kızılötesi (IR) ışık absorpsiyonu tekniği kullanılır",
            additionalInfo: "Genel anestezi altındaki her hastada endotrakeal yerleşimin doğrulanması için şarttır. Kapnografide görülen ani ETCO2 artışı Malign Hipertermi'nin ilk belirtisi olabilir. Normalde arteriyel CO2 ile ETCO2 arasındaki fark (PaCO2-ETCO2) yaklaşık 2-5 mmHg'dir; bu farkın açılması ölü boşluk ventilasyonunun arttığını gösterir.",
          ),
          NoncardiovascularMonitoringItem(
            title: "ANESTEZİK GAZ ANALİZLERİ",
            description: "İlham ve taze gaz hattındaki oksijen, azot protoksit ve volatil ajanların konsantrasyonlarını belirleyen gelişmiş ölçüm teknolojileridir.",
            subtitle: "Oksijen ve azot IR ışınlarını absorbe etmez; özel sensörler gerektirir",
            additionalInfo: "Analiz yöntemleri şunlardır:\n• Kızılötesi spektrofotometri: En yaygın yöntemdir; ajanları birbirinden ayırt edebilir.\n• Piezoelektrik osilasyon: Akustik prensiple çalışır ancak ajan ayırımı yapamaz.\n• Galvanik hücre: Oksijeni kimyasal olarak tüketerek ölçer; ömrü sınırlıdır.\n• Paramanyetik analiz: Oksijenin manyetik özelliğini kullanır ve hızlı yanıt verir.",
          ),
          NoncardiovascularMonitoringItem(
            title: "SPİROMETRİ",
            description: "Solunum devresi üzerindeki akım, hacim ve basınç değişikliklerini takip ederek akciğer kompliyansını ve havayolu direncini değerlendirir.",
            additionalInfo: "Basınç-volüm halkaları sayesinde akım kısıtlanması, aşırı gerilme veya sekresyon birikimi gibi durumlar görsel olarak saptanabilir. PEEP optimizasyonu ve atelektazi takibinde klinisyene rehberlik eder.",
          ),
        ],
      ),
      NoncardiovascularMonitoringCategory(
        categoryName: 'Nörolojik Monitörler',
        items: [
          NoncardiovascularMonitoringItem(
            title: "ELEKTROENSEFALOGRAFİ (EEG) VE BİS",
            description: "Beynin elektriksel aktivitesini izleyerek anestezi derinliğini değerlendirmek ve farkındalığı (awareness) önlemek amacıyla kullanılır.",
            subtitle: "BİS (Bispectral Index): 40-60 aralığı ideal genel anestezi derinliğini gösterer",
            additionalInfo: "EEG dalga tipleri frekanslarına göre sınıflandırılır:\n• Alfa (8-13 Hz): Sakin istirahat halidir.\n• Beta (13-30 Hz): Aktif düşünme veya hafif anestezi.\n• Delta (0,5-4 Hz): Derin uyku veya derin anestezi.\n• Teta (4-7 Hz): Uyku hali.\nBİS değeri 100 (tam uyanık) ile 0 (izoelektrik EEG) arasında değişir. Ayrıca Entropi modülü (SE ve RE) hem beyin hem kas aktivitesini izler.",
          ),
          NoncardiovascularMonitoringItem(
            title: "UYARILMIŞ POTANSİYELLER (EP)",
            description: "Sinir yollarına verilen uyaranların merkezi sinir sistemindeki yanıtlarını ölçerek nöroşirürji ve omurga cerrahilerinde felç riskini azaltan monitorizasyondur.",
            subtitle: "SEP duyuyu (korteks), MEP motor iletiyi (kas) izler",
            additionalInfo: "İmplante cihaz (kalp pili), metal kafatası defekti veya ağır beyin hasarı olanlarda MEP kontrendikedir. Anestezik ajanlar (özellikle inhalasyon ajanları) EP dalgalarının genliğini (amplitüd) azaltıp gecikmesini (latens) artırarak izlemeyi zorlaştırabilir. Nöromüsküler blokerlerin (NMB) SEP üzerine etkisi yoktur ancak MEP ölçümü için kas gevşemesi geri dönmelidir.",
          ),
          NoncardiovascularMonitoringItem(
            title: "SEREBRAL OKSİMETRİ (NIRS)",
            description: "Kızılötesine yakın ışık teknolojisiyle beynin frontal bölgesindeki bölgesel oksijen satürasyonunu (rSO2) sürekli ve noninvaziv olarak izler.",
            subtitle: "%40'ın altındaki değerler veya bazalden %25 değişim risklidir",
            additionalInfo: "Pulsatil akıma sahip olmadığı için düşük kalp debisi veya hipotermi durumlarında dahi bilgi verebilir. Normal değerler genellikle %60-70 aralığındadır. Kalp cerrahisi ve karotis cerrahisi gibi beyin perfüzyonunun risk altında olduğu işlemlerde serebral iskemi tespiti için hayati önem taşır.",
          ),
        ],
      ),
      NoncardiovascularMonitoringCategory(
        categoryName: 'Diğer Monitörler',
        items: [
          NoncardiovascularMonitoringItem(
            title: "VÜCUT ISISI MONİTORİZASYONU",
            description: "Genel anestezi altında ısı düzenleme mekanizmaları baskılandığı için oluşabilecek hipotermi veya malign hiperterminin tespiti için zorunludur.",
            subtitle: "Core (çekirdek) ısı takibi altın standarttır",
            additionalInfo: "Isı kaybı üç fazda gerçekleşir: I- Yeniden dağılım (santralden periferiye), II- Net ısı kaybı, III- Termal denge. Ölçüm noktaları arasında özofagus, nazofarenks, timpani ve idrar mesanesi çekirdek ısıyı en doğru yansıtan bölgelerdir. Perioperatif hipotermi enfeksiyon riskini artırır ve pıhtılaşmayı bozar.",
          ),
          NoncardiovascularMonitoringItem(
            title: "İDRAR DEBİSİ (OLİGÜRİ TAKİBİ)",
            description: "Hayati organ perfüzyonu ve sıvı dengesinin en objektif göstergelerinden biridir.",
            subtitle: "0,5 mL/kg/saat altındaki değerler oligüri olarak kabul edilir",
            additionalInfo: "Foley kateter aracılığıyla takip edilir. Oligüri; yetersiz sıvı alımı, böbrek yetmezliği veya aşırı ADH salınımı nedeniyle gelişebilir. Özellikle uzun süreli ameliyatlarda, majör cerrahilerde ve kalp-damar cerrahisinde böbrek fonksiyonlarının korunması için temel izlem yöntemidir.",
          ),
          NoncardiovascularMonitoringItem(
            title: "PERİFERİK SİNİR STİMÜLASYONU (TOF)",
            description: "Nöromüsküler blokerlerin etkisini ölçmek, entübasyon zamanını belirlemek ve hastanın anesteziden güvenli uyanmasını (ekstübasyon) sağlamak için kullanılır.",
            subtitle: "TOF (Train-of-Four) oranı 0,9'un üzerinde olması tam derlenme için hedeflenir",
            additionalInfo: "Genellikle ulnar sinir üzerinden adduktor pollicis kasının tepkisi ölçülür. TOF testinde 2 saniye içinde 4 uyarı verilir; nondepolarizan blokta bu yanıtlar giderek zayıflar. 4 yanıttan yalnızca birinin alınması kas gevşemesinin %90 oranında devam ettiğini gösterir. Orbikularis oculi kası kas gevşemesine daha dirençlidir ve iyileşmeyi diyaframa benzer şekilde daha erken gösterir.",
          ),
        ],
      ),
    ];
  }
}
