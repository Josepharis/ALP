import 'package:flutter/material.dart';

class IntravenousAnestheticsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  IntravenousAnestheticsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class IntravenousAnestheticsCategory {
  final String categoryName;
  final List<IntravenousAnestheticsItem> items;

  IntravenousAnestheticsCategory({
    required this.categoryName,
    required this.items,
  });
}

class IntravenousAnestheticsData {
  static List<IntravenousAnestheticsCategory> getIntravenousAnestheticsData(
    BuildContext context,
  ) {
    return [
      IntravenousAnestheticsCategory(
        categoryName: 'Barbitüratlar',
        items: [
          IntravenousAnestheticsItem(
            title: "ETKİ MEKANİZMASI (GABAA RESEPTÖRÜ)",
            description: "GABAA reseptör kompleksine bağlanarak klorür (Cl⁻) kanallarının açık kalma süresini uzatır ve merkezi sinir sistemi depresyonu sağlar.",
            additionalInfo: "Bu etki sonucunda nöronal hiperpolarizasyon oluşur ve sinir iletimi baskılanır. Yüksek dozlarda doğrudan GABAA taklitçisi (mimetik) gibi davranabilirler. Analjezik (ağrı kesici) özellikleri yoktur, hatta düşük dozlarda ağrı duyarlılığını artırabilirler (anti-analjezi).",
          ),
          IntravenousAnestheticsItem(
            title: "FARMAKOKİNETİK VE DAĞILIM",
            description: "Tek doz uygulama sonrası etkinin sonlanması ilacın metabolizmasından ziyade santral kompartmandan dokulara hızlı dağılımı (redistribüsyon) ile gerçekleşir.",
            subtitle: "Tiyopental %60-80 oranında proteine bağlanır; yarı ömrü 10-12 saattir",
            additionalInfo: "Metoheksital, karaciğer tarafından daha hızlı temizlendiği için tiyopentale göre daha hızlı derlenme sağlar. Barbitüratlar yüksek oranda lipofilik (yağda çözünen) ilaçlardır, bu yüzden beyne hızla girip aynı hızla yağ ve kas dokularına dağılırlar.",
          ),
          IntravenousAnestheticsItem(
            title: "ORGAN SİSTEMLERİ ÜZERİNDEKİ ETKİLER",
            description: "Belirgin kardiyovasküler ve solunum depresyonu yaparken, beyin koruyucu özellikleri ile öne çıkarlar.",
            subtitle: "Serebral metabolizmayı (CMRO₂) ve kafa içi basıncı (ICP) düşürürler",
            additionalInfo: "• KVS: Periferik vazodilatasyon ve miyokardiyal depresyon sonucu kan basıncı düşer; refleks taşikardi görülebilir.\n• Solunum: Solunum sayısı ve derinliğini azaltırlar. Üst havayolu reflekslerini tam baskılamadıkları için laringospazm ve bronkospazm riski taşırlar.\n• Beyin: Serebral kan akımını azaltarak kafa içi basıncını düşürürler; bu yönüyle nöroşirürji vakalarında avantajlıdırlar.",
          ),
          IntravenousAnestheticsItem(
            title: "YAN ETKİLER VE KONTRENDİKASYONLAR",
            description: "Histamin salınımı ve metabolik bozuklukları tetikleme potansiyelleri nedeniyle hasta seçiminde dikkatli olunmalıdır.",
            additionalInfo: "Tiyobarbitüratlar (Tiyopental) histamin salınımına yol açarak astımlı hastalarda risk yaratabilir. En önemli kontrendikasyonu Porfiria (Akut Aralıklı Porfiri) hastalığıdır; ALA sentetaz enzimini indükleyerek ölümcül krizleri tetikleyebilir. Ayrıca enjeksiyon sonrası ağızda sarımsak veya soğan tadı bırakabilirler.",
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Benzodiazepinler',
        items: [
          IntravenousAnestheticsItem(
            title: "BENZODİAZEPİN ETKİ MEKANİZMASI",
            description: "GABAA reseptörleri üzerinden klorür kanallarının açılma 'sıklığını' artırarak sedasyon ve amnezi sağlar.",
            subtitle: "Spesifik antagonisti Flumazenil'dir",
            additionalInfo: "Barbitüratlar kanalın açık kalma 'süresini' artırırken, benzodiazepinler 'sıklığını' artırır. Güvenli bir terapötik indekse sahiptirler. Analjezik etkileri yoktur ancak güçlü antegrad amnezi (işlem anını hatırlamama) oluştururlar.",
          ),
          IntravenousAnestheticsItem(
            title: "FARMAKOKİNETİK PROFİL",
            description: "Midazolam, Diazepam ve Lorazepam en sık kullanılan türevlerdir; çözünürlükleri pH'a bağlı olarak değişir.",
            subtitle: "t½: Diazepam (30 sa) > Lorazepam (15 sa) > Midazolam (2 sa)",
            additionalInfo: "Midazolam, asidik pH'da suda çözünürken (ampul formu), vücut pH'ında lipofilik hale geçerek kan-beyin bariyerini hızla aşar. Diazepam'ın yıkımı sonucunda uzun etkili aktif metabolitler (desmetildiazepam) oluşur, bu da yaşlılarda etkinin uzamasına neden olabilir.",
          ),
          IntravenousAnestheticsItem(
            title: "ORGAN SİSTEMLERİ VE AMNEZİ",
            description: "Kardiyovasküler sistem üzerinde minimal etki gösterirken, solunum merkezini doz-bağlı olarak baskılarlar.",
            additionalInfo: "Genellikle sedasyon ve premedikasyon amacıyla kullanılırlar. Hipnotik dozlarda CO₂ yanıtını düşürebilecekleri için her zaman monitorize takip gerekir. İskelet kası gevşetici özellikleri vardır ancak bu etki spinal kord düzeyindedir, nöromüsküler kavşağı etkilemezler.",
          ),
          IntravenousAnestheticsItem(
            title: "İLAÇ ETKİLEŞİMLERİ VE ANTAGONİZMA",
            description: "Diğer anestetiklerin (opioid ve volatil ajanlar) doz gereksinimini belirgin şekilde azaltırlar.",
            additionalInfo: "• MAK Etkisi: İnhalasyon ajanlarının MAK değerini %30'a kadar düşürebilirler.\n• Metabolizma: Simetidin ve eritromisin gibi ilaçlar sitokrom P450 üzerinden bu grubun yıkımını yavaşlatarak etkilerinin uzamasına neden olabilir.\n• Flumazenil: Benzodiazepinlerin etkisini hızla geri çevirir ancak yarı ömrü kısa olduğu için tekrar sedasyon (re-sedasyon) riski takibi şarttır.",
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Ketamin',
        items: [
          IntravenousAnestheticsItem(
            title: "DİSOSİYATİF ANESTEZİ MEKANİZMASI",
            description: "NMDA reseptörlerini antagonize ederek talamus ile limbik sistem arasındaki iletişimi koparır; hastanın gözleri açık ancak çevreden kopuk olduğu bir durum yaratır.",
            subtitle: "Aktif metaboliti Norketamin'dir",
            additionalInfo: "Diğer IV anestetiklerden farklı olarak güçlü analjezi sağlar. Disosiyatif anestezi tablosuna kataleptik bir duruş, nistagmus ve bazen istemsiz kas hareketleri eşlik eder. Opioid reseptörleri ile de etkileşime girdiği düşünülmektedir.",
          ),
          IntravenousAnestheticsItem(
            title: "KVS VE SOLUNUM ETKİLERİ",
            description: "Sempatik sistemi uyararak kan basıncını, kalp hızını ve kalp debisini artıran yegane indüksiyon ajanıdır.",
            subtitle: "Hava yolu reflekslerini ve solunum güdüsünü korur; güçlü bir bronkodilatördür",
            additionalInfo: "Hipotansif ve şoktaki hastalarda indüksiyon için idealdir. Solunumu baskılamaz, ancak tükürük salgısını artırarak laringospazm riskini tetikleyebilir (genellikle Glikopirolat ile kombine edilir). Bronkospazmı olan hastalarda akciğer direnci azaltmada etkilidir.",
          ),
          IntravenousAnestheticsItem(
            title: "SEREBRAL ETKİLER VE YAN ETKİLER",
            description: "Beyin kan akımını ve kafa içi basıncını artırabileceği için beyin cerrahisi vakalarında kısıtlı kullanımı önerilir.",
            additionalInfo: "• Psikomimetik Reaksiyonlar: Uyanma sırasında canlı rüyalar, illüzyonlar ve halüsinasyonlar görülebilir; bu durum benzodiazepinler ile azaltılabilir.\n• Kas Gevşeticiler: Nondepolarizan kas gevşeticilerin etkisini potansiyelize edebilir.\n• Göz içi basıncını artırabilir.",
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Etomidat',
        items: [
          IntravenousAnestheticsItem(
            title: "ETKİ MEKANİZMASI VE STABİLİTE",
            description: "GABAA reseptörleri ve Ras sistemi üzerinden etki eden, özellikle kalp hastalarında en güvenli (stabil) kabul edilen intravenöz ajandır.",
            additionalInfo: "Kardiyovasküler sistem üzerinde hemen hemen hiç yan etkisi yoktur. Histamin salınımına yol açmaz ve kan basıncını korur. Karaciğer ve plazma esterazları tarafından hızla metabolize edilir.",
          ),
          IntravenousAnestheticsItem(
            title: "ORGAN SİSTEMLERİ VE KONTROL",
            description: "Beyin kan akımını ve metabolizmasını düşürürken, serebral perfüzyon basıncını en iyi koruyan ajanlardan biridir.",
            additionalInfo: "Solunumu minimal düzeyde baskılar, apne gelişme riski düşüktür. Astım veya ciddi kalp yetmezliği olan hastalarda indüksiyon için öncelikli tercihtir.",
          ),
          IntravenousAnestheticsItem(
            title: "ENDOKRİN ETKİLER (11-BETA HİDROKSİLAZ)",
            description: "Etomidatın en karakteristik yan etkisi, adrenokortikal baskılanmaya yol açarak kortizol sentezini durdurmasıdır.",
            additionalInfo: "Tek dozda bile 11-beta hidroksilaz enzimini inhibe ederek 6-8 saat boyunca kortizol üretimini engeller. Sepsis gibi stres yanıtının hayati olduğu durumlarda infüzyon şeklinde kullanımı önerilmez.",
          ),
          IntravenousAnestheticsItem(
            title: "YAN ETKİLER (MİOKLONUS)",
            description: "İndüksiyon sırasında hastaların %30-60'ında görülen istemsiz kas seğirmeleri (mioklonus) ve enjeksiyon bölgesinde ağrı sık görülür.",
            additionalInfo: "Mioklonus, subkortikal inhibisyonun kalkmasına bağlıdır ve premedikasyonla (opioid veya benzodiazepin) azaltılabilir. Postoperatif bulantı ve kusma insidansı da diğer ajanlara göre daha yüksektir.",
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Propofol',
        items: [
          IntravenousAnestheticsItem(
            title: "PROPOFOL ETKİ MEKANİZMASI",
            description: "GABAA reseptör fonksiyonlarını allosterik olarak kolaylaştırır ve merkezi sinir sisteminde hızlı, keskin bir başlangıçlı anestezi sağlar.",
            additionalInfo: "Modern anestezinin temel taşıdır. Sedasyon, indüksiyon ve TİVA (Total İntravenöz Anestezi) uygulamalarında yaygın kullanılır. Anti-emetik (bulantı giderici) özelliği sayesinde uyanma döneminde hasta konforunu artırır.",
          ),
          IntravenousAnestheticsItem(
            title: "FARMAKOKİNETİK VE ELİMİNASYON",
            description: "Çok hızlı dağılım yarı ömrü (2-8 dk) ve yüksek klirensi ile vücuttan hızla uzaklaştırılır, birikim etkisi düşüktür.",
            additionalInfo: "Karaciğer dışı (ekstrahepatik) metabolizması (özellikle akciğerler) mevcuttur. Bu hızlı temizlenme, propofolü 'infüzyon sonrası hızlı uyanma' (hızlı derlenme) için ideal kılar.",
          ),
          IntravenousAnestheticsItem(
            title: "ORGAN SİSTEMLERİ VE EEG TAKİBİ",
            description: "Kan basıncını ve sistemik vasküler direnci belirgin şekilde düşürebilir; solunumu entübasyon yapılacak düzeyde baskılar.",
            additionalInfo: "• Beyin: CMRO₂ ve ICP değerlerini düşürür; beyin cerrahisinde sık tercih edilir.\n• EEG: Doz arttıkça düşük voltajdan yüksek voltaja, ardından burst-supresyon ve izoelektrik EEG'ye geçiş görülür.\n• Solunum: Derin solunum depresyonuna yol açar, apne süresi barbitüratlardan daha uzundur.",
          ),
          IntravenousAnestheticsItem(
            title: "YAN ETKİLER VE İNFÜZYON SENDROMU",
            description: "Enjeksiyon sırasında ağrı yapabilir; uzun süreli yüksek doz kullanımlarında nadir fakat ölümcül 'Propofol İnfüzyon Sendromu' riski taşır.",
            additionalInfo: "• Ağrı: Soya/yumurta emisyonu içeren lipid içeriği nedeniyle damarda ağrı yapar; lidokain ile önlenebilir.\n• İnfüzyon Sendromu: 4 mcg/kg/saat üzerindeki dozlarda gelişebilir; metabolik asidoz, kalp yetmezliği ve rabdomiyoliz ile karakterizedir.\n• Hipersensitivite: Yumurta alerjisi olanlarda dikkatli kullanılmalıdır.",
          ),
        ],
      ),
    ];
  }
}
