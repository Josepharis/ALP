import 'package:flutter/material.dart';

class ObstetricAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ObstetricAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ObstetricAnesthesiaCategory {
  final String categoryName;
  final List<ObstetricAnesthesiaItem> items;

  ObstetricAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class ObstetricAnesthesiaData {
  static List<ObstetricAnesthesiaCategory> getObstetricAnesthesiaData(
    BuildContext context,
  ) {
    return [
      ObstetricAnesthesiaCategory(
        categoryName: 'Doğum Hastasına Genel Yaklaşım',
        items: [
          ObstetricAnesthesiaItem(
            title: "TOK HASTA KABULÜ VE ASPİRASYON RİSKLERİ",
            description: "Aksi kanıtlanana kadar tüm gebe hastalar aspirasyon riski açısından 'midesi dolu' kabul edilmelidir.",
            additionalInfo: "Gastrik boşalmanın yavaşlaması ve intraabdominal basınç artışı ana risk faktörleridir.",
          ),
          ObstetricAnesthesiaItem(
            title: "ASPİRASYON PROFİLAKSİSİ VE ANTASİT KULLANIMI (15-30 ML)",
            description: "Cerrahi öncesi mide pH'ını yükseltmek için 15-30 mL partikülsüz antasit uygulanmalıdır.",
            subtitle: "Yüksek riskli olgularda H2 bloker (Ranitidin 50 mg) ve Metoklopramid (10 mg) IV eklenmelidir",
            additionalInfo: "Antasitler aspirasyon durumunda akciğer hasarının şiddetini azaltır.",
          ),
          ObstetricAnesthesiaItem(
            title: "GEBELİKTE SOL YAN POZİSYON VE AORTOKAVAL BASI",
            description: "Aortokaval kompresyonu önlemek ve uterin akımı korumak için hasta mutlaka sola deviye yatırılmalıdır.",
            additionalInfo: "Uterusun vena kava ve aorta üzerine yaptığı bası, ani maternal hipotansiyon ve fetal distrese yol açabilir.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Vajinal Doğum İçin Anestezi',
        items: [
          ObstetricAnesthesiaItem(
            title: "DOĞUM AĞRI YOLAKLARI: 1. EVRE (T10-L1)",
            description: "Doğumun ilk evresinde ağrı, uterus ve serviksten kaynaklanır ve T10-L1 segmentleri üzerinden taşınır.",
            additionalInfo: "Visseral ağrı karakterindedir ve genellikle kramp tarzındadır.",
          ),
          ObstetricAnesthesiaItem(
            title: "DOĞUM AĞRI YOLAKLARI: 2. EVRE (S2-S4)",
            description: "İkinci evrede ise perineal bölgenin gerilmesiyle oluşan somatik ağrı S2-S4 segmentleri (Pudendal sinir) üzerinden iletilir.",
            additionalInfo: "Bu aşamada ağrı daha keskin ve lokalize hissedilir.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Nonfarmakolojik Teknikler',
        items: [
          ObstetricAnesthesiaItem(
            title: "LAMAZE TEKNİĞİ VE KONTROLLÜ SOLUNUM",
            description: "Kontraksiyonlar sırasında kontrollü soluma ve psikoprofilaksiye dayanan en popüler doğal doğum yöntemidir.",
            additionalInfo: "Gevşeme teknikleri ağrı eşiğini yükseltmeyi hedefler.",
          ),
          ObstetricAnesthesiaItem(
            title: "DİĞER DOĞAL DOĞUM TEKNİKLERİ (BRADLEY, LEBOYER, DOULA)",
            description: "Bradley, Dick-Read ve Leboyer gibi yöntemlerin yanı da Doula desteği de doğum konforunu artırmada yaygın kullanılır.",
            additionalInfo: "Bu yöntemlerde ilaçsız ağrı yönetimi ve anne-bebek bağı ön plandadır.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Parenteral Analjezi',
        items: [
          ObstetricAnesthesiaItem(
            title: "MEPERİDİN KULLANIMI VE ZAMANLAMA (<=100 MG)",
            description: "100 mg altındaki dozlarda uygulanmalı; neonatal depresyonu önlemek için doğuma en az 4 saat varken verilmelidir.",
            additionalInfo: "Aktif metaboliti normeperidin fötusta birikebilir.",
          ),
          ObstetricAnesthesiaItem(
            title: "FENTANİL UYGULAMASI VE HIZLI ANALJEZİ (25-100 MCG)",
            description: "25-100 mcg dozlarda hızlı başlangıçlı ve kısa etkili analjezi sağlar; neonatal etkileri morfinden daha azdır.",
            additionalInfo: "Kısa yarı ömrü sayesinde epizyotomi gibi işlemler için de uygundur.",
          ),
          ObstetricAnesthesiaItem(
            title: "DOĞUMDA MORFİN KULLANIMI VE NEONATAL DEPRESYON RİSKİ",
            description: "Uzun etki süresi ve yenidoğanda yaptığı şiddetli solunum depresyonu riski nedeniyle tercih edilmez.",
            additionalInfo: "Fetal kan-beyin bariyerini kolay geçmesi dezavantajıdır.",
          ),
          ObstetricAnesthesiaItem(
            title: "KETAMİNİN ANALJEZİK DOZU VE APGAR SKORU (<=1 MG/KG)",
            description: "1 mg/kg ve altındaki dozlarda güvenli analjezi sağlarken; yüksek dozlarda düşük Apgar skoruna yol açabilir.",
            additionalInfo: "Doz aşımı uterus hipertonusuna neden olabilir.",
          ),
          ObstetricAnesthesiaItem(
            title: "NSAİİ VE DUKTUS ARTERİOZUS KAPANMA RİSKİ",
            description: "Fetal duktus arteriozus kapanmasını geciktirebileceği için gebelik ve doğumda kontrendikedir.",
            additionalInfo: "Prostaglandin sentez inhibisyonu neonatal böbrek fonksiyonlarını da bozabilir.",
          ),
          ObstetricAnesthesiaItem(
            title: "OPİOİD VE BENZODİAZEPİN KOMBİNASYONLARI",
            description: "Gerektiğinde düşük doz Midazolam (<=2 mg) ve Fentanil (<=100 mcg) kombine edilerek sedoanaljezi sağlanabilir.",
            additionalInfo: "Neonatal izlem bu kombinasyonlarda titizlikle yapılmalıdır.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Pudendal Sinir Bloğu',
        items: [
          ObstetricAnesthesiaItem(
            title: "PUDENDAL SİNİR BLOĞU TEKNİĞİ VE İŞİAL SPİNA",
            description: "İşial spinaların 1-1.5 cm altına Koback veya Iowa trumpet yardımıyla 10 mL kloroprokain verilerek yapılır.",
            additionalInfo: "Pudendal sinir blokajı sadece perineal (2. evre) ağrıyı keser.",
          ),
          ObstetricAnesthesiaItem(
            title: "PARASERVİKAL BLOK VE FETAL BRADİKARDİ RİSKİ",
            description: "Uterus serviksine yakın uygulama nedeniyle fetal bradikardi riski taşır ve bu sebeple kullanımı sınırlıdır.",
            additionalInfo: "Fetal kalp hızı izlemi bu blokta zorunludur.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Tek Başına Opioidler',
        items: [
          ObstetricAnesthesiaItem(
            title: "REJYONAL ANESTEZİ KONTRENDİKASYONLARI VE OPİOİD ANALJEZİSİ",
            description: "Aort darlığı veya Eisenmenger gibi sempatektomiyi tolere edemeyenlerde rejyonal yerine opioidler tercih edilir.",
            additionalInfo: "Hemodinamik stabiliteyi korumak ana hedeftir.",
          ),
          ObstetricAnesthesiaItem(
            title: "İNTRATEKAL MORFİN VE FENTANİL DESTEĞİ",
            description: "Morfin (0.1-0.5 mg) ile sağlanan analjeziye eklenen düşük doz fentanil/sufentanil hızlı başlangıç sağlar.",
            additionalInfo: "Pruritus (kaşıntı) en sık görülen yan etkidir.",
          ),
          ObstetricAnesthesiaItem(
            title: "EPİDURAL MORFİN VE KOMBİNASYONLAR (<=5 MG)",
            description: "Epidural yoldan uygulanan morfin (<=5 mg), fentanil ile kombine edilerek uzun süreli maternal konfor sağlar.",
            additionalInfo: "Bulantı, kusma ve geç solunum depresyonu açısından takip gerektirir.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Epidural Analjezi',
        items: [
          ObstetricAnesthesiaItem(
            title: "EPİDURAL KATETER YERLEŞTİRME VE KAYBOLAN DİRENÇ",
            description: "Gebelikte orta hat veya paramedian yaklaşım kullanılır; 'direnç kaybı' yöntemiyle epidural alan saptanır.",
            subtitle: "Deldiğimiz derinlik ortalama 5 cm civarındadır; kateter 4-6 cm ilerletilmelidir",
            additionalInfo: "Çok delikli kateterler tek delikli olanlara göre daha homojen dağılım sağlar.",
          ),
          ObstetricAnesthesiaItem(
            title: "EPİDURAL LA VE OPİOİD KOMBİNASYONLARI",
            description: "İdeal kombinasyon Bupivakain (%0.0625-0.125) veya Ropivakain (%0.1-0.2) yanına Fentanil/Sufentanil eklenerek elde edilir.",
            subtitle: "Yanlış yere uygulamayı dışlamak için lidokain + epinefrin ile test dozu yapılmalıdır",
            additionalInfo: "Motor blok yapmadan duyusal analjezi hedeflenir.",
          ),
          ObstetricAnesthesiaItem(
            title: "EPİDURAL AKTİVASYON VE DOZ YÖNETİMİ",
            description: "İlk evrede 10 mL karışım yeterliyken; ikinci evrede perineal ağrı için dozun 15 mL'ye kadar artırılması gerekebilir.",
            additionalInfo: "Doz artışları kademeli ve yavaş yapılmalıdır.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Epidural Komplikasyonlar',
        items: [
          ObstetricAnesthesiaItem(
            title: "EPİDURAL SONRASI HİPOTANSİYON VE VAZOPRESSÖR TEDAVİSİ",
            description: "Gelişen hipotansiyonda agresif hidrasyonun yanı sıra Efedrin (5-15 mg) veya Fenilefrin (25-50 mcg) tercih edilmelidir.",
            additionalInfo: "Supin pozisyondan kaçınmak en önemli korunma yöntemidir.",
          ),
          ObstetricAnesthesiaItem(
            title: "İNTRAVASKÜLER ENJEKSİYON VE SİSTEMİK TOKSİSİTE (LAST)",
            description: "LA'nın damar içine kaçışı maternal nöbet ve aritmilere yol açabilir; bu yüzden ilaçlar hep fraksiyonlar halinde verilmelidir.",
            additionalInfo: "İntralipid resüsitasyonu odada hazır bulunmalıdır.",
          ),
          ObstetricAnesthesiaItem(
            title: "İNTRATEKAL KAÇIŞ VE YÜKSEK BLOK YÖNETİMİ",
            description: "Kazara spinal aralığa geçiş 'total spinal' yaparak solunum durmasına yol açabilir; entübasyon hazırlığı tam olmalıdır.",
            additionalInfo: "Hastanın duyusal seviyesindeki ani hızlı yükselme uyarıcı olmalıdır.",
          ),
          ObstetricAnesthesiaItem(
            title: "POST-DURAL PUNKTRUE AĞRISI (PDPH) VE KAN YAMASI (10-20 ML)",
            description: "Dura ponksiyonu sonrası gelişen şiddetli baş ağrısında yatak istirahati ve kafein yeterli olmazsa 10-20 mL kan yaması (Blood Patch) yapılır.",
            additionalInfo: "Ağrı genellikle oturur pozisyonda şiddetlenir.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Sezaryen İçin Rejyonal Anestezi',
        items: [
          ObstetricAnesthesiaItem(
            title: "SEZARYENDE HEDEF BLOK SEVİYESİ (T4)",
            description: "Operasyon sırasında cerrahi alanın ve periton çekilmesinin duyulmaması için blok seviyesi T4'e (meme ucu) çıkarılmalıdır.",
            additionalInfo: "Yetersiz blok annede şiddetli bulantı ve huzursuzluğa yol açar.",
          ),
          ObstetricAnesthesiaItem(
            title: "REJYONAL ÖNCESİ SIVI PRELOADI (1000-1500 ML RL)",
            description: "Sempatektomiye bağlı hipotansiyonu önlemek için bloktan hemen önce 1000-1500 mL RL yüklemesi yapılmalıdır.",
            additionalInfo: "Sıvı yüklemesi venöz dönüşü destekleyerek perfüzyonu korur.",
          ),
          ObstetricAnesthesiaItem(
            title: "SPİNAL ANESTEZİ VE POSTOPERATİF ANALJEZİ (MORFİN 0.1-0.3 MG)",
            description: "Spinal bupivakain yanına eklenen 0.1-0.3 mg morfin, operasyon sonrasında 24 saate varan konfor sağlar.",
            additionalInfo: "Kaşıntı ve solunum depresyonu riski 24 saat izlenmelidir.",
          ),
          ObstetricAnesthesiaItem(
            title: "EPİDURAL ANESTEZİDE YETERSİZ BLOK VE EK AJANLAR",
            description: "Fetus çıkana kadar yetersiz blokta Ketamin (10-20 mg) veya Midazolam (1-2 mg) ile destek sağlanabilir.",
            additionalInfo: "GA'ya geçiş kararı her zaman masada olmalıdır.",
          ),
          ObstetricAnesthesiaItem(
            title: "KOMBİNE SPİNAL-EPİDURAL (KSE) ANESTEZİ AVANTAJI",
            description: "Spinalin hızlı başlangıcı ile epiduralin sürekliliğini birleştiren, sezaryen için oldukça popüler bir yöntemdir.",
            additionalInfo: "Blok seviyesini kateter aracılığıyla yukarı çekmek mümkündür.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Sezaryen İçin Genel Anestezi',
        items: [
          ObstetricAnesthesiaItem(
            title: "GENEL ANESTEZİ ÖNCESİ ASPİRASYON PROFİLAKSİSİ",
            description: "Genel anestezi kararı anında 30-45 dk önce sodyum sitrat uygulanmalı, gerekirse ranitidin/metoklopramid eklenmelidir.",
            additionalInfo: "Uyarılan öğürme refleksi gebelerde her zaman doludur.",
          ),
          ObstetricAnesthesiaItem(
            title: "HIZLI ARDIŞIK İNDÜKSİYON (RSI) VE KRİKOİD BASI",
            description: "Propofol/Ketamin sonrası Süksinilkolin verilerek krikoid bası (Sellick manevrası) altında hızlı entübasyon yapılır.",
            additionalInfo: "Zor havayolu arabası ulaşılabilir mesafede olmalıdır.",
          ),
          ObstetricAnesthesiaItem(
            title: "SEZARYENDE GENEL ANESTEZİ İDAME STRATEJİSİ",
            description: "Bebek çıkana kadar %50 N2O ve 0.75 MAK volatil ajan kullanılarak uterus tonusu ve fetal iyilik korunur.",
            additionalInfo: "Yüksek volatil konsantrasyonu atoniye yol açabilir.",
          ),
          ObstetricAnesthesiaItem(
            title: "FETUS ÇIKIŞI SONRASI UTEROTONİK VE ANALJEZİ YÖNETİMİ",
            description: "Bebek doğar doğmaz 20-80 Ü Oksitosin infüzyonu başlanır ve volatil konsantrasyonu düşürülür.",
            additionalInfo: "Uterus gevşek kalırsa Ergo veya PGF2α seçenekleri devreye alınmalıdır.",
          ),
          ObstetricAnesthesiaItem(
            title: "GÜVENLİ EKSTÜBASYON VE UYANIK HASTA KRİTERİ",
            description: "Gebe hastalar ancak tam uyanık, havayolu koruyucu refleksleri yerinde ve koopere iken ekstübe edilmelidir.",
            additionalInfo: "Aspirasyon riski hastaneden ayrılana kadar devam eder.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Komplike Gebeliklerde Anestezi',
        items: [
          ObstetricAnesthesiaItem(
            title: "KORDON SARKMASI (KORDON PROLAPSUSU) VE ACİLİYET",
            description: "Bebek hayatta ise fetal perfüzyonu korumak için sezaryen başlayana kadar kordon elle yukarı doğru itilmelidir.",
            additionalInfo: "Hızlıca genel anesteziye geçilmesi gerekebilir.",
          ),
          ObstetricAnesthesiaItem(
            title: "MAKAT GELİŞ VE BAŞ SIKIŞMASI RİSKİ",
            description: "Epidural analjezi altında takip edilebilir; ancak kafa sıkışırsa uterus relaksasyonu için hızlı genel anestezi şarttır.",
            additionalInfo: "Uterus relaksasyonu için Nitrogliserin de kullanılabilir.",
          ),
          ObstetricAnesthesiaItem(
            title: "ÇOĞUL GEBELİKLERDE HEMODİNAMİK YÖNETİM",
            description: "Hipotansiyon riski tekil gebeliklerden çok daha fazladır; epidural güvenle uygulanabilir.",
            additionalInfo: "İkinci bebeğin doğumu sırasında acil müdahale gerekebilir.",
          ),
          ObstetricAnesthesiaItem(
            title: "PLASENTA PREVİA VE KANAMA KONTROLÜ",
            description: "Aktif kanama veya hemodinamik instabilite varlığında Rejyonal yerine doğrudan Genel Anestezi tercih edilmelidir.",
            additionalInfo: "Büyük çaplı IV yolların varlığı kritiktir.",
          ),
          ObstetricAnesthesiaItem(
            title: "PLASENTA DEKOLMANI VE KOAGÜLOPATİ RİSKİ",
            description: "Masif transfüzyon gerekebilir; fibrinojenin 150 mg/dL altına düşmesi koagülopati açısından uyarıcıdır.",
            additionalInfo: "DIC gelişme riski mevcuttur.",
          ),
          ObstetricAnesthesiaItem(
            title: "UTERUS RÜPTÜRÜ VE ANİ HEMODİNAMİK ÇÖKÜŞ",
            description: "Epidural analjeziye rağmen aniden gelişen şiddetli karın ağrısı ve hipotansiyon uterus rüptürünü düşündürmelidir.",
            additionalInfo: "Acil cerrahi eksplorasyon hayat kurtarıcıdır.",
          ),
          ObstetricAnesthesiaItem(
            title: "KORYOAMNİYONİTİS VE SEPSİS RİSKİ",
            description: "Sistemik sepsis veya koagülopati bulguları yoksa Rejyonal anestezi uygulanabilir; aksi halde kontrendikedir.",
            additionalInfo: "Enfeksiyon odağının kontrolü önceliklidir.",
          ),
          ObstetricAnesthesiaItem(
            title: "PRETERM DOĞUMDA İLAÇ ETKİLEŞİMLERİ (KETAMİN/EFEDRİN)",
            description: "Efedrin ve Ketaminin tokolitiklerle etkileşimi fetal kalp hızını bozabilir; dikkatli dozlama yapılmalıdır.",
            additionalInfo: "Bebekler ilaçların solunum depresif etkilerine çok hassastır.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Preeklampsi',
        items: [
          ObstetricAnesthesiaItem(
            title: "PREEKLAMPSİ PATOFİZYOLOJİSİ VE ENDOTEL HASARI",
            description: "Klinik tabloidde TXA2 ve Endotelin artarken, vazodilatatör olan PGI2 (Prostasiklin) azalır.",
            additionalInfo: "Multisistemik bir endotel disfonksiyonu söz konusudur.",
          ),
          ObstetricAnesthesiaItem(
            title: "PREEKLAMPSİ TEDAVİSİ VE MGSO4 SEVİYESİ (4-6 MEQ/L)",
            description: "Nöbetleri önlemek için MgSO4 başlanır; terapötik magnezyum düzeyi 4-6 mEq/L aralığında tutulmalıdır.",
            additionalInfo: "Mg toksisitesinde kalsiyum glukonat antidottur.",
          ),
          ObstetricAnesthesiaItem(
            title: "PREEKLAMPTİK HASTADA ANESTEZİ SEÇİMİ VE TROMBOSİT SAYISI (>70.000)",
            description: "Trombosit sayısı 70.000 üzerinde ve hastada koagülopati yoksa epidural anestezi ilk tercihtir.",
            additionalInfo: "Rejyonal anestezi sistemik vazospazmı çözerek uterin akımı iyileştirir.",
          ),
        ],
      ),
      ObstetricAnesthesiaCategory(
        categoryName: 'Diğer Komplike Durumlar',
        items: [
          ObstetricAnesthesiaItem(
            title: "KALP HASTALIĞI OLAN GEBELERDE ANESTEZİ KISITLAMALARI",
            description: "Aort darlığı ve Eisenmenger sendromu olanlar rejyonali tolere edemez; opioid ağırlıklı teknikler veya GA tercih edilir.",
            additionalInfo: "SVR'nin korunması bu hastalarda kritiktir.",
          ),
          ObstetricAnesthesiaItem(
            title: "AMNİYOTİK SIVI EMBOLİSİ VE ŞOK YÖNETİMİ",
            description: "Ani kardiyovasküler şok ve DIC ile karakterizedir; acil resüsitasyon ve sezaryen aynı anda uygulanmalıdır.",
            additionalInfo: "Mortalite oranları oldukça yüksektir.",
          ),
          ObstetricAnesthesiaItem(
            title: "POSTPARTUM HEMORAJİ VE ANESTEZİK MÜDAHALE",
            description: "Uterin masaj veya plasenta parça debridmanı için GA altında uterus relaksasyonu gerekebilir.",
            additionalInfo: "Kanama kontrolü sağlanana kadar resüsitasyon sürdürülmelidir.",
          ),
        ],
      ),
    ];
  }
}
