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
        categoryName: "Diyabet (Şeker Hastalığı) Yönetimi",
        items: [
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
            title: "TİROİD FIRTINASI VE AYIRICI TANI",
            description: "Kontrolsüz hipertiroidide cerrahi stresin tetiklediği aşırı hormon salınımı 'Tiroid Fırtınası' denilen ölümcül tabloya yol açabilir.",
            subtitle: "Aşırı taşikardi ve hipertermi ile seyreden bu tablo Malign Hipertermi ile karışabilir; ancak fırtınada kas rijidesi görülmez",
            additionalInfo: "Tedavide acil beta blokerler, PTU (Propiltiourasil) ve steroid desteği kritik öneme sahiptir.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "HİPOTİROİDİ VE ANESTETİK DUYARLILIĞI",
            description: "Tiroid fonksiyonları düşük olan hastalar genel anestezi ilaçlarına ve soğuğa karşı aşırı hassastır; uyanma zamanları çok uzayabilir.",
            subtitle: "Düşük metabolizma hızı nedeniyle ilaç dozları azaltılmalı ve hasta aktif olarak ısıtılmalıdır",
            additionalInfo: "Hipoterminin derinleşmesi metabolizmayı daha da yavaşlatarak uyanmayı imkansız hale getirebilir.",
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
            additionalInfo: "Stresle başa çıkabilmesi için bu hastalara ameliyat sabahı ve sırasında mutlaka damardan 'stres dozu' steroid verilmelidir.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "FEOKROMASİTOMA VE PERİOPERATİF TANSİYON KRİZİ",
            description: "Adrenal tümörden salınan ani katekolamin fırtınası sonucu tansiyonun kontrolsüz şekilde (250-300 mmHg) yükselmesi tablosudur.",
            subtitle: "En kritik an cerrahın tümörü manipüle ettiği (dokunduğu) andır",
            additionalInfo: "Anestezist saniyeler içinde vazodilatörlerle tansiyonu düşürmeli; tümör çıkarıldıktan sonra ise gelişen derin hipotansiyonu sıvı ve vazopresörlerle yönetmelidir.",
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
            additionalInfo: "İlaçların yağ dokusunda birikmesi nedeniyle uyanma gecikebilir; bu yüzden kısa etkili ajanlar tercih edilmelidir.",
          ),
        ],
      ),
    ];
  }
}
