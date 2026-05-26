import 'package:flutter/material.dart';

class RenalPhysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RenalPhysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RenalPhysiologyAnesthesiaCategory {
  final String categoryName;
  final List<RenalPhysiologyAnesthesiaItem> items;

  RenalPhysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class RenalPhysiologyAnesthesiaData {
  static List<RenalPhysiologyAnesthesiaCategory>
      getRenalPhysiologyAnesthesiaData(BuildContext context) {
    return [
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Nefron Yapısı ve Fonksiyonları',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "RENAL KORPÜSKÜL YAPISI",
            description: "Nefronun başlangıç kısmı olan renal korpüskül, glomerül kapiller yumağı ve onu çevreleyen Bowman kapsülünden oluşur.",
            additionalInfo: "Burası kanın ilk olarak süzüldüğü ve ultrafiltratın oluştuğu anatomik bölgedir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "GLOMERÜLER FİLTRASYON BASINCI (60 MMHG)",
            description: "Glomerül kapillerleri içindeki hidrostatik basınç yaklaşık 60 mmHg olup, bu değer ortalama arter basıncının %60'ına tekabül eder.",
            subtitle: "Net filtrasyon basıncı, hidrostatik basınçtan onkotik (25 mmHg) ve interstisyel (10 mmHg) basınçlar çıkarılarak 10 mmHg olarak hesaplanır",
            additionalInfo: "Böbreklere gelen plazmanın yaklaşık %20'si (filtrasyon fraksiyonu) bu basınç farkı sayesinde Bowman mesafesine süzülür.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "PROKSİMAL TÜBÜL VE İZOTONİK REABSORBSİYON",
            description: "Bowman kapsülünden gelen ultrafiltratın %65–75'i proksimal tübülde izotonik olarak geri emilir.",
            subtitle: "Bu işlemin temel yakıtı olan Na⁺-K⁺-ATPaz pompası, tübülün bazo-lateral membranında yer alır",
            additionalInfo: "Su, sodyumla birlikte ozmotik olarak pasif bir şekilde geri emilir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "PROKSİMAL TÜBÜL ELEKTROLİT TAŞINIMI",
            description: "Proksimal tübül, hidrojen sekresyonuyla eş zamanlı sodyum geri emilimi yaparak asit-baz dengesini düzenler.",
            subtitle: "Anjiyotensin II ve Norepinefrin reabsorbsiyonu artırırken, Dopamin ve Fenoldopam azaltır",
            additionalInfo: "Akuaporin I kanalları sayesinde bu bölge su için son derece yüksek geçirgenliğe sahiptir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "HENLE KULPU VE NA REABSORBSİYONU",
            description: "Sodyum geri emiliminin %15–20'si Henle kulpu seviyesinde gerçekleşir; inen kol suya, çıkan kalın kol ise elektrolite geçirgendir.",
            subtitle: "Çıkan kalın kolda aktif NaCl reabsorbsiyonu yapılırken suyun geçişi engellenir",
            additionalInfo: "Bu segment ayrıca kalsiyum ve magnezyum yönetimi için de kritik bir bölgedir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "TERS AKIM MEKANİZMASI (VASA REKTA)",
            description: "Böbrek medullasının hipertonik kalmasını sağlayan ters akım mekanizması, Henle kulpu ve eşlik eden vasa rekta damarlarıyla yönetilir.",
            additionalInfo: "Bu mekanizma, idrarın konsantre edilmesini (suyun tutulmasını) mümkün kılar.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "DİSTAL TÜBÜL VE KALSİYUM GERİ EMİLİMİ",
            description: "Sodyum geri emiliminin yaklaşık %5'inin yapıldığı distal tübül, paratiroid hormon (PTH) etkisiyle kalsiyumun primer geri emilim yeridir.",
            additionalInfo: "Tiazid tipi diüretiklerin hedef bölgesi bu tübül segmentidir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "TOPLAYICI KANAL VE P/İ HÜCRELERİ",
            description: "Kortikal toplayıcı kanallardaki P hücreleri Na geri emilimi ve K sekresyonundan sorumluyken, İ hücreleri H+ sekresyonu yapar.",
            subtitle: "Bu hücreler üzerindeki transport mekanizmaları doğrudan Aldosteron bağımlıdır",
            additionalInfo: "K potasyum dengesinin final ayarı bu bölgede gerçekleştirilir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "MEDÜLLER KANAL VE ADH ETKİSİ",
            description: "Antidiüretik Hormon (ADH) etkisiyle akuaporin-2 kanalları artarak su geçirgenliği dramatik şekilde yükselir.",
            subtitle: "Üre geri emilimi de medüller hipertonisitenin sürdürülmesine katkı sağlar",
            additionalInfo: "Vücudun su dengesi ihtiyacına göre idrar buradan geçerken son halini alır.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "JUKSTAGLOMERÜLER APARAT (JGA)",
            description: "Afferent arteriyoldeki granular hücreler ve maküla densadan oluşan yapı, vücudun ana tansiyon ve hacim sensörüdür.",
            subtitle: "Beta-1 stimülasyon ile Renin sentezlenerek RAAS (Renin-Anjiyotensin-Aldosteron) sistemi aktive edilir",
            additionalInfo: "JGA, hem sistemik kan basıncını hem de glomerüler filtrasyon hızını dengeleyen hormonların üretim merkezidir.",
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Renal Dolaşım',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "BÖBREK KAN AKIMI (KALP DEBİSİNİN %20-25'İ)",
            description: "Böbrekler, vücut ağırlığının küçük bir kısmını oluşturmalarına rağmen kardiyak debinin yaklaşık dörtte birini alırlar.",
            additionalInfo: "Bu devasa akım, böbreğin sadece metabolik ihtiyacı için değil, filtrasyon görevi için gereklidir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "BÖBREK OKSUJEN BASINÇLARI (KORTEKS-MEDULLA)",
            description: "Böbreğin korteks bölgesinde PaO2 yaklaşık 50 mmHg iken, medullada bu değer 15 mmHg'ye kadar düşebilir.",
            subtitle: "Medulla, düşük oksijen basıncı nedeniyle iskemiye ve hipoksiye en hassas bölgedir",
            additionalInfo: "Medullanın metabolik hızı (aktif transport nedeniyle) yüksek, kan sunumu ise nispeten düşüktür.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "RENAL AKIM VE FİLTRASYON DEĞERLERİ",
            description: "Böbrekten bir dakikada geçen kan miktarı 1200 mL, plazma miktarı 660 mL ve süzülen miktar (GFR) erkekte 120 mL'dir.",
            subtitle: "Kadınlarda GFR değeri ortalama 95 mL/dk civarındadır",
            additionalInfo: "Bu değerlerdeki düşüşler böbrek fonksiyonu kaybının (BY) en temel göstergesidir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "BÖBREK KAN AKIMI OTOREGÜLASYONU (80-180 MMHG)",
            description: "Böbrek, ortalama arter basıncı (OAB) 80 ile 180 mmHg arasındayken kan akımını ve GFR'sini sabit tutabilir.",
            subtitle: "OAB 40–50 mmHg'nin altına düştüğünde filtrasyon tamamen durur",
            additionalInfo: "Otoregülasyon sayesinde vücut kan basıncı dalgalanmalarından filtrasyon hızı etkilenmez.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "TÜBÜLOGLOMERÜLER FEEDBACK MEKANİZMASI",
            description: "Maküla densa, tübüler sıvıdaki NaCl miktarını hissederek aferent arteriyol tonusunu değiştirir ve GFR'yi regüle eder.",
            additionalInfo: "Yüksek akım saptandığında sodyum yükü artar ve maküla densa filtrasyonu düşüren sinyaller gönderir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "HORMONAL KONTROL VE PROSTAGLANDİNLER",
            description: "Anjiyotensin II, efferent arteriyolü büzerek zor koşullarda bile GFR'nin düşmesini engellemeye çalışır.",
            subtitle: "PGE2 ve PGI2 gibi prostaglandinler böbrek koruyucudur; NSAİİ kullanımı bu korumayı yok ederek hasarı tetikleyebilir",
            additionalInfo: "ANP ise vazodilatasyon yaparak sodyum atılımını ve idrar miktarını artırır.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "NÖRONAL VE PARAKRİN KONTROL",
            description: "Beta-1 reseptörleri renin sentezini artırırken, Alfa-1 reseptör uyarımı şiddetli renal vazokonstriksiyona yol açar.",
            subtitle: "Dopaminerjik D1 ve D2 reseptör uyarımı ise böbrek damarlarında vazodilatasyon yapar",
            additionalInfo: "Sempatik sistem deşarjı stres anında idrar çıkışını azaltan temel etkendir.",
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Anestezi ve Böbrek',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "PERİOPERATİF AKUT BÖBREK HASARI (AKİ)",
            description: "Ameliyat geçiren hastalarda cerrahi sonrası perioperatif akut böbrek hasarı görülme insidansı %1 ile %5 arasındadır.",
            additionalInfo: "Böbrek rezervi düşük olan yaşlı hastalarda bu risk çok daha ciddidir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "ANESTEZİNİN İNDİREKT RENAL ETKİLERİ",
            description: "Anesteziklerin çoğu kardiyopulmoner depresyon yaparak böbrek kan akımını (RKA) azaltır ve endokrin yanıtları uyarır.",
            subtitle: "Sempatik aktivite artışı RKA ve GFR'yi düşürürken; ADH, RAAS ve katekolaminler idrar çıkışını baskılar",
            additionalInfo: "Yeterli preoperatif hidrasyon bu etkileri minimize etmede anahtardır.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "VOLATİL AJANLAR VE RENAL VAZODİLATASYON",
            description: "İnhalasyon ajanları böbrek damarlarında bir miktar vazodilatasyon yapsa da eş zamanlı tansiyon düşüşü net akımı bozabilir.",
            subtitle: "Sevofluran düşük akımda Compound A oluşturabilir ancak bu klinik olarak anlamlı bir nefrotoksisite yaratmaz",
            additionalInfo: "Moleküler flor iyonunun yükselmesi de geçmişte bir endişeydi (Metoksifluran hariç klinik önemsizdir).",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "İNTRAVENÖZ ANESTEZİK AJANLAR",
            description: "IV ajanların böbrek fonksiyonları üzerindeki etkisi minimaldir; ketamin hipovolemide kompanse edici etkisiyle koruyucu olabilir.",
            additionalInfo: "Propofol ve opioidlerin renal klirensi genellikle stabil seyretmektedir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "NSAİİ VE RENAL RİSKLER",
            description: "Steroid olmayan anti-inflamatuar ilaçlar, vazodilatör prostaglandin sentezini baskılayarak AKİ riskini ciddi oranda artırır.",
            additionalInfo: "Özellikle hipovolemik ve dehidrate hastalarda NSAİİ kullanımı böbreği savunmasız bırakır.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "ACE İNHİBİTÖRLERİ VE GFR ETKİLEŞİMİ",
            description: "ACE inhibitörleri veya ARB grubu ilaçlar, efferent arteriyolü gevşeterek düşük basınçta GFR'yi koruyan mekanizmayı engellerler.",
            additionalInfo: "Bu yüzden renal arter stenozu olan veya şiddetli hipotansiyona giren hastalarda böbrek iflası riskini artırabilirler.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "CERRAHİ ETKİLER VE LAPAROSKOPİ",
            description: "Laparoskopi sırasında oluşturulan pnömoperitonyum (İAB artışı), renal venöz basıncı artırıp perfüzyonu bozarak idrar çıkışını azaltır.",
            additionalInfo: "Cerrahi manipülasyonun kendisi de stres yanıtı üzerinden renal akımı kısıtlar.",
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Osmotik Diüretikler (Mannitol)',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "MANNİTOL ETKİ MEKANİZMASI",
            description: "Mannitol, geri emilmeyen ozmotik bir yük oluşturarak suyu proksimal tübül ve Henle kulpunda tutar.",
            additionalInfo: "Ozmoz yasaları gereği su, mannitolün bulunduğu lümene doğru çekilir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "MANNİTOL DOZAJ VE UYGULAMA (0.25-1 G/KG)",
            description: "Mannitol klinikte genellikle 0.25–1 g/kg dozlarında intravenöz olarak uygulanır.",
            additionalInfo: "Hızlı infüzyon sırasında geçici hacim yüklenmesine dikkat edilmelidir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "MANNİTOL KULLANIM ALANLARI VE PROFİLAKSİ",
            description: "Akut böbrek hasarı profilaksisi, kafa içi basıncı azaltma (serebral ödem) ve göz içi basıncını düşürmek için kullanılır.",
            subtitle: "Akut oligüri tanısında (fonksiyonel-yapısal ayırımı) yararlı olabilir",
            additionalInfo: "Özellikle beyin cerrahisinde 'beyni gevşetmek' amacıyla altın standarttır.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "MANNİTOL YAN ETKİ PROFİLİ",
            description: "Erken dönemde hipervolemi ve kalp yetmezliğini tetikleyebilirken, geç dönemde dehidrasyon ve hiponatremi yapar.",
            subtitle: "Aşırı kullanımı rebound (tekrar) ödem oluşumuna ve nefrotoksisiteye yol açabilir",
            additionalInfo: "Pulmoner ödem riski nedeniyle kardiyak rezervi düşük hastalarda çok dikkatli olunmalıdır.",
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Loop Diüretikler',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "LOOP DİÜRETİKLER ETKİ MEKANİZMASI",
            description: "Henle kulpunun kalın çıkan kolundaki Na-K-2Cl kotransport sistemini inhibe ederek çok güçlü bir diürez sağlarlar.",
            additionalInfo: "Böbreğin en yüksek sodyum emilim bölgelerinden birini bloke ettikleri için ' tavan etkisi' yüksektir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "FUROSEMİD DOZAJI VE UYGULAMA",
            description: "Klinikte en sık kullanılan ajan olan Furosemid (Lasix), genellikle 20–100 mg dozlarında IV uygulanır.",
            additionalInfo: "Etkisi dakikalar içinde başlar ve yaklaşık 2–6 saat sürer.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "LOOP DİÜRETİKLER KULLANIM ALANLARI",
            description: "Kalp yetmezliği ödemi, siroz asiti, nefrotik sendrom, HT ve hiperkalsemi tedavisinde kullanılırlar.",
            subtitle: "Oligürik böbrek yetmezliğini non-oligüriğe çevirerek sıvı yönetimini kolaylaştırır",
            additionalInfo: "Ancak mortaliteyi düzelttiğine dair kesin kanıt yoktur, sadece durumu yönetmeye yardımcı olur.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "LOOP DİÜRETİKLER VE ELEKTROLİT YAN ETKİLERİ",
            description: "Hipokalemi, metabolik alkaloz, hipokalsemi ve hipomagnezemi en tipik yan etkileridir.",
            subtitle: "Yüksek dozlarda kalıcı veya geçici ototoksisite (işitme kaybı) yapabilirler",
            additionalInfo: "K+ takibi anestezi açısından en kritik noktadır (aritmi riski).",
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Tiazid Diüretikler',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "TİAZİDLERİN ETKİ MEKANİZMASI",
            description: "Distal tübülün başlangıcında Na-Cl kotransportörünü inhibe ederek sodyum ve su geri emilimini azaltırlar.",
            additionalInfo: "Lümen içindeki kalsiyumun geri emilimini ise paradoksal olarak artırırlar.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "TİAZİD KULLANIM ALANLARI VE HİPERTANSİYON",
            description: "Esansiyel hipertansiyonun uzun süreli tıbbi tedavisinde genellikle ilk tercih edilen ilaç grubudur.",
            subtitle: "Nefrojenik Diyabetes İnsipitus ve hiperkalsiüri (taş oluşumu) tedavisinde de yararlıdır",
            additionalInfo: "Ameliyat sabahı genellikle kesilmez ancak elektrolit profili kontrol edilmelidir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "TİAZİD YAN ETKİLERİ VE METABOLİK DEĞİŞİMLER",
            description: "Hipokalemi ve alkalozun yanı sıra; hiperürisemi (gut atağı), hiperglisemi ve hiperkalsemiye neden olabilirler.",
            subtitle: "Ayrıca hiperlipidemi ile ilişkili olduğu bildirilmiştir",
            additionalInfo: "Kan şekerinde yükselme diyabetik cerrahi hastalarda dikkat gerektirir.",
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Potasyum Tutucular',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "ALDOSTERON ANTAGONİSTLERİ (SPİRONOLAKTON)",
            description: "Toplayıcı kanallarda aldosteron reseptörlerini bloke ederek Na geri emilimini engeller ve K+ kaybını durdurur.",
            subtitle: "KC asiti ve şiddetli kalp yetmezliğinde (Eplerenon ile) prognozu düzeltir",
            additionalInfo: "Spironolaktonun uzun süreli kullanımında jinekomasti gibi hormonal yan etkiler görülebilir.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "SODYUM KANAL BLOKERLERİ (AMİLORİD)",
            description: "Doğrudan lüminal sodyum kanallarını (ENaC) bloke ederek etki gösteren primer potasyum koruyucu ajanlardır (Amilorid, Triamteren).",
            subtitle: "NSAİİ ile birlikte kullanıldıklarında nefrotoksisite riski belirgin artış gösterir",
            additionalInfo: "Hiperkalemi ve metabolik asidoz en önemli riskleridir.",
          ),
        ],
      ),
      RenalPhysiologyAnesthesiaCategory(
        categoryName: 'Karbonik Anhidraz İnhibitörleri',
        items: [
          RenalPhysiologyAnesthesiaItem(
            title: "ASETOZOLAMİD ETKİ MEKANİZMASI VE DOZAJI",
            description: "Proksimal tübülde karbonik anhidrazı inhibe ederek bikarbonat geri emilimini baskılar; alkaloz tedavisinde etkilidir.",
            subtitle: "Klinikte 250–500 mg dozlarında IV uygulanabilir",
            additionalInfo: "Asetozolamid kullanımı idrarı alkalileştirirken kanı asitleştiren (metabolik asidoz) bir etki yapar.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "KARBONİK ANHİDRAZ İNHİBİTÖRLERİ KULLANIM ALANLARI",
            description: "Metabolik alkalozun düzeltilmesi, göz içi basıncının düşürülmesi ve dağ hastalığı (akut irtifa hastalığı) profilaksisinde kullanılır.",
            additionalInfo: "Diüretik etkisi zayıf olduğu için primer ödem tedavisinde yer bulamaz.",
          ),
          RenalPhysiologyAnesthesiaItem(
            title: "ASETOZOLAMİD YAN ETKİLERİ",
            description: "Hipokloremik metabolik asidoz en temel yan etkisidir; parestezi (uyuşma) ve uyku hali de yapabilir.",
            additionalInfo: "Sülfonamid türevi olduğu için bu gruba alerjisi olanlarda dikkatli olunmalıdır.",
          ),
        ],
      ),
    ];
  }
}
