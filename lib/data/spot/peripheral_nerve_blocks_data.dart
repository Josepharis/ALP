import 'package:flutter/material.dart';

class PeripheralNerveBlocksItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PeripheralNerveBlocksItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PeripheralNerveBlocksCategory {
  final String categoryName;
  final List<PeripheralNerveBlocksItem> items;

  PeripheralNerveBlocksCategory({
    required this.categoryName,
    required this.items,
  });
}

class PeripheralNerveBlocksData {
  static List<PeripheralNerveBlocksCategory> getPeripheralNerveBlocksData(
      BuildContext context) {
    return [
      PeripheralNerveBlocksCategory(
        categoryName: 'Blok Teknikleri',
        items: [
          PeripheralNerveBlocksItem(
            title: "ALAN BLOĞU (FIELD BLOCK) VE KUTANÖZ SİNİR BLOKAJI",
            description: "Cerrahi sahanın etrafına lokal anestezik enjeksiyonu yapılarak kutanöz sinirlerin terminal dallarının bloke edilmesidir.",
            additionalInfo: "İnterkostobrakial ve safen sinir blokajları alan bloğuna tipik örneklerdir.",
          ),
          PeripheralNerveBlocksItem(
            title: "PARESTEZİ YÖNTEMİ VE MODERN BLOKAJDAKİ YERİ",
            description: "İğne ucuyla doğrudan sinire dokunup hastada elektrik çarpması hissi uyandırmaya dayanan, günümüzde terk edilmiş bir yöntemdir.",
            additionalInfo: "Sinir hasarı riski yüksek olduğu için artık rutin uygulamada yeri yoktur.",
          ),
          PeripheralNerveBlocksItem(
            title: "SİNİR STİMÜLATÖRÜ KULLANIMI VE GÜVENLİ AKIM ARALIĞI (0.2-0.5 MA)",
            description: "Elektriksel uyarı ile spesifik motor yanıtlar alınarak sinirin lokalize edilmesini sağlar.",
            subtitle: "0.2 mA altındaki akımlarda yanıt alınması iğnenin intranöral (sinir içi) olma riskini gösterir; güvenli aralık 0.2-0.5 mA'dır",
            additionalInfo: "Genellikle 1-2 Hz frekans ve 0-5 mA akım şiddeti ile başlanır.",
          ),
          PeripheralNerveBlocksItem(
            title: "USG (ULTRASONOGRAFİ) REHBERLİĞİNDE FREKANS SEÇİMİ",
            description: "Sinirlerin ve çevre vasküler yapıların gerçek zamanlı izlenmesini sağlayarak blok başarısını artırır.",
            additionalInfo: "Yüksek frekanslı problar yüzeyel yapılar, düşük frekanslı problar ise derin yapılar için uygundur.",
          ),
          PeripheralNerveBlocksItem(
            title: "DEVAMLI PERİFERİK SİNİR BLOKLARI VE KATETER YÖNETİMİ",
            description: "Sinir çevresine yerleştirilen kateter yardımıyla uzun süreli (günlerce) postoperatif analjezi sağlanmasıdır.",
            additionalInfo: "Düşük konsantrasyonlu LA kullanımı ile motor blok gelişmeden duyusal blok hedeflenir.",
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Brakial Pleksus Anatomisi',
        items: [
          PeripheralNerveBlocksItem(
            title: "BRAKİAL PLEKSUS KÖKENİ VE SEGMENTER DAĞILIMI (C4-T1)",
            description: "Brakial pleksus, C4 (katkıyla) ile T1 arası spinal sinirlerin anterior dallarından (trunki) oluşur.",
            additionalInfo: "Kökler, trunkuslar, divizyonlar, kordonlar ve terminal dallar şeklinde organize olur.",
          ),
          PeripheralNerveBlocksItem(
            title: "PLEKSUS KORDLARI VE AKSİLLER ARTER İLİŞKİSİ",
            description: "Kordonlar (lateral, medial, posterior) aksiller arterin çevresindeki konumlarına göre isimlendirilmişlerdir.",
            additionalInfo: "Aksiller arter bu bölgede önemli bir landmark (işaret noktası) görevi görür.",
          ),
          PeripheralNerveBlocksItem(
            title: "ÜST EKSTREMİTE TERMİNAL SİNİR DALLARI",
            description: "Median, ulnar, radial ve muskulo-kutanöz sinirler pleksusun temel terminal dallarıdır.",
            additionalInfo: "Her bir dalın motor ve duyusal innervasyon sahası farklıdır.",
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Üst Ekstremite Blokları',
        items: [
          PeripheralNerveBlocksItem(
            title: "İNTERSKALEN BLOK VE OMUZ CERRAHİSİ ANALJEZİSİ",
            description: "C5-C7 segmentlerinin en yoğun tutulduğu, omuz ve proksimal üst ekstremite cerrahisi için ideal bloktur.",
            subtitle: "C8-T1 (ulnar) dalları genellikle korunur; bu nedenle el ve el bileği cerrahisine uygun değildir",
            additionalInfo: "Frenik sinir bloğu, Horner sendromu ve RLN paralizisi riskleri akılda tutulmalıdır.",
          ),
          PeripheralNerveBlocksItem(
            title: "SUPRAKLAVİKÜLER BLOK (KOLUN SPİNALİ) VE DOZAJ (30-40 ML)",
            description: "Tüm brakial pleksusun en kompakt olduğu seviyedir; ancak omuz eklemi genellikle tek başına yeterli uyuşmaz.",
            subtitle: "30-40 mL lokal anestezik fraksiyonel olarak uygulanır; en büyük risk pnömotorakstır",
            additionalInfo: "Supraklaviküler bölgede frenik sinir bloğu riski %50 civarındadır.",
          ),
          PeripheralNerveBlocksItem(
            title: "İNFRAKLAVİKÜLER BLOK VE DİRSEK ALTI GİRİŞİMLER",
            description: "Korakoid çıkıntının 2 cm medial ve kaudalinden girilerek yapılan, dirsek ve distali için ideal bir bloktur.",
            subtitle: "T2 dermatomu (interkostobrakial) korunur; cerrahi 30 mL LA ile gerçekleştirilir",
            additionalInfo: "Parmak fleksüyon veya ekstansiyon yanıtı başarı göstergesidir.",
          ),
          PeripheralNerveBlocksItem(
            title: "AKSİLLER BLOK TEKNİĞİ VE TERMİNAL SİNİR YANITLARI",
            description: "Aksiller arter çevresinde median, ulnar ve radial sinirlerin her birine 10 mL verilerek yapılır.",
            subtitle: "Muskulo-kutanöz sinir arterden ayrı ve coracobrachialis kası içindedir, ayrıca bloke edilmelidir",
            additionalInfo: "Perinöral kateter yerleşimi için anatomi nedeniyle çok uygun değildir.",
          ),
          PeripheralNerveBlocksItem(
            title: "TERMİNAL SİNİR BLOKLARI VE İNTERKOSTO BRAKİAL (T2) FARKI",
            description: "Median, ulnar ve radial sinirler dirsekte veya el bileğinde ayrı ayrı 3-10 mL LA ile bloke edilebilir.",
            subtitle: "Pleksus blokları ile T2 (aksiller bölge duyusu) bloke olmaz; turnike ağrısını önlemek için deri altına ayrıca yapılmalıdır",
            additionalInfo: "Sadece spesifik parmak yaralanmalarında tercih edilir.",
          ),
          PeripheralNerveBlocksItem(
            title: "IVRA (BİER BLOĞU) UYGULAMASI VE TURNİKE GÜVENLİĞİ",
            description: "Damar içine verilen düşük konsantrasyonlu (%0.5) lidokainin turnike yardımıyla ekstremitede hapsedilmesidir.",
            subtitle: "Turnike en az 15-20 dk şişik kalmalı ve toksisiteyi önlemek için operasyon sonunda yavaşça indirilmelidir",
            additionalInfo: "Kol için 50 mL, ön kol için 25 mL hacim yeterlidir.",
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Alt Ekstremite Blokları',
        items: [
          PeripheralNerveBlocksItem(
            title: "ALT EKSTREMİTE PLEKSUSLARI VE SİNİR KÖKENLERİ (L1-S4)",
            description: "Lomber pleksus (L1-L4) uyluk önünü, sakral pleksus (L4-S4) ise bacak arkası ve ayağı innerve eder.",
            additionalInfo: "Ön yüzün ana siniri femoral, arka yüzün siyatik sinirdir.",
          ),
          PeripheralNerveBlocksItem(
            title: "FEMORAL BLOK UYGULAMASI VE MOTOR YANITLAR (KALÇA/DİZ)",
            description: "Kalça fleksiyonu ve diz ekstansiyonu yanıtı alınarak 30-40 mL LA ile yapılan temel bloktur.",
            additionalInfo: "Fasyal iliaka bloğu da tüm lomber pleksusu etkileyebilen popüler bir alternatiftir.",
          ),
          PeripheralNerveBlocksItem(
            title: "LATERAL FEMORAL KUTANÖZ SİNİR BLOĞU (SİAS 2 CM)",
            description: "SİAS'ın 2 cm medial ve distalinden girilerek sadece duyusal blokaj (uyluk dış yüzü) amaçlanır.",
            additionalInfo: "10-15 mL hacim genellikle yeterli olmaktadır.",
          ),
          PeripheralNerveBlocksItem(
            title: "OBTURATOR BLOK VE UYLUK ADDÜKSİYON YANITI",
            description: "Pubik çıkıntının 1.5 cm inferior ve lateralinden girilerek uyluk addüksiyon yanıtı hedeflenir.",
            additionalInfo: "15-20 mL hacim kullanılır; üroloji cerrahilerinde 'obturatör refleks'i önlemek için kritiktir.",
          ),
          PeripheralNerveBlocksItem(
            title: "PSOAS KOMPARTMAN (LUMBAL PLEKSUS) BLOĞU VE RİSKLER",
            description: "Derin yerleşimli lomber pleksusun paravertebral aralıkta bloke edilmesidir.",
            subtitle: "En büyük risk retroperitoneal hematom ve intravasküler enjeksiyondur",
            additionalInfo: "Orta ve büyük kalça cerrahilerinde oldukça etkilidir.",
          ),
          PeripheralNerveBlocksItem(
            title: "SAFEN SİNİR BLOĞU VE DİZ ALTI ANALJEZİDEKİ YERİ",
            description: "Femoral sinirin saf safen (duyusal) dalıdır; diz altı cerrahilerde siyatik bloğa eklenmelidir.",
            additionalInfo: "Aksesuar bir bloktur; tek başına motor blok yapmaz.",
          ),
          PeripheralNerveBlocksItem(
            title: "SİYATİK SİNİR BLOĞU VE POPLİTEAL YAKLAŞIM SEÇENEKLERİ",
            description: "Bacak ve ayağın büyük bir bölümünü uyuşturur; 25 mL LA ile posterior veya popliteal hattan girilebilir.",
            additionalInfo: "Ayak cerrahisi için popliteal yaklaşım altın standarttır.",
          ),
          PeripheralNerveBlocksItem(
            title: "AYAK BİLEĞİ BLOĞU (ANKLE BLOCK) VE 5 SİNİR YÖNETİMİ",
            description: "Ayağı besleyen 5 ayrı sinirin ayak bileği seviyesinde uyuşturulmasıdır.",
            subtitle: "Epinefrin içeren LA kullanılmamalıdır; yüksek hacimli enjeksiyonlar terminal arterleri basabilir",
            additionalInfo: "Postoperatif komplikasyon riski en düşük bloklardan biridir.",
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Gövde Blokları',
        items: [
          PeripheralNerveBlocksItem(
            title: "YÜZEYEL SERVİKAL PLEKSUS BLOĞU VE SCM İLİŞKİSİ",
            description: "Sternokleidomastoid kasının lateral kenarında, duyusal innervasyonu sağlamak için subkutan yapılır.",
            additionalInfo: "5+5 mL LA ile yüzeyel boyun cerrahilerinde (örn: karotis endarterektomi) kullanılır.",
          ),
          PeripheralNerveBlocksItem(
            title: "İNTERKOSTAL SİNİR BLOĞU VE SİSTEMİK TOKSİSİTE RİSKİ",
            description: "Kot altından geçen sinirlere 3-5 mL LA verilerek yapılır; sistemik emilim (LAST riski) en yüksek olan bölgedir.",
            subtitle: "Pnömotoraks riski nedeniyle uygulama yerini büyük oranda Paravertebral Bloğa bırakmıştır",
            additionalInfo: "Genellikle travmatik kot kırıklarında analjezi amaçlı kullanılır.",
          ),
          PeripheralNerveBlocksItem(
            title: "PARAVERTEBRAL BLOK VE CERRAHİ SEGMENTER ANALJEZİ",
            description: "Torasik spinal sinirlerin paravertebral boşluktan çıkışında bloke edilmesidir.",
            subtitle: "Mastektomi (T3-T6) ve abdominal herni (T10-L2) cerrahilerinde oldukça etkilidir",
            additionalInfo: "Her bir segmente 5 mL LA verilerek unilateral geniş analjezi sağlanır.",
          ),
          PeripheralNerveBlocksItem(
            title: "TAP (TRANSVERSUS ABDOMİNİS PLANE) BLOK VE ABDOMİNAL CERRAHİ",
            description: "İnternal oblik ve transversus abdominis kasları arasına 20 mL LA verilerek karın ön duvarı analjezisi sağlanır.",
            subtitle: "T12 (subkostal) ve L1 (ilioinguinal/iliohipogastrik) sinirlerini etkiler",
            additionalInfo: "Günübirlik cerrahide ve sezaryen sonrası analjezide yaygın kullanılır.",
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Kritik Notlar',
        items: [
          PeripheralNerveBlocksItem(
            title: "LOKAL ANESTETİK DOZ VE VOLÜM PLANLAMASI",
            description: "Blok başarısı için yeterli volüm, güvenlik için ise toksik doz sınırlarının aşılmaması esastır.",
            additionalInfo: "Vücut ağırlığına göre max dozlar her blok öncesi hesaplanmalıdır.",
          ),
          PeripheralNerveBlocksItem(
            title: "USG REHBERLİĞİNİN KOMPLİKASYON VE BAŞARI ÜZERİNDEKİ ETKİSİ",
            description: "Görsel rehberlik sayesinde başarı oranı artarken, vasküler hasar ve LAST (sistemik toksisite) riski azalır.",
            additionalInfo: "Yine de 'sinir içi' enjeksiyon USG ile %100 önlenemeyebilir.",
          ),
          PeripheralNerveBlocksItem(
            title: "PERİFERİK BLOKLARDA GÖRÜLEN MAJOR KOMPLİKASYONLAR",
            description: "Pnömotoraks, intranöral enjeksiyon sonucu kalıcı sinir hasarı ve sistemik toksisite en büyük risklerdir.",
            additionalInfo: "Lipid resüsitasyon kiti her zaman hazır bulundurulmalıdır.",
          ),
          PeripheralNerveBlocksItem(
            title: "IVRA (BİER BLOĞU) TURNİKE SÜRESİ VE GÜVENLİ TAHLİYE",
            description: "Turnike aniden indirilmemeli ve doku asidozunu minimize etmek için operasyon sonunda sönümlü indirilmelidir.",
            additionalInfo: "Min. 20 dk kuralı hayati güvenlik sınırıdır.",
          ),
        ],
      ),
    ];
  }
}
