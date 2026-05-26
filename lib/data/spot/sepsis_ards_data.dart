import 'package:flutter/material.dart';

class SepsisArdsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  SepsisArdsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class SepsisArdsCategory {
  final String categoryName;
  final List<SepsisArdsItem> items;

  SepsisArdsCategory({
    required this.categoryName,
    required this.items,
  });
}

class SepsisArdsData {
  static List<SepsisArdsCategory> getSepsisArdsData(BuildContext context) {
    return [
      SepsisArdsCategory(
        categoryName: 'Sepsis Tanımı ve Tarama',
        items: [
          SepsisArdsItem(
            title: "SEPSİSİN KLİNİK TANIMI VE SOFA SKORLAMA (≥2 PUAN)",
            description: "Enfeksiyon eşliğinde SOFA skorunda ≥2 puanlık artışla karakterize, hayatı tehdit eden organ disfonksiyonudur.",
            additionalInfo: "SOFA skoru; solunum, koagülasyon, karaciğer, KVS, SSS ve böbrek fonksiyonlarını değerlendirir.",
          ),
          SepsisArdsItem(
            title: "SEPTİK ŞOK: VAZOPAKTİF İHTİYACI VE LAKTAT >2 MMOL/L",
            description: "Yeterli sıvı resüsitasyonuna rağmen MAP ≥65 mmHg için vazopresör gereksinimi ve laktat >2 mmol/L olmasıdır.",
            additionalInfo: "Hücresel düzeyde metabolik anormalliğin ve yüksek mortalite riskinin göstergesidir.",
          ),
          SepsisArdsItem(
            title: "SEPSİS TARAMASINDA ERKEN UYARI SİSTEMLERİ (NEWS/MEWS)",
            description: "Tarama için tek başına qSOFA yerine; NEWS, MEWS veya SIRS kriterlerinin klinik değerlendirmeyle birleşimi tercih edilmelidir.",
            additionalInfo: "qSOFA düşük sensitivitesi nedeniyle tarama aracı olarak önerilmemektedir.",
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'İlk Saat Yaklaşımı (Hour-1 Bundle)',
        items: [
          SepsisArdsItem(
            title: "LAKTAT DÜZEYİ ÖLÇÜMÜ VE DOKU PERFÜZYON TAKİBİ",
            description: "Serum laktat düzeyini ölçün; 2 mmol/L üzerindeyse perfüzyon takibi için ölçümü tekrarlayın.",
            subtitle: "Laktat yüksekliği doku hipoksisinin indirekt göstergesidir",
            additionalInfo: "Seri laktat takibi resüsitasyon başarısını izlemede kritiktir.",
          ),
          SepsisArdsItem(
            title: "ANTİBİYOTİK ÖNCESİ KAN VE DİĞER KÜLTÜR ÖRNEKLERİ",
            description: "Antibiyotik tedavisine başlamadan önce (gecikmeye yol açmadan) en az iki set kan kültürü ve ilgili örnekler alınmalıdır.",
            additionalInfo: "Kültür örneklendirmesi daha sonraki de-eskalasyon stratejisi için temel oluşturur.",
          ),
          SepsisArdsItem(
            title: "GENİŞ SPEKTRUMLU ANTİBİYOTİK TEDAVİSİ (İLK SAAT)",
            description: "Şüpheli sepsis veya septik şok tanısından sonraki ilk 1 saat içinde amprik geniş spektrumlu tedavi başlanmalıdır.",
            additionalInfo: "Antibiyotik gecikmesi her saat başı mortaliteyi artırır.",
          ),
          SepsisArdsItem(
            title: "SIVI RESÜSİTASYONU PROTOKOLÜ: 30 ML/KG KRİSTALLOİD",
            description: "Sepsis kaynaklı hipotansiyon veya laktat ≥4 mmol/L varlığında 3 saat içinde 30 mL/kg izotonik kristalloid verilmelidir.",
            additionalInfo: "Sıvı miktarı hesaplanırken hastanın ideal vücut ağırlığı esas alınır.",
          ),
          SepsisArdsItem(
            title: "VAZOPRESÖR DESTEĞİ: MAP HEDEFİ ≥65 MMHG (NOREPİNEFRİN)",
            description: "Sıvı resüsitasyonuna rağmen MAP <65 mmHg ise doku perfüzyonunu korumak için norepinefrin ilk tercihtir.",
            additionalInfo: "Vazopresörlerin santral venöz katarer üzerinden verilmesi tercih edilir ancak acil durumda periferik hat kullanılabilir.",
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'Antimikrobiyal Tedavi',
        items: [
          SepsisArdsItem(
            title: "AMPİRİK ANTİBİYOTERAPİ VE GENİŞ SPEKTRUM STRATEJİSİ",
            description: "Başlangıç tedavisi olası tüm patojenleri (bakteriyel, fungal veya viral) kapsayacak şekilde planlanmalıdır.",
            additionalInfo: "Lokal direnç paternleri göz önünde bulundurulmalıdır.",
          ),
          SepsisArdsItem(
            title: "DE-ESKALASYON VE KÜLTÜR DUYARLILIĞINA GÖRE DARALTMA",
            description: "Klinik stabilite ve kültür sonuçları eşliğinde 48-72. saatlerde tedavi daraltılmalı veya sonlandırılmalıdır.",
            subtitle: "Gereksiz uzun süreli geniş spektrumlu kombinasyonlardan kaçınılmalıdır",
            additionalInfo: "Antibiyotik tedavi süresi genellikle 7-10 gündür.",
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'Sıvı, Vazopresör, Hemodinamik',
        items: [
          SepsisArdsItem(
            title: "KRİSTALLOİD SEÇİMİ VE ALBUMİN ENDİKASYONLARI",
            description: "Ana resüsitasyon sıvısı dengeli kristalloidlerdir; yüksek miktarda kristalloid gerektiren durumlarda albumin eklenebilir.",
            subtitle: "HES (Hidroksietil nişasta) kullanımı nefrotoksisite nedeniyle kontrendikedir",
            additionalInfo: "Jelatinler için de belirgin bir klinik üstünlük saptanmamıştır.",
          ),
          SepsisArdsItem(
            title: "HEDEFLENEN ORTALAMA ARTER BASINCI (MAP ≥65 MMHG)",
            description: "Resüsitasyonun primer hemodinamik hedefi MAP ≥65 mmHg düzeyinde tutulmasıdır.",
            additionalInfo: "Hipertansiyon öyküsü olanlarda daha yüksek hedefler tartışmalıdır.",
          ),
          SepsisArdsItem(
            title: "VAZOPRESÖR SEÇİMİNDE NOREPİNEFRİN VE VAZOPRESSİN ROLÜ",
            description: "Norepinefrine rağmen MAP hedefi sağlanamazsa vasopressin (0.03 U/dk sabit doz) eklenmesi önerilir.",
            subtitle: "Norepinefrini azaltmaya yardımcıdır; dopamin aritmi riski nedeniyle önerilmez",
            additionalInfo: "Refrakter olgularda epinefrin infüzyonu devreye alınabilir.",
          ),
          SepsisArdsItem(
            title: "DİNAMİK SIVI YANITI ÖLÇÜMÜ: PASİF BACAK KALDIRMA TESTİ",
            description: "Sıvı cevabını değerlendirmede pasif bacak kaldırma, strok hacmi değişimi ve PPV gibi dinamik yöntemler statik ölçümlere üstündür.",
            subtitle: "CVP gibi statik ölçümler tek başına volüm yanıtını öngöremez",
            additionalInfo: "Aşırı sıvı yüklenmesinden kaçınmak için dinamik testler esastır.",
          ),
          SepsisArdsItem(
            title: "İDRAR ÇIKIŞI (≥0.5 ML/KG/S) VE SERİ LAKTAT TAKİBİ",
            description: "Böbrek perfüzyonunun göstergesi olarak idrar çıkışı saatlik 0.5 mL/kg üzerinde tutulmaya çalışılmalıdır.",
            subtitle: "Laktat klirensi hücresel iyileşmeyi destekler",
            additionalInfo: "Oligüri, şok tablosunun en erken bulgularından biridir.",
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'Kaynak Kontrolü',
        items: [
          SepsisArdsItem(
            title: "ENFEKSİYON ODAĞI KONTROLÜ VE ACİL CERRAHİ DRENAJ",
            description: "Apselerin boşaltılması ve nekrotik dokuların debridmanı gibi odak kontrolleri ilk 6-12 saat içinde tamamlanmalıdır.",
            subtitle: "Odak kontrolünde gecikme mortaliteyi logaritmik olarak artırır",
            additionalInfo: "Enfekte kateterler derhal çekilmelidir.",
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'Kortikosteroid',
        items: [
          SepsisArdsItem(
            title: "REFRAKTER SEPTİK ŞOKTA DÜŞÜK DOZ HİDROKORTİZON (200 MG/GÜN)",
            description: "Sıvı ve vazoaktif tedaviye rağmen dirençli seyreden septik şokta düşük doz hidrokortizon önerilir.",
            additionalInfo: "Genellikle günlük 200 mg dozunda infüzyon veya bölünmüş dozlar şeklinde uygulanır.",
          ),
          SepsisArdsItem(
            title: "ŞOK OLMAYAN SEPSİSTE RUTİN STEROİD ÖNERİLMEZ",
            description: "Septik şok tablosu gelişmemiş sepsis vakalarında kortikosteroid kullanımının rutin bir yeri yoktur.",
            additionalInfo: "Gereksiz steroid kullanımı hiperglisemi ve sekonder enfeksiyon riskini artırır.",
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'Transfüzyon, Glisemi, RRT',
        items: [
          SepsisArdsItem(
            title: "RBC TRANSFÜZYON EŞİĞİ (HB <7 G/DL) VE STABİLİZASYON",
            description: "Aktif iskemi veya ağır hipoksemi yoksa, transfüzyon eşiği Hb <7 g/dL olarak belirlenmelidir.",
            additionalInfo: "Konservatif transfüzyon stratejisi sağkalımı iyileştirir.",
          ),
          SepsisArdsItem(
            title: "GLİSEMİ HEDEFİ (140–180 MG/DL) VE HİPOGLİSEMİ ÖNLEME",
            description: "Kan şekeri yönetimi 140–180 mg/dL aralığında tutulmalı; 110 altındaki sıkı kontrollerden kaçınılmalıdır.",
            additionalInfo: "Sıkı glisemik kontrol hipoglisemi kaynaklı nörolojik hasara yol açabilir.",
          ),
          SepsisArdsItem(
            title: "BÖBREK REPLASMAN TEDAVİSİ (RRT) VE HEMODİNAMİK KARAR",
            description: "Hemodinamik instabilitesi olan vakalarda Sürekli Renal Replasman Tedavisi (CRRT) tercih edilebilir.",
            subtitle: "Erken RRT başlamanın mortalite üzerine net bir üstünlüğü kanıtlanmamıştır",
            additionalInfo: "Oligüri, hiperkalemi ve dirençli asidoz öncelikli endikasyonlardır.",
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS Tanı ve Sınıflama',
        items: [
          SepsisArdsItem(
            title: "ARDS BERLİN TANIMI: HAFİF, ORTA VE AĞIR SINIFLANDIRMA",
            description: "Akut başlangıç, bilateral infiltratlar ve PaO₂/FiO₂ oranına göre hafif (200-300), orta (100-200), ağır (≤100) olarak tanımlanır.",
            subtitle: "Tanı için en az 5 cmH₂O PEEP desteği gereklidir",
            additionalInfo: "Kardiyak orijinli ödem mutlaka dışlanmalıdır.",
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS Mekanik Ventilasyon',
        items: [
          SepsisArdsItem(
            title: "DÜŞÜK TİDAL HACİM (6 ML/KG) VE PLATO BASINCI <30 CMH2O",
            description: "Akciğer hasarını önlemek için tidal hacim 6 mL/kg (ideal kilo) ve plato basıncı <30 cmH₂O ile sınırlanmalıdır.",
            subtitle: "Sürüş basıncının (ΔP = Pplat − PEEP) düşük tutulması mortaliteyi iyileştirir",
            additionalInfo: "Barotravma ve VILI riskini minimize eden temel yaklaşımdır.",
          ),
          SepsisArdsItem(
            title: "PEEP STRATEJİLERİ VE HİPOKSEMİK AKCİĞER YÖNETİMİ",
            description: "Orta ve ağır ARDS vakalarında alveol açıklığını sürdürmek için yüksek PEEP stratejileri tercih edilebilir.",
            subtitle: "Rutin agresif recruitment manevraları günümüzde önerilmemektedir",
            additionalInfo: "Hemodinamik dalgalanmalar titizlikle izlenmelidir.",
          ),
          SepsisArdsItem(
            title: "PRONE POZİSYONUN SAĞKALIM ÜZERİNE ETKİSİ (12–16 SA/GÜN)",
            description: "Ağır ARDS (P/F <150) hastalarında prone pozisyonu günde en az 12-16 saat süreyle uygulanmalıdır.",
            subtitle: "Gaz değişimini iyileştirir ve VILI riskini azaltarak mortaliteyi düşürür",
            additionalInfo: "Yüz yaralanmaları ve kateter yerinden çıkması açısından dikkatli olunmalıdır.",
          ),
          SepsisArdsItem(
            title: "NÖROMÜSKÜLER BLOKAJ: SEÇİLMİŞ AĞIR VAKALARDA KISA SÜRELİ",
            description: "Ciddi hipoksemi veya ventilatör uyumsuzluğu olan ağır vakalarda ilk 48 saat içinde kısa süreli infüzyon düşünülebilir.",
            subtitle: "Rutin ve sürekli kullanımı önerilmemektedir",
            additionalInfo: "Erken mobilizasyonu geciktirmemek için geri dönüş hızlı olmalıdır.",
          ),
          SepsisArdsItem(
            title: "YÜKSEK FREKANSLI OSİLASYON (HFOV) ÖNERİLMEZ",
            description: "ARDS vakalarında rutin yüksek frekanslı ventilasyon kullanımı zarar/yarar dengesi nedeniyle önerilmemektedir.",
            additionalInfo: "Konvansiyonel akciğer koruyucu stratejiler daha güvenlidir.",
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS Oksijenasyon ve Non-İnvaziv Destek',
        items: [
          SepsisArdsItem(
            title: "HAFİF-ORTA YETMEZLİKTE HFNC VE NIV KULLANIMI",
            description: "Hafif vakalarda yüksek akışlı nazal oksijen (HFNC) veya uygun hastalarda NIV denenebilir.",
            additionalInfo: "NIV başarısızlığı durumunda gecikmeden entübasyon yapılmalıdır.",
          ),
          SepsisArdsItem(
            title: "İŞ YÜKÜ YÜKSEK HASTALARDA ERKEN ENTÜBASYON EŞİĞİ",
            description: "Solunum iş yükü belirgin artan veya ajite vakalarda invaziv ventilasyon için eşik düşük tutulmalıdır.",
            subtitle: "Kılavuzlar güçlü kanıtı invaziv mekanik ventilasyon için sunar",
            additionalInfo: "Gecikmiş entübasyon mortalite riskini artırabilir.",
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS Sıvı Yönetimi ve Sedasyon',
        items: [
          SepsisArdsItem(
            title: "KONSERVATİF SIVI STRATEJİSİ VE 'KURU AKCİĞER' HEDEFİ",
            description: "Hemodinamik stabilite sonrası fazla sıvıdan kaçınarak kuru bir akciğer yüzeyi hedeflenmelidir.",
            subtitle: "Bu strateji ventilatörde kalış süresini kısaltır",
            additionalInfo: "Pulmoner ödemin resolüsyonunu hızlandırır.",
          ),
          SepsisArdsItem(
            title: "HAFİF-ORTA SEDASYON VE ERKEN MOBİLİZASYON PROTOKOLÜ",
            description: "Derin sedasyondan kaçınılmalı; hemodinami elverdiğince erken mobilizasyon ve fizyoterapi başlanmalıdır.",
            subtitle: "Sedasyon tatili (sedation holiday) günlük olarak değerlendirilmelidir",
            additionalInfo: "VAP riskini azaltır.",
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS Kortikosteroidler',
        items: [
          SepsisArdsItem(
            title: "ORTA-AĞĞIR ARDS VAKALARINDA KOŞULLU STEROİD KULLANIMI",
            description: "Orta ve ağır ARDS olgularında enflamasyonu baskılamak adına kortikosteroid kullanımı düşünülebilir.",
            subtitle: "Ölüm ve ventilatörde kalış süresi üzerinde olası fayda sağlar",
            additionalInfo: "Hafif vakalarda rutin kullanım önerisi yoktur.",
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS ECMO',
        items: [
          SepsisArdsItem(
            title: "REFRAKTER HİPOKSEMİDE VENO-VENÖZ ECMO KARARI",
            description: "Optimize edilmiş ventilasyon, prone ve NMB'ye rağmen düzelmeyen ağır hipoksemide veno-venöz ECMO planlanmalıdır.",
            subtitle: "Deneyimli merkezlerde, seçilmiş hastalarda uygulanır",
            additionalInfo: "Konvansiyonel yöntemler başarısız olduktan sonra son basamak (rescue) tedavisidir.",
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'ARDS Diğerleri',
        items: [
          SepsisArdsItem(
            title: "PROSTASİKLİN VE İNHALER NO: KURTARICI OKSİJENASYON",
            description: "İnhaler Nitrik Oksit (NO) seçilmiş vakalarda oksijenasyonu geçici olarak düzeltebilir; rutin önerilmez.",
            subtitle: "Mortalite üzerinde net bir faydası gösterilmemiştir",
            additionalInfo: "Statinler ve rutin inhaler nitratlar için yeterli kanıt yoktur.",
          ),
        ],
      ),
      SepsisArdsCategory(
        categoryName: 'Hızlı Hatırlatma Kartı',
        items: [
          SepsisArdsItem(
            title: "SEPSİSTE İLK SAAT PAKETİ VE SIVI/VAZOPRESÖR HEDEFLERİ",
            description: "Laktat takibi, kan kültürü, erken antibiyotik, 30 mL/kg sıvı ve MAP ≥65 (Norepinefrin) esastır.",
            subtitle: "Odak kontrolünü (source control) geciktirme",
            additionalInfo: "İdrar çıkışını ≥0.5 mL/kg/sa düzeyinde izle.",
          ),
          SepsisArdsItem(
            title: "ARDS AKCİĞER KORUYUCU PAKET VE PRONE/PEEP YÖNETİMİ",
            description: "Tidal volüm 6 mL/kg, Plato <30, uygun PEEP ve ağır vakalarda 12-16 saat prone pozisyonu hayat kurtarır.",
            subtitle: "Agresif resüsitasyondan kaçınarak konservatif sıvı yönetimine geç",
            additionalInfo: "Refrakter olguda VV-ECMO değerlendir.",
          ),
        ],
      ),
    ];
  }
}
