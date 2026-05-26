import 'package:flutter/material.dart';

class CardiovascularMonitoringItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiovascularMonitoringItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiovascularMonitoringCategory {
  final String categoryName;
  final List<CardiovascularMonitoringItem> items;

  CardiovascularMonitoringCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiovascularMonitoringData {
  static List<CardiovascularMonitoringCategory> getCardiovascularMonitoringData(
    BuildContext context,
  ) {
    return [
      CardiovascularMonitoringCategory(
        categoryName: 'Arteriyel Kan Basıncı (ABP)',
        items: [
          CardiovascularMonitoringItem(
            title: "NABIZ BASINCI (NB)",
            description: "Sistolik ve diyastolik basınç arasındaki farktır; vuru hacmi ve arteriyel kompliyans hakkında bilgi verir.",
            additionalInfo: "Normal bir yetişkinde nabız basıncı, kalbin her atışta pompaladığı kan miktarını (SV) ve damar yatağının bu hacme karşı esnekliğini yansıtır. Sistolik - Diyastolik formülü ile hesaplanır.",
          ),
          CardiovascularMonitoringItem(
            title: "ORTALAMA ARTER BASINCI (OAB)",
            description: "Doku perfüzyonunu belirleyen en kritik basınç değeridir; kalp siklusunun çoğunun diyastolde geçmesi nedeniyle diyastolik basınca daha yakındır.",
            additionalInfo: "Hesaplama formülü: [(Sistolik – Diyastolik) / 3] + Diyastolik şeklindedir. Organların kanlanması için genellikle 65 mmHg ve üzerindeki değerlerin korunması hedeflenir.",
          ),
          CardiovascularMonitoringItem(
            title: "PERİFERİK BASINÇ DEĞİŞİMLERİ",
            description: "Kan akımı merkezden periferiye doğru ilerledikçe sistolik basınç yükselirken dalga şekli daha dik ve dar bir hal alır.",
            additionalInfo: "Arteriyel dalgaların yansıması nedeniyle el bileğinde ölçülen sistolik basınç, aorttaki basınçtan daha yüksek çıkabilir. Ancak ortalama arter basıncı vücudun her yerinde hemen hemen aynıdır. Hipotermi ve KPB sonrası periferik vazokonstriksiyon nedeniyle periferik basınç yanıltıcı olabilir.",
          ),
          CardiovascularMonitoringItem(
            title: "NONİNVAZİF MONİTORİZASYON (NIBP)",
            description: "Anestezi alan her hastada uygulanması zorunlu olan, manşon aracılığıyla yapılan basınç ölçüm yöntemidir.",
            additionalInfo: "İdeal manşon boyutu kol çevresinin %40'ı, uzunluğu ise ekstremitenin %80'i kadar olmalıdır. Küçük manşon basıncı yüksek, büyük manşon ise düşük gösterir. Ölçüm yöntemleri:\n• Oskültasyon: Korotkoff seslerine dayanır (Faz I: Sistolik, Faz V: Diyastolik).\n• Osilometri: Günümüz cihazlarının standart yöntemidir; ortalama basıncı en doğru ölçer.\n• Doppler ve Palpasyon: Genellikle yalnızca sistolik basıncı saptayabilir.",
          ),
          CardiovascularMonitoringItem(
            title: "İNVAZİF MONİTORİZASYON (IBP)",
            description: "Arteriyel kateterizasyon yoluyla kan basıncının her kalp vurusunda gerçek zamanlı ve sürekli izlenmesini sağlayan yöntemdir.",
            additionalInfo: "Sık kan gazı takibi gereken veya hemodinamik olarak instabil cerrahilerde altın standarttır. En sık a. radialis tercih edilir; sırasıyla brakial, femoral ve ulnar arterler de kullanılabilir. Transduser (algılayıcı) seviyesi sağ atriyum hizasındaki orta aksiller hatta (Phlebostatic Axis) sıfırlanmalıdır. Beyin cerrahisinde sıfırlama noktası dış kulak yolu seviyesidir.",
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Elektrokardiyografi (EKG)',
        items: [
          CardiovascularMonitoringItem(
            title: "İNTRAOPERATİF EKG STANDARDI",
            description: "Anestezi altındaki tüm hastalarda kalp hızı, ritmi ve iskemi belirtilerini izlemek amacıyla EKG takibi yasal bir zorunluluktur.",
            additionalInfo: "EKG; miyokardiyal iskemi, iletim kusurları, elektrolit bozuklukları ve ilaç etkilerinin saptanmasında hayati rol oynar. Ameliyathane ortamında genellikle 3 veya 5 derivasyonlu sistemler tercih edilir.",
          ),
          CardiovascularMonitoringItem(
            title: "DALGA VE KOMPLEKSLER",
            description: "EKG dalgaları kalbin elektriksel uyarılması ve dinlenme fazlarını temsil eden spesifik bölümlerden oluşur.",
            additionalInfo: "• P dalgası: Atriyumların depolarizasyonunu (sistol başlangıcı).\n• QRS kompleksi: Ventriküllerin depolarizasyonunu (ventrikül sistolü).\n• T dalgası: Ventriküllerin repolarizasyonunu (dinlenme fazı) temsil eder.\nST segmenti ise miyokard iskemisinin takibinde en kritik bölgedir.",
          ),
          CardiovascularMonitoringItem(
            title: "KRİTİK DERİVASYONLAR VE İSKEMİ",
            description: "İskemi takibinde DII derivasyonu aritmileri ve inferior duvarı, V5 derivasyonu ise anterior ve lateral duvarı en iyi gösteren noktalardır.",
            additionalInfo: "Miyokard iskemisi tanısı için ST segmentinin J noktasından 80 ms sonra ≥1 mm depresyon göstermesi veya T dalgasının ters dönmesi anlamlı kabul edilir. İskeminin %80'den fazlası DII ve V5 derivasyonlarının eş zamanlı izlenmesiyle yakalanabilir.",
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Santral Venöz Kateter (CVK)',
        items: [
          CardiovascularMonitoringItem(
            title: "CVK ENDİKASYONLARI",
            description: "CVP basıncının izlenmesi, büyük hacimli sıvı verilmesi, tahriş edici ilaçların (kemoterapi, inotrop) uygulanması ve TPN desteği için kullanılır.",
            additionalInfo: "Ayrıca hava embolisi riski olan beyin cerrahilerinde aspirasyon amacıyla ve periferik damar yolu açılamayan hastalarda hayati bir erişim yolu sağlar. Akut böbrek yetmezliğinde diyaliz girişi için de tercih edilir.",
          ),
          CardiovascularMonitoringItem(
            title: "KATETER YERLEŞİMİ VE TERCİHİ",
            description: "Kısa süreli erişimler için sağ internal juguler ven (IJV), uzun süreli beslenme ve kemoterapi için subklaviyen ven öncelikli tercihtir.",
            additionalInfo: "Sağ IJV, sağ atriyuma en direkt yolu sunduğu için en sık kullanılan bölgedir. Subklaviyen ven kateterizasyonu enfeksiyon açısından daha güvenlidir ancak pnömotoraks riski daha yüksektir. Kateter ucu, v. cava superior ile sağ atriyum birleşim yerinde olmalıdır.",
          ),
          CardiovascularMonitoringItem(
            title: "CVK KOMPLİKASYONLARI",
            description: "Girişim sırasında pnömotoraks, malpozisyon ve aritmi; uzun dönemde ise enfeksiyon ve tromboz en sık görülen risklerdir.",
            additionalInfo: "Nadir fakat ölümcül komplikasyonlar arasında kardiyak perforasyon ve tamponad yer alır. Hava embolisi riskini önlemek için işlem mutlaka Trendelenburg pozisyonunda yapılmalıdır. Enfeksiyon kontrolü için yerleştirme sırasında tam steril bariyer önlemleri şarttır.",
          ),
          CardiovascularMonitoringItem(
            title: "CVP DALGA FORMLARI",
            description: "Santral venöz basınç trasesi, kalp siklusundaki basınç değişikliklerini yansıtan beş temel dalgadan (a, c, x, v, y) oluşur.",
            additionalInfo: "• a dalgası: Atriyum sistolünü (P dalgasından sonra).\n• c dalgası: Triküspit kapağın ventrikül sistolünde atriyuma doğru kabarmasını.\n• x inişi: Atriyumun gevşemesini.\n• v dalgası: Atriumun pasif doluşunu.\n• y inişi: Triküspit kapak açılıp ventrikülün dolmasını temsil eder.\nAtriyal fibrilasyonda 'a' dalgası kaybolurken, triküspit yetmezliğinde dev 'v' dalgaları görülür.",
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Pulmoner Arter Kateteri (Swan-Ganz)',
        items: [
          CardiovascularMonitoringItem(
            title: "SWAN-GANZ ÖLÇÜM PRENSİPLERİ",
            description: "Kalp debisi (CO), pulmoner arter basınçları ve 'kamalanma' (PCWP) basıncının ölçülmesini sağlayan ileri monitorizasyon tekniğidir.",
            additionalInfo: "Kateter, sağ atriyum ve ventrikülü geçerek pulmoner artere yerleştirilir. Balon şişirildiğinde (PCWP ölçümü) sol atriyumun basıncı dolaylı olarak ölçülmüş olur. İdeal ölçüm için kateter West Zon III bölgesinde konumlanmalıdır. PEEP değerinin 10 cmH₂O üzerinde olması PAOB ölçümlerini yanıltıcı şekilde yükseltir.",
          ),
          CardiovascularMonitoringItem(
            title: "PA KATETER KOMPLİKASYONLARI",
            description: "CVP komplikasyonlarına ek olarak en tehlikeli riski pulmoner arter rüptürü ve kapak hasarıdır.",
            additionalInfo: "Sürekli Swan-Ganz takibi, düğümlenme, pulmoner enfarktüs ve sağ dal bloku gibi ek riskleri beraberinde getirir. PA rüptürü gelişirse ciddi masif hemoptizi görülür ve acil müdahale gerektirir.",
          ),
          CardiovascularMonitoringItem(
            title: "PAOB (KAMALAMA) DEĞERLENDİRMESİ",
            description: "Pulmoner Arter Oklüzyon Basıncı (PAOB), sol ventrikülün önyükü (preload) ve sol kalp fonksiyonları hakkında bilgi verir.",
            additionalInfo: "Düşük PAOB seviyeleri genellikle hipovolemiyi, yüksek seviyeler ise kalp yetmezliği veya aşırı volümü gösterir. PAOB ve CO verileri birleştirilerek hastanın inotropik desteğe mi yoksa sıvıya mı ihtiyacı olduğu kararlaştırılır.",
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Kalp Debisi ve İleri Monitorizasyon',
        items: [
          CardiovascularMonitoringItem(
            title: "TERMODİLÜSYON YÖNTEMİ",
            description: "Sağ atriyuma verilen soğuk sıvının pulmoner arterdeki termistör tarafından algılanan sıcaklık değişimi üzerinden kalp debisinin hesaplanmasıdır.",
            additionalInfo: "Modern Swan-Ganz kateterleri bu tekniği kullanır. Sıcaklık-zaman eğrisinin altındaki alan kalp debisi (CO) ile ters orantılıdır. Triküspit yetmezliğinde veya intrakardiyak şantlarda sonuçlar yanıltıcı olabilir.",
          ),
          CardiovascularMonitoringItem(
            title: "TRANSPULMONER TERMODİLÜSYON (PiCCO)",
            description: "Pulmoner arter kateteri gerektirmeden, santral ven ve geniş arter (femoral vb.) işbirliği ile genişletilmiş hemodinamik veriler sunan sistemdir.",
            additionalInfo: "Kalp debisine ek olarak global diyastolik hacim ve ekstravasküler akciğer suyu gibi akciğer ödemini erkenden gösteren kritik parametreleri ölçebilir. Daha az invaziftir fakat sık kalibrasyon gerektirir.",
          ),
          CardiovascularMonitoringItem(
            title: "NABIZ KONTUR ANALİZİ VE DOPPLER",
            description: "Arteriyel dalga şeklinin analiz edilmesiyle kalp debisi, atım hacmi değişkenliği (SVV) ve nabız basıncı değişkenliği (PPV) sağlayan cihazlardır.",
            additionalInfo: "SVV ve PPV, hastanın sıvıya yanıt verip vermeyeceğini gösteren en güvenilir dinamik parametrelerdir. Özofageal Doppler yöntemi ise inen aorta içine yerleştirilen bir prob yardımıyla kan akım hızını ölçer ve CO'yu yaklaşık %70 doğrulukla tahmin eder.",
          ),
          CardiovascularMonitoringItem(
            title: "FICK PRENSİBİ VE DİĞER YÖNTEMLER",
            description: "Oksijen tüketimi ve arter-ven kanı oksijen farkı kullanılarak kalp debisinin matematiksel olarak hesaplanmasıdır.",
            additionalInfo: "Formül: CO = VO₂ / (CaO₂ – CvO₂). Bu yöntem miks venöz oksijen satürasyonu (SvO₂ %75) takibi ile organ perfüzyonunun yeterliliğini değerlendirmede kullanılır. Ayrıca boya dilüsyonu (Indosiyanin yeşili) ve torasik biyoempedans gibi teknikler de mevcuttur.",
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Ekokardiyografi (EKO)',
        items: [
          CardiovascularMonitoringItem(
            title: "TTE VE TEE FARKLARI",
            description: "Transtorasik (TTE) tamamen risksiz ve noninvaziv iken, Transözofageal (TEE) çok daha net görüntüler sunar ancak invazivdir.",
            additionalInfo: "TTE'de görüntü penceresi göğüs kafesi, KOAH veya obezite nedeniyle kısıtlı olabilir. TEE ise yemek borusu üzerinden kalbe ulaştığı için engel olmaksızın en net kapak ve ventrikül görüntülerini sağlar. TEE komplikasyonları arasında en ciddileri ösofagus rüptürü ve mediastinittir.",
          ),
          CardiovascularMonitoringItem(
            title: "TEE İLE PRELOAD DEĞERLENDİRMESİ",
            description: "Halka sistemi veya Swan-Ganz'a kıyasla sol ventrikül doluluk düzeyini (preload) en doğru gösteren yöntem ekokartografidir.",
            additionalInfo: "İntraoperatif dönemde ventriküllerin kontraktilitesi, kapak fonksiyonları, bölgesel duvar hareket bozuklukları ve hacim durumu anlık olarak 'doğrudan gözle' takip edilebilir. Özellikle majör kalp cerrahilerinde vazgeçilmez bir monitorizasyon aracıdır.",
          ),
        ],
      ),
    ];
  }
}
