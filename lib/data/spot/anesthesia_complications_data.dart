import 'package:flutter/material.dart';

class AnesthesiaComplicationsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnesthesiaComplicationsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnesthesiaComplicationsCategory {
  final String categoryName;
  final List<AnesthesiaComplicationsItem> items;

  AnesthesiaComplicationsCategory({
    required this.categoryName,
    required this.items,
  });
}

class AnesthesiaComplicationsData {
  static List<AnesthesiaComplicationsCategory> getAnesthesiaComplicationsData(
    BuildContext context,
  ) {
    return [
      AnesthesiaComplicationsCategory(
        categoryName: 'Genel Çerçeve',
        items: [
          AnesthesiaComplicationsItem(
            title: "ANESTEZİ KOMPLİKASYON SPEKTRUMU VE KLİNİK ŞİDDET",
            description: "Hafif bulantı ve titreme gibi minör olaylardan, kardiyak arrest gibi ölümcül durumlara kadar geniş bir yelpazeyi kapsar.",
            subtitle: "Hava yolu obstrüksiyonu, anafilaksi ve malign hipertermi acil müdahale gerektiren major olaylardır",
            additionalInfo: "Klinik ciddiyet hastanın rezervine ve müdahale hızına bağlıdır.",
          ),
          AnesthesiaComplicationsItem(
            title: "KOMPLİKASYON ÖNLEME STRATEJİLERİ VE MONİTÖRİZASYON",
            description: "Çoğu komplikasyon titiz preoperatif hazırlık ve uygun monitörizasyon ile başlamadan önlenebilir.",
            additionalInfo: "Erken tanımak, tedaviden daha hayatidir.",
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Kardiyovasküler Komplikasyonlar',
        items: [
          AnesthesiaComplicationsItem(
            title: "HİPOTANSİYON VE ETİYOLOJİK FAKTÖRLER",
            description: "Hipovolemi, anesteziklerin doz aşımı ve miyokardiyal depresyon perioperatif tansiyon düşüklüğünün ana nedenleridir.",
            additionalInfo: "Alerjik reaksiyonlar ve vazodilatasyon da tabloya eşlik edebilir.",
          ),
          AnesthesiaComplicationsItem(
            title: "HİPERTANSİYON VE PERİOPERATİF TETİKLEYİCİLER",
            description: "Yetersiz anestezi derinliği, ağrılı cerrahi uyarılar ve katekolamin deşarjları tansiyon yükselmesine neden olur.",
            additionalInfo: "Kronik ilaç çekilmesi veya mevcut HT öyküsü riski artırır.",
          ),
          AnesthesiaComplicationsItem(
            title: "PERİOPERATİF ARİTMİLER VE TETİKLEYİCİ MEKANİZMALAR",
            description: "Hipoksi, elektrolit dengesizlikleri, irritan uçucu ajanlar ve vagal uyarılar aritmi oluşumunu tetikler.",
            additionalInfo: "Santral kateter manipülasyonları da geçici disritmilere yol açabilir.",
          ),
          AnesthesiaComplicationsItem(
            title: "KARDİYAK ARREST: HİPOKSİ VE HİPOVOLEMİ İLİŞKİSİ",
            description: "Anestezi sırasında gelişen kardiyak duruşlar en sık derin hipoksi ve şiddetli kanamaya bağlı hipovolemi sonrası gelişir.",
            additionalInfo: "Müdahalede ABC kuralları ve ACLS klavuzları esastır.",
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Solunumsal Komplikasyonlar',
        items: [
          AnesthesiaComplicationsItem(
            title: "HİPOKSİ: EN YAYGIN ANESTEZİ KOMPLİKASYONU",
            description: "Hava yolu obstrüksiyonu, bronkospazm, atelektazi veya entübasyon hataları sonucu gelişen en sık komplikasyondur.",
            additionalInfo: "Laringospazm ekstübasyon sonu görülen tehlikeli bir hipoksi nedenidir.",
          ),
          AnesthesiaComplicationsItem(
            title: "HİPOVENTİLASYON VE REZİDÜEL KAS GEVŞEMESİ RİSKİ",
            description: "Yetersiz revers (geri çevirme), opioid doz aşımı ve göğüs cerrahisi sonrası solunum derinliğinin azalmasıdır.",
            additionalInfo: "Postoperatif solunum yetmezliğinin gizli nedenidir.",
          ),
          AnesthesiaComplicationsItem(
            title: "ASPİRASYON: RİSK FAKTÖRLERİ VE KLİNİK ÖNEMİ",
            description: "Yetersiz açlık süresi, gebelik ve acil cerrahi vakalarda mide içeriğinin akciğerlere kaçmasıdır.",
            additionalInfo: "Kimyasal pnömoni ve şiddetli ARDS riskini taşır.",
          ),
          AnesthesiaComplicationsItem(
            title: "BRONKOSPAZM VE LARİNGOSPAZM YÖNETİMİ",
            description: "Hava yolu irritasyonu sonucu gelişir; özellikle astımlılarda ve sigara içenlerde entübasyon anında sıktır.",
            additionalInfo: "%100 oksijen ve derin anestezi ile tedavi edilir; gerekirse kas gevşetici verilir.",
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Nörolojik Komplikasyonlar',
        items: [
          AnesthesiaComplicationsItem(
            title: "AWARENESS (İNTRAOPERATİF FARKINDALIK) VE RİSKLİ CERRAHİLER",
            description: "Yetersiz anestezi derinliği sonucu hastanın operasyonu hissetmesi veya hatırlamasıdır.",
            subtitle: "Kardiyak cerrahi, acil obstetrik ve travma vakaları yüksek risk taşır",
            additionalInfo: "TİVA uygulamalarında monitörizasyon hayati önemdedir.",
          ),
          AnesthesiaComplicationsItem(
            title: "POSTOPERATİF DELİRİUM VE RİSKLİ HASTA GRUPLARI",
            description: "Ameliyat sonrası bilinç bulanıklığı olup özellikle yaşlılarda, elektrolit bozukluğu ve hipoksisi olanlarda gelişir.",
            additionalInfo: "Yatış süresini uzatan önemli bir bilişsel komplikasyondur.",
          ),
          AnesthesiaComplicationsItem(
            title: "PERİOPERATİF NÖROPATİ VE POZİSYONEL BASI HASARLARI",
            description: "Yanlış pozisyonlama sonucu ulnar veya peroneal sinirlerin basıya bağlı olarak işlev kaybıdır.",
            additionalInfo: "Destekleyici pedlerin kullanımı bu hasarı minimize eder.",
          ),
          AnesthesiaComplicationsItem(
            title: "NÖROAKSİYEL BLOK KOMPLİKASYONLARI VE CİDDİ RİSKLER",
            description: "Spinal/Epidural sonrası baş ağrısı, spinal hematom, enfeksiyon ve kalıcı nörolojik hasarları kapsar.",
            additionalInfo: "Hematom acil cerrahi boşaltım gerektiren bir durumdur.",
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'İmmünolojik / İlaç Komplikasyonları',
        items: [
          AnesthesiaComplicationsItem(
            title: "ANAFİLAKSİ VE ANAFİLAKTOİD REAKSİYON TETİKLEYİCİLERİ",
            description: "Kas gevşeticiler (NMB), lateks, antibiyotikler ve kolloidler en sık sorumlu ajanlardır.",
            additionalInfo: "Reaksiyonlar dozdan bağımsız ve anidir.",
          ),
          AnesthesiaComplicationsItem(
            title: "ANAFİLAKSİ KLİNİK BULGULARI VE SİSTEMİK YANITLAR",
            description: "Ani gelişen dirençli hipotansiyon, bronkospazm ve yaygın cilt eritemi/ödemi ile karakterizedir.",
            additionalInfo: "Anestezide ürtiker görülmeyebilir, ana bulgu KVS kollapsıdır.",
          ),
          AnesthesiaComplicationsItem(
            title: "ANAFİLAKSİ ACİL TEDAVİSİ VE ADRENALİN KULLANIMI",
            description: "Adrenalin (10–100 µg IV titrasyonu), agresif sıvı replasmanı ve hava yolu desteği hayat kurtarıcıdır.",
            subtitle: "Antihistaminikler ve steroidler ikincil tedavilerdir",
            additionalInfo: "Gecikmiş adrenalin mortalite riskini artırır.",
          ),
          AnesthesiaComplicationsItem(
            title: "TRANSFÜZYON REAKSİYONLARI VE AKCİĞER HASARI (TRALI/TACO)",
            description: "Febril ve hemolitik reaksiyonların yanı sıra, transfüzyon sonrası gelişen akut akciğer hasarı (TRALI) ciddi bir komplikasyondur.",
            additionalInfo: "TACO volüm yüklenmesiyle; TRALI ise immünolojik mekanizmayla gelişir.",
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Termoregülasyon Komplikasyonları',
        items: [
          AnesthesiaComplicationsItem(
            title: "PERİOPERATİF HİPOTERMİ VE SİSTEMİK OLUMSUZ ETKİLERİ",
            description: "Pıhtılaşma bozukluğu (kanama artışı), enfeksiyon riski ve yara iyileşmesinde gecikmeye yol açar.",
            additionalInfo: "Titreme, oksijen tüketimini 5 kat artırabilir.",
          ),
          AnesthesiaComplicationsItem(
            title: "MALİGN HİPERTERMİ: GENETİK TETİKLEYİCİLER VE RYR1 DEFEKTİ",
            description: "Kromozom 19'daki RYR1 mutasyonuna sahip bireylerde volatil gazlar ve süksinilkolin ile tetiklenen krizdir.",
            additionalInfo: "Sarkoplazmik retikulumdan aşırı kalsiyum salınır.",
          ),
          AnesthesiaComplicationsItem(
            title: "MALİGN HİPERTERMİ ERKEN KLİNİK BULGULARI: HİPERKARBİ",
            description: "End-tidal CO2 düzeyindeki (ETCO2) açıklanamayan ani yükseliş MH tanısında en erken ve en değerli bulgudur.",
            additionalInfo: "Taşikardi ve kas rijiditesi eşlik eder.",
          ),
          AnesthesiaComplicationsItem(
            title: "MALİGN HİPERTERMİ ACİL YÖNETİMİ VE DANTROLEN TEDAVİSİ",
            description: "Spesifik antidot olan Dantrolen (2.5 mg/kg) uygulanmalı, aktif soğutma yapılmalı ve tetikleyiciler kesilmelidir.",
            additionalInfo: "İdrar çıkışını korumak için diürez sağlanmalıdır.",
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Gastrointestinal ve Renal Komplikasyonlar',
        items: [
          AnesthesiaComplicationsItem(
            title: "ASPİRASYON PNÖMONİSİ VE MENDELSON SENDROMU",
            description: "Mide içeriğinin aspirasyonuna bağlı gelişen kimyasal asid-pnömonitis tablosudur.",
            additionalInfo: "ARDS gelisimi mortaliteyi artırır.",
          ),
          AnesthesiaComplicationsItem(
            title: "İLEO PARALİTİK VE POSTOPERATİF BULANTI-KUSMA (PONV)",
            description: "Ameliyat sonrası görülen en sık ve hastayı en çok rahatsız eden komplikasyonlardandır.",
            subtitle: "5-HT3 antagonistleri ve deksametazon ile etkin profilaksi sağlanır",
            additionalInfo: "Opioidler motiliteyi azaltarak tabloyu ağırlaştırır.",
          ),
          AnesthesiaComplicationsItem(
            title: "OLİGÜRİ VE ACUT BÖBREK HASARI (AKI) MEKANİZMALARI",
            description: "Perioperatif hipovolemi, sepsis ve bazı nefrotoksik ilaçların kullanımı böbrek yetmezliğini tetikler.",
            additionalInfo: "Erken sıvı replasmanı renal koruma için temeldir.",
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Cerrahi Pozisyon ile İlişkili Komplikasyonlar',
        items: [
          AnesthesiaComplicationsItem(
            title: "DORSAL DEKÜBİT (SUPİNE) POZİSYONU VE SOLUNUMSAL RİSKLER",
            description: "Fonksiyonel rezidüel kapasiteyi (FRC) düşürerek atelektazi ve aspirasyon riskini artırabilir.",
            additionalInfo: "En yaygın kullanılan standart cerrahi pozisyondur.",
          ),
          AnesthesiaComplicationsItem(
            title: "TRENDELENBURG POZİSYONU VE ARTMIŞ İNTRAOKÜLER BASINÇ",
            description: "Baş aşağı pozisyon; yüz ödemi, havayolu şişmesi ve göz içi basınç artışı riski taşır.",
            additionalInfo: "Venöz dönüş artar ama kafa içi basınç (KİB) da yükselebilir.",
          ),
          AnesthesiaComplicationsItem(
            title: "PRONE (YÜZÜKOYUN) POZİSYON VE OPTİK NÖROPATİ RİSKİ",
            description: "Yüzüstü pozisyonda bası yaraları, venöz göllenme ve iskemik optik nöropati kaynaklı görme kaybı riski vardır.",
            additionalInfo: "Gözlerin serbest olması bu riski azaltmak için şarttır.",
          ),
          AnesthesiaComplicationsItem(
            title: "LATERAL DEKÜBİT POZİSYONU VE SİNİR HASARI RİSKLERİ",
            description: "Üstte kalan kolun gerilmesi veya altta kalanın ezilmesi sonucu sinir hasarı ve V/Q uyumsuzluğu gelişebilir.",
            additionalInfo: "Peroneal sinir basısı ayak düşmesine neden olabilir.",
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Postoperatif Komplikasyonlar',
        items: [
          AnesthesiaComplicationsItem(
            title: "KONTROLSÜZ POSTOPERATİF AĞRI VE SİSTEMİK ETKİLERİ",
            description: "Yetersiz analjezi; solunum zayıflığına, taşikardiye ve miyokardiyal iskemi riskine yol açar.",
            additionalInfo: "Multimodal analjezi komplikasyonları azaltmada en etkili yöntemdir.",
          ),
          AnesthesiaComplicationsItem(
            title: "POSTOPERATİF BULANTI VE KUSMA (PONV) RİSK SKORLAMASI",
            description: "Kadın cinsiyet, sigara içmeme öyküsü ve önceki PONV hikayesi riski katlayan ana faktörlerdir.",
            additionalInfo: "Apfel skoru bu riski değerlendirmek için yaygın kullanılır.",
          ),
          AnesthesiaComplicationsItem(
            title: "POSTOPERATİF TİTREME (SHIVERING) VE TERMAL YÖNETİM",
            description: "Hipotermi veya anestezik ajanların etkisiyle oluşan ve oksijen tüketimini aşırı artıran bir durumdur.",
            additionalInfo: "Meperidine bu tablonun tedavisinde spesifik etkinliğe sahiptir.",
          ),
          AnesthesiaComplicationsItem(
            title: "POSTOPERATİF ATEŞ: AYIRICI TANI VE ETİYOLOJİ",
            description: "Cerrahi stresin yanı sıra enfeksiyon, transfüzyon reaksiyonu veya geç MH bulgusu olabilir.",
            additionalInfo: "Ateşin zamanlaması tanı koymada yardımcıdır.",
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Spesifik Nadir Komplikasyonlar',
        items: [
          AnesthesiaComplicationsItem(
            title: "HAVA EMBOLİSİ VE CERRAHİ POZİSYON İLİŞKİSİ",
            description: "Özellikle oturur pozisyondaki beyin cerrahisi vakalarında venöz sisteme hava girmesidir.",
            additionalInfo: "Ciddi hipoksi ve kardiyak kollapsa neden olabilir.",
          ),
          AnesthesiaComplicationsItem(
            title: "TROMBEMBOLİK OLAYLAR (DVT/PE) VE PROFİLAKSİ",
            description: "Uzun cerrahi süreler, ortopedi ameliyatları ve immobilite nedeniyle gelişen pıhtılardır.",
            additionalInfo: "Profilaktik heparin ve varis çorabı kullanımı kritiktir.",
          ),
          AnesthesiaComplicationsItem(
            title: "PERİOPERATİF GÖRME KAYBI VE İSKEMİK OPTİK NÖROPATİ",
            description: "Uzun süreli prone pozisyon, anemi ve hipotansiyon sonucu gelişen kalıcı görme kaybıdır.",
            additionalInfo: "Nadir ancak medikolegal açıdan çok kritiktir.",
          ),
          AnesthesiaComplicationsItem(
            title: "İYATROJENİK TRAVMA VE TRAKEAL/DİŞ HASARLARI",
            description: "Entübasyon sırasında diş hasarı ve özofagus veya trakea laserasyonlarını kapsar.",
            additionalInfo: "Anestezide en sık görülen malpraktis iddiaları diş hasarlarıdır.",
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Klinik Pratik İçin Özet',
        items: [
          AnesthesiaComplicationsItem(
            title: "EN SIK GÖRÜLEN ANESTEZİ KOMPLİKASYONLARI",
            description: "Klinik pratikte en sık hipotansiyon, hipoksi, PONV ve titreme ile karşılaşılır.",
            additionalInfo: "Bu durumlar anestezistin günlük rutin yönetiminin bir parçasıdır.",
          ),
          AnesthesiaComplicationsItem(
            title: "EN CİDDİ VE HAYATI TEHDİT EDEN KOMPLİKASYONLAR",
            description: "Hava yolu obstrüksiyonu, anafilaksi, MH ve kardiyak arrest mutlak acil müdahale gerektirir.",
            additionalInfo: "Hızlı karar verme ve dinamik aksiyon süreci hayat kurtarır.",
          ),
          AnesthesiaComplicationsItem(
            title: "ÖNLEME VE HAZIRLIK STRATEJİLERİNİN ÖNEMİ",
            description: "Preoperatif doğru değerlendirme ve her an her şey olabilecekmiş gibi hazırlıklı olmak tek kuraldır.",
            additionalInfo: "Anestezi bir emniyet ve kriz yönetimi disiplinidir.",
          ),
        ],
      ),
    ];
  }
}
