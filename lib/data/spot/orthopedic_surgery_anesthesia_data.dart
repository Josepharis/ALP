import 'package:flutter/material.dart';

class OrthopedicSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OrthopedicSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OrthopedicSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<OrthopedicSurgeryAnesthesiaItem> items;

  OrthopedicSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class OrthopedicSurgeryAnesthesiaData {
  static List<OrthopedicSurgeryAnesthesiaCategory>
      getOrthopedicSurgeryAnesthesiaData(BuildContext context) {
    return [
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Kemik Çimento (PMMA)',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: "POLİMETİLMETAKRİLAT (PMMA) VE İNTRAMEDÜLLER BASINÇ",
            description: "Kemik çimentosu (PMMA) uygulaması sırasında intramedüller basınç 500 mmHg'nin üzerine çıkabilir.",
            additionalInfo: "Bu yüksek basınç, medüller içeriklerin sistemik dolaşıma kaçışına zemin hazırlar.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "KEMİK ÇİMENTO KAYNAKLI EMBOLİ RİSKLERİ",
            description: "Çimento uygulamasıyla birlikte yağ, kemik iliği, hava ve çimento partikülleri venöz dolaşıma geçerek emboli riski oluşturur.",
            subtitle: "Sistemik emilim sonucunda belirgin vazodilatasyon ve tromboplastin salınımı izlenir",
            additionalInfo: "Embolik yük, sağ kalp üzerinde ciddi stres ve pulmoner hipertansiyona yol açar.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "KEMİK ÇİMENTO İMPLANTASYON SENDROMU (KÇİS)",
            description: "KÇİS; ani hipoksi, hipotansiyon, aritmiler, pulmoner hipertansiyon ve kalp debisinde düşüş ile karakterize ölümcül bir tablodur.",
            subtitle: "Bu tabloya en sık kalça artroplastisi (TKA) operasyonları sırasında rastlanır",
            additionalInfo: "Sementin polimerizasyonu sırasında açığa çıkan ısı da doku hasarına katkıda bulunabilir.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "KÇİS'TEN KORUNMA VE OPERATİF MANEVRALAR",
            description: "KÇİS riskini azaltmak için uygulama öncesi FiO2 artırılmalı, normovolemi sağlanmalı ve femur şaftı iyice temizlenmelidir.",
            subtitle: "Distal femurun havalandırılması (venting) intramedüller basıncı düşürmek için hayati öneme sahiptir",
            additionalInfo: "Yüksek riskli hastalarda mümkünse çimentosuz komponentlerin tercihi düşünülmelidir.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "PROTEZ UYGULAMALARINDA UZUN DÖNEM KOMPLİKASYONLAR",
            description: "Kalça ve diz cerrahisi sonrası geç dönemde en sık karşılaşılan mekanik sorun protezin gevşemesidir.",
            additionalInfo: "Gevşeme, ağrı ve revizyon cerrahisi ihtiyacına yol açar.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "ÇİMENTOLU PROTEZ İÇİN İDEAL HASTA GRUBU",
            description: "Genellikle yaşlı, osteoporotik kemik yapısına sahip ve fiziksel aktivitesi düşük olan hastalar çimentoluğu protez için en uygun gruptur.",
            additionalInfo: "Çimento, zayıf kemik dokusuna protezin daha iyi tutunmasını sağlar.",
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Turnike Kullanımı',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: "TURNİKE BASINÇ AYARLARI (SBP +100 MMHG)",
            description: "Üst ve alt ekstremite cerrahilerinde kanamayı durdurmak için turnike basıncı, sistolik kan basıncının (SBP) en az 100 mmHg üzerine ayarlanmalıdır.",
            additionalInfo: "Yetersiz basınç venöz dolgunluğa ve cerrahi alanın daha fazla kanamasına neden olabilir.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "TURNİKE SÜRESİ VE DOKU HASARI (>2 SAAT)",
            description: "Turnike süresinin 2 saati aşması durumunda kas disfonksiyonu, geri dönüşsüz sinir hasarı ve rabdomiyoliz riski belirgin şekilde artar.",
            additionalInfo: "2 saatten sonra mutlaka periyodik olarak turnike indirilip doku reperfüzyonu sağlanmalıdır.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "ESMARCH BANDI UYGULAMASI VE HEMODİNAMİK ETKİLER",
            description: "Ekstremitenin kanını boşaltmak için sarılan Esmarch bandı, özellikle bilateral uygulamada CVP ve sistemik kan basıncında ani artışlara yol açar.",
            additionalInfo: "Kalp rezervi kısıtlı hastalarda bu ön yük (preload) artışı kalp yetmezliğini tetikleyebilir.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "TURNİKE AĞRISI VE SEMPATİK AKTİVASYON",
            description: "Genel veya bölgesel anestezi altında bile turnike süresi uzadığında hipertansiyon ve taşikardi ile seyreden sempatik aktivasyon (turnike ağrısı) görülür.",
            additionalInfo: "Bu ağrı genellikle A-delta ve C liflerinin kronik kompresyonu ile ilişkilidir.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "TURNİKE AÇILMASI VE REPERFÜZYON ETKİLERİ",
            description: "Turnikenin indirilmesiyle hipertansiyon son bulur; ancak biriken laktat ve potasyumun dolaşıma katılması aritmilere ve ventilasyon ihtiyacı artışına neden olur.",
            subtitle: "Turnike açılmasını takiben gelişebilecek masif pulmoner emboli (PE) riski akılda tutulmalıdır",
            additionalInfo: "Ani ETCO2 düşüşü ve hipotansiyon PE belirtisi olabilir.",
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Yağ Embolizmi Sendromu',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: "YAĞ EMBOLİZMİ MORTALİTE ORANLARI (%10-20)",
            description: "Ciddi bir ortopedik komplikasyon olan yağ embolizmi sendromu, %10 ile %20 arasında değişen yüksek mortalite oranlarına sahiptir.",
            additionalInfo: "Erken tanı ve destek tedavisi yaşam kurtarıcıdır.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "YAĞ EMBOLİZMİ ZAMANLAMASI VE KIRIK TİPLERİ",
            description: "Özellikle uzun kemik ve pelvis kırıklarını takip eden ilk 72 saat içinde klinik bulgu vermeye başlar.",
            additionalInfo: "Bilateral femur kırıkları en yüksek riskli gruptur.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "YAĞ EMBOLİZMİ TANISAL TRİADI (DİSPNE-KONFÜZYON-PETEŞİ)",
            description: "Hastalık tipik olarak dispne (solunum sıkıntısı), mental konfüzyon ve ciltte peteşiyal döküntülerden oluşan triad ile tanınır.",
            additionalInfo: "Triadın tam olarak görülmesi tanıyı kesinleştirir ancak her hastada tüm bulgular olmayabilir.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "YAĞ EMBOLİSİ PATOFİZYOLOJİSİ VE ARDS",
            description: "Dolaşıma katılan yağ partikülleri ve yükselen serbest yağ asitleri akciğer dokusunda inflamasyon yaparak ARDS tablosuna yol açar.",
            additionalInfo: "Serbest yağ asitleri pnömositler üzerinde doğrudan toksik etki yapar.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "PETEŞİLERİN TİPİK LOKALİZASYONLARI",
            description: "Döküntüler en sık göğüs duvarı, üst ekstremite, aksilla ve konjonktiva üzerinde izlenir.",
            additionalInfo: "Peteşiler genellikle 48-72 saat içinde soluklaşarak kaybolur.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "YAĞ EMBOLİZMİNDE LABORATUVAR BULGULARI",
            description: "Peteşilerin eşlik ettiği tabloda belirgin trombositopeni ve tüketim koagülopatisi laboratuvara yansır.",
            additionalInfo: "Hipofibrinojenemi de tanıya eşlik edebilir.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "İNTRAOPERATİF YAĞ EMBOLİSİ BELİRTİLERİ",
            description: "Anestezi sırasında ani gelişen ETCO2 düşüşü, pulmoner arter basıncı (PAP) artışı ve EKG'de ST değişiklikleri yağ embolisini düşündürmelidir.",
            additionalInfo: "Sağ kalp yetmezliği bulguları (sağ aks sapması vb.) izlenebilir.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "YAĞ EMBOLİZMİ TEDAVİSİ VE STABİLİZASYON",
            description: "Tedavide en önemli adım kırığın erken cerrahi stabilizasyonu, yüksek akımlı oksijen/CPAP desteği ve gerekirse vazodilatörlerin kullanılmasıdır.",
            additionalInfo: "Spesifik bir antidotu yoktur, destek tedavisi esastır.",
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'DVT / Tromboembolizm',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: "TROMBOEMBOLİZM RİSK FAKTÖRLERİ VE SÜRELER",
            description: "60 yaş üstü, 30 dakikadan uzun süren cerrahi, alt ekstremite kırığı ve 4 günden uzun süren immobilizasyon ana risk faktörleridir.",
            additionalInfo: "Obeseite ve aktif kanser varlığı riski daha da katlar.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "ORTOPEDİK CERRAHİDE DVT VE PE İNSİDANSLARI",
            description: "Kalça ve diz cerrahisinde profilaksi uygulanmazsa DVT %40-80, PE %20 ve ölümcül PE riski %1-3 arasındadır.",
            additionalInfo: "Bu yüksek oranlar ortopedi hastalarında agresif profilaksiyi zorunlu kılar.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "TROMBOEMBOLİ PROFİLAKSİSİ (MEKANİK VE MEDİKAL)",
            description: "Tüm hastalarda mekanik profilaksi uygulanmalı; kanama riski düşükse düşük doz antikoagülanlarla medikal destek sağlanmalıdır.",
            subtitle: "Kanama riski yüksek olan hastalarda sadece mekanik yöntemler (varis çorabı, kompresyon) tercih edilmelidir",
            additionalInfo: "Profilaksi süresi cerrahi tipine göre haftalarca sürebilir.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "RA TEKNİKLERİN TROMBOEMBOLİ ÜZERİNDEKİ ROLÜ",
            description: "Rejyonal anestezi teknikleri (spinal/epidural), venöz akımı artırarak ve inflamasyonu azaltarak tromboembolik komplikasyon riskini düşürür.",
            subtitle: "Ancak antikoagülan alanlarda nöraksiyel blok uygulama zamanlaması hematom riski nedeniyle kritiktir",
            additionalInfo: "LMWH (Düşük molekül ağırlıklı heparin) sonrası 12-24 saatlik bekleme sürelerine uyulmalıdır.",
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Kalça Kırığı',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: "KALÇA KIRIĞINDA PREOPERATİF KLİNİK DURUM",
            description: "Hastalar genellikle ileri yaşta olup dehidratasyon, gizli kan kaybı ve komorbiditelere bağlı kronik hipoksi tablosundadırlar.",
            additionalInfo: "Kırık sonrası ilk 24-48 saat içinde cerrahi müdahale yapılması sağkalımı artırır.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "KALÇA KIRIĞINDA ANESTEZİ SEÇİMİ VE RA ÜSTÜNLÜĞÜ",
            description: "Rejyonal anestezi (spinal/epidural), kısa vadeli sonuçlar ve tromboemboli önleme açısından genel anesteziye üstün görünmektedir.",
            subtitle: "Hastaya pozisyon verirken izobarik veya hipobarik lokal anestetik tercihleri yapılabilir",
            additionalInfo: "Yeterli analjezi sağlanmadan hastaya blok pozisyonu verilmemelidir.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "KALÇA KIRIĞINDA MONİTÖRİZASYON İHTİYACI",
            description: "Büyük kan kayıpları beklendiği için geniş IV yol erişimi ve yakın hemodinamik takip zorunludur.",
            additionalInfo: "Hastaların kardiyak rezervleri stabilizasyon açısından kısıtlı olabilir.",
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Total Kalça Artroplastisi (TKA)',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: "TKA ENDİKASYONLARI VE ETYOLOJİ",
            description: "Osteoartrit (OA), Romatoid Artrit (RA) ve avasküler nekroz (AVN) TKA için en sık cerrahi nedenlerdir.",
            additionalInfo: "Cerrahi, hastanın mobilite ve yaşam kalitesini artırmayı hedefler.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "RA (ROMATOİD ARTRİT) HASTALARINDA HAVAYOLU RİSKLERİ",
            description: "Vertebra ve temporomandibuler eklem tutulumu nedeniyle zor entübasyon ve hava yolu obstrüksiyonu riski yüksektir.",
            subtitle: "Atlantoaksiyal instabilite mevcudiyetinde baş-boyun hareketleri kısıtlanmalı ve in-line stabilizasyon sağlanmalıdır",
            additionalInfo: "Romatizmal ilaç kullananlarda mide kanaması ve trombosit disfonksiyonu da göz önünde bulundurulmalıdır.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "TKA SIRASINDA GELİŞEBİLECEK KOMPLİKASYONLAR",
            description: "Kemik çimento sendromu (KÇİS), masif kanama ve venöz tromboembolizm (VTE) operasyonun en büyük riskleridir.",
            subtitle: "Gerektiğinde invaziv arteriyel monitörizasyon uygulanmalıdır",
            additionalInfo: "Hücre kurtarıcı (cell saver) sistemler büyük kanamalı vakalarda yararlıdır.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "REVİZYON CERRAHİSİ VE BİLATERAL UYGULAMALAR",
            description: "Revizyonlarda rejyonal teknikler daha az kanama sağlarken; bilateral vakalarda ilk cerrahide instabilite varsa diğeri ertelenmelidir.",
            additionalInfo: "Bilateral cerrahi emboli ve inflamatuar yükü iki katına çıkarır.",
          ),
        ],
      ),
      OrthopedicSurgeryAnesthesiaCategory(
        categoryName: 'Diğer Ortopedik Girişimler',
        items: [
          OrthopedicSurgeryAnesthesiaItem(
            title: "KALÇA ÇIKIĞI REDÜKSİYONU VE KAS GEVŞEMESİ",
            description: "Ani ve şiddetli kas spazmını çözmek için kısa süreli genel anestezi ve Süksinilkolin desteği gerekebilir.",
            additionalInfo: "Redüksiyon sonrası analjezi ihtiyacı genellikle dramatik şekilde azalır.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "DİZ ARTROSKOPİSİ VE HASTA PROFİLİ",
            description: "Genellikle genç ve sporcu populasyona uygulanmakla birlikte yaşlılarda da tanısal amaçla yapılabilir.",
            subtitle: "Cerrahi alanın netliği için turnike uygulaması standarttır",
            additionalInfo: "Kısa süreli bir cerrahi olmasına rağmen postoperatif ağrı belirgin olabilir.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "DİZ ARTROSKOPİSİNDE ANESTEZİ VE TABURCULUK",
            description: "Genel anestezi ile rejyonal teknikler arasında belirgin üstünlük yoktur; ancak günübirlik cerrahide RA taburculuğu geciktirebilir.",
            additionalInfo: "Motor blok çözülmeden hastaların ayağa kalkmasına izin verilmez.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "ARTROSKOPİ SONRASI POSTOPERATİF ANALJEZİ",
            description: "İntraartiküler lokal anestetik enjeksiyonu kısa süreli konfor sağlarken; NSAİİ ve sinir blokları (femoral vb.) uzun vadeli çözümdür.",
            additionalInfo: "Opioid dozları yan etkileri engellemek için minimumda tutulmalıdır.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "TOTAL DİZ REPLASMANI (TKR) VE KOMORBİDİTELER",
            description: "TKR geçiren hastalar genellikle ileri yaşta olduğu için TKA ile benzer sistemik riskleri taşırlar.",
            additionalInfo: "Diz cerrahisinde postoperatif erken mobilizasyon DVT'yi önlemek için esastır.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "TKR'DE KAN KAYBI VE KÇİS RİSKİ",
            description: "Turnike kullanımı nedeniyle kan kaybı azaltılır; sistemik embolik olaylar (KÇİS) kalça cerrahisine göre daha nadirdir.",
            additionalInfo: "Turnike açıldığında kanama kontrolü titizlikle yapılmalıdır.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "TKR SONRASI ANALJEZİ VE PERİNÖRAL KATETERLER",
            description: "Epidural analjezi idealdir; ancak femoral perinöral kateterler hem daha az yan etki yapar hem de daha hızlı taburculuk sağlar.",
            additionalInfo: "Blok altındaki hastaların 'düşme riski' için özel hemşirelik takibi gereklidir.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "OMUZ CERRAHİSİNDE ŞEZLONG POZİSYONU VE PERFÜZYON",
            description: "Şezlong (beach-chair) pozisyonu beyin perfüzyonunu azaltabileceği için arter basıncı mutlaka eksternal meatus (kulak yolu) hizasında ölçülmelidir.",
            additionalInfo: "Pozisyon sonrası gelişen senkop veya serebral iskemi riski kritiktir.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "OMUZ CERRAHİSİNDE İNTERSKALEN BLOK",
            description: "Omuz ameliyatlarında altın standart olan interskalen blok; hem cerrahi anestezi hem de postoperatif ağrı kontrolü için mükemmeldir.",
            subtitle: "İntraartiküler Bupivakain kullanımının kıkırdak hasarı (kondroliz) riski taşıdığı unutulmamalıdır",
            additionalInfo: "Frenik sinir paralizisi (diyafram felci) yan etkisi açısından solunumsal rezervi kısıtlı hastalarda dikkatli olunmalıdır.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "DİSTAL ÜST EKSTREMİTEDE IVRA (BİER BLOKU)",
            description: "El ve ön kol cerrahilerinde IVRA uygulanabilir; ancak kullanılan turnike güvenliği hayati önem taşır.",
            additionalInfo: "Turnikenin erken açılması lokal anestetik toksisitesine (LAST) yol açar.",
          ),
          OrthopedicSurgeryAnesthesiaItem(
            title: "BRAKİAL PLEKSUS BLOĞU VE TURNİKE KONTROLÜ",
            description: "Distal cerrahilerde brakial pleksus bloğu tercih edilirken; hastanın turnike ağrısını hissetmemesi için blok seviyesi turnike seviyesini kapsamalıdır.",
            additionalInfo: "Turnike, bloktan önce mi sonra mı şişirileceği cerrahi işleme göre planlanmalıdır.",
          ),
        ],
      ),
    ];
  }
}
