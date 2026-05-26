import 'package:flutter/material.dart';

class FluidManagementBloodProductsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  FluidManagementBloodProductsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class FluidManagementBloodProductsCategory {
  final String categoryName;
  final List<FluidManagementBloodProductsItem> items;

  FluidManagementBloodProductsCategory({
    required this.categoryName,
    required this.items,
  });
}

class FluidManagementBloodProductsData {
  static List<FluidManagementBloodProductsCategory>
      getFluidManagementBloodProductsData(BuildContext context) {
    return [
      FluidManagementBloodProductsCategory(
        categoryName: 'İntravasküler Hacmin Belirlenmesi',
        items: [
          FluidManagementBloodProductsItem(
            title: "LABORATUVAR BULGULARI VE İNDİREKT VOLÜM GÖSTERGELERİ",
            description: "Htc, pH, idrar dansitesi (>1.010), idrar Na (<10 mEq/L) ve osmolalitesi (>450 mOsm/kg) volüm durumunu yansıtır.",
            additionalInfo: "Serum sodyumu, kreatinin ve BUN düzeyleri de dolaylı veriler sağlar.",
          ),
          FluidManagementBloodProductsItem(
            title: "HİPOVOLEMİ LEHİNE DEĞERLENDİRİLEN PARAMETRELER (BUN/CRE)",
            description: "Hipernatremi varlığı ve BUN/kreatinin oranının 10:1'den fazla olması ciddi hipovolemiyi düşündürür.",
            additionalInfo: "Prerenal azotemi tablosu volüm replasmanı ihtiyacını gösterir.",
          ),
          FluidManagementBloodProductsItem(
            title: "AŞIRI VOLÜM YÜKÜ VE RADYOLOJİK BULGULAR (KERLEY-B)",
            description: "Akciğer grafisinde pulmoner vaskülarite artışı, Kerley-B çizgileri ve alveolar infiltratlar volüm yüklenmesinin işaretidir.",
            additionalInfo: "Klinik olarak dispne ve raller ile uyumlu seyreder.",
          ),
          FluidManagementBloodProductsItem(
            title: "HEMODİNAMİK ÖLÇÜMLER VE SANTRAL VENÖZ BASINÇ (CVP)",
            description: "CVP statik bir ölçüm olup tek başına volüm durumunu belirlemede her zaman güvenilir değildir.",
            subtitle: "CVP verileri klinik ile uyumsuzsa pulmoner arter kateterizasyonu (PAOP) tercih edilebilir",
            additionalInfo: "PAOP <8 mmHg hipovolemikken; >18 mmHg sol ventrikül iş yükünün arttığını gösterir.",
          ),
          FluidManagementBloodProductsItem(
            title: "ARTERİYEL NABIZ KONTUR ANALİZİ VE STROKE VOLUME VARİATİON",
            description: "Dinamik bir parametre olan Stroke Volume Variation (SVV), sıvı yanıtlılığını değerlendirmede statik ölçümlerden üstündür.",
            additionalInfo: "Mekanik ventilasyon altındaki hastalarda preload rezervini iyi yansıtır.",
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'İntravenöz Sıvılar',
        items: [
          FluidManagementBloodProductsItem(
            title: "KRİSTALLOİD SOLÜSYONLAR VE İLK SEÇENEK ENDİKASYONLARI",
            description: "Hemorajik ve septik şok, yanık, kafa travması gibi durumlarda intravasküler hacmi restore etmek için ilk seçenektir.",
            subtitle: "İntravasküler yarı ömürleri kısa olup yaklaşık 20–30 dakikadır",
            additionalInfo: "Verilen kristalloidin sadece 1/4'ü damar içinde kalır, geri kalanı interstisyel alana geçer.",
          ),
          FluidManagementBloodProductsItem(
            title: "RİNGER LAKTAT: FİZYOLOJİYE EN YAKIN KRİSTALLOİD",
            description: "Ekstrasellüler sıvı içeriğine en yakın dengeli solüsyondur; pH dengesini korumada başarılıdır.",
            subtitle: "İçeriğindeki laktat karaciğerde bikarbonata dönüşerek tamponlama yapar",
            additionalInfo: "Büyük hacimlerde replasman yapıldığında dahi metabolik asidoz riski düşüktür.",
          ),
          FluidManagementBloodProductsItem(
            title: "NORMAL SALİN (%0.9 NACL) VE HİPERKLOREMİK ASİDOZ RİSKİ",
            description: "Yüksek hacimli uygulamalarda klor yüküne bağlı olarak dilüsyonel hiperkloremik metabolik asidoza yol açabilir.",
            additionalInfo: "Kafa travmalı hastalarda beyin ödemini önlemek için bazen tercih edilir.",
          ),
          FluidManagementBloodProductsItem(
            title: "%5 DEKSTROZ KULLANIMI VE SODYUM KISITLAMASI",
            description: "Esas olarak serbest su sağlamak amaçlı, belirgin sodyum kısıtlaması gereken durumlarda kullanılır.",
            additionalInfo: "Perioperatif dönemde rutin idame sıvısı olarak kullanılması hiponatremi riski yaratabilir.",
          ),
          FluidManagementBloodProductsItem(
            title: "KOLLOİD SOLÜSYONLAR VE İNTRVASKÜLER YARI ÖMÜR AVANTAJI",
            description: "Damar içinde 3–6 saat kalarak kristalloidlere göre daha uzun süreli volüm genişlemesi sağlarlar.",
            subtitle: "Ciddi volüm açığı, hipoalbuminemi ve büyük cerrahilerde (>3–4 L replasman) endikedir",
            additionalInfo: "Albumin, dekstran ve nişasta türevleri bu gruptadır.",
          ),
          FluidManagementBloodProductsItem(
            title: "DEKSTRAN GRUBU VE MİKROSİRKÜLASYON ÜZERİNDEKİ ETKİLERİ",
            description: "Dekstran 40 mikrosirkülasyonu artırırken, Dekstran 70 daha güçlü bir volüm genişleticidir.",
            subtitle: "Günlük 20 mL/kg doz aşımı koagülopati, kan grubu uyum sorunu ve anafilaksi riski taşır",
            additionalInfo: "Trombosit agregasyonunu azaltıcı etkileri vardır.",
          ),
          FluidManagementBloodProductsItem(
            title: "HİDROKSİETİL NİŞASTA (HES) VE KOAGÜLOPATİ RİSKLERİ",
            description: "Güçlü bir hacim genişletici olmasına rağmen, 1 litreden fazla kullanımda pıhtılaşma bozukluklarını tetikleyebilir.",
            additionalInfo: "Faktör VIII ve vWF düzeylerini düşürebilir.",
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Perioperatif Sıvı Tedavisi',
        items: [
          FluidManagementBloodProductsItem(
            title: "NORMAL İDAME SIVI HESABI VE 4:2:1 KURALI",
            description: "Vücut ağırlığına göre hesaplanan bazal sıvı ihtiyacıdır (İlk 10 kg için 4 mL/kg, ikinci 10 kg için 2 mL/kg, sonrası için 1 mL/kg).",
            additionalInfo: "Elektrolit dengesini korumak için temel rehberdir.",
          ),
          FluidManagementBloodProductsItem(
            title: "PREOPERATİF AÇLIK AÇIKLARININ HESAPLANMASI VE YÖNETİMİ",
            description: "Açlık süresi ile saatlik idame dozunun çarpımıyla bulunur; %50'si ilk saatte, kalanı sonraki 2 saatte verilir.",
            additionalInfo: "Modern ERAS protokolleri preoperatif açlık sürelerini minimize etmektedir.",
          ),
          FluidManagementBloodProductsItem(
            title: "CERRAHİ KAYIPLARIN TAHMİNİ (SPANÇ VE GAZ KOMPRES)",
            description: "Tam ıslanmış bir spanç yaklaşık 10 mL, gaz kompres ise 100–150 mL kan/sıvı içerir.",
            subtitle: "Aspiratördeki net miktar da bu hesaba dahil edilmelidir",
            additionalInfo: "Doku travmasına bağlı ödem kayıpları da cerrahi stresin parçasıdır.",
          ),
          FluidManagementBloodProductsItem(
            title: "İNTRAOPERATİF REPLASMAN VE KRİSTALLOİD/KOLLOİD ORANLARI",
            description: "Kanama miktarı transfüzyon sınırına gelene dek; kristalloid ile 3 katı veya kolloid ile eşit miktarda karşılanır.",
            additionalInfo: "Hedeften sapmamak için kan gazı takibi önerilir.",
          ),
          FluidManagementBloodProductsItem(
            title: "TRANSFÜZYON SINIRI VE TİTRASYON PRENSİPLERİ (HB <8)",
            description: "Normal hematokrit değerine sahip hastada %10-20 kan kaybı sonrası veya Hb <8 g/dL durumunda transfüzyon düşünülür.",
            subtitle: "Htc düzeyi 30'a düşene kadar beklenen kanama miktarı 'izin verilebilir kan kaybı' olarak hesaplanır",
            additionalInfo: "Htc <24 veya Hb <8 olmadıkça sağlıklı bireylerde transfüzyon genellikle gerekli değildir.",
          ),
          FluidManagementBloodProductsItem(
            title: "1 ÜNİTE ERİTROSİT SÜSPANSİYONUNUN (ES) HEMATOLOJİK ETKİSİ",
            description: "Bir ünite ES transfüzyonu, erişkin bir hastada hemoglobin değerini yaklaşık 1 g/dL artırır.",
            additionalInfo: "Hematokrit değerinde ise yaklaşık %3'lük bir artış beklenir.",
          ),
          FluidManagementBloodProductsItem(
            title: "REDİSTRÜBİSYON VE BUHARLAŞMA KAYIPLARININ YÖNETİMİ",
            description: "Cerrahi travmanın büyüklüğüne göre saatte 0–2 mL/kg'dan 4–8 mL/kg'a kadar değişen sıvı kayıpları oluşabilir.",
            additionalInfo: "Üçüncü boşluğa (third space) sıvı kaçışı hipovolemiyi tetikleyebilir.",
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Transfüzyon',
        items: [
          FluidManagementBloodProductsItem(
            title: "KAN GRUPLARI: ABO VE RH SİSTEMLERİ",
            description: "Alyuvar yüzeyindeki A ve B antijenlerine göre ABO; D antijeni varlığına göre Rh sistemi belirlenir.",
            subtitle: "Rh (+) bireylerde D antijeni bulunur",
            additionalInfo: "Lewis, Kidd, Kell ve Duffy gibi alt gruplar nadiren ciddi hemolize yol açar.",
          ),
          FluidManagementBloodProductsItem(
            title: "UYGUNLUK TESTLERİ: COOMBS VE ÇAPRAZ REAKSİYON (CROSS-MATCH)",
            description: "İndirekt Coombs testi ile antikor taraması yapılır; Çapraz reaksiyon (cross-match) ile nihai uyum kontrol edilir.",
            subtitle: "En ciddi reaksiyonlar ABO uyumsuzluğu ile gerçekleşir",
            additionalInfo: "Cross-match; ABO-Rh doğrulamanın yanı sıra düşük titreli antikorları da saptar.",
          ),
          FluidManagementBloodProductsItem(
            title: "TİP VE TARAMA TESTLERİ (TYPE & SCREEN)",
            description: "Özellikle kanama riski olan elektif cerrahilerde preoperatif hazırlığın standart parçasıdır.",
            additionalInfo: "Gerektiğinde hızlı cross-match yapılmasına olanak tanır.",
          ),
          FluidManagementBloodProductsItem(
            title: "İNTRAOPERATİF ERİTROSİT REPLASMANI VE FİLTRE KULLANIMI",
            description: "Kan ürünleri mutlaka 170 µm filtre ile verilmeli; 2-3 üniteden fazla transfüzyonda ürün ısıtılmalıdır.",
            additionalInfo: "Hipotermi ve pıhtı partikülleri riskini azaltır.",
          ),
          FluidManagementBloodProductsItem(
            title: "TAZE DONMUŞ PLAZMA (TDP) ENDİKASYONLARI VE KOAGÜLASYON",
            description: "Koagülasyon faktörü eksikliklerinde 10–15 mL/kg dozunda kullanılır; faktör düzeyini %2-3 artırır.",
            subtitle: "Uygulama öncesi mutlaka uygun ısıya getirilmelidir",
            additionalInfo: "Hacim genişletici olarak değil, sadece pıhtılaşma supports için kullanılır.",
          ),
          FluidManagementBloodProductsItem(
            title: "TROMBOSİT SÜSPANSİYONU VE REPLASMAN EŞİKLERİ",
            description: "Trombosit sayısı 50.000/mm3 altına düştüğünde cerrahi kanamayı önlemek için endikedir.",
            subtitle: "1 ünite trombosit transfüzyonu sayıyı 5.000–10.000 m3 artırır",
            additionalInfo: "Trombosit fonksiyon bozukluklarında sayı normal olsa da verilebilir.",
          ),
          FluidManagementBloodProductsItem(
            title: "GRANÜLOSİT TRANSFÜZYONU VE ENFEKSİYON KONTROLÜ",
            description: "Nötropenik ve antibiyotik tedavisine yanıtsız sepsisli hastalarda yaşam kurtarıcı olabilir.",
            subtitle: "Ömür çok kısa olduğu için ışınlanmış olarak hızla verilmelidir",
            additionalInfo: "Akciğer infiltrasyonu gibi riskler taşır.",
          ),
          FluidManagementBloodProductsItem(
            title: "TRAVMA KOAGÜLOPATİSİNDE 1:1:1 REPLASMAN STRATEJİSİ",
            description: "Masif kanamalarda pıhtılaşma dengesini korumak için Eritrosit:TDP:Trombosit 1:1:1 oranında uygulanır.",
            additionalInfo: "Dilüsyonel koagülopatiyi önlemede en başarılı protokoldür.",
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Kan Transfüzyonunun Komplikasyonları',
        items: [
          FluidManagementBloodProductsItem(
            title: "İMMÜNOLOJİK KOMPLİKASYONLAR VE AKUT HEMOLİTİK REAKSİYON",
            description: "ABO uyumsuzluğuna bağlı olup insidansı 1:38.000'dir; ölümcül sonuçlar doğurabilir (1:100.000).",
            subtitle: "Geç hemolitik reaksiyonlar ise Rh dışı antijenlerle 2–21 gün sonra ortaya çıkabilir (1:12.000)",
            additionalInfo: "Belirtiler arasında ateş, titreme, bel ağrısı ve hemoglobinüri bulunur.",
          ),
          FluidManagementBloodProductsItem(
            title: "NON-HEMOLİTİK REAKSİYONLAR: FEBRİL VE ÜRTİKER",
            description: "Febril reaksiyonlar %1–3 oranında görülür; ürtiker ise antihistaminik ile tedavi edilebilir.",
            subtitle: "IgA eksikliği olanlarda anafilaksi riski nedeniyle yıkanmış ürün kullanılmalıdır",
            additionalInfo: "TRALI (1:5000) transfüzyon sonrası gelişen en tehlikeli akut hipoksi nedenidir.",
          ),
          FluidManagementBloodProductsItem(
            title: "GRAFT VERSUS HOST HASTALIĞI (GVHH) VE IŞINLAMA",
            description: "İmmünsüprese hastalarda verici lenfositlerinin alıcıya saldırmasıdır; ürünlerin ışınlanmasıyla önlenir.",
            additionalInfo: "Kemik iliği yetmezliği ve mortalitesi yüksektir.",
          ),
          FluidManagementBloodProductsItem(
            title: "POST-TRANSFÜZYONEL PURPURA VE TROMBOSİT ANTİKORLARI",
            description: "Transfüzyondan 5–10 gün sonra gelişen ve trombosit antikorları ile karakterize kanama tablosudur.",
            additionalInfo: "Trombositopeni belirgindir.",
          ),
          FluidManagementBloodProductsItem(
            title: "TRANSFÜZYON İLİŞKİLİ İMMÜNOMODÜLASYON ETKİLERİ (TRIM)",
            description: "Hastanın bağışıklık sistemini baskılayarak enfeksiyon ve kanser nüksü riskini artırabilir.",
            additionalInfo: "Mümkün olduğunca lökositi azaltılmış ürün tercihi riski düşürür.",
          ),
          FluidManagementBloodProductsItem(
            title: "ENFEKSİYÖZ KOMPLİKASYONLAR: HEPATİT VE HIV RİSKLERİ",
            description: "Hepatit B riski 1/200.000, Hepatit C riski 1/1.900.000 seviyelerindedir.",
            subtitle: "HIV riski NAAT testleri sayesinde oldukça düşüktür",
            additionalInfo: "CMV, EBV ve Batı Nil virüsü gibi patojenler de bulaşabilir.",
          ),
          FluidManagementBloodProductsItem(
            title: "PARAZİTER ENFEKSİYON BULAŞI İLE İLGİLİ RİSKLER",
            description: "Sıtma (malarya), toksoplazma ve nadiren chagas hastalığı bulaşı görülebilir.",
            additionalInfo: "Donör sorgulaması bu riskin yönetiminde esastır.",
          ),
          FluidManagementBloodProductsItem(
            title: "BAKTERİYEL KONTAMİNASYON VE ZAMANLAMA KRİTERLERİ",
            description: "Stafilokok ve Yersinia en sık saptananlardır; transfüzyonun 4 saat içinde bitirilmesi zorunludur.",
            additionalInfo: "Trombositler oda ısısında saklandığı için bakteriyel riskleri yüksektir.",
          ),
          FluidManagementBloodProductsItem(
            title: "MASİF TRANSFÜZYON KOMPLİKASYONLARI VE HİPOKALSEMİ",
            description: "Dilüsyonel trombositopeni ve sitrat toksisitesine bağlı hipokalsemi en sık görülen tablolardır.",
            subtitle: "Hipotermi riskine karşı ürünler ısıtılmalı; 30°C altında VF riski unutulmamalıdır",
            additionalInfo: "Sitrat özellikle karaciğer yetmezliği olanlarda yavaş yıkılır.",
          ),
          FluidManagementBloodProductsItem(
            title: "ASİT-BAZ DENGESİ VE POTASYUM DEĞİŞİKLİKLERİ",
            description: "Bankalı kanda potasyum yükselir ancak yavaş infüzyonda (<100 mL/dk) genellikle klinik sorun yaratmaz.",
            subtitle: "Sitrat metabolitleri metabolik alkaloz yapabilir",
            additionalInfo: "Başlangıçta yüksek sitrik asit yükü geçici asidoz yapabilir.",
          ),
        ],
      ),
      FluidManagementBloodProductsCategory(
        categoryName: 'Cerrahi Sırasında Alternatif Stratejiler',
        items: [
          FluidManagementBloodProductsItem(
            title: "OTOLOG TRANSFÜZYON PRENSİPLERİ VE HAZIRLIK SÜRECİ",
            description: "Operasyondan 4-5 hafta önce başlanmalı; Htc ≥%34 ve Hb ≥11 g/dL olmalıdır.",
            subtitle: "Demir ve Eritropoietin desteği ile 3-4 ünite kan toplanabilir",
            additionalInfo: "Transfüzyon hatalarını en aza indiren en güvenli yöntemdir.",
          ),
          FluidManagementBloodProductsItem(
            title: "KAN KURTARMA (CELL SAVER) YÖNTEMİ VE KONTRENDİKASYONLARI",
            description: "Kardiyak ve vasküler cerrahide, tahmini ≥1000 mL kanama beklenen vakalarda kullanılır.",
            subtitle: "Septik cerrahi alanlar ve malignite varlığı kesin kontrendikedir",
            additionalInfo: "Toplanan kan yıkanıp filtre edilerek hastaya geri verilir.",
          ),
          FluidManagementBloodProductsItem(
            title: "AKUT NORMOVOLEMİK HEMODİLÜSYON STRATEJİSİ",
            description: "Cerrahiden hemen önce kan alınıp yerine kristalloid konularak kanın dilüe edilmesi yöntemidir.",
            subtitle: "Alınan kan oda ısısında 6 saate kadar saklanabilir",
            additionalInfo: "Taze pıhtılaşma faktörlerinin korunmasını sağlar.",
          ),
          FluidManagementBloodProductsItem(
            title: "DONÖR YÖNLENDİRMELİ TRANSFÜZYON VE ZAMANLAMA",
            description: "Hasta yakınlarının kan vermesi durumudur; işlemler nedeniyle kan en az 7 gün önceden alınmalıdır.",
            additionalInfo: "Psikolojik olarak hastayı rahatlatsa da enfeksiyon riski donör kanıyla benzerdir.",
          ),
        ],
      ),
    ];
  }
}
