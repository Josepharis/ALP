import 'package:flutter/material.dart';

class GenitourinarySurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  GenitourinarySurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class GenitourinarySurgeryAnesthesiaCategory {
  final String categoryName;
  final List<GenitourinarySurgeryAnesthesiaItem> items;

  GenitourinarySurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class GenitourinarySurgeryAnesthesiaData {
  static List<GenitourinarySurgeryAnesthesiaCategory>
      getGenitourinarySurgeryAnesthesiaData(BuildContext context) {
    return [
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Sistoskopi',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "SİSTOSKOPİ PREOPERATİF DEĞERLENDİRME",
            description: "Çocuklarda her zaman genel anestezi (GA) gerekirken, yetişkin kadınlarda tanısal işlemler topikal lidokain ile yapılabilir.",
            additionalInfo: "Erkek hastalar ve tüm girişimsel sistoskopik işlemler genellikle GA veya rejyonal anestezi (RA) gerektirir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "LİTOTOMİ POZİSYONU VE SİNİR HASARLARI",
            description: "Sistoskopide kullanılan litotomi pozisyonunun en sık görülen nörolojik komplikasyonu lumbosakral pleksus hasarıdır.",
            subtitle: "Ortak peroneal sinir hasarı ayak dorsifleksiyon kaybına, safen sinir hasarı ise iç uyluk duyu kaybına yol açar",
            additionalInfo: "Ayrıca obturator, femoral ve siyatik sinirler de yanlış pozisyonlandırma sonucu bası altında kalabilir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "UZAMIŞ LİTOTOMİ VE KOMPARTMAN SENDROMU",
            description: "Litotomi pozisyonunda 2-3 saati aşan işlemler, ekstremitede rabdomiyoliz ve kompartman sendromu riskini artırır.",
            subtitle: "Pozisyona bağlı olarak Fonksiyonel Rezidüel Kapasite (FRK) azalır; Trendelenburg eklenmesi bu kısıtlamayı derinleştirir",
            additionalInfo: "Hastaların ameliyat sonrası bacak ağrısı ve duyu kusuru açısından yakından takibi şarttır.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "ANESTEZİ YÖNTEMİ VE BLOK SEVİYESİ (T10)",
            description: "Endişeli hastalarda genel anestezi (LMA dahil) tercih edilebilirken, spinal anestezi hızlı etki avantajı sunar.",
            subtitle: "Tanısal ve girişimsel sistoskopiler için T10 düzeyinde bir duyusal blok genellikle yeterlidir",
            additionalInfo: "Spinal blok 5 dakikadan kısa sürede otururken, epidural anestezi için 15-20 dakika gerekebilir.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'TURP (Transüretral Prostat Rezeksiyonu)',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "TURP PREOPERATİF RİSK ANALİZİ",
            description: "TURP hastaları genellikle ileri yaşta, kardiyovasküler ve pulmoner ek hastalıkları olan bir gruptur.",
            additionalInfo: "Bu durum perioperatif dönemde hemodinamik instabilite riskini artırır.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "TURP CERRAHİ KOMPLİKASYONLARI VE SEPSİS",
            description: "İşlem sırasında şiddetli kanama, perforasyon, DİK (Disseminasyon İntravasküler Koagülasyon) ve sepsis gelişebilir.",
            additionalInfo: "Enfeksiyon prostatik venöz sinüslerden sistemik dolaşıma hızla yayılabilir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "TURP SENDROMU PATOFİZYOLOJİSİ (SIVI EMİLİMİ)",
            description: "Açılan venöz sinüslerden büyük miktarda (ortalama 2L) elektrolitsiz yıkama sıvısının emilmesiyle oluşur.",
            subtitle: "Sıvı emilim hızı yaklaşık 20 mL/dk civarındadır",
            additionalInfo: "Serum sodyum düzeyinin 120 mEq/L'nin altına düşmesi semptomları belirginleştirir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "TURP SENDROMUNDA KULLANILAN İRRİGASYON SIVILARI",
            description: "Elektrolitsiz glisin, sorbitol veya mannitol içeren solüsyonlar kullanıldığında farklı metabolik yan etkiler gelişebilir.",
            subtitle: "Glisin amonyak düzeyini artırırken; sorbitol diyabetiklerde hiperglisemiye, mannitol ise volüm yüklenmesine yol açabilir",
            additionalInfo: "İdeal sıvı izoosmotik ancak elektrolitsiz olmalıdır (akım güvenliği için).",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "TURP SENDROMU KLİNİK VE HİPONATREMİ TEDAVİSİ",
            description: "Şiddetli hiponatremi; konfüzyon, nöbet, görme bozuklukları ve komaya neden olabilir.",
            subtitle: "Tedavide semptomatik hastalara hipertonik NaCl (%3) infüzyonu (≤100 mL/saat) verilir",
            additionalInfo: "Nöbet kontrolü için düşük doz midazolam veya benzeri antikonvülzanlar kullanılabilir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "HİPOTERMİ VE MESANE PERFORASYONU",
            description: "Geniş yüzey alanından soğuk yıkama sıvısı geçişi hipotermiyi tetiklediği için tüm sıvılar ısıtılmalıdır.",
            subtitle: "Mesane perforasyonu (<%1) vakalarında şiddetli vgal bradikardi ve karın ağrısı tipiktir",
            additionalInfo: "Perforasyon genellikle cerrahi manipülasyonun derinleştiği evrelerde görülür.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "SEPTİSEMİ VE ANTİBİYOTİK PROFİLAKSİSİ",
            description: "TURP ameliyatları öncesinde uygun antibiyotik profilaksisi yapılması septisemi riskini azaltmak için şarttır.",
            additionalInfo: "İdrar yolu enfeksiyonu olan hastalarda işlem öncesi idrarın steril edilmesi önerilir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "TURP İÇİN ANESTEZİ VE BLOK SEVİYESİ (T10)",
            description: "Rejyonal anestezi (T10 blok), hastanın bilincinin açık kalarak TURP sendromu semptomlarının erken fark edilmesini sağlar.",
            subtitle: "Metastatik prostat kanseri şüphesinde spinal anestezi rölatif kontrendikedir",
            additionalInfo: "Spinal anestezi sırasında mesane dolgunluğu hastada ağrı ile uyarılabilir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "MONİTÖRİZASYON VE KAN KAYBI TAKİBİ",
            description: "Bilinç takibi ve EKG izlemi (miyokardiyal iskemi riski %18) TURP ameliyatlarında hayati öneme sahiptir.",
            subtitle: "Kan kaybı ortalama 3–5 mL/dk olup; 90 dakikayı aşan ameliyatlarda veya 45 gramdan büyük dokularda transfüzyon gerekebilir",
            additionalInfo: "Hipotansiyon, hem kan kaybının hem de TURP sendromunun geç bir belirtisi olabilir.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Litotripsi',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "ESWL (TAŞ KIRMA) VE ARİTMİ RİSKİ",
            description: "Şok dalgaları kalp pilerini ve ICD cihazlarını etkileyerek aritmi riskini artırır; bu yüzden dalgalar R-dalgasıyla senkronize edilmelidir.",
            subtitle: "İşlem sırasında sistemik vasküler direnç (SVR) artarken, FRK %30–60 oranında azalabilir",
            additionalInfo: "R-dalgası senkronizasyonuna rağmen hastalarda SVT (Supraventriküler Taşikardi) gelişme riski devam eder.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "LİTOTRİPSİ ANESTEZİ SEÇİMİ VE SEDASYON",
            description: "Modern, düşük enerjili tekniklerde hafif sedasyon yeterliyken; eski su banyosu teknikleri T6 seviyesinde RA veya GA gerektirir.",
            subtitle: "Epidural kateter yerleştirilirken ultrason dalgalarını saptırmamak için hava yerine SF kullanılmalıdır",
            additionalInfo: "Anestezi seviyesi kum dökme sırasında oluşabilecek şiddetli ağrıyı engellemelidir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "BRADİKARDİ YÖNETİMİ VE GLİKOPROLAT",
            description: "İşlem sırasında gelişen bradikardiler antikolinerjik ajanlar (özellikle glikoprolat) ile tedavi edilir.",
            additionalInfo: "Vagal stimülasyon taş kırma sırasında sık bir bulgudur.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "LİTOTRİPSİ MONİTÖRİZASYON STANDARTLARI",
            description: "Kesintisiz EKG, oksijen satürasyonu ve ısı takibi tüm litotripsi hastalarında standarttır.",
            additionalInfo: "Aritmi takibi monitör üzerinden titizlikle sürdürülmelidir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "SIVI YÖNETİMİ VE DİÜRETİK DESTEĞİ",
            description: "Kum ve taş parçalarının atılımını hızlandırmak için operasyonda aktif sıvı yüklenmesi uygulanır.",
            subtitle: "Başlangıç bolusundan sonra 1000–2000 mL RL ve düşük doz furosemid desteği verilebilir",
            additionalInfo: "Hidrasyonun sürdürülmesi renal perfüzyon için de koruyucudur.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Üst Üreter ve Böbreğin Kanser Dışı Cerrahisi',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "LATERAL FLEKSİYON (BÖBREK) POZİSYONU",
            description: "Brakial pleksusu korumak için aksillaya mutlaka rulo konulmalı ve başın pozisyonu nötral tutulmalıdır.",
            subtitle: "Lateral fleksiyon verildikten sonra endotrakeal tüpün yerinden çıkıp çıkmadığı kontrol edilmelidir",
            additionalInfo: "Bu pozisyon cerrahi sahaya erişim sağlarken hastanın konforu ve sinir güvenliği için risklidir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "POZİSYONA BAĞLI SOLUNUMSAL DEĞİŞİKLİKLER",
            description: "Lateral fleksiyon pozisyonunda FRK azalır, ölü boşluk artar ve atelektazi riski belirgin şekilde yükselir.",
            additionalInfo: "Mekanik ventilasyon sırasında havayolu basınçlarındaki artışa dikkat edilmelidir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "CERRAHİ MONİTÖRİZASYON VE ERİŞİM",
            description: "Geniş damar yolları ve invaziv arter monitörizasyonu büyük böbrek cerrahilerinde standarttır.",
            additionalInfo: "Beklenmedik büyük damar yaralanmaları için kan hazırlığı yapılmalıdır.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Prostat Kanseri',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "RADİKAL RETROPUBİK PROSTATEKTOMİ (RRP)",
            description: "Büyük kanama potansiyeli taşıdığı için invaziv arter, CVP ve geniş IV erişim mutlak gerekliliktir.",
            subtitle: "Hipotansif anestezi kan kaybını azaltmak için seçilebilir",
            additionalInfo: "Postoperatif analjezi için genellikle epidural kateter kombinasyonu tercih edilir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "ROBOTİK RADİKAL PROSTATEKTOMİ VE TRENDELENBURG",
            description: "Derin Trendelenburg pozisyonu üst havayolu ödemi ve ciddi pulmoner komplikasyonlara (ventilasyon zorluğu vb.) neden olabilir.",
            additionalInfo: "Robotik cerrahinin uzun sürmesi pozisyonun yan etkilerini şiddetlendirir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "BİLATERAL ORŞİEKTOMİ ANESTEZİSİ",
            description: "Orşiektomi vakaları, hastanın tercihine göre GA veya spinal anestezi altında güvenle gerçekleştirilebilir.",
            additionalInfo: "Genellikle kısa süreli ve komplikasyon riski düşük işlemlerdir.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Mesane Kanseri',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "TURBT VE OBTURATOR SİNİR STİMÜLASYONU",
            description: "Koter akımının obturator siniri uyarması bacakta ani adduksiyona ve mesane perforasyonuna yol açabilir.",
            subtitle: "Bu riski önlemek için genel anestezi (GA) ile birlikte derin kas paralizisi kullanımı şarttır",
            additionalInfo: "Blok seviyesinin yetersiz olduğu bölgesel anestezilerde bu refleks baskılanamaz.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "RADİKAL SİSTEKTOMİ VE KAN KAYBI YÖNETİMİ",
            description: "Geniş cerrahi saha ve majör damarlar nedeniyle büyük kan kaybı beklenir; invaziv monitörizasyon hayati öneme sahiptir.",
            subtitle: "Hipotansif anestezi teknikleri kanamayı kontrol altına almak için bir seçenek olabilir",
            additionalInfo: "Hastaların ameliyat sonrası cerrahi yoğun bakım ihtiyacı olabilir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "İDRAR DİVERSİYONU VE ELEKTROLİT BOZUKLUKLARI",
            description: "İdrarın bağırsak segmentlerine yönlendirilmesi ciddi elektrolit ve asit-baz dalgalanmalarına yol açar.",
            subtitle: "Jejunal diversiyon hiponatremi ve hiperkalemi yaparken; ileal/kolon diversiyonu hiperkloremik metabolik asidoz yapar",
            additionalInfo: "Bağırsak mukoza emilim özellikleri metabolik tablonun belirleyicisidir.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Testis Kanseri',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "TESTİS KANSERİ VE KEMOTERAPİ KOMPLİKASYONLARI",
            description: "Genç hasta grubunda, kullanılan kemoterapötik ajanların organ fonksiyonları üzerindeki toksik etkilerine dikkat edilmelidir.",
            additionalInfo: "Özellikle nefrotoksisite ve akciğer hasarı en riskli durumlardır.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "KEMOTERAPÖTİK AJANLARIN ORGAN TOKSİSİTESİ",
            description: "Sisplatin nefrotoksisite, Bleomisin pulmoner fibrozis ve Vinkristin periferik nöropati yapabilir.",
            subtitle: "Bleomisin alan hastalarda yüksek FiO2 uygulaması akciğer hasarını tetikleyebilir",
            additionalInfo: "Preoperatif akciğer grafisi ve böbrek testleri mutlaka kontrol edilmelidir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "RADİKAL ORŞİEKTOMİ VE VAGAL REFLEKSLER",
            description: "Spermatik kordun cerrahi olarak çekilmesi güçlü vagal uyarı yaparak ani bradikardiye (refleks) yol açabilir.",
            additionalInfo: "Kısa süreli asistoli riskine karşı uyanık olunmalıdır.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "RETROPERİTONEAL LENF NODU DİSEKSİYONU (RPLND)",
            description: "Ameliyat sırasında interkostal arterlerin bağlanması nadir de olsa parapleji (omurilik hasarı) riski taşır.",
            subtitle: "İdrar çıkışının 0.5 mL/kg/saat düzeyinde tutulması böbrek korunması için gereklidir",
            additionalInfo: "Hacim replasmanı 1:2 veya 1:3 oranında kristalloid/kolloid ile yapılmalıdır.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Böbrek Kanseri',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "BÖBREK HÜCRELİ KARSİNOM (RCC) PREOP TABLOSU",
            description: "RCC hastalarında paraneoplastik olarak eritrositoz, hiperkalsemi, HT ve karaciğer disfonksiyonu görülebilir.",
            subtitle: "Hemoglobin düzeyinin 10 g/dL ve üzerinde olması hedeflenmelidir",
            additionalInfo: "Stauffer sendromu (karaciğer tutulumu olmaksızın disfonksiyon) saptanabilir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "RADİKAL NEFREKTOMİ VE ANESTEZİ KOMBİNASYONU",
            description: "Genel anesteziye eklenen epidural blokaj, hem intraoperatif kanamayı azaltır hem de mükemmel postoperatif analjezi sağlar.",
            subtitle: "Monitörizasyonda IAFP, CVP ve TEE (tromboz şüphesinde) kullanımı uygundur",
            additionalInfo: "İdrar çıkışı periyodik olarak kaydedilmelidir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "TÜMÖR TROMBÜSÜ VE VENA CAVA İNVASYONU",
            description: "RCC tümör trombüsü Vena Cava Inferior'a (VCI) uzanabilir; bu durumda majör emboli riski ve CPB gerekliliği oluşabilir.",
            subtitle: "CVP kateteri yerleştirilirken trombüsün mobilize edilmemesine azami özen gösterilmelidir",
            additionalInfo: "VCI klemplenmesi sırasında gelişebilecek şiddetli hipotansiyon için hazırlıklı olunmalıdır.",
          ),
        ],
      ),
      GenitourinarySurgeryAnesthesiaCategory(
        categoryName: 'Böbrek Nakli',
        items: [
          GenitourinarySurgeryAnesthesiaItem(
            title: "BÖBREK NAKLİ PREOPERATİF HAZIRLIK (K <5.5)",
            description: "Alıcı hastaların potasyum (K) düzeyinin 5.5 mEq/L'nin altında olması ve son 24-48 saatte diyaliz almış olması istenir.",
            additionalInfo: "Diyaliz sonrası hastanın 'kuru ağırlık' durumu ve ödemi kontrol edilmelidir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "İNTRAOPERATİF YÖNETİM VE KLEMP SONRASI DİÜREZ",
            description: "Vasküler klempler açıldığında yeni böbrekte idrar çıkışı görülmezse diüretik (mannitol/furosemid) desteği verilebilir.",
            subtitle: "Monitörizasyonda geniş damar yolu, İABP ve CVP takibi altın standarttır",
            additionalInfo: "Genel anestezi bu vakalarda her zaman ilk tercihtir.",
          ),
          GenitourinarySurgeryAnesthesiaItem(
            title: "HİPERKALEMİ KONTROLÜ VE VERİCİ BÖBREK KORUMASI",
            description: "Operasyon boyunca EKG'de potasyum dalgalanmaları izlenmeli; verici böbrek ise buzlu RL ile muhafaza edilmelidir.",
            additionalInfo: "Böbreğin korunması için iskemi süresinin minimumda tutulması kritiktir.",
          ),
        ],
      ),
    ];
  }
}
