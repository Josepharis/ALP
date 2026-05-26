import 'package:flutter/material.dart';

class EndocrineDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  EndocrineDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class EndocrineDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<EndocrineDiseaseAnesthesiaItem> items;

  EndocrineDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class EndocrineDiseaseAnesthesiaData {
  static List<EndocrineDiseaseAnesthesiaCategory>
      getEndocrineDiseaseAnesthesiaData(BuildContext context) {
    return [
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: "Pankreas ve Diyabet (Şeker Hastalığı)",
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: "GÜNLÜK İNSÜLİN SALINIMI VE KAYNAĞI",
            description: "Sağlıklı bir insan vücudu, pankreastaki Langerhans adacıklarından günde yaklaşık 50 Ünite insülin salgılar.",
            additionalInfo: "Bu bazal ve yemek sonrası salınım, glikoz dengesinin korunması için temel gerekliliktir.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "DİYABETES MELLİTUS TANI KRİTERLERİ",
            description: "Açlık kan şekerinin >126 mg/dL veya HbA1c değerinin >%6.5 olması diyabet tanısı için yeterlidir.",
            additionalInfo: "Yüksek HbA1c, uzun vadeli kötü şeker kontrolünü yansıtır ve perioperatif komplikasyonlarla ilişkilidir.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "DİYABETİK KETOASİDOZ (DKA) KLİNİK TABLOSU",
            description: "DKA, hayati tehlike arz eden akut bir metabolik komplikasyon olup Tip 1 Diyabetin ilk belirtisi olabilir.",
            additionalInfo: "Hiperglisemi, metabolik asidoz ve ketonüri ile karakterizedir.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "DKA TEDAVİ PROTOKOLÜ VE SIVILAR",
            description: "Standart tedavide 0.1 U/kg/saat insülin infüzyonu ve agresif serum fizyolojik (ilk saatte 1–2 L) replasmanı uygulanır.",
            subtitle: "Şeker 250 mg/dL'nin altına düştüğünde %5 Dekstroz başlanmalı ve potasyum (K) takibi sıkı yapılmalıdır",
            additionalInfo: "Şekerin saatte 75–100 mg/dL düşürülmesi hedeflenir; insülin potasyumu hücre içine soktuğu için hipokalemiye dikkat edilmelidir.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "AMELİYAT SABAHI İLAÇ VE İNSÜLİN YÖNETİMİ",
            description: "Diyabetli hastalar ameliyat sabahı oral antidiyabetik (OAD) ilaçlarını kesmeli, insülin dozlarını ise doktor görüşüyle düzenlemelidir.",
            additionalInfo: "Özellikle Metformin gibi ilaçlar anestezi altında laktik asidoz riskini artırabilir; bu nedenle operasyon günü alınmamalıdır. Uzun etkili insülin dozları genellikle hipoglisemi riskine karşı yarıya düşürülür veya kesilir.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "PERİOPERATİF HİPOGLİSEMİ RİSKİ VE ÖNLEMİ",
            description: "Genel anestezi altında hipogliseminin çarpıntı ve terleme gibi belirtileri maskelendiği için hayati risk çok yüksektir.",
            subtitle: "Kan şekerinin 50 mg/dL altına düşmesi kalıcı beyin hasarına yol açabilir",
            additionalInfo: "Perioperatif dönemde hedef şeker aralığı 140-180 mg/dL olup; en az 1-2 saatte bir glukoz takibi yapılmalıdır.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "DİYABETİK OTONOM NÖROPATİ VE GASTROPAREZİ",
            description: "Kronik diyabet mide boşalmasını geciktirerek (gastroparez) ameliyat başında kusma ve mide içeriğinin akciğere kaçması (aspirasyon) riskini artırır.",
            subtitle: "8 saatlik açlığa rağmen mideleri 'dolu' kabul edilerek anesteziye başlanmalıdır",
            additionalInfo: "Ayrıca otonom nöropatisi olanlarda tansiyonun ani ve şiddetli düşmesi/yükselmesi sık izlenen bir komplikasyondur.",
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: "Tiroid Hastalıkları",
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: "HİPERTİROİDİ SEMPTOM VE BULGULARI",
            description: "Kilo kaybı, diyare, sinirlilik, ısı intoleransı ve atriyal fibrilasyon (AF) gibi aritmiler hipertiroidide tipiktir.",
            additionalInfo: "Aritmiler, hasta ötiroid (normal hormon düzeyi) olana kadar standart tedavilere dirençli olabilir.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "TİROİD FIRTINASI VE AYIRICI TANI",
            description: "Kontrolsüz hipertiroidide cerrahi stresin tetiklediği aşırı hormon salınımı 'Tiroid Fırtınası' denilen ölümcül tabloya yol açabilir.",
            subtitle: "Aşırı taşikardi ve hipertermi ile seyreden bu tablo Malign Hipertermi ile karışabilir; ancak fırtınada kas rijidesi görülmez",
            additionalInfo: "Tedavide acil beta blokerler, PTU (Propiltiourasil), iyot ve steroid desteği kritik öneme sahiptir.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "HİPOTİROİDİ VE ANESTETİK DUYARLILIĞI",
            description: "Tiroid fonksiyonları düşük olan hastalar genel anestezi ilaçlarına ve soğuğa karşı aşırı hassastır; uyanma zamanları çok uzayabilir.",
            subtitle: "Düşük metabolizma hızı nedeniyle ilaç dozları azaltılmalı ve hasta aktif olarak ısıtılmalıdır",
            additionalInfo: "Hipoterminin derinleşmesi metabolizmayı daha da yavaşlatarak uyanmayı imkansız hale getirebilir.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "MİKSÖDEM KOMASI VE KRİTİK TABLO",
            description: "Hipotiroidinin en ağır formu olan miksödem koması; hipoventilasyon, hipotermi, hiponatremi ve kalp yetmezliği ile seyreder.",
            additionalInfo: "Mortalite oranı oldukça yüksek bir acil tıbbi durumdur.",
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: "Paratiroid Bezi",
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: "PARATİROİD HORMONU (PTH) FİZYOLOJİSİ",
            description: "PTH, kemiklerden kalsiyum mobilizasyonunu ve böbreklerden emilimi artırırken, fosfat atılımını hızlandırır.",
            additionalInfo: "Vücuttaki kalsiyum homeostazisinin ana düzenleyicisidir.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "HİPERPARATİROİDİ VE HİPERKALSEMİ",
            description: "Yüksek kalsiyum düzeyleri hipertansiyon, aritmiler ve sık görülen böbrek taşlarına yol açar.",
            subtitle: "Akut tedavide serum fizyolojik ile hidrasyon ve furossemid diürezi esastır",
            additionalInfo: "Maligniteye bağlı vakalarda bisfosfonatlar ve kalsitonin gerekebilir.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "HİPOPARATİROİDİ VE HİPOKALSEMİ BULGULARI",
            description: "Düşük kalsiyum, nöromüsküler irritabilite ve tetaniye yol açar; Chvostek ve Trousseau belirtileri pozitiftir.",
            additionalInfo: "Tedavi edilmezse laringospazm ve nöbetlere ilerleyebilir; damardan kalsiyum verilmelidir.",
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: "Böbrek Üstü Bezi Hastalıkları",
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: "ADRENAL YETERSİZLİK VE STEROİD DESTEĞİ",
            description: "Vücudun stres yanıt mekanizması bozuk olan (Addison veya kronik steroid kullanımı) hastalarda peroperatif 'Adrenal Kriz' ve şok riski vardır.",
            subtitle: "Kronik koritizon kullanımı böbrek üstü bezlerini baskılayarak tembelleştirir",
            additionalInfo: "Stresle başa çıkabilmesi için bu hastalara ameliyat sabahı ve sırasında mutlaka damardan 'stres dozu' steroid (3x100mg hidrokortizon gibi) verilmelidir.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "CUSHING SENDROMU (GLUKOKORTİKOİD FAZLALIĞI)",
            description: "Hipertansiyon, santral obezite, kas güçsüzlüğü ve yüksek kırık riski (osteoporoz) ile karakterize bir tablodur.",
            subtitle: "Anestezist hipokalemik metabolik alkaloz ve hassas pozisyonlandırma konusunda dikkatli olmalıdır",
            additionalInfo: "Kırılgan deri ve kemik yapısı nedeniyle hastanın taşınması sırasında ekstra özen gösterilmelidir.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "FEOKROMASİTOMA VE PERİOPERATİF TANSİYON KRİZİ",
            description: "Adrenal tümörden salınan ani katekolamin fırtınası sonucu tansiyonun kontrolsüz şekilde (250-300 mmHg) yükselmesi tablosudur.",
            subtitle: "En kritik an cerrahın tümörü manipüle ettiği (dokunduğu) andır",
            additionalInfo: "Tümör çıkarıldıktan sonra ise gelişen derin hipotansiyonu sıvı ve vazopresörlerle yönetilmelidir. Ameliyat öncesi mutlaka Alfa-bloker başlanmalıdır.",
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: "Obezite ve Anestezi",
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: "OBEZİTEDE HAVAYOLU YÖNETİMİ VE RAMPA POZİSYONU",
            description: "Ciddi obezitesi olanlarda akciğer kapasitesi ve oksijen rezervi çok kısıtlıdır; entübasyon güçlüğü (zor havayolu) sıktır.",
            subtitle: "Entübasyon sırasında 'Rampa Pozisyonu' (baş-boyun-omuz yükseltilmesi) havayolu güvenliği için hayat kurtarıcıdır",
            additionalInfo: "BMI >30 obez, >40 morbid obez olarak tanımlanır. Bu hastalarda kısa etkili ajanlar tercih edilmelidir.",
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: "Karsinoid Sendrom",
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: "KARSİNOİD SENDROM VE MEDİATÖRLER",
            description: "Nöroendokrin tümörlerden salınan serotonin, histamin ve kallikreinlerin sistemik etkileriyle oluşur.",
            subtitle: "Yüzde kızarma (flushing), bronkospazm ve şiddetli ishal en tipik belirtileridir",
            additionalInfo: "Ameliyat sırasında tümör manipülasyonu mediatör fırtınasına yol açabilir.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "KARSİNOİD KRİZ YÖNETİMİ VE OKTREOTİD",
            description: "İntraoperatif kriz anında mediatör salınımını baskılamak için Oktreotid (somatostatin analoğu) hazır bulundurulmalıdır.",
            additionalInfo: "Histamin salgılamayan (morfin/atrakuryum olmayan) ilaçlar tercih edilmelidir.",
          ),
        ],
      ),
    ];
  }
}
