import 'package:flutter/material.dart';

class HepaticDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  HepaticDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class HepaticDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<HepaticDiseaseAnesthesiaItem> items;

  HepaticDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class HepaticDiseaseAnesthesiaData {
  static List<HepaticDiseaseAnesthesiaCategory> getHepaticDiseaseAnesthesiaData(
    BuildContext context,
  ) {
    return [
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Akut Hepatit',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: "VİRAL HEPATİT ETYOLOJİSİ (A, B, C, D, E)",
            description: "HAV ve HEV fekal-oral yolla bulaşırken; HBV, HCV ve HDV kan veya vücut sıvıları yoluyla yayılır.",
            additionalInfo: "HDV'nin enfeksiyon oluşturabilmesi için mutlaka HBV varlığı (HBsAg pozitifliği) şarttır.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "DİĞER VİRAL VE ENFEKSİYÖZ NEDENLER",
            description: "Karaciğer inflamasyonu sadece hepatit virüsleri ile sınırlı olmayıp; EBV, CMV ve HSV gibi ajanlarla da tetiklenebilir.",
            additionalInfo: "Sistemik viral enfeksiyonlar sırasında hepatik tutulum ve enzim yükseklikleri görülebilir.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "AKUT HEPATİTTE KLİNİK SEYİR VE EVRELER",
            description: "Hastalık 1–2 haftalık prodromal (yorgunluk, bulantı, ateş) dönemden sonra 2–12 hafta süren bir sarılık (ikter) fazı ile seyreder.",
            subtitle: "Tam iyileşme genellikle 4 ay gibi bir süreyi bulabilir",
            additionalInfo: "Bu süreçte hastaların metabolik kapasiteleri ve sentez fonksiyonları ciddi şekilde kısıtlanır.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "KRONİKLEŞME RİSKLERİ VE ORANLARI",
            description: "Akut enfeksiyon sonrası HBV vakalarının %3–10'u, HCV vakalarının ise %50'si kronikleşme eğilimi gösterir.",
            additionalInfo: "Kronikleşen vakalar siroz ve hepatosellüler karsinom (HCC) için ana risk grubudur.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "PROFİLAKSİ VE İMMÜNİTE YÖNETİMİ",
            description: "HBV için temas sonrası immünglobulin profilaksisi yüksek etkinlik gösterirken, HCV için benzer bir korunma yöntemi etkisizdir.",
            additionalInfo: "Sağlık personeli için HBV aşılanması ve antikor takibi hayati öneme sahiptir.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "İLACA BAĞLI HEPATİT VE TOKSİSİTE (ASETAMİNOFEN)",
            description: "Alkol kullanımı yağlı hepatomegaliye; 25 gramın üzerindeki asetaminofen alımları ise fulminan hepatite yol açar.",
            subtitle: "Klorpromazin ve oral kontraseptifler (OKS) ise tipik olarak kolestaza neden olabilir",
            additionalInfo: "İlaca bağlı hasarlar, anestezi pratiğinde ilaç doz ayarları için belirleyicidir.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "AKUT HEPATİTTE ANESTEZİ YAKLAŞIMI",
            description: "Viral hepatitli hastalarda genel ilaç duyarlılığı artmış olup, alkoliklerde ise anesteziklere karşı tolerans gelişebilir.",
            subtitle: "Perfüzyonu en iyi koruyan izofluran veya sevofluran gibi inhalasyon ajanları tercih edilmelidir",
            additionalInfo: "Akut hepatit tablosunda elektif cerrahiler mutlaka tam iyileşme sağlanana kadar ertelenmelidir.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "HEPATİK PERFÜZYONUN KORUNMASI VE KAÇINILACAKLAR",
            description: "Karaciğer akımını bozacak hipotansiyon, sempatik aktivasyon ve yüksek havayolu basınçlarından (PEEP) titizlikle kaçınılmalıdır.",
            additionalInfo: "Organ kan akımının idamesi, akut hasarın kronik yetmezliğe dönüşmemesi için kritiktir.",
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Kronik Hepatit',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: "KRONİK HEPATİT TANIMI VE SÜRESİ (6 AY)",
            description: "Karaciğerdeki inflamasyon ve nekroz bulgularının klinik olarak 6 aydan uzun sürmesi 'Kronik Hepatit' olarak tanımlanır.",
            additionalInfo: "Süreklilik gösteren inflamasyon fibrozise zemin hazırlar.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "KRONİK HEPATİT SINIFLAMASI VE TİPLERİ",
            description: "Morfolojik olarak Persistan, Lobüler ve Aktif kronik hepatit olmak üzere üç ana başlıkta sınıflandırılır.",
            additionalInfo: "Her tipin cerrahi risk skalası ve anestezi yönetimi farklılık gösterir.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "KRONİK HEPATİTTE ETYOLOJİK FAKTÖRLER",
            description: "Dünya genelinde kronik hepatitin en sık karşılaşılan nedenleri HBV ve HCV enfeksiyonlarıdır.",
            additionalInfo: "Alkol ve otoimmün hastalıklar da diğer önemli bileşenlerdir.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "KRONİK HEPATİTTE ANESTEZİ VE STEROİD YÖNETİMİ",
            description: "Persistan ve lobüler tipler akut hepatit gibi; aktif kronik hepatit ise siroz protokollü gibi yönetilmelidir.",
            subtitle: "Otoimmün aktif hepatitlilerde uzun süreli steroid yan etkileri ve ek otoimmün komplikasyonlar göz önünde tutulmalıdır",
            additionalInfo: "Kortikosteroid kullanan hastalarda adrenal baskılanma riski de değerlendirilmelidir.",
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Siroz',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: "SİROZ ETYOLOJİSİNDE ALKOLÜN ROLÜ",
            description: "Karaciğer sirozunun dünya çapındaki en yaygın etyolojik nedeni kronik alkol kullanımıdır.",
            additionalInfo: "Alkol dışı yağlı karaciğer hastalığı (NASH) da giderek artan bir nedendir.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "SİROZ PATOFİZYOLOJİSİ VE FİBROZİS",
            description: "Hepatosit nekrozunun ardından gelişen yaygın fibrozis ve parankimin nodüler rejenerasyonu ile karakterize bir son evre tablosudur.",
            additionalInfo: "Bu yapısal bozukluk kan akım direncini artırarak portal hipertansiyona yol açar.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "SİROZDA PORTAL HT VE VARİS KOMPLİKASYONLARI",
            description: "Sirozun en korkulan komplikasyonları portal hipertasiyona bağlı gelişen asit, özofagus varis kanamaları ve ensefalopatidir.",
            subtitle: "Hastalık progresyonu hepatosellüler karsinom (HCC) gelişimine zemin hazırlayabilir",
            additionalInfo: "Varis kanamaları anestezi yönetiminde yüksek mortaliteli bir acildir.",
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Preoperatif Özellikler',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: "GASTROİNTESTİNAL SİSTEM VE ENSEFALOPATİ RİSKİ",
            description: "Portal HT kaynaklı varis kanamaları sırasında bağırsaktaki nitrojen yükünün artması ensefalopati krizlerini tetikleyebilir.",
            additionalInfo: "Yüksek proteinli diyet ve bağırsak içi kan bu riski artırır.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "HEMATOLOJİK TABLO VE TROMBOSİT EŞİĞİ (<75.000)",
            description: "Anemi, trombositopeni ve sentez bozukluğuna bağlı koagülopati sirozda tipiktir; 75.000/µL altındaki değerlerde replasman düşünülmelidir.",
            additionalInfo: "Splenomegali (hipersplenizm) trombositlerin sekestrasyonundan sorumludur.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "KARDİYAK DURUM VE HİPERDİNAMİ",
            description: "Sirozlu hastalar genellikle yüksek kardiyak debili ve düşük vasküler dirençli bir 'Hiperdinamik Dolaşım' içindedir.",
            subtitle: "50 yaş üstü hastalarda sirotik kardiyomiyopati (KMP) ve koroner arter hastalığı (KAH) için tarama yapılmalıdır",
            additionalInfo: "Vazodilatasyon, sistemik kan basıncı takibini güçleştirebilir.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "PULMONER DEĞİŞİKLİKLER VE ŞANT ARTIŞI",
            description: "İntrapulmoner şantların artması, diyafram basısı ve atelektaziler nedeniyle kronik hipoksi tablosu görülür.",
            additionalInfo: "Hepatopulmoner sendrom (HPS) bu mekanizma ile gelişebilir.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "PORTOPULMONER HİPERTANSİYON (PAP >25 MMHG)",
            description: "PAH >25 mmHg, PVR >240 dyn·s/cm⁵ ve transpulmoner gradyanın >12 mmHg olması portopulmoner HT tanısı koydurur.",
            subtitle: "PAP >45 mmHg olduğunda cerrahi ve nakil mortalitesi aşırı düzeyde yükselir",
            additionalInfo: "Bu tablo sağ kalp yetmezliği riskini de beraberinde getirir.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "RENAL FONKSİYONLAR VE HEPATORENAL SENDROM",
            description: "Asit gelişimiyle birlikte dilüsyonel hiponatremi, hipokalemi ve geri dönüşümsüz renal vazokonstriksiyon (Hepatorenal Sendrom) görülebilir.",
            additionalInfo: "Sıvı yönetimi renal perfüzyonu korumak için çok hassas yapılmalıdır.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "SIVI VE VOLÜM DENGESİ (GÜNLÜK KİLO TAKİBİ)",
            description: "Asit ve ödemi olanlarda günlük kilo kaybı 1 kg'ı; sadece asiti olanlarda ise 0.5 kg'ı geçmeyecek şekilde diüretik verilmelidir.",
            additionalInfo: "Hızlı kilo kaybı prerenal böbrek yetmezliğini tetikler.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "SANTRAL SİNİR SİSTEMİ VE LAKTÜLOZ TEDAVİSİ",
            description: "Ensefalopati yönetiminde laktüloz (30–50 mL / 8 saat) ve neomisin (500 mg / 6 saat) temel tedavilerdir.",
            additionalInfo: "Amonyak klirensi için bağırsak asidifikasyonu ve bakteri supresyonu hedeflenir.",
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'İntraoperatif Yönetim',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: "İLAÇ YANITI VE PSÖDOKOLİNESTERAZ DEĞİŞİKLİĞİ",
            description: "Karaciğerin sentetik fonksiyonu bozulduğu için psödokolinesteraz düzeyleri düşer ve bu da Süksinilkolin etkisini uzatabilir.",
            additionalInfo: "Faz I ve Faz II metabolizma kapasiteleri ciddi oranda kısıtlanmıştır.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "ANESTEZİ TEKNİĞİ VE KOAGÜLOPATİ RİSKİ",
            description: "Karaciğer akımı büyük oranda artere bağımlıdır; rejyonal teknikler koagülopati ve trombositopeni nedeniyle risk taşır.",
            additionalInfo: "Aksiyel blok öncesi mutlaka pıhtılaşma parametreleri (PT, INR) ve trombosit sayımı değerlendirilmelidir.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "İDAME ANESTEZİSİ VE OPİOİD ELİMİNASYONU",
            description: "Propofol indüksiyonundan sonra izofluran veya sevofluran ile idame yapılırken; uzun etkili opioidlerin yarı ömrünün uzadığı unutulmamalıdır.",
            additionalInfo: "Opioid birikimi postoperatif solunum depresyonu riskini artırır.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "İNTRAOPERATİF MONİTÖRİZASYON VE EKO",
            description: "İnvaziv arteriyel basınç takibi ve sık kan gazı analizi standart olup; volüm değerlendirmesinde eko kullanımı önerilir.",
            subtitle: "PEEP, şiddetli hipoksemide venöz dönüşü izlenerek dikkatle kullanılabilir",
            additionalInfo: "Sirotik hastaların hemodinamik rezervleri düşüktür.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "SIVI REPLASMANI VE SİTRAT TOKSİSİTESİ",
            description: "İntraoperatif asit drenajı sonrası ani hipotansiyonu engellemek için kolloidler kullanılmalı ve masif transfüzyonda kalsiyum desteği verilmelidir.",
            subtitle: "Eritrosit süspansiyonlarındaki sitratın karaciğerde yıkılamaması hipokalsemiye yol açar",
            additionalInfo: "İyonize kalsiyum düzeyleri yakından takip edilmelidir.",
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Hepatik Cerrahi',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: "KARACİĞER CERRAHİSİNDE TEKNİK GEREKLİLİKLER",
            description: "Geniş IV yollar, CVP takibi, invaziv arter ve etkin ısıtma sistemleri operasyon başarısı için zorunludur.",
            additionalInfo: "Pringle manevrası (hepatik pedikül klempi) sırasında gelişebilecek iskemik hasarlar akılda tutulmalıdır.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "MONİTÖRİZASYONDA DOPPLER VE EKO ROLÜ",
            description: "CVP venöz yükü değerlendirmede tek başına yetersiz kalabileceği için transözofageal eko veya doppler kullanılmalıdır.",
            additionalInfo: "Volüm durumunun netleşmesi kalp üzerindeki yükü azaltır.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "HİPOTANSİYON VE ANTİFİBRİNOLİTİK KULLANIMI",
            description: "Karaciğer disfonksiyonu ile birlikte fibrinolyiz gelişen vakalarda traneksamik asit veya e-aminokaproik asit desteği gerekebilir.",
            additionalInfo: "Kanamanın kontrol altına alınması için sistemik homeostaz sağlanmalıdır.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "HİDATİK KİST VE ANAFİLAKSİ RİSKİ",
            description: "Kist içeriğinin peritona yayılması durumunda şiddetli anafilaktik şok tablosu gelişebileceği unutulmamalıdır.",
            additionalInfo: "Operasyon sırasında adrenovasküler hazırlık tam olmalıdır.",
          ),
        ],
      ),
      HepaticDiseaseAnesthesiaCategory(
        categoryName: 'Karaciğer Nakli',
        items: [
          HepaticDiseaseAnesthesiaItem(
            title: "PREOPERATİF MELD SKORU VE MORTALİTE",
            description: "Bilirübin, INR ve Kreatinin değerlerini temel alan MELD skoru, cerrahi ve postoperatif mortaliteyi öngörmede altın standarttır.",
            subtitle: "Renal sınırda olan hastalarda ameliyat sırasında CVVH (sürekli venövenöz hemodiafiltrasyon) gerekebilir",
            additionalInfo: "Düşük MELD skoru daha iyi sağkalım olasılığını yansıtır.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "DİSEKSİYON FAZI VE ELEKTROLİT DENGESİ",
            description: "Büyük damarların manipüle edildiği bu fazda şiddetli hiponatremi görülebilir; ancak elektrolit düzeltmeleri çok hızlı yapılmamalıdır.",
            additionalInfo: "Hızlı Na düzeltmesi santral pontin miyelinolize yol açabilir.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "ANHEPATİK FAZ VE VENÖVENÖZ BYPASS",
            description: "Karaciğere giriş ve çıkış akımının tamamen kesildiği bu dönemde, preloadu korumak için venövenöz bypass tercih edilebilir.",
            additionalInfo: "Kardiyak debinin en çok düştüğü dönemdir.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "NEOHEPATİK FAZ VE REPERFÜZYON SENDROMU",
            description: "Portal venin açılmasıyla gelişen reperfüzyon sendromu; ani hipotansiyon, hiperkalemi ve asidoz ile seyreder.",
            subtitle: "Kardiyak depresyonu önlemek için CaCl (Kalsiyum klorür) ve NaHCO₃ (Sodyum bikarbonat) hazır tutulmalıdır",
            additionalInfo: "En riskli ve ölümcül fazlardan biridir.",
          ),
          HepaticDiseaseAnesthesiaItem(
            title: "POSTOPERATİF TAKİP VE İMMÜNSÜPRESYON",
            description: "Ameliyat sonrasında hepatik arter akımı, immünsüpresif ilaç düzeyleri ve multisistemik fonksiyonlar yakından takip edilir.",
            subtitle: "Uygun vakalarda akciğer fonksiyonları elveriyorsa erken ekstübasyon mümkündür",
            additionalInfo: "Red (rejection) bulguları klinik olarak dikkatle izlenmelidir.",
          ),
        ],
      ),
    ];
  }
}
