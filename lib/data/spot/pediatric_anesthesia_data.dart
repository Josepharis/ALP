import 'package:flutter/material.dart';

class PediatricAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PediatricAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PediatricAnesthesiaCategory {
  final String categoryName;
  final List<PediatricAnesthesiaItem> items;

  PediatricAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class PediatricAnesthesiaData {
  static List<PediatricAnesthesiaCategory> getPediatricAnesthesiaData(
    BuildContext context,
  ) {
    return [
      PediatricAnesthesiaCategory(
        categoryName: 'Anatomik ve Fizyolojik Özellikler',
        items: [
          PediatricAnesthesiaItem(
            title: "SOLUNUM SİSTEMİ KOMPLİYANSI VE ALVEOL GELİŞİMİ (8 YAŞ)",
            description: "Düşük akciğer kompliyansı ve yüksek göğüs kafesi kompliyansı nedeniyle çocuklarda fonksiyonel rezidüel kapasite (FRK) sınırlıdır.",
            subtitle: "Tam alveol gelişimi yaklaşık 8 yaşında tamamlanır",
            additionalInfo: "Kapanma hacminin tidal volümün içinde olması, atelektazi eğilimini artırır.",
          ),
          PediatricAnesthesiaItem(
            title: "PEDİATRİK LARİNKS ANATOMİSİ VE KRİKOİD DARLIĞI",
            description: "Çocuklarda dil büyük, larinks daha yüksek (C4) ve öne yerleşiktir; en dar nokta krikoid kıkırdak seviyesidir.",
            subtitle: "Yenidoganlar ilk 5 ayda obligat nazal (zorunlu burun) solunumcusudur",
            additionalInfo: "Erişkinde en dar yer glottis iken, <5 yaş çocuklarda krikoid seviyesidir; bu durum tüp seçimi için kritiktir.",
          ),
          PediatricAnesthesiaItem(
            title: "KARDİYOVASKÜLER DEBİ VE KALP HIZI BAĞIMLILIĞI",
            description: "Ventriküler kompliyans düşük olduğu için kalp debisi atım hacminden ziyade doğrudan kalp hızına (HR) bağımlıdır.",
            subtitle: "Ciddi hipovolemi geliştiğinde çocuklarda taşikardisiz ani hipotansiyon görülebilir",
            additionalInfo: "Baroreseptör refleksleri immatürdür; bradikardiye toleransları çok düşüktür.",
          ),
          PediatricAnesthesiaItem(
            title: "METABOLİZMA, YÜZEY ALANI VE HİPOTERMİ RİSKİ",
            description: "Vücut yüzey alanının ağırlığa oranla geniş olması, ısı kaybını hızlandırır ve hipotermi riskini artırır.",
            subtitle: "Prematürelerde ısı üretimini sağlayan kahverengi yağ metabolizması oldukça sınırlıdır",
            additionalInfo: "Hipotermi pediyatrik hastada metabolik asidoz ve ilaç eliminasyonunda gecikmeye yol açar.",
          ),
          PediatricAnesthesiaItem(
            title: "RENAL VE HEPATİK FONKSİYONLARDA MATÜRASYON SÜRECİ",
            description: "Renal fonksiyonlar (GFR) 6 ay ile 2 yaş arasında olgunlaşır; yenidoğanda ilaç filtrasyonu kısıtlıdır.",
            subtitle: "Karaciğer konjugasyon yolları immatür olduğu için ilaç eliminasyonu yavaştır",
            additionalInfo: "Özellikle ilk aylarda ilaç dozları ve aralıkları bu fizyolojik sınırlamalara göre ayarlanmalıdır.",
          ),
          PediatricAnesthesiaItem(
            title: "GLİKOJEN DEPOLARI VE HİPOGLİSEMİ YATKINLIĞI",
            description: "Karaciğer glikojen depolarının azlığı, bebekleri uzun süreli açlık durumlarında hipoglisemiye çok duyarlı hale getirir.",
            additionalInfo: "Perioperatif glikoz takibi pediatrik hastada rutin yaklaşımın bir parçası olmalıdır.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Farmakoloji',
        items: [
          PediatricAnesthesiaItem(
            title: "İDEAL VÜCUT AĞIRLIĞI TAHMİNİ [(YAŞ × 2) + 9]",
            description: "Pediatrik doz hesaplamalarında 50. persantil ağırlığı (Yaş × 2) + 9 formülü ile hızlıca tahmin edilebilir.",
            additionalInfo: "Hatalı kilo tahmini ilaç doz aşımı veya yetersiz dozun en sık nedenidir.",
          ),
          PediatricAnesthesiaItem(
            title: "VÜCUT SIVISI ORANI VE DAĞILIM HACMİ DEĞİŞİMİ",
            description: "Toplam vücut sıvısı oranı çocuklarda daha yüksektir; bu durum suda eriyen ilaçların (örn: süksinilkolin) dağılım hacmini artırır.",
            additionalInfo: "Mg/kg bazında daha yüksek dozlara ihtiyaç duyulmasının temel nedeni budur.",
          ),
          PediatricAnesthesiaItem(
            title: "PLAZMA PROTEİN BAĞLANMASI VE SERBEST İLAÇ FRAKSİYONU",
            description: "Düşük protein seviyeleri nedeniyle daha az ilaç proteine bağlanır ve serbest (aktif) ilaç fraksiyonu artar.",
            additionalInfo: "Bu durum ilaçların hem etkisini hem de toksisite riskini artırabilir.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'İnhalasyon Ajanları',
        items: [
          PediatricAnesthesiaItem(
            title: "İNHALASYON İNDÜKSİYON HIZI VE FRK/VENTİLASYON ETKİSİ",
            description: "Artan dakika ventilasyonu ve azalan FRK sayesinde inhalasyon indüksiyonu çocuklarda erişkinden çok daha hızlıdır.",
            subtitle: "Düşük kan/gaz katsayısı hızlı denge sağlarken aşırı doz riskini de beraberinde getirir",
            additionalInfo: "Anestezi derinliği saniyeler içinde değişebilir.",
          ),
          PediatricAnesthesiaItem(
            title: "SEVOFLURANIN PEDİATRİK ANESTEZİDEKİ YERİ",
            description: "Solunum depresyonunun az olması ve hızlı derlenme özellikleri nedeniyle pediatride en sık tercih edilen ajandır.",
            additionalInfo: "Hoş kokusu sayesinde maske indüksiyonu için idealdir.",
          ),
          PediatricAnesthesiaItem(
            title: "DESFLURAN VE POSTOPERATİF AJİTASYON RİSKİ",
            description: "Gereksiz hızlı derlenme nedeniyle pediatrik hastalarda postoperatif deliryum ve ajitasyon riski yüksektir.",
            additionalInfo: "Tahriş edici kokusu nedeniyle maske indüksiyonunda kullanılmaz.",
          ),
          PediatricAnesthesiaItem(
            title: "HALOTAN VE SEVOFLURANIN KARDİYAK DUYARLILIK ETKİSİ",
            description: "Miyokardın katekolaminlere duyarlılığını artırarak aritmi riskini tetikleyebilirler; Halotan'da bu risk en yüksektir.",
            additionalInfo: "Bebeklerde doz-bağımlı kalp debisi düşüşü yapabilirler.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'İV Ajanlar',
        items: [
          PediatricAnesthesiaItem(
            title: "PROPOFOL DOZAJI VE İNFÜZYON SENDROMU (250 MCG/KG/DK)",
            description: "Yüksek metabolik hız nedeniyle çocuklarda idame dozu 250 mcg/kg/dk civarında daha yüksektir.",
            subtitle: "Uzun süreli yüksek doz infüzyonlarda 'Propofol İnfüzyon Sendromu' riski akılda tutulmalıdır",
            additionalInfo: "İndüksiyon dozu da (3 mg/kg) erişkinden fazladır.",
          ),
          PediatricAnesthesiaItem(
            title: "TİYOPENTALİN YAŞA GÖRE DOZ DEĞİŞİMİ",
            description: "Yenidoğanda 3-4 mg/kg doz yeterliyken, süt çocukluğu döneminde bu doz 5-6 mg/kg'a yükselir.",
            additionalInfo: "Klerens kapasitesindeki değişim dozu belirler.",
          ),
          PediatricAnesthesiaItem(
            title: "PEDİATRİK OPİOİD KULLANIMI VE ELİMİNASYON SÜRECİ",
            description: "Yenidoğanlarda morfin eliminasyonu (immatür konjugasyon) yavaştır; yan etki riski daha fazladır.",
            subtitle: "Remifentanil yüksek klerensi sayesinde pediatrik kullanımda oldukça güvenlidir",
            additionalInfo: "Solunum depresyonuna hassasiyet bebeklerde yüksektir.",
          ),
          PediatricAnesthesiaItem(
            title: "KETAMİNE KARŞI HİPNOTİK DİRENÇ",
            description: "Pediatrik hastalarda ketaminin hipnotik etkisine karşı bazen direnç görülebilir; disosiyatif anestezi için dikkatli dozlanmalıdır.",
            additionalInfo: "Salivasyonu artırması nedeniyle genellikle atropin ile kombine edilir.",
          ),
          PediatricAnesthesiaItem(
            title: "MİDAZOLAM KLERENSİ VE YENİDOĞAN (YD) FARKI",
            description: "Yenidoğanda midazolam klerensi düşük olduğu için etkisi normalden çok daha uzun sürebilir.",
            additionalInfo: "Premedikasyon dozu genellikle 0.5 mg/kg oraldir.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Kas Gevşeticiler',
        items: [
          PediatricAnesthesiaItem(
            title: "PEDİATRİK KAS GEVŞETİCİ ETKİ BAĞLANGIÇ HIZI",
            description: "Dolaşım hızı yüksek olduğu için nöromüsküler blokörlerin etkisi çocuklarda çok daha hızlı başlar.",
            additionalInfo: "Diyaframın en hızlı etkilenen kas olduğu unutulmamalıdır.",
          ),
          PediatricAnesthesiaItem(
            title: "SÜKSİNİLKOLİN KULLANIM KISITLAMALARI VE LARİNGOSPAZM",
            description: "Miyopati riski nedeniyle rutin kullanımı sınırlıdır; 'tok hasta' indüksiyonu ve laringospazm gibi kriz durumlarında saklanır.",
            additionalInfo: "Bradikardi riskine karşı Atropin ile beraber verilmelidir.",
          ),
          PediatricAnesthesiaItem(
            title: "ATRAKURİUM VE SİSATRAKURİUMUN GÜVENLİK PROFİLİ",
            description: "Organ bağımsız (Hofmann eliminasyonu) yıkımları sayesinde çocuklarda ve yenidoğanlarda oldukça güvenlidir.",
            additionalInfo: "Hipotermi süreyi uzatsa da eliminasyon güvenilir kalır.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Preoperatif',
        items: [
          PediatricAnesthesiaItem(
            title: "ÜST SOLUNUM YOLU ENFEKSİYONU (ÜSYE) VE KOMPLİKASYONLAR",
            description: "Son 2-4 hafta içinde geçirilmiş ÜSYE, bronkospazm ve laringospazm riskini ciddi oranda artırır.",
            additionalInfo: "Elektif cerrahinin 4 hafta ertelenmesi önerilir ancak bazen aile faktörüyle 2 haftada yapılabilir.",
          ),
          PediatricAnesthesiaItem(
            title: "AÇLIK KURALLARI: ANNE SÜTÜ (4 SA) VE KATI GIDA (6 SA)",
            description: "Aspirasyon riskini azaltmak için anne sütü 4 saat, mama ve katı gıdalar ise 6 saat önce kesilmelidir.",
            subtitle: "Su ve berrak sıvılar için 2 saatlik açlık süresi yeterlidir",
            additionalInfo: "Aşırı açlık bebeklerde hipoglisemi ve dehidratasyona yol açar.",
          ),
          PediatricAnesthesiaItem(
            title: "PREMEDİKASYON STRATEJİLERİ VE BRADİKARDİ PROFİLAKSİSİ",
            description: "Anksiyete için oral midazolam en sık kullanılan yöntemdir; küçük bebeklerde bradikardiye karşı Atropin rutin eklenebilir.",
            additionalInfo: "Aileden ayrılma kaygısı cerrahi stresi tetikleyebilir.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Monitörizasyon',
        items: [
          PediatricAnesthesiaItem(
            title: "YAŞA GÖRE HİPOGLİSEMİ TEDAVİ EŞİKLERİ (<30-60 MG/DL)",
            description: "Yenidoğanda <30 mg/dL, bebekte <40 mg/dL, çocukta ise <60 mg/dL altındaki değerler tedavi gerektiren hipoglisemidir.",
            additionalInfo: "Glikoz seviyesinin aşırı hızlı yükseltilmesi de serebral kanamaya (YD'da) yol açabilir.",
          ),
          PediatricAnesthesiaItem(
            title: "PREDUKTAL SPO2 ÖLÇÜMÜ VE KULAK MEMESİ ANALİZİ",
            description: "Serebral ve üst vücut oksijenlenmesini en iyi gösteren SpO2 ölçüm yeri sağ kulak memesi veya sağ parmaktır.",
            additionalInfo: "Postduktal kan ölçümleri patent duktus varlığında yanıltıcı olabilir.",
          ),
          PediatricAnesthesiaItem(
            title: "İNVAZİV MONİTÖRİZASYON VE SAĞ RADİAL ARTER SEÇİMİ",
            description: "Gerektiğinde kan basıncı takibi için yenidoğanlarda preduktal akımı gösteren sağ radial arter tercih edilir.",
            additionalInfo: "Umbilikal arter kateteri de YD yoğun bakımda bir seçenektir.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'İndüksiyon ve Havayolu',
        items: [
          PediatricAnesthesiaItem(
            title: "PEDİATRİK ANESTEZİ İNDÜKSİYON TEKNİKLERİ",
            description: "Kooperasyon sağlanamayan çocuklarda maske ile inhalasyon indüksiyonu en konforlu yaklaşımdır.",
            additionalInfo: "IV yol indüksiyon sonrası (uyuduktan sonra) açılabilir.",
          ),
          PediatricAnesthesiaItem(
            title: "ENDOTRAKEAL TÜP ÇAPI HESAPLAMASI [4 + (YAŞ/4)]",
            description: "Kaşsız (un-cuffed) tüpler için formül 4 + (yaş/4) şeklindedir; kaflı tüplerde genelde 0.5-1.0 mm daha küçük seçilir.",
            additionalInfo: "Doğru tüp boyutu travmatik olmayan ventilasyon için hayati önem taşır.",
          ),
          PediatricAnesthesiaItem(
            title: "ENDOTRAKEAL TÜP UZUNLUĞU HESAPLAMASI [12 + (YAŞ/2)]",
            description: "Tüpün yerleşim derinliği 12 + (Yaş/2) formülü ile hızlıca hesaplanabilir.",
            additionalInfo: "Endobronşiyal entübasyon riski çocuklarda (kısa trakea nedeniyle) yüksektir.",
          ),
          PediatricAnesthesiaItem(
            title: "KAFLI TÜP KULLANIMI VE HAVA KAÇAK TESTİ (15-20 CMH2O)",
            description: "Kaflı tüplerde krikoid ödemi önlemek için kaf basıncı kontrol edilmeli ve 15-20 cmH2O basınçta hava kaçağı duyulmalıdır.",
            subtitle: "Laringospazm durumunda 10 cmH2O PEEP (sürekli basınç) hayat kurtarıcı olabilir",
            additionalInfo: "Hava kaçağının olmaması subglottik ödem riskini gösterir.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'İdame',
        items: [
          PediatricAnesthesiaItem(
            title: "PEDİATRİK VENTİLASYON PARAMETRELERİ (PIP: 15-18 CMH2O)",
            description: "10 kg altı çocuklarda basınç kontrollü ventilasyon (PIP 15-18 cmH2O) akciğer hasarını önlemek için daha güvenlidir.",
            subtitle: "Tidal volüm hedefi olarak 6-8 mL/kg değerleri baz alınmalıdır",
            additionalInfo: "Solunum sayısı çocuğun yaşına göre fizyolojik sınırlarda tutulmalıdır.",
          ),
          PediatricAnesthesiaItem(
            title: "POSTOPERATİF DELİRYUMU ÖNLEME STRATEJİLERİ",
            description: "Sevofluran indüksiyonu sonrası idamenin İzoflurana geçilmesi postoperatif ajitasyonu azaltabilir.",
            additionalInfo: "Derlenmede analjezi kontrolü ajitasyon riskini minimize eder.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Sıvı Yönetimi',
        items: [
          PediatricAnesthesiaItem(
            title: "SIVI İDAMESİNDE 4-2-1 KURALI",
            description: "İlk 10 kg için 4 mL/kg/saat, sonraki 10 kg için +2 mL/kg/saat ve sonrası için +1 mL/kg/saat eklenir.",
            additionalInfo: "Cerrahi travma ve kanama kayıpları bu idamenin üzerine eklenmelidir.",
          ),
          PediatricAnesthesiaItem(
            title: "YAŞA GÖRE GLİKOZ GEREKSİNİMİ (2-8 MG/KG/DK)",
            description: "Küçük çocuklarda ve yenidoğanlarda bazal glikoz gereksinimi (6-8 mg/kg/dk) oldukça yüksektir.",
            additionalInfo: "Büyük çocuklarda bu ihtiyaç 2-3 mg/kg/dk'ya düşer.",
          ),
          PediatricAnesthesiaItem(
            title: "YAŞA GÖRE TAHMİNİ KAN HACİMLERİ (80-100 ML/KG)",
            description: "Prematürelerde 100 mL/kg, yenidoğanda 85-90 mL/kg, bebeklerde ise 80 mL/kg kan hacmi tahmin edilir.",
            additionalInfo: "Kayıp telafisi bu hacimlere göre oranlanmalıdır.",
          ),
          PediatricAnesthesiaItem(
            title: "PEDİATRİK HEDEF HEMATOKRİT (HCT) SEVİYESİ",
            description: "Yenidoğanlarda %40 Hct hedeflenirken; stabil büyük çocuklarda %20-26 seviyeleri tolere edilebilir.",
            additionalInfo: "Anemi kalbin iş yükünü artırır; çocuklarda bu telafi kapasitesi sınırlıdır.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Rejyonal',
        items: [
          PediatricAnesthesiaItem(
            title: "KAUDAL BLOK UYGULAMASI VE DOZAJ (2.5 MG/KG)",
            description: "Postoperatif analjezi için Bupivakain (%0.125-0.25) ile yapılan kaudal blok en sık kullanılan yöntemdir.",
            subtitle: "Sakral blok için 0.5 mL/kg, midtorasik seviye için 1.25 mL/kg hacim gerekir",
            additionalInfo: "Kaudal morfin (25 mcg/kg) analjezi süresini uzatır.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Derlenme',
        items: [
          PediatricAnesthesiaItem(
            title: "LARİNGOSPAZM YÖNETİMİ VE KRİTİK MÜDAHALE",
            description: "CPAP uygulaması ile başlanır; çözülmezse IV Lidokain (1-1.5 mg/kg) veya düşük doz Süksinilkolin verilir.",
            additionalInfo: "Negatif basınçlı akciğer ödemi gelişme riski mevcuttur.",
          ),
          PediatricAnesthesiaItem(
            title: "POSTENTÜBASYON KRUP VE TEDAVİ YAKLAŞIMI",
            description: "En sık 1-4 yaş aralığında görülür; travmatik entübasyon veya büyük tüp kullanımı sonrası gelişir.",
            subtitle: "Tedavide IV deksametazon ve nebulize rasemik epinefrin uygulanır",
            additionalInfo: "İnspiratuvar stridor en tipik bulgudur.",
          ),
          PediatricAnesthesiaItem(
            title: "PEDİATRİK POSTOPERATİF AĞRI KONTROLÜ",
            description: "Asetaminofen, ketorolak ve 6-7 yaş üstünde PCA (Hasta Kontrollü Analjezi) kullanılabilir.",
            additionalInfo: "Opioid gereksinimi rejyonal bloklarla minimize edilmelidir.",
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Spesifik Hastalıklar',
        items: [
          PediatricAnesthesiaItem(
            title: "PREMATÜRE BEBEKLER VE POSTOPERATİF APNE RİSKİ",
            description: "Postkonsepsiyonel yaşı 60 haftanın altında olan bebeklerde postoperatif merkezi apne riski yüksektir.",
            additionalInfo: "Bu hastalar en az 24 saat monitörize edilmelidir.",
          ),
          PediatricAnesthesiaItem(
            title: "KONJENİTAL DİYAFRAM HERNİSİ (CDH) VE VENTİLASYON (PIP <30)",
            description: "Akciğer hipoplazisi nedeniyle nazik ventilasyon (PIP <30 cmH2O) ve permisif hiperkapni hedeflenmelidir.",
            additionalInfo: "NG dekompresyonu toraks içi basıyı azaltmak için şarttır.",
          ),
          PediatricAnesthesiaItem(
            title: "FALLOT TETRALOJİSİ (TOF) VE ANESTEZİ YAKLAŞIMI",
            description: "SVR'yi korumak ve PVR artışından (pozitif basınç) kaçınmak kritiktir; NMB'siz hafif indüksiyon denenebilir.",
            additionalInfo: "Hiperiyanotik ataklarda (spell) diz-göğüs pozisyonu ve morfin uygulanır.",
          ),
          PediatricAnesthesiaItem(
            title: "OMFALOSEL VE GASTROŞİZİS YÖNETİMİ",
            description: "Barsak distansiyonunu önlemek için N2O kesinlikle kontrendikedir.",
            subtitle: "PIP >35 cmH2O olduğunda karın içi basınç artışına bağlı perfüzyon kaybı riski vardır",
            additionalInfo: "Isı kaybı ve sıvı açığı bu grupta devasa boyuttadır.",
          ),
          PediatricAnesthesiaItem(
            title: "PİLOR STENOZU VE SIVI-ELEKTROLİT DENGESİ",
            description: "Cerrahi öncesi önce sıvı ve hipokloremik alkaloz düzeltilmeli; sonra 'tok hasta' protokolü ile RSI yapılmalıdır.",
            additionalInfo: "Pilor stenozu cerrahi değil, medikal bir acildir.",
          ),
          PediatricAnesthesiaItem(
            title: "KRUP VE EPİGLOTTİTTE HAVAYOLU ACİLLERİ",
            description: "Tam tıkanıklık riski nedeniyle sakin tutulmalı ve KBB eşliğinde kontrollü inhalasyon indüksiyonu yapılmalıdır.",
            additionalInfo: "Epiglottit bir bakteriyel enfeksiyondur ve daha dramatiktir.",
          ),
          PediatricAnesthesiaItem(
            title: "DOWN SENDROMU VE KARDİOPULMONER RİSKLER",
            description: "Zor havayolu, atlantoaksiyel instabilite ve eşlik eden AV kanal defekti gibi kardiyak anomaliler unutulmamalıdır.",
            additionalInfo: "Makroglossi entübasyonu güçleştirir.",
          ),
          PediatricAnesthesiaItem(
            title: "SKOLYOZ CERRAHİSİ VE NÖROMONİTÖRİZASYON",
            description: "Spinal kord izlemi (MEP/SEP) için volatil ajan dozları kısıtlanmalı; MH riski taşıyan müsküler distrofiler taranmalıdır.",
            additionalInfo: "Ciddi kan kaybı beklenen bir cerrahidir.",
          ),
        ],
      ),
    ];
  }
}
