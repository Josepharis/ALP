import 'package:flutter/material.dart';

class CardiovascularSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiovascularSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiovascularSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<CardiovascularSurgeryAnesthesiaItem> items;

  CardiovascularSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiovascularSurgeryAnesthesiaData {
  static List<CardiovascularSurgeryAnesthesiaCategory>
      getCardiovascularSurgeryAnesthesiaData(BuildContext context) {
    return [
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Kardiyopulmoner Bypass (KPB)',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: "KPB TEMEL DEVRE BİLEŞENLERİ (REZERVUAR VE POMPA)",
            description: "Kardiyopulmoner bypass devresi, venöz kanın toplandığı rezervuar ve kanın devirdaimini sağlayan ana pompadan oluşur.",
            subtitle: "Hava embolisi riski ve dolum basıncı gereksinimleri pompa tipine göre değişir",
            additionalInfo: "Rezervuar venöz kanı her yerçekimi ile toplar. Oksijenatör bölümünde (silikon membran) kan gazı değişimi sağlanırken, ısı değiştirici sistem kondüksiyon yoluyla kanı ısıtır veya soğutur.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "POMPA TİPLERİ VE MEKANİK ÖZELLİKLER (ROLLER VE SANTRIFUGAL)",
            description: "Kalp cerrahisinde kan akımını sağlamak için basınçtan bağımsız 'roller' veya basınca duyarlı 'santrifugal' pompalar kullanılır.",
            subtitle: "Roller pompalar basınçtan etkilenmezken, santrifugal pompalar kan travmasını (hemoliz) minimize eder",
            additionalInfo: "Roller pompada hava basma riski daha yüksektir. Pulsatil akım sağlayabilen sistemler ise doku perfüzyonunu artırmak için özel vakalarda tercih edilebilir.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "ARTERİYEL FİLTRE VE EMBOLİ KORUMASI",
            description: "Devredeki kanı hastaya geri vermeden önce 27-40 µm gözenekli filtreler ile mikroembolilere karşı süzme işlemi yapılır.",
            additionalInfo: "Bu filtreler, devreden gelebilecek hava kabarcıklarını, partikülleri ve agregatları tutarak serebral ve sistemik emboli riskini önemli ölçüde azaltır.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "KPB AKSESUAR DONANIMLARI",
            description: "Cerrahi sahayı temizlemek ve kardiyak odacıkları boşaltmak için çeşitli yardımcı aspiratör ve pompa sistemleri kullanılır.",
            additionalInfo: "Bunlar arasında kardiyotomi aspiratörü, sol ventrikül 'vent' hattı (boşaltma), kardiyopleji pompası ve kandaki fazla sıvıyı uzaklaştırmak için kullanılan ultrafiltrasyon üniteleri yer alır.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "SİSTEMİK HİPOTERMİ VE METABOLİK ETKİLER",
            description: "KPB sırasında doku oksijen ihtiyacını azaltmak için vücut ısısı genellikle 20-32°C arasına düşürülür.",
            subtitle: "Vücut ısısındaki her 10°C'lik düşüş, metabolik oksijen gereksinimini yaklaşık yarıya indirir",
            additionalInfo: "Derin hipotermik sirkülatuar arrest (DHCA) durumunda, ısı 15-18°C'ye kadar düşürülerek beyin koruması altında kısa süreliğine dolaşım tamamen durdurulabilir.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "MİYOKARD KORUNMASI VE KARDİYOPLEJİ PRENSİPLERİ",
            description: "Kalbi diyastolde durdurarak (kardiyopleji) cerrahi konfor sağlamak ve miyokardın enerji tüketimini minimuma indirmek esastır.",
            subtitle: "Potasyumdan zengin (10-40 mEq/L) solüsyonlar kullanılarak elektriksel aktivite durdurulur",
            additionalInfo: "Kardiyopleji solüsyonuna Ca, Mg, bikarbonat, mannitol ve hücre zarını stabilize eden ajanlar eklenir. Solüsyon genellikle her 30 dakikada bir tekrarlanarak miyokardiyal 'soğuk' sessizlik korunur.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "KARDİYOPLEJİ UYGULAMA YÖNTEMLERİ",
            description: "Koroner arterlere doğrudan (antegrad) veya koroner sinüs üzerinden (retrograd) kalp durdurucu solüsyon verilebilir.",
            additionalInfo: "Retrograd yöntem, tıkalı koroner arterlerin arkasındaki iskemik bölgelere ulaşmada daha etkili olabilir. Uygulama sırasında hiperkalsemiden (taş kalp riski) kaçınılmalıdır.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "KPB'NİN SİSTEMİK FİZYOLOJİK ETKİLERİ",
            description: "Yapay dolaşım, vücutta stres hormonlarının artışına ve sistemik bir inflamatuar yanıta neden olarak birçok organı etkiler.",
            subtitle: "Koagülopati, ödem, ARDS riski ve akut böbrek hasarı (AKİ) bu sürecin olası komplikasyonlarıdır",
            additionalInfo: "KPB döneminde farmakokinetik süreçler değişir; özellikle hidrofilik ajanların plazma konsantrasyonu dilüsyon nedeniyle azalır. Heparin kullanımı ise ilaçların proteine bağlanma oranlarını etkiler.",
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Kardiyak Cerrahide Anestezi Yönetimi',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: "PREOPERATİF MULTİSİSTEMİK DEĞERLENDİRME",
            description: "Kardiyak cerrahiye giren hastalarda kalp rezervinin yanı sıra pulmoner, renal ve nörolojik fonksiyonların detaylı analizi şarttır.",
            additionalInfo: "Egzersiz toleransı, geçirilmiş inme öyküsü ve böbrek fonksiyon testleri (kreatinin) ameliyat sonrası başarıyı belirleyen anahtar faktörlerdir.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "İLERİ MONİTÖRİZASYON TEKNİKLERİ",
            description: "Girişimsel olmayan standart takiplere ek olarak invaziv arter, santral venöz basınç ve TEE gibi ileri yöntemler kullanılır.",
            additionalInfo: "EKG'de II ve V5 derivasyonları iskemiyi yakalamak için izlenir. Serebral perfüzyon için EEG ve NIRS, miyokard fonksiyonu için ise Transözofageal Eko (TEE) altın standarttır.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "ANESTEZİ İNDÜKSİYONU VE HEMODİNAMİK KONTROL",
            description: "İndüksiyon süreci, laringoskopiye yanıtı baskılayacak kadar derin ama kalbi yormayacak kadar sakin ve kontrollü olmalıdır.",
            additionalInfo: "Beklenmedik hipotansiyon durumunda fenilefrin, vazopressin veya efedrin gibi ajanlar hızla devreye sokulmalıdır. Sıvı bolusları kontrollü verilmelidir.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "YÜKSEK DOZ OPİOİD ANESTEZİSİ",
            description: "Miyokard depresyonunu minimize etmek ve hemodinamik stabiliteyi korumak için yüksek doz opioidlerle kombine anestezi uygulanabilir.",
            subtitle: "Bu yöntemde miyokardial depresyon riskinin azaldığı ancak postoperatif erken ekstübasyonun güçleştiği bilinmelidir",
            additionalInfo: "Yüksek doz opioidler ağrısız bir cerrahi sağlarken postoperatif dönemde uzamış mekanik ventilasyon ihtiyacı yaratabilir.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "TOTAL İNTRAVENÖZ ANESTEZİ (TIVA) VE FAST-TRACK",
            description: "Erken ekstübasyonu (fast-track) hedefleyen vakalarda propofol ve opioidlerin hedef kontrollü infüzyonları (TCI) tercih edilir.",
            additionalInfo: "Propofol infüzyonu genellikle 1.5-2 µg/mL hedefinde tutulur. Bu yöntem, hastanın derlenme odasında veya YBÜ'de hızla uyandırılmasına imkan tanır.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "MİKST İNTRAVENÖZ VE İNHALASYONEL YAKLAŞIM",
            description: "Uçucu (inhalasyon) ajanların kardiyoprotektif etkilerinden faydalanmak için IV ajanlarla kombine kullanım sık görülür.",
            subtitle: "Kardiyak cerrahide hava embolisi riski nedeniyle Azot Protoksit (N₂O) kesinlikle kullanılmaz",
            additionalInfo: "Volatil ajanlar (Sevofluran/Desfluran) miyokardial preconditioning sağlayarak iskemik hasara karşı ek koruma sunarlar.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "KAS GEVŞETİCİ SEÇİMİ VE YÖNETİMİ",
            description: "Kalp cerrahisinde hemodinamik yan etkisi düşük olan nondepolarizan kas gevşeticiler tercih edilir.",
            additionalInfo: "Roküronyum, veküronyum ve böbrek/karaciğer yetmezliği olanlarda sisatraküryum en sık kullanılan ajanlardır.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "BYPASS ÖNCESİ HAZRLIK VE HEPARİZASYON (ACT TAKİBİ)",
            description: "KPB devresiyle temas öncesinde kanın pıhtılaşması, 300-400 ünite/kg dozunda Heparin ile tamamen engellenmelidir.",
            subtitle: "ACT süresinin (Aktive Pıhtılaşma Zamanı) 400-480 saniye aralığında olması KPB başlangıcı için güvenlidir",
            additionalInfo: "Heparin direnci (ATIII eksikliği) durumunda TDP veya rekombinant ATIII desteği gerekebilir. Kanama profilaksisi için traneksamik asit infüzyonu standarttır.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "BYPASS DÖNEMİ AKIM VE BASINÇ HEDEFLERİ",
            description: "Bypass sırasında ideal pompa akımı 2-2.5 L/dk/m², ortalama arter basıncı ise 50-80 mmHg arasında tutulur.",
            additionalInfo: "Sıvı yönetimi hemodilüsyon prensibine dayanır. Ventilasyon bu sırada durdurulur veya çok düşük basınçlarda (PEEP 5) tutulur.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "SEREBRAL KORUMA STRATEJİLERİ",
            description: "Ameliyat sırasında beyni mikroemboli ve iskemiden korumak için multisistemik bir yaklaşım uygulanır.",
            additionalInfo: "TEE ile epiaortik eko takibi, steroid, mannitol kullanımı, baş bölgesinin soğutulması ve serebral metabolizmayı düşüren tiyopental/propofol kullanımı bu stratejinin parçalarıdır.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "POMPADAN AYRILMA (WEANING) SÜRECİ",
            description: "Cerrahi tamamlandığında pompa akımı kademeli olarak düşürülür ve kalbin kendi yükünü üstlenmesi izlenir.",
            subtitle: "Sistolik basınç >80-90 mmHg olduğunda ve kalp hızı yeterli seviyeye geldiğinde pompadan tamamen ayrılma gerçekleşir",
            additionalInfo: "Kalp yetersiz kalırsa pozitif inotropik ilaçlar veya İntraaortik Balon Pompası (IABP) desteği altıncı adımdır.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "POSTOPERATİF TAKİP VE PROTAMİN UYGULAMASI",
            description: "Pompadan ayrıldıktan sonra heparin etkisini geri çevirmek için 1 mg / 100 ünite dozunda Protamin uygulanır.",
            subtitle: "Postoperatif Hematokrit (Hct) değerinin %25-30 bandında tutulması hedeflenir",
            additionalInfo: "Postoperatif kanama hızı 10 mL/kg/saatini aşarsa cerrahi re-eksplorasyon (tekrar açılma) endikasyonu doğar. Elektrolit ve ritim kontrolü çok sıkı yapılmalıdır.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "OFF-PUMP CABG (ÇALIŞAN KALPDE BYPASS) YÖNETİMİ",
            description: "KPB devresi kullanmadan yapılan bu vakalarda cerrahi sahanın özel 'suction' stabilizatörlerle sabitlenmesi gerekir.",
            additionalInfo: "Distal anastomozlar sırasında hipotansiyonu engellemek için vazopressör, proksimal anastomozlarda ise dikiş hattını korumak için vazodilatör desteği gerekebilir.",
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Pediatrik Kardiyak Cerrahi',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: "PEDİATRİK PREOPERATİF HAZIRLIK VE PGE1 DESTEĞİ",
            description: "Duktus bağımlı konjenital lezyonu olan yenidoğanlarda, duktusun açık kalması için PGE1 infüzyonu hayati önem taşır.",
            additionalInfo: "KKY ve pulmoner enfeksiyonlar cerrahi öncesinde mutlaka tedavi edilmelidir. Çocuklarda hemodinamik denge çok daha kırılgandır.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "ÇOCUKLARDA ANESTEZİ İNDÜKSİYON YÖNTEMLERİ",
            description: "Kooperasyon güçlüğü olan çocuklarda IV indüksiyonun yanı sıra kas içi (IM) Ketamin veya yüksek konsantrasyonlu Sevofluran tercih edilebilir.",
            subtitle: "IM indüksiyonda Ketamin (4-10 mg/kg) ve Atropin kombinasyonu sık kullanılır",
            additionalInfo: "Laringoskopi sırasında çocuklarda bradikardi riskine karşı vagolitik (atropin) hazır bulundurulmalıdır.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "PEDİATRİK MONİTÖRİZASYON STANDARTLARI",
            description: "Küçük vücut yapısına uygun invaziv arter ve CVP takibi her vakada standarttır; pulmoner arter kateteri nadiren gerekir.",
            additionalInfo: "Vücut ısısının takibi (rektal/özofageal) çocuklarda hızlı ısı kaybı nedeniyle erişkinlerden çok daha önemlidir.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "ÇOCUKLARDA KPB ÖZELLİKLERİ VE PH-STAT YAKLAŞIMI",
            description: "Pediatrik bypass devreleri, aşırı hemodilüsyonu önlemek için genellikle kan ile hazırlanır (prime edilir).",
            additionalInfo: "Dolaşım arresti gereken derin hipotermik çocuklarda, serebral kan akımını ve soğumayı optimize etmek için pH-stat kan gazı yönetimi daha üstün kabul edilir.",
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Kalp Nakli (Transplantasyon)',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: "KALP NAKLİ PREOPERATİF KRİTERLERİ VE PVR SINIRI",
            description: "Nakil adayı hastalarda Ejeksiyon Fraksiyonu (EF) genellikle %20'nin altındadır ve PVR < 6-8 Wood ünitesi olmalıdır.",
            additionalInfo: "İleri geri dönüşsüz organ hasarı olan vakalar nakil için uygun değildir; preoperatif pulmoner vasküler direnç takibi kritik bir seçim kriteridir.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "NAKİLDE ANESTEZİ HAZIRLIĞI VE ÖNLEMLER",
            description: "Kalp nakli hastaları 'tok hasta' protokolü ile yönetilmeli; H2 bloker ve metoklopramid desteği sağlanmalıdır.",
            additionalInfo: "Ameliyat öncesi başlanan siklosporin ve diğer immünsupresiflerin yönetimi ile sterilizasyon kuralları çok sıkıdır.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "KPB SONRASI RİSKLER VE SAĞ KALP YETERSİZLİĞİ",
            description: "Yeni kalbin (donör kalp) yüksek pulmoner dirençle karşılaşması sonucu pompadan çıkışta sağ kalp yetmezliği gelişebilir.",
            additionalInfo: "Bu durumda hiperventilasyon ve pulmoner vazodilatörler kullanılarak sağ ventrikülün yükü hafifletilmeye çalışılır.",
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Perikard Hastalıkları',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: "KARDİYAK TAMPONAD VE ACİL MÜDAHALE",
            description: "Akut tamponadda 100-200 mL sıvı, kardiyak dolumu engelleyerek ağır hipotansiyon ve şoka yol açabilir.",
            subtitle: "CVP trasesinde 'y' dalgasının kaybolması ve 'x' dalgasının belirginleşmesi tanısal bir işarettir",
            additionalInfo: "Anestezide hemodinamiyi korumak için 'full fill but fast' (tam dolum ve hızlı ritim) kuralı geçerlidir. Düşük doz ketamin indüksiyon için idealdir.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "KONSTRİKTİF PERİKARDİT VE CERRAHİ YÖNETİM",
            description: "Perikardın kalınlaşarak kalbi sıkıştırması sonucu 'y' inişinin görünür olduğu ve Kussmaul belirtisinin (+) olduğu tablodur.",
            subtitle: "Cerrahi perikardiyektomi sırasında KPB mutlaka hazır bulundurulmalıdır",
            additionalInfo: "Temel amaç bradikardi ve kardiyak depresyondan kaçınarak kalbin kısıtlı dolum hacmini korumaktır.",
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Damar Cerrahisi',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: "AORT CERRAHİSİ VE DİSEKSİYON YÖNETİMİ",
            description: "Aort diseksiyonu ve 5 cm'den büyük anevrizmalar acil veya planlı cerrahi endikasyonlardır.",
            additionalInfo: "Diseksiyonda proksimal lezyonlar cerrahi, distal lezyonlar genellikle medikal tedavi (kan basıncı kontrolü) gerektirir. Koarktasyon preduktal ve postduktal olarak ikiye ayrılır.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "AORT CERRAHİSİNDE ANESTEZİ VE KORUMA",
            description: "Aort cerrahisinde serebral ve spinal koruma için derin hipotermi ve dolaşım arresti sıkça uygulanır.",
            subtitle: "İnen torasik aort cerrahisinde klempe bağlı distal hipotansiyon ve proksimal hipertansiyon riski yüksektir",
            additionalInfo: "TEE takibi ve kanama kontrolü için traneksamik asit kullanımı standarttır. Postoperatif dönemde hemodinamik instabilite yakından izlenmelidir.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "KAROTİD CERRAHİSİ (ENDARTEREKTOMİ) VE RİSK ANALİZİ",
            description: "Genellikle %70 ve üzeri stenozu olan semptomatik hastalarda inme riskini azaltmak için yapılır.",
            subtitle: "Temel amaç serebral ve koroner perfüzyonun operasyon boyunca titizlikle korunmasıdır",
            additionalInfo: "75 yaş üzeri, kontrolsüz hipertansiyonu veya trombozu olan hastalar komplikasyon açısından yüksek riskli kabul edilir.",
          ),
        ],
      ),
    ];
  }
}
