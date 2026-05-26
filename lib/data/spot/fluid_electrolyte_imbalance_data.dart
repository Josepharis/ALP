import 'package:flutter/material.dart';

class FluidElectrolyteImbalanceItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  FluidElectrolyteImbalanceItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class FluidElectrolyteImbalanceCategory {
  final String categoryName;
  final List<FluidElectrolyteImbalanceItem> items;

  FluidElectrolyteImbalanceCategory({
    required this.categoryName,
    required this.items,
  });
}

class FluidElectrolyteImbalanceData {
  static List<FluidElectrolyteImbalanceCategory>
      getFluidElectrolyteImbalanceData(BuildContext context) {
    return [
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Temel Kavramlar',
        items: [
          FluidElectrolyteImbalanceItem(
            title: "MOLARİTE VE TANIMI: LİTRE BAŞINA MOL SAYISI",
            description: "Molarite, 1 litre solüsyonda çözünmüş olan maddenin mol sayısını ifade eder.",
            additionalInfo: "Kimyasal hesaplamalarda en yaygın kullanılan konsantrasyon birimlerinden biridir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "MOLALİTE VE TANIMI: KİLOGRAM BAŞINA MOL SAYISI",
            description: "Molalite, 1 kilogram çözücüde çözünmüş olan maddenin mol sayısıdır.",
            additionalInfo: "Sıcaklık ve basınç değişimlerinden bağımsız olduğu için hassas fizikokimyasal ölçümlerde tercih edilir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "EKİVALAN (EQ) VE ELEKTRİK YÜKÜ İLİŞKİSİ",
            description: "Ekivalan, bir maddenin mol sayısının elektrik yükü (valansı) ile çarpılmasıyla hesaplanır.",
            additionalInfo: "Örneğin; 1 mol Ca2+, 2 ekivalan değerindedir. Elektrolit dengesi hesaplamalarında temeldir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "OSMOTİK BASINÇ VE HİDROSTATİK DENGE (19.3 MMHG)",
            description: "1 mOsm/L'lik konsantrasyon farkı, yaklaşık 19.3 mmHg'lık bir osmotik basınca karşılık gelir.",
            additionalInfo: "Hücreler arası sıvı geçişini belirleyen en kritik fiziksel kuvvettir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "OSMOLARİTE VE LİTREDEKİ ÇÖZÜNMÜŞ OSMOLLER",
            description: "1 litre solüsyondaki toplam osmol sayısını tanımlar.",
            additionalInfo: "Klinik pratikte plazma değerlerini ifade etmek için sıkça kullanılır.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "OSMOLALİTE VE KİLOGRAMDAKİ ÇÖZÜNMÜŞ OSMOLLER",
            description: "1 kilogram çözücüdeki (genellikle su) çözünmüş osmol sayısıdır.",
            additionalInfo: "Plazma osmolalitesi genellikle 280-290 mOsm/kg aralığındadır.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "TONOSİTE VE HÜCRE HACMİ ÜZERİNDEKİ ETKİLERİ",
            description: "Tonosite, bir solüsyonun hücre hacmi üzerine yaptığı net etkidir (şişme veya büzülme).",
            additionalInfo: "İzotonik, hipertonik ve hipotonik kavramları bir hücrenin o solüsyondaki davranışına göre belirlenir.",
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Sıvı Kompartmanları',
        items: [
          FluidElectrolyteImbalanceItem(
            title: "İNTRASELLÜLER SIVI (ICS) VE K+ BASKINLIĞI",
            description: "Hücre içi sıvı olup, vücut suyunun yaklaşık 2/3'ünü oluşturur; ana katyon Potasyumdur (K+).",
            subtitle: "Na-K-ATPaz pompası ile denge sağlanır (3 Sodyum dışa : 2 Potasyum içe)",
            additionalInfo: "ICS'de protein konsantrasyonu ECS'ye göre oldukça yüksektir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "EKSTRASELLÜLER SIVI (ECS) VE NA+ BASKINLIĞI",
            description: "Hücre dışı sıvı olup, ana katyon Sodyumdur (Na+) ve plazma ile interstisyel alanı içerir.",
            additionalInfo: "Vücut suyunun yaklaşık 1/3'ünü temsil eder; hacim yönetimi ECS üzerinden yapılır.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "İNTERSİTİSYEL ALAN VE ÖDEM OLUŞUM MEKANİZMASI",
            description: "Hücreler ile damarlar arasındaki alandır; normal şartlarda basıncı hafift negatiftir (-5 mmHg).",
            subtitle: "Basınç pozitife döndüğünde interstisyel alanda sıvı birikir ve klinik ödem oluşur",
            additionalInfo: "Protein içeriği damar içine göre düşüktür (yaklaşık 2 g/dL).",
          ),
          FluidElectrolyteImbalanceItem(
            title: "İNTRAVASKÜLER ALAN VE PLAZMA PROTEİNLERİNİN ETKİSİ",
            description: "Damar içindeki plazma hacmidir; plazma proteinleri damar içinde kalarak osmotik basıncı korur.",
            additionalInfo: "Onkotik basınç, sıvının damar içinde tutulmasını sağlayan ana kuvvettir.",
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Günlük Su Dengesi',
        items: [
          FluidElectrolyteImbalanceItem(
            title: "GÜNLÜK SU ALIMI VE METABOLİK SU KATKISI (2500 ML)",
            description: "Vücuda giren toplam suyun 2200 mL'si içecek ve gıdalardan, 300 mL'si ise metabolik oksidasyon sonucu oluşur.",
            additionalInfo: "Su alımı esas olarak susama mekanizmasıyla yönetilir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "GÜNLÜK SU KAYIPLARI VE İNSENSİBLE KAYIPLAR (1500 ML İDRAR)",
            description: "Günde yaklaşık 1500 mL idrar ile su atılırken; solunum ve cilt yoluyla 400'er mL fark edilmeyen kayıp gerçekleşir.",
            subtitle: "Ter ve gaita yoluyla da yaklaşık 100'er mL su kaybedilir",
            additionalInfo: "Ateş ve hiperventilasyon durumlarında insensible kayıplar belirgin derecede artar.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "PLAZMA OSMOLALİTESİ HESAPLAMA FORMÜLÜ (280-290 MOSM/KG)",
            description: "(Na x 2) + BUN/2.8 + Glukoz/18 formülü ile plazma osmolalitesi hesaplanır.",
            additionalInfo: "Normal aralığın dışında çıkması osmolar bozuklukları (hipernatremi, diyabet vb.) gösterir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "HİPERGLİSEMİNİN SODYUM ÖLÇÜMÜ ÜZERİNDEKİ ETKİSİ (62 MG/DL : 1 MEQ/L)",
            description: "Kan şekerindeki her 62 mg/dL'lik artış, ölçülen plazma sodyumunu 1 mEq/L düşürür.",
            additionalInfo: "Psüdohiponatreminin en sık nedenidir; düzeltilmiş sodyum mutlaka hesaplanmalıdır.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "OSMOLAL GAP (OSMOLAL AÇIK) VE KLİNİK ÖNEMİ",
            description: "Ölçülen osmolalite ile hesaplanan osmolalite arasındaki farktır; farkın açılması kanda 'abnormal' moleküller olduğunu gösterir.",
            additionalInfo: "Ketoasidoz, TUR sendromunda glisin yüklemesi veya toksin alımlarında (metanol vb.) artar.",
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'ADH & Susama Mekanizması',
        items: [
          FluidElectrolyteImbalanceItem(
            title: "ADH (ANTİDİÜRETİK HORMON) VE OSMOLALİTE KONTROLÜ",
            description: "Hipotalamusun supraoptik ve paraventriküler çekirdeklerinde sentezlenen, su tutulumunu sağlayan hormondur.",
            subtitle: "Plazma osmolalitesindeki en ufak artış ADH salınımını tetikler",
            additionalInfo: "Nörohipofizden kana salınarak böbrek toplayıcı kanallarında su emilimini artırır.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "ADH TAM BASKILANMASI VE MAKSİMUM SU ATILIMI (10-20 L/GÜN)",
            description: "Vazopressin (ADH) tamamen baskılandığında böbrekler günde 10-20 litreye kadar serbest su atabilir.",
            additionalInfo: "Bu durum büyük miktarlarda dilüe idrar çıkarılmasına neden olur.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "NONOSMOTİK ADH SALINIMI VE KAN HACMİ İLİŞKİSİ (%5-10 AZALMA)",
            description: "Kan hacminde %5-10'luk bir azalma görüldüğünde, osmolalite normal olsa bile ADH salınımı uyarılır.",
            additionalInfo: "Vücudun öncelikli hedefi osmolaliteden ziyade kan hacminin korunmasıdır.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "SUSAMA MEKANİZMASI: HİPEROSMOLALİTEYE KARŞI EN GÜÇLÜ SAVUNMA",
            description: "Hiperosmolalite ve hipernatremiye karşı vücudun son ve en güçlü savunma kalesidir.",
            additionalInfo: "Susamayan veya suya ulaşamayan hastalarda hipernatremi hızla gelişi.",
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Hipernatremi',
        items: [
          FluidElectrolyteImbalanceItem(
            title: "DÜŞÜK SODYUM İÇERİKLİ HİPERNATREMİ VE SU KAYBI",
            description: "Su kaybının sodyum kaybından fazla olduğu durum; sodyum idrarda renal kayıpta >20, ekstrarenal kayıpta <10'dur.",
            additionalInfo: "Genellikle hipovolemik hipernatremi olarak klinik verir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "NORMAL SODYUM İÇERİKLİ HİPERNATREMİ (DI TABLOSU)",
            description: "Sodyum miktarı değişmezken sadece suyun kaybedildiği Diyabetes İnsipitus (DI) tablosudur.",
            subtitle: "Santral DI (Desmopressin ile tedavi); Nefrojenik DI (Tiyazid ile tedavi)",
            additionalInfo: "Li, Amfoterisin B kullanımı veya hiperkalsemi nefrojenik DI nedenidir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "ARTMIŞ SODYUM İÇERİKLİ HİPERNATREMİ",
            description: "Hipertonik salin uygulaması veya hiperaldosteronizm gibi durumlarda sodyum yükü artar.",
            additionalInfo: "Yüksek hacimli NaHCO3 uygulamaları buna neden olabilir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "HİPERNATREMİ KLİNİK BULGULARI VE NÖROLOJİK RİSKLER",
            description: "Huzursuzluktan komaya kadar giden nörolojik bir tablo oluşturur.",
            subtitle: "Sodyumun akut yükselişi (>158 mEq/L) intrakraniyal kanamalara ve nöbetlere neden olabilir",
            additionalInfo: "Hücre büzüşmesine bağlı vasküler yapılar gerilerek yırtılabilir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "HİPERNATREMİ TEDAVİSİ VE DÜZELTME PRENSİPLERİ",
            description: "Beyin ödemini önlemek için sodyum düzeltme hızı 0.5 mEq/L/saat seviyesini aşmamalıdır.",
            subtitle: "Sodyum değeri 150 mEq/L'nin üzerinde olan hastalarda elektif cerrahi ertelenmelidir",
            additionalInfo: "Düzeltme süreçlerinin fizyolojik limitlere göre zamana yayılması hayat kurtarıcıdır.",
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Hiponatremi',
        items: [
          FluidElectrolyteImbalanceItem(
            title: "DÜŞÜK SODYUM İÇERİKLİ (HİPOVOLEMİK) HİPONATREMİ",
            description: "Renal kayıplarda idrar sodyumu >20 iken, kusma-ishal gibi ekstrarenal kayıplarda <10'dur.",
            additionalInfo: "Vücut sıvısı ile beraber sodyumun da kaybedildiği ancak su kaybının daha az olduğu durumdur.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "ARTMIŞ SODYUM İÇERİKLİ (HİPERVOLEMİK) HİPONATREMİ",
            description: "KKY, siroz ve nefrotik sendrom gibi su artışının (dilüsyonel) sodyum artışından daha fazla olduğu hallerdir.",
            additionalInfo: "Tedavide primer amaç su kısıtlamasıdır.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "NORMAL SODYUM İÇERİKLİ (ÖVOLEMİK) HİPONATREMİ VE SIADH",
            description: "En sık SIADH (Uygunsuz ADH Salınımı Sendromu) tablosunda görülür.",
            subtitle: "SIADH: İdrar Na >40 ve idrar Osm >100 mOsm/kg iken plazmanın hipoosmotik olmasıdır",
            additionalInfo: "Kanser ve akciğer enfeksiyonları SIADH'ı tetikleyebilir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "HİPONATREMİ KLİNİK BELİRTİLERİ VE KRİTİK EŞİKLER",
            description: "120 mEq/L altındaki değerlerde bulantı, kas krampları ve nöbet gibi ciddi semptomlar başlar.",
            additionalInfo: "Konsantrasyon kaybı ve kafa karışıklığı görülebilir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "HİPONATREMİ TEDAVİSİ VE HİPERTONİK SALİN KULLANIMI",
            description: "Akut semptomatik durumlarda hipertonik salin ile sodyum kontrollü olarak (saatte 0.5-1.5 mEq/L) yükseltilir.",
            subtitle: "Hızlı düzeltme 'Santral Pontin Miyelinolizis' (sinir kılıfı hasarı) riskini doğurur",
            additionalInfo: "Hipovolemik hastada izotonik salin; övolemik/hipervolemik hastada sıvı kısıtlaması esastır.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "ANESTEZİ VE CERRAHİ İÇİN GÜVENLİ SODYUM ALT SINIRI",
            description: "Elektif cerrahi planı için hasta sodyum düzeyinin en az 130 mEq/L olması istenir.",
            additionalInfo: "Daha düşük değerlerde beyin ödemi riski anestetik ajanlarla artabilir.",
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Potasyum (K+)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: "NORMAL POTASYUM ALIMI VE DENGESİ",
            description: "Günde 40-140 mEq potasyum alınır; denge hücre içi ve dışı geçişlerle korunur.",
            additionalInfo: "Vücut toplam potasyumunun %98'i hücre içindedir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "PH VE POTASYUM İLİŞKİSİ",
            description: "Vücut pH'ındaki her 0.1'lik değişim potasyumda 0.6 mEq/L zıt yönlü değişim yaratır.",
            subtitle: "Na-K-ATPaz, insülin ve beta-2 agonistlerle potasyum hücre içine sokulur",
            additionalInfo: "Asidoz hücre dışına potasyum çıkışına yol açarak hiperkalemi yapar.",
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Hipokalemi',
        items: [
          FluidElectrolyteImbalanceItem(
            title: "HİPOKALEMİ KLİNİK BULGULARI VE EKG (U DALGASI)",
            description: "T dalgası düzleşmesi ve belirgin U dalgası oluşumu tipik EKG bulgularıdır.",
            additionalInfo: "Kas güçsüzlüğü ve barsak motilitesinin durması (ileus) diğer belirtilerdir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "HİPOKALEMİ TEDAVİSİ VE REPLASMAN SINIRLARI",
            description: "Periferik damardan ≤8 mEq/saat; santral damardan ≤20 mEq/saat hızla verilebilir.",
            subtitle: "Oral replasman hızı 60-80 mEq/gün olarak planlanabilir",
            additionalInfo: "Kontrolsüz potasyum replasmanı kardiyak arrest nedeni olabilir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "ANESTEZİ VE HİPOKALEMİ: NMB DUYARLILIĞI",
            description: "Hipokalemi, nöromüsküler blokörlere (NMB) duyarlılığı %25-50 oranında artırır.",
            subtitle: "Digoksin kullanan hastalarda potasyumun mutlaka ≥4 mEq/L olması istenir",
            additionalInfo: "Düşük potasyum digoksin toksisitesini tetikler.",
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Hiperkalemi',
        items: [
          FluidElectrolyteImbalanceItem(
            title: "HİPERKALEMİ KLİNİK BULGULARI VE SİVRİ T DALGASI",
            description: "Sivri T dalgası ile başlar; QRS genişlemesi ve P dalgasının kaybolmasıyla ilerler.",
            additionalInfo: "Kas paralizisi eşlik edebilir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "HİPERKALEMİ ACİL TEDAVİSİ: CA-GLUKONAT",
            description: "Kalsiyum glukonat membranı stabilize ederek kalbi ani duruştan korur.",
            subtitle: "NaHCO3, beta-agonist, insülin+glukoz potasyumu hücre içine sokar",
            additionalInfo: "Diyaliz, potasyumu saatte 50 mEq düşürebilen en etkili yöntemdir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "HİPERKALEMİDE CERRAHİ ERTELEME KRİTERİ (>6 MEQ/L)",
            description: "Potasyumu 6 mEq/L üzerinde olan hastaların elektif operasyonları ertelenmelidir.",
            additionalInfo: "Cerrahi stres ve asidoz potasyumu daha da yükseltecektir.",
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Kalsiyum (Ca²⁺)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: "NORMAL DEĞERLER VE PH ETKİSİ",
            description: "Normal kalsiyum 8.5–10.5 mg/dL'dir; asidoz (pH ↓) iyonize kalsiyumu artırır.",
            subtitle: "pH ↓ 0.1 → Ca ↑ 0.16 mg/dL",
            additionalInfo: "Total kalsiyumun yaklaşık yarısı proteinlere bağlıdır.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "HİPERKALSEMİ ETİYOLOJİSİ VE QT KISALMASI",
            description: "Primer HPT ve malignite ana nedenlerdir; EKG'de QT mesafesinin kısalması ve HT görülür.",
            subtitle: "Tedavi: Sıvı+loop diüretik, bifosfonat, kalsitonin",
            additionalInfo: "Ciddi hiperkalsemide (elektif) cerrahi ertelenir.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "HİPOKALSEMİ BELİRTİLERİ VE QT UZAMASI",
            description: "Sepsis ve sitratlı kan transfüzyonları sonrası görülür; QT mesafesi uzar.",
            subtitle: "Fizik muayenede Trousseau ve Chvostek bulguları pozitiftir",
            additionalInfo: "Anestezide NMB yanıtı öngörülemez olabilir; Mg düzeyi de kontrol edilmelidir.",
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Fosfor (P)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: "NORMAL DEĞERLER VE HİPOFOSFATEMİ",
            description: "Normal fosfor 2.5–4.5 mg/dL'dir; 1 mg/dL altı multiorgan yetmezliği riskidir.",
            subtitle: "Tedavi: Oral replasman, ciddi ise IV",
            additionalInfo: "Anestezide P değerini düşüren hiperglisemi ve alkalozdan kaçınılmalıdır.",
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Magnezyum (Mg²⁺)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: "NORMAL DEĞERLER VE HİPERMAGNEZEMİ",
            description: "Normal magnezyum 1.7–2.1 mEq/L'dir; artışı nöromüsküler geçişi baskılar (NMB dozu azaltılır).",
            subtitle: "Klinik: Hiporefleksi, bradikardi ve KVS depresyonu",
            additionalInfo: "Tedavide Ca glukonat ve diyaliz kullanılır.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "HİPOMAGNEZEMİ VE ARİTMİ RİSKİ",
            description: "Atriyal fibrilasyon ve kas spazmına zemin hazırlar.",
            subtitle: "Tedavi: Ciddi ise 1–2 g IV Mg",
            additionalInfo: "Diğer elektrolitlerle beraber düzeltilmelidir.",
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Kritik Ezberler',
        items: [
          FluidElectrolyteImbalanceItem(
            title: "OSMOLAL GAP VE MAK ETKİLERİ",
            description: "Osmolal gap toksin varlığını gösterir; hiponatremi MAK'ı düşürürken hipernatremi yükseltir.",
            additionalInfo: "Sıvı dengesizlikleri anestezik derinlik ihtiyacını doğrudan etkiler.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "NMB VE QT ÖZETİ",
            description: "Hipokalemi ve magnezyum bozuklukları NMB etkisini artırır; kalsiyum QT süresini belirler.",
            additionalInfo: "Hipokalsemi QT uzatır, Hiperkalsemi QT kısaltır.",
          ),
          FluidElectrolyteImbalanceItem(
            title: "ELEKTİF CERRAHİ ERTELEME KRİTERLERİ",
            description: "Na >150 mEq/L, K >6 mEq/L ve ciddi kalsiyum bozukluklarında cerrahi ertelenmelidir.",
            additionalInfo: "Düzeltme süreçlerinin fizyolojik limitlere göre zamana yayılması hayati önem taşır.",
          ),
        ],
      ),
    ];
  }
}
