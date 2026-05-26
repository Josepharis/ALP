import 'package:flutter/material.dart';

class ThermoregulationHypothermiaMalignantHyperthermiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ThermoregulationHypothermiaMalignantHyperthermiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ThermoregulationHypothermiaMalignantHyperthermiaCategory {
  final String categoryName;
  final List<ThermoregulationHypothermiaMalignantHyperthermiaItem> items;

  ThermoregulationHypothermiaMalignantHyperthermiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class ThermoregulationHypothermiaMalignantHyperthermiaData {
  static List<ThermoregulationHypothermiaMalignantHyperthermiaCategory> getThermoregulationHypothermiaMalignantHyperthermiaData(BuildContext context) {
    return [
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Termoregülasyon & Hipotermi',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "HİPOTERMİ TANIMI VE KLİNİK SINIRLARI (<36 °C)",
            description: "Vücut merkez sıcaklığının 36 °C'nin altına düşmesi durumudur.",
            additionalInfo: "Perioperatif dönemde en sık karşılaşılan termal bozukluktur.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "ANESTEZİ ALTINDA ISI KAYBI FAZLARI VE MEKANİZMALARI",
            description: "Faz I'de ısı merkezden perifere yayılır; Faz II'de çevreye kayıp başlar; Faz III'te denge sağlanır.",
            subtitle: "Faz I ilk 1 saatte 1–2 °C düşüşe, Faz II ise 3-4 saatlik lineer azalmaya neden olur",
            additionalInfo: "Vazodilatasyon ısının iç organlardan cilde kaymasına (redistribüsyon) yol açar.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "ANESTEZİK AJANLARIN HİPOTALAMİK TERMOREGÜLASYON ÜZERİNDEKİ ETKİSİ",
            description: "Anestezikler terleme, titreme ve vazokonstriksiyon/vazodilatasyon gibi koruyucu hipotalamik refleksleri baskılar.",
            additionalInfo: "Vücudun dış ortama karşı termal adaptasyon kapasitesi anestezi altında neredeyse tamamen ortadan kalkar.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "PERİOPERATİF ISI KAYBININ ÖNLENMESİ VE ISITMA YÖNTEMLERİ",
            description: "Preoperatif dönemde konvektif ısıtıcı battaniye kullanımı (pre-warming), Faz I ısı kaybını engellemede en etkili yoldur.",
            subtitle: "İntraoperatif battaniye, sıvı ısıtıcılar ve solunan gazın ısıtılması kombine edilebilir",
            additionalInfo: "Önleyici ısıtma teknikleri postoperatif derlenme kalitesini artırır.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "POSTOPERATİF TİTREME (SHIVERING) VE OKSİJEN TÜKETİMİ RİSKİ",
            description: "Titreme, vücudun oksijen tüketimini 5 kat artırarak kardiyak rezervi düşük hastalarda iskemi riskini tetikler.",
            subtitle: "Hipotermi dışında sepsis, transfüzyon reaksiyonu veya ilaç etkileri de titremeye yol açabilir",
            additionalInfo: "Tedavide normotermi sağlanması temeldir; 12.5–25 mg meperidin uygulaması semptomları hızla keser.",
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Malign Hipertermi (MH)',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "MALİGN HİPERTERMİ İNSİDANSI VE RİSK GRUPLARI",
            description: "Çocuklarda 1:15.000, yetişkinlerde ise 1:40.000 oranında görülür; genç erkek hastalar daha yüksek risk altındadır.",
            additionalInfo: "Nadir ancak anestezi pratiğinde en fatal olabilen tablolardan biridir.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "MALİGN HİPERTERMİ TETİKLEYİCİ AJANLAR (VOLATİL + SCH)",
            description: "Tüm halojenli volatil anestezikler ve süksinilkolin kullanımı MH ataklarını tetikleyen ana faktörlerdir.",
            additionalInfo: "Güvenli ajanların seçimi hayat kurtarıcıdır.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "GENETİK GEÇİŞ VE RYR1 MUTASYONU (KROMOZOM 19)",
            description: "Kromozom 19 üzerindeki RYR1 geni mutasyonu sonucu sarkoplazmik retikulumdan aşırı Ca²⁺ salınımı gerçekleşir.",
            subtitle: "Multigenetik bir tablodur; kromozom 17 üzerindeki sodyum kanal anomalileri de eşlik edebilir",
            additionalInfo: "5 farklı genetik bölge tanımlanmıştır; ailesel geçiş sıktır.",
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'MH Klinik Bulgular',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "ERKEN KLİNİK BULGULAR: MASSETER RİJİDİTESİ VE TAŞİKARDİ",
            description: "Süksinilkolin sonrası masseter rijiditesi, yaygın kas sertliği ve açıklanamayan taşikardi en erken işaretlerdir.",
            subtitle: "Hiperkarbi (ETCO₂ artışı) tanıda en duyarlı erken bulgudur",
            additionalInfo: "Metabolik hızın ani yükselişi CO2 üretimini katlar.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "GEÇ KLİNİK BULGULAR: HİPERTERMİ VE MİKS ASİDOZ TABLOSU",
            description: "Vücut ısısının her 5 dakikada bir 1 °C yükselmesi ve derinlemesine metabolik/respiratuar asidoz gelişir.",
            subtitle: "Hiperkalemi ve buna bağlı öldürücü aritmiler tabloya eklenir",
            additionalInfo: "Hücresel yıkıma bağlı elektrolit kaosu yaşanır.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "BİYOKİMYASAL BULGULAR VE CK YÜKSEKLİĞİ (>20.000)",
            description: "Derin kas harabiyeti sonucu CK düzeyleri 20.000'in üzerine çıkar; LDH ve myoglobin miktarı hızla artar.",
            additionalInfo: "Kas enzimlerindeki artış hasarın ciddiyetini yansıtır.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "ATEŞ: EN GEÇ VE TUTARSIZ MALİGN HİPERTERMİ BULGUSU",
            description: "Ateş artışı MH ataklarında en geç ortaya çıkan ve bazı vakalarda hiç görülmeyebilen tutarsız bir bulgudur.",
            additionalInfo: "Ateşin çıkmasını beklemek tedaviyi geciktireceği için mortaliteyi artırır.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "MALİGN HİPERTERMİ KOMPLİKASYONLARI VE MULTİORGAN YETMEZLİĞİ",
            description: "Tablo ilerlediğinde multiorgan yetmezliği (MOF), dissemine intravasküler koagülasyon (DİK) ve şiddetli rabdomiyoliz gelişir.",
            additionalInfo: "Bu aşamaya gelindiğinde geri dönüş oldukça zordur.",
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'İntraoperatif Yönetim',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "TETİKLEYİCİ AJANLARIN KESİLMESİ VE SİSTEM TEMİZLİĞİ",
            description: "Hemen volatil anestezikler kapatılmalı; vaporizatör çıkarılarak sistem 10 L/dk taze gaz ile en az 5 dk yıkanmalıdır.",
            additionalInfo: "Devrelerin ve karbondioksit absorbanının değişimi önerilir.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "HİPERVENTİLASYON VE %100 OKSİJEN DESTEĞİ",
            description: "Artan oksijen ihtiyacını ve hiperkarbiyi dengelemek amacıyla %100 O₂ ile agresif ventilasyon uygulanır.",
            additionalInfo: "CO2 eliminasyonu için ventilasyon parametreleri yükseltilmelidir.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "DANTROLEN (DANTRIUM) KULLANIMI VE MEKANİZMASI",
            description: "Ryr1 reseptörleri üzerinden Ca²⁺ salınımını inhibe eden yegane ilaçtır; başlangıç dozu 2.5 mg/kg IV'dir.",
            subtitle: "Doz klinik düzelme sağlanana dek 5 dakikada bir tekrarlanabilir (maksimum 10 mg/kg)",
            additionalInfo: "Yarı ömrü 6 saattir; idame tedavisi 24–48 saat boyunca devam etmelidir. Komplikasyon olarak kas güçsüzlüğü yapabilir.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "DANTROLENİN DİĞER KLİNİK ENDİKASYONLARI (NMS/TİROİD KRİZİ)",
            description: "Nöroleptik Malign Sendrom ve Tiroid Krizi gibi hipermetabolik tabloların tedavisinde de kullanılabilir.",
            additionalInfo: "Hücresel termojenezi baskılaması nedeniyle çok yönlü bir ilaçtır.",
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Destekleyici Tedavi',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "ASİDOZ YÖNETİMİ VE NAHCO3 KULLANIMI",
            description: "Gelişen derin metabolik asidozu tamponlamak için NaHCO₃ uygulaması gereklidir.",
            additionalInfo: "Arteriyel kan gazı takibi ile doz ayarlanmalıdır.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "HİPERKALEMİ TEDAVİSİ VE KALSİYUM KONTRENDİKASYONU",
            description: "Hiperkalemi için insülin+glukoz ve diürez kullanılır; MH tablosunda IV kalsiyum uygulanmasından kaçınılır.",
            subtitle: "Hücre içi kalsiyum zaten yüksek olduğu için IV kalsiyum zararlı olabilir",
            additionalInfo: "Potasyum düzeyindeki hızlı yükseliş ani kardiyak arreste yol açabilir.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "HEMODİNAMİK STABİLİZASYON VE DESTEKLEYİCİ AJANLAR",
            description: "Myokardial depresyon gelişirse inotrop ve vazopressör desteği ile tansiyon korunmaya çalışılır.",
            additionalInfo: "Sıvı replasmanı böbrekleri korumak adına agresif yapılabilir.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "MYOGLOBİNÜRİ VE RENAL KORUMA STRATEJİLERİ",
            description: "Rabdomiyolize bağlı böbrek hasarını önlemek için mannitol (dantrolen flakonunda mevcuttur) ve yoğun diürez sağlanır.",
            additionalInfo: "İdrar çıkışının saatte en az 1-2 mL/kg olması istenir.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "AKTİF SOĞUTMA YÖNTEMLERİ VE UYGULAMA PRENSİPLERİ",
            description: "Vücut sıcaklığını düşürmek için soğuk IV sıvılar, mide/rektal lavaj ve cilt üzerinden soğutma uygulanır.",
            additionalInfo: "Vücut ısısı 38.5 °C'ye düştüğünde soğutma, iatrojenik hipotermiyi önlemek için durdurulmalıdır.",
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'İzole Masseter Rijiditesi (MMR)',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "MASSETER RİJİDİTESİ İNSİDANSI VE MH İLİŞKİSİ",
            description: "MH ataklarının %15–30'unda masseter rijiditesi gözlenir; süksinilkolin sonrası çene kilitlenmesi durumudur.",
            additionalInfo: "Klinik MH gelişimi açısından yüksek şüphe duyulmalıdır.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "İZOLE MASSETER RİJİDİTESİ YÖNETİMİ VE TAKİP KRİTERLERİ",
            description: "Cerrahi, tetikleyici olmayan ajanlarla sürdürülebilir ancak hasta 24 saat boyunca MH ve CK takibi için gözlenmelidir.",
            subtitle: "Beraberinde altta yatan bir miyopati varlığı araştırılmalıdır",
            additionalInfo: "Stabil seyreden vakalarda anestezi güvenli şekilde sonlandırılabilir.",
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Postoperatif Yönetim',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "MALİGN HİPERTERMİ DUYARLILIĞI VE HASTA TAKİBİ",
            description: "Kesin bir MH atağı öyküsü olan hasta hayat boyu 'MH Duyarlı' kabul edilerek tüm anestezi süreçleri buna göre planlanmalıdır.",
            additionalInfo: "Anestezi uyarı bileklikleri önerilebilir.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "MH TANISINDA ALTIN STANDART: KAS BİYOPSİSİ VE KONTRAKTÜR TESTİ",
            description: "Kesin tanı için kafein/halotan kontraktür testi uygulanır; bu testin yanlış negatiflik oranı neredeyse sıfırdır.",
            subtitle: "Oldukça invaziv ve zahmetli bir testtir",
            additionalInfo: "Genetik testler bazı mutasyonları saptasa da kontraktür testi kadar duyarlı olmayabilir.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "BAZAL CK YÜKSEKLİĞİ VE TANI DEĞERİ",
            description: "MH hastalarının %50–70'inde bazal CK yüksek olabilir ancak bu durum tek başına tanı koydurucu değildir.",
            additionalInfo: "CK yükselmesi non-spesifik bir bulgudur.",
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Ayırıcı Tanılar',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "LAPAROSKOPİK CO2 İNSUFLASYONU VE MH AYRIMI",
            description: "Laparoskopi sırasında ETCO₂ yükselebilir ancak bu tabloya rijidite ve hipertermi eklenmez.",
            additionalInfo: "Desüflasyon ile CO2 hızlıca düşer.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "TİROİD KRİZİ: KLİNİK BENZERLİKLER VE FARKLAR",
            description: "Tiroid krizi de hipermetabolik bir tablodur ancak genellikle postoperatif dönemde görülür ve hipokalemi eşlik eder.",
            additionalInfo: "Tiroid fonksiyon testleri ve klinik öykü yardımcıdır.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "FEOKROMASİTOMA VE OTONOMİK KRİZLER",
            description: "Hipertansiyon ve taşikardi baskındır ancak CO2 seviyelerinde veya vücut ısısında ani bir sıçrama görülmez.",
            additionalInfo: "Tanı üriner katekolamin metabolitleri ile konur.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "SEPSİS VE ENFEKSİYÖZ HİPERTERMİ TABLOLARI",
            description: "Ateş ve taşikardiye neden olur ancak bir enfeksiyon kaynağı saptanabilir ve MH kadar dramatik seyretmez.",
            additionalInfo: "Asidoz daha yavaş gelişir.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "SEROTONİN SENDROMU VE İLAÇ ETKİLEŞİMLERİ",
            description: "MAO inhibitörleri ile meperidin veya SSRI kombinasyonları sonucu oluşan hipermetabolik bir tablodur.",
            additionalInfo: "Psikiyatrik ilaç öyküsü ayırıcıdır.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "NÖROLEPTİK MALİGN SENDROM (NMS) AYRIMI",
            description: "Antidopaminerjik ilaçlarla ilişkili olup, tetikleyici anesteziklerle bir bağı yoktur.",
            additionalInfo: "Daha uzun süreli gelişim gösterir.",
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Nöroleptik Malign Sendrom (NMS)',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "NÖROLEPTİK MALİGN SENDROM KLİNİK TABLOSU VE BULGULARI",
            description: "Hipertermi, aşırı rijidite, bilinç değişikliği ve otonomik instabilite ile karakterizedir.",
            additionalInfo: "Gelişimi MH kadar akut değildir, günler sürebilir.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "NMS ETİYOPATOGENEZİ VE DOPAMİNERJİK BLOKAJ SİSTEMİ",
            description: "Dopaminerjik blokerlerin (antipsikotikler) kullanımı veya dopamine agonistlerinin ani kesilmesiyle tetiklenir.",
            subtitle: "Kalıtsal değildir; CK düzeyleri genellikle yükselmiştir",
            additionalInfo: "Dopamin eksikliği kas tonusunu ve ısı düzenlemesini bozar.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "NMS TEDAVİSİ: DOPAMİN AGONİSTLERİ VE DANTROLEN",
            description: "Tedavide dopamin agonistleri (levodopa, amantadin) ile beraber kas rijiditesini çözmek için dantrolen kullanılır.",
            additionalInfo: "Yoğun bakım desteği ve tetikleyici ilaca son verilmesi şarttır.",
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Profilaksi & Taburculuk',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "MH DUYARLI HASTADA GÜVENLİ ANESTEZİK AJAN SEÇİMİ",
            description: "Volatillerden kaçınılmalı; intravenöz ajanlar (propopfol vs) ve nondepolarizan NM blokörler kullanılmalıdır.",
            additionalInfo: "TİVA (Total İntravenöz Anestezi) bu hastalar için en güvenli yöntemdir.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "DANTROLEN BULUNDURMA ZORUNLULUĞU VE KRİTERLERİ",
            description: "Genel anestezi uygulanan her merkezde hızlıca ulaşılabilecek bir dantrolen stoku bulunmalıdır.",
            additionalInfo: "Zaman MH tedavisinde en büyük düşmandır.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "PROFİLAKTİK DANTROLEN KULLANIMI İLE İLGİLİ GÖRÜŞLER",
            description: "Şüpheli veya duyarlı hastada operasyon öncesi profilaktik dantrolen uygulaması günümüzde önerilmemektedir.",
            additionalInfo: "Yeterli izlem ve güvenli ajan kullanımı kafidir.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "ANESTEZI MAKINESI HAZIRLIĞI VE VOLATİL TEMİZLİĞİ",
            description: "Vaporizatör çıkarılmalı, devre ve absorban değişmeli, 10 L/dk akımla 5 dk yıkama yapılarak volatil seviyesi <1 ppm'e düşürülmelidir.",
            additionalInfo: "Modern cihazlarda özel 'charcoal' filtreleri bu süreci hızlandırabilir.",
          ),
        ],
      ),
      ThermoregulationHypothermiaMalignantHyperthermiaCategory(
        categoryName: 'Kritik Ezberler',
        items: [
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "HİPOTERMİ FAZLARI VE DAĞILIM MEKANİZMALARI",
            description: "Faz I perifer dağılımı, Faz II çevreye ısı kaybı ve Faz III metabolik denge fazıdır.",
            additionalInfo: "Isı yönetiminin ilk saatte yapılması çok kritiktir.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "POSTOPERATİF TİTREMENİN METABOLİK MALİYETİ (5 KAT O2)",
            description: "Titreme, oksijen tüketimini %500 (5 kat) artırarak riskli hastalarda miyokard iskemisi yapabilir.",
            additionalInfo: "Hastalara derlenme odasında mutlaka aktif ısıtma yapılmalıdır.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "MALİGN HİPERTERMİDE EN DUYARLI BULGU: ETCO2 ARTIŞI",
            description: "ETCO2'deki ani ve açıklanamayan yükseliş, MH tanısı koymada klinisyene en erken ve en net ipucunu verir.",
            additionalInfo: "Takipte end-tidal CO2 kapnografisi hayati önem taşır.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "DANTROLEN DOZLAMASI VE MAKSİMUM SINIRLAR",
            description: "Başlangıç dozu 2.5 mg/kg olup; klinik yanıt alınana kadar 5 dakikada bir tekrarlanabilir (maks 10 mg/kg).",
            additionalInfo: "Yetersiz dozlama tedavide en sık yapılan hatadır.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "MH ATEŞ BULGUSUNUN KLİNİK DEĞERİ VE ZAMANLAMASI",
            description: "Ateş MH'nin en geç ve en tutarsız bulgusudur; tanı için ateşin çıkmasını beklemek mortaliteyi artırır.",
            additionalInfo: "Ateşsiz MH vakaları literatürde mevcuttur.",
          ),
          ThermoregulationHypothermiaMalignantHyperthermiaItem(
            title: "MALİGN HİPERTERMİ AYIRICI TANISINDA KRİTİK NOKTALAR",
            description: "CO2 insuflasyonu, tiroid fırtınası, NMS ve sepsis en sık karışan tablolardır.",
            additionalInfo: "Klinik öykü ve laboratuvar ayrımı şarttır.",
          ),
        ],
      ),
    ];
  }
}
