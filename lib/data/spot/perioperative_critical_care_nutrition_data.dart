import 'package:flutter/material.dart';

class PerioperativeCriticalCareNutritionItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PerioperativeCriticalCareNutritionItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PerioperativeCriticalCareNutritionCategory {
  final String categoryName;
  final List<PerioperativeCriticalCareNutritionItem> items;

  PerioperativeCriticalCareNutritionCategory({
    required this.categoryName,
    required this.items,
  });
}

class PerioperativeCriticalCareNutritionData {
  static List<PerioperativeCriticalCareNutritionCategory> getPerioperativeCriticalCareNutritionData(BuildContext context) {
    return [
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Beslenme Riskinin Saptanması',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: "MALNÜTRİSYONUN KLİNİK ÖNEMİ VE MORTALİTE İLİŞKİSİ",
            description: "Yetersiz beslenme; yara iyileşmesinde gecikme, enfeksiyon artışı ve uzamış hastane yatış süresi ile doğrudan ilişkilidir.",
            additionalInfo: "Malnütrisyonlu hastalarda ventilatör bağımlılığı ve mortalite oranları belirgin derecede yüksektir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "BESLENME TARAMA TESTLERİ (NRS-2002, MUST, NUTRIC)",
            description: "Yatışın ilk 24–48 saati içinde NRS-2002 veya MUST; yoğun bakımda ise NUTRIC skoru ile risk saptanmalıdır.",
            additionalInfo: "Erken tarama, beslenme desteğinin zamanında başlamasını sağlar.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "MALNÜTRİSYONUN KLİNİK İPUÇLARI VE ANTROPOMETRİK VERİLER",
            description: "Son 6 ayda %10'dan fazla kilo kaybı, BMI <18.5 veya belirgin kas kitlesi kaybı malnütrisyon işaretidir.",
            subtitle: "5 günden uzun süren düşük alım ve sepsis/yanık gibi katabolik durumlar riski katlar",
            additionalInfo: "Ödem mevcudiyeti kilo ölçümlerini maskeleyebilir, fizik muayene esastır.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "LABORATUVAR PARAMETRELERİ: ALBÜMİN VE PREALBÜMİNİN DEĞERİ",
            description: "Albümin ve prealbümin akut faz reaktanı olduklarından akut hastalıkta tanıda tek başına güvenilmezdir.",
            additionalInfo: "Bu veriler tanıdan ziyade beslenme desteğinin etkinliğini ve trendini izlemede daha faydalıdır.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "ENERJİ GEREKSİNİMİ ÖLÇÜMÜ VE DOLAYLI KALORİMETRİ (ALTIN STANDART)",
            description: "İndirekt kalorimetri enerji ihtiyacını belirlemede altın standarttır; imkan yoksa öngörü formülleri kullanılır.",
            additionalInfo: "Hedeften uzak kalori hesaplamaları metabolik komplikasyon riskini artırır.",
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Enerji ve Protein Gereksinimi',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: "GENEL YOĞUN BAKIM ENERJİ HEDEFLERİ (25 KCAL/KG/GÜN)",
            description: "Stabil hastalarda 20–25 kcal/kg/gün; hiperkatabolik (sepsis/travma) durumlarda 25–30 kcal/kg/gün hedeflenir.",
            additionalInfo: "Aşırı besleme (overfeeding) karbondioksit üretimini artırarak ventilatörden ayrılmayı zorlaştırabilir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "PROTEİN GEREKSİNİMİ VE KATABOLİK DURUM REPLASMANI",
            description: "Cerrahi ve yoğun bakım hastalarında 1.2–2.0 g/kg/gün protein; yanık ve ağır travmada >2.0 g/kg/gün gerekir.",
            additionalInfo: "Yeterli protein alımı kas yıkımını minimize etmek için kalori kadar önemlidir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "OBEZ HASTALARDA HİPOKALORİK-YÜKSEK PROTEİNLİ BESLENME",
            description: "Obezlerde BMI'ye göre düşük enerji (11-14 kcal/kg) ancak yüksek protein (2.0-2.5 g/kg) esastır.",
            subtitle: "BMI 30–50 arası gerçek ağırlık; BMI >50 ise ideal ağırlık (IBW) baz alınır",
            additionalInfo: "Bu strateji yağ yakımını desteklerken kas kitlesini korumayı amaçlar.",
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Özel Durumlar',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: "YANIK HASTALARINDA HİPERMETABOLİK ENERJİ YÖNETİMİ",
            description: "Yoğun enerji (40–60 kcal/kg) ve yüksek protein (2–3 g/kg) desteği ile beraber eser element takviyesi şarttır.",
            subtitle: "Vitamin C, A ve çinko desteği yara iyileşmesi için kritiktir",
            additionalInfo: "Aşırı katabolizma ancak agresif beslenme ile dengelenebilir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "SEPSİS VE ARDS TABLOSUNDA KALORİK SINIRLANDIRMA",
            description: "Erken aşırı kalori yüklemesi hiperglisemi ve CO₂ yüküne yol açabileceğinden eukalorik/hipokalorik başlanmalıdır.",
            subtitle: "Protein hedefleri yüksek tutulurken kalori kademeli artırılır",
            additionalInfo: "Stabilizasyon sağlandıkça kalori hedefine ilerlenir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "BÖBREK YETMEZLİĞİ VE DİYALİZ DURUMUNA GÖRE PROTEİN AYARI",
            description: "Diyaliz almayanlarda 0.8–1.2 g/kg; RRT (diyaliz) alanlarda ise kayıplar nedeniyle 1.5–2.5 g/kg protein verilir.",
            additionalInfo: "Böbrek hastalarında protein kısıtlaması malnütrisyon riskini artırabilir, dikkatli olunmalıdır.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "KARACİĞER YETMEZLİĞİ VE ENSEFALOPATİDE BESLENME STRATEJİSİ",
            description: "Ensefalopatide protein kısıtlaması kalıcı bir strateji değildir; 1.0–1.5 g/kg düzeyinde protein güvenle verilebilir.",
            subtitle: "Gerektiğinde Dallı Zincirli Aminoasit (BCAA) içeren formüller tercih edilebilir",
            additionalInfo: "Karaciğer yetmezliğinde asıl tehlike hipoglisemi ve kas erimesidir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "KOAH VE HİPERKAPNİDE KARBONHİDRAT KISITLAMASI",
            description: "Aşırı karbonhidrat yükü solunumsal katsayıyı (RQ) artırarak karbondioksit üretimini (VCO₂) tetikler.",
            subtitle: "Dengeli veya miktarı sınırlandırılmış karbonhidrat formülleri seçilmelidir",
            additionalInfo: "Hiperkapnik hastada aşırı kalori ventilatörden ayrılmayı imkansız kılabilir.",
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Zamanlama ve Yol: Enteral (EN) vs Parenteral (PN)',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: "BESLENME YOLU SEÇİMİ VE ERKEN ENTERAL BESLENME (EN)",
            description: "Gastrointestinal sistem çalışıyorsa EN mutlaka ilk tercihtir; yatışın ilk 24–48 saati içinde başlanmalıdır.",
            additionalInfo: "Enteral yol bariyer fonksiyonunu korur ve translokasyonu önler.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "ENTERAL BESLENMENİN KESİN KONTRENDİKASYONLARI",
            description: "Bağırsak iskemisi, kontrolsüz şok, ağır GİS kanama, perforasyon ve mekanik obstrüksiyon durumlarında EN verilmez.",
            subtitle: "Hemodinamik instabilite varlığında bağırsak perfüzyonu önceliklidir",
            additionalInfo: "İskemi riski olan nekrotizan durumlarda PN tercih edilmelidir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "PARENTERAL BESLENME (PN) ENDİKASYONLARI VE ZAMANLAMASI",
            description: "EN imkansızsa veya yetersizse; yüksek riskli hastalarda hemen, düşük risklilerde ise 7. günden sonra başlanması önerilir.",
            subtitle: "Ağır malnütrisyonu olan cerrahi hastalarında PN 3-5 gün içinde erkene çekilebilir",
            additionalInfo: "PN'de en büyük risk enfeksiyon ve metabolik dengesizliklerdir.",
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Enteral Beslenme Pratikleri',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: "ENTERAL BESLENMEYE BAŞLANGIÇ VE TROFİK DOZ KAVRAMI",
            description: "Kritik hastalarda trofik dozla (10–20 mL/saat) başlanıp tolere edildikçe kalori hedefine ilerlenir.",
            additionalInfo: "Hatta düşük doz bile bağırsak mukozasının korunması için yeterli olabilir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "ASPİRASYON RİSKİNİN AZALTILMASI VE POZİSYONEL ÖNLEMLER",
            description: "Hasta baş ucu 30–45° açıda tutulmalı, post-pilorik beslenme düşünülmeli ve titiz oral bakım yapılmalıdır.",
            additionalInfo: "Aspirasyon; Ventilator-associated pneumonia (VAP) için ana risk faktörüdür.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "GASTRİK REZİDÜ VOLÜM (GRV) TAKİBİ VE KLİNİK TOLERANS",
            description: "Toleransın tek göstergesi rezidü değildir; >500 mL olmadığı sürece beslenme rutin olarak kesilmemelidir.",
            additionalInfo: "Fizik muayene ve abdominal distansiyon izlemi daha güvenilirdir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "GECİKMİŞ GASTRİK BOŞALMADA PROKİNETİK AJAN KULLANIMI",
            description: "Midenin geç boşaldığı saptanan hastalarda metoklopramid veya eritromisin gibi prokinetikler tedaviye eklenir.",
            additionalInfo: "Enteral toleransı artırarak PN gereksinimini azaltır.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "ENTERAL FORMÜL SEÇİMİ VE HASTALIK SPESİFİK DESTEKLER",
            description: "Genellikle standart yüksek proteinli formüller seçilir; renal, hepatik veya akciğer yetmezliği olanlarda özelleşmiş ürünler tercih edilebilir.",
            additionalInfo: "Hastanın primer tanısına göre içerik ayarlanmalıdır.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "İMMÜNONÜTRİSYON: ARJİNİN VE OMEGA-3 DESTEĞİ",
            description: "Majör elektif GIS ve baş-boyun cerrahilerinde arjinin, omega-3 ve nükleotid içeren formüller mortaliteyi azaltabilir.",
            subtitle: "Ağır sepsis ve çoklu organ yetmezliğinde rutin kullanımı önerilmemektedir",
            additionalInfo: "Cerrahi hastalarda immün yanıtı optimize eder.",
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Parenteral Beslenme Temelleri',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: "PARENTERAL BESLENME BİLEŞENLERİ: DEKSTROZ, AMİNOASİT VE LİPİD",
            description: "Temel enerji karbonhidrat ve yağdan; yapıtaşı ihtiyacı ise aminoasitlerden karşılanır.",
            subtitle: "Elektrolitler, iz elementler ve vitaminler mutlaka karışıma eklenmelidir",
            additionalInfo: "Tüm bileşenler tek bir torbada (3-in-1) veya ayrı ayrı verilebilir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "LİPİD EMÜLSİYONLARI VE KOLESTAZ RİSKİ YÖNETİMİ",
            description: "Günlük 0.7–1.0 g/kg dozunda uygulanır; karaciğer yetmezliği ve kolestaz durumlarında doz kısıtlanmalıdır.",
            subtitle: "Balık yağı içeren yeni kuşak lipidler kolestatik yükü azaltabilir",
            additionalInfo: "EFAD (Esansiyel yağ asidi eksikliği) önlemek için lipid şarttır.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "PARENTERAL BESLENME KOMPLİKASYONLARI VE KATETER SEPSİSİ",
            description: "En korkulan komplikasyon kateter enfeksiyonudur; ayrıca hiperglisemi ve steatoz/kolestaz görülebilir.",
            subtitle: "Hipertrigliseridemi ve ciddi elektrolit bozukluklarına (refeeding) dikkat edilmelidir",
            additionalInfo: "Aseptik teknikle hazırlık ve uygulama riski minimize eder.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "PN ALAN HASTALARIN LABORATUVAR VE KLİNİK İZLEMİ",
            description: "Günlük kan şekeri ve elektrolit; haftalık ise trigliserid ve karaciğer fonksiyon testleri izlenmelidir.",
            subtitle: "Sıvı dengesi ve ödem kontrolü her gün yapılmalıdır",
            additionalInfo: "Metabolik stabilite sağlandıkça izlem sıklığı azaltılabilir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "PROPOFOL KULLANIMININ LİPİD YÜKÜ ÜZERİNDEKİ ETKİSİ (1.1 KCAL/ML)",
            description: "Propofol infüzyonu alan hastalarda ilaçtan gelen lipid kalorisi (1.1 kcal/mL) toplam beslenmeden düşülmelidir.",
            additionalInfo: "İhmal edilmesi hipertrigliseridemiye yol açabilir.",
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Glisemik Kontrol',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: "PERİOPERATİF VE YOĞUN BAKIM KAN ŞEKERİ HEDEFİ (140-180 MG/DL)",
            description: "Kritik hastalarda glisemik hedef 140–180 mg/dL aralığıdır; bu aralık enfeksiyon riskini ve mortaliteyi dengeler.",
            additionalInfo: "Kontrolsüz hiperglisemi fagositozu bozarak enfeksiyonlara zemin hazırlar.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "AŞIRI SIKI GLİSEMİK KONTROLÜN HİPOGLİSEMİ RİSKLERİ",
            description: "80–110 mg/dL gibi aşırı sıkı hedefler hipoglisemi riskini katladığı için günümüzde önerilmemektedir.",
            additionalInfo: "Hipoglisemi, nörolojik hasar ve ani kardiyak yan etkiler doğurabilir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "İNSÜLİN PROTOKOLLERİ VE GÜVENLİ UYGULAMA PRENSİPLERİ",
            description: "Hem PN hem de EN alan hastalarda dalgalanmaları önlemek için standart insülin protokolleri uygulanmalıdır.",
            additionalInfo: "Beslenme hızı değiştikçe insülin dozları revize edilmelidir.",
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Refeeding Sendromu (RFS)',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: "REFEEDİNG SENDROMU İÇİN YÜKSEK RİSKLİ HASTA GRUPLARI",
            description: "Uzun süreli açlık, alkolizm, kanser kaşeksisi ve %10'dan fazla kilo kaybı olanlar en yüksek riskli gruptur.",
            subtitle: "Düşük BMI ve kronik diüretik kullanımı riski artıran diğer faktörlerdir",
            additionalInfo: "Bu hastalarda beslenmeye başlamak hayat kurtarıcı olduğu kadar riskli de olabilir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "REFEEDİNG SENDROMU PATOFİZYOLOJİSİ VE HÜCRE İÇİ KAYMALAR",
            description: "Beslenmeyle beraber artan insülin; Potasyum (K), Mağnezyum (Mg) ve özellikle Fosforun (P) hücre içine girmesine neden olur.",
            subtitle: "Ağır hipofosfatemi; aritmi, kalp yetmezliği ve solunum kası felcine yol açar",
            additionalInfo: "Hücreler arası elektrolit göçü multiorgan krizini tetikler.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "REFEEDİNG SENDROMUNUN ÖNLENMESİ VE KADEMELİ BESLENME",
            description: "Beslenmeye çok düşükten (10 kcal/kg/gün) başlanmalı ve hedef kaloriye 3–5 günde ulaşılmalıdır.",
            subtitle: "Tiamin (100–200 mg) mutlaka beslenme öncesi ve ilk günlerde verilmelidir",
            additionalInfo: "Fosfor, potasyum ve magnezyum replasmanları beslenmeyle eş zamanlı agresif yapılmalıdır.",
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Nitrojen Dengesi ve İzlem',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: "NİTROJEN DENGESİ HESAPLAMA FORMÜLÜ VE KLİNİK ANLAMI",
            description: "Nitrojen Dengesi = Alınan (Protein / 6.25) – [UUN + 4] formülü ile anabolik/katabolik durum ölçülür.",
            additionalInfo: "UUN: 24 saatlik idrar üre nitrojeni değerini temsil eder.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "NEGATİF NİTROJEN DENGESİNDE TEDAVİ YAKLAŞIMLARI",
            description: "Negatif denge şiddetli protein yıkımını gösterir; protein ve kalori hedefleri yukarı revize edilmelidir.",
            additionalInfo: "Altta yatan enfeksiyon/sepsis gibi katabolik süreçler kontrol altına alınmalıdır.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "FONKSİYONEL BESLENME DEĞERLENDİRMESİ VE KAS GÜCÜ TAKİBİ",
            description: "Sadece biyokimya değil, el kavrama gücü ve üst kol kas çevresi gibi fonksiyonel ölçümler de takip edilmelidir.",
            additionalInfo: "Beslenmenin nihai başarısı fonksiyonel kapasitenin korunmasıdır.",
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Özel Klinik Senaryolar',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: "PANKREATİTTE ERKEN ENTERAL BESLENMENİN AVANTAJLARI",
            description: "Akut pankreatitte erken EN (72 saat içinde) mortaliteyi ve enfeksiyon oranlarını belirgin şekilde düşürür.",
            subtitle: "PN uygulamalarından mümkün mertebe kaçınılmalıdır",
            additionalInfo: "Nazogastrik veya nazojejunal yolların her ikisi de tolere ediliyorsa seçilebilir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "KISA BARSAK VE ENTEROKÜTAN FİSTÜLDE BESLENME YOLLARI",
            description: "Distal bağırsak mesafesi ve absorbsiyon alanı uygunsa EN; aksi halde tam parenterale geçiş şarttır.",
            additionalInfo: "Fistül debisi beslenme yolunu belirleyen ana faktördür.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "POSTOPERATİF ERAS PROTOKOLLERİNDE BESLENME YÖNETİMİ",
            description: "Preoperatif karbonhidrat yüklemesi ve postoperatif mümkün olan en erken oral/enteral alım esastır.",
            subtitle: "Gereksiz açlık sürelerinden ve nazogastrik dekompresyondan kaçınılmalıdır",
            additionalInfo: "Erken beslenme bağırsak motilitesini (ileus önleme) hızlandırır.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "KARACİĞER NAKLİ SONRASI METABOLİK DESTEK",
            description: "Nakil sonrası hipoglisemi riski takibi yapılırken proteinden kaçınılmamalıdır.",
            additionalInfo: "Beslenme yetersizliği nakil başarısını doğrudan etkiler.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "ONKOLOJİK HASTALARDA SARKOPENİK OBEZİTE VE PROTEİN DESTEĞİ",
            description: "Kanserli hastalarda kitle normal görünse de protein depoları tükenmiş olabilir (sarkopenik obezite).",
            additionalInfo: "Yüksek protein desteği bu hastaların temel tedavi parçasıdır.",
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Elektrolit ve Mikrobesinler',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: "FOSFORUN SOLUNUM KAS GÜCÜ ÜZERİNDEKİ ETKİSİ",
            description: "Düşük fosfor diyafram gücünü azaltarak ventilatörden ayrılmayı (weaning) geciktirir.",
            additionalInfo: "Yoğun bakımda en sık atlanan elektrolit eksikliğidir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "MAGNEZYUM EKSİKLİĞİ VE ARİTMİ İLİŞKİSİ",
            description: "Hipomagnezemi kardiyak aritmilere ve tedaviye dirençli hipokalsemiye yol açabilir.",
            subtitle: "Refeeding sendromunda magnezyum takviyesi hayati önemdedir",
            additionalInfo: "Potasyum ile beraber değerlendirilmelidir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "UZUN SÜRELİ PN UYGULAMALARINDA İZ ELEMENT TAKVİYESİ",
            description: "Çinko, selenyum, bakır ve mangan uzun süreli total parenteral beslenmede kümülatif eksikliği engellenmesi gereken elementlerdir.",
            subtitle: "Kolestazı olan hastalarda mangan ve bakır birikimi riski izlenmelidir",
            additionalInfo: "Mikro-besin yetersizliği bağışıklık ve enzim sistemlerini çökertebilir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "VİTAMİN EKSİKLİKLERİ VE TİAMİNİN (B1) REFEEDİNGDEKİ ÖNEMİ",
            description: "Wernicke-Korsakoff ve refeeding krizlerini önlemek için özellikle riskli/alkolik hastalarda tiamin şarttır.",
            additionalInfo: "Günlük multivitamin desteği PN'nin ayrılmaz parçasıdır.",
          ),
        ],
      ),
      PerioperativeCriticalCareNutritionCategory(
        categoryName: 'Güvenlik/Püf Noktalar',
        items: [
          PerioperativeCriticalCareNutritionItem(
            title: "YOĞUN BAKIM BESLENMESİNDE TEMEL PRENSİPLER (EN > PN)",
            description: "Bağırsakların fizyolojisine en uygun ve en ekonomik yöntem her zaman için enteral yoldur.",
            additionalInfo: "EN'in başarısız olduğu yerde PN yardımcı bir kuvvettir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "HİPERKALORİK BESLENMENİN METABOLİK MALİYETİ",
            description: "Aşırı kalori; yağlı karaciğer, kontrolsüz diyabet ve solunumsal yük artışı demektir.",
            additionalInfo: "Hedef 'optimal' beslenmedir, 'maksimal' değil.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "ASPİRASYON VE VAP ÖNLEMEDE POZİSYONEL STRATEJİLER",
            description: "Yarı oturur pozisyon (30-45°) ventilatör desteği alan hastalarda aspirasyon riskini en aza indirir.",
            additionalInfo: "Hasta yatağının bu açıda tutulması hemşirelik izlem kriteridir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "PARENTERAL BESLENMEDE KATETER GÜVENLİĞİ VE ASEPSİ",
            description: "PN hattından kan alınmamalı veya başka ilaç verilmemelidir (mümkünse dedike hat).",
            additionalInfo: "Kateter sepsisi en ciddi hastane enfeksiyonu kaynaklarından biridir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "CERRAHİ HASTALARDA İMMÜNONÜTRİSYONUN YERİ",
            description: "Preoperatif 5-7 gün başlanan immünonütrisyon yara iyileşmesini güçlendirir.",
            additionalInfo: "Majör elektif cerrahi hastalarında rutin kullanımı guideline önerisidir.",
          ),
          PerioperativeCriticalCareNutritionItem(
            title: "GLUTAMİN DESTEĞİ VE SEÇİCİ KULLANIM KRİTERLERİ",
            description: "Multiorgan yetmezliği olan sepsis hastalarında rutin glutamin önerilmezken, yanık vakalarında düşünülebilir.",
            additionalInfo: "Glutamin mukoza bütünlüğünü ve immün hücreleri besler.",
          ),
        ],
      ),
    ];
  }
}
