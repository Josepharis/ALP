import 'package:flutter/material.dart';

class PharmacologicalPrinciplesItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PharmacologicalPrinciplesItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PharmacologicalPrinciplesCategory {
  final String categoryName;
  final List<PharmacologicalPrinciplesItem> items;

  PharmacologicalPrinciplesCategory({
    required this.categoryName,
    required this.items,
  });
}

class PharmacologicalPrinciplesData {
  static List<PharmacologicalPrinciplesCategory>
  getPharmacologicalPrinciplesData(BuildContext context) {
    return [
      PharmacologicalPrinciplesCategory(
        categoryName: 'Farmakokinetik (Vücut İlaca Ne Yapar)',
        items: [
          PharmacologicalPrinciplesItem(
            title: "EMİLİM VE ABSORBSİYON PRENSİPLERİ",
            description: "İlacın uygulama bölgesinden kan dolaşımına geçiş sürecidir; ilaç özellikleri, doz ve bölge kan akımı tarafından belirlenir.",
            subtitle: "Oral yolda ilk geçiş hepatik metabolizması kritik rol oynar",
            additionalInfo: "Temel prensipler:\n• İyonizasyon: Noniyonize (yüksüz) formdaki ilaçlar, iyonize formdakilere göre çok daha hızlı emilir.\n• İlk Geçiş Etkisi: Ağız, özafagus ve rektumun alt kısımlarından yapılan uygulamalar karaciğeri atlayarak doğrudan sistemik dolaşıma katılabilir.\n• Cilt Bariyeri: Stratum korneum tabakası, lipofilik küçük moleküller dışındaki maddeler için güçlü bir bariyer oluşturur.",
          ),
          PharmacologicalPrinciplesItem(
            title: "DAĞILIM VE PLAZMA PROTEİNLERİ",
            description: "İlacın plazmadan dokulara yayılma sürecidir; kanlanan organlara (kalp, akciğer, beyin) öncelikli olarak ulaşır.",
            subtitle: "Yağ ve deri dokusu lipofilik ilaçlar için depo görevi görür",
            additionalInfo: "Plazma protein bağlanması ilacın serbest (aktif) miktarını belirler:\n• Albümin: Barbitüratlar gibi asidik ilaçları bağlar.\n• α1-asit Glikoprotein: Lokal anestetikler gibi bazik ilaçları bağlar.\n• Dağılım Hızı: IV bolus sonrası ilaç önce zengin damarlı dokulara dağılır (plazmada hızlı düşüş), ardından daha yavaş kanlanan dokulara geçer.\n• Konteks Duyarlı Yarı Ömür: Sürekli infüzyon sonrası plazma konsantrasyonunun %50 düşmesi için gereken süreyi ifade eder.",
          ),
          PharmacologicalPrinciplesItem(
            title: "VÜCUT KOMPARTMAN MODELLERİ",
            description: "İlacın vücuttaki hareketini matematiksel olarak açıklayan sanal hacim bölmeleridir.",
            subtitle: "Vdss (Dağılım Hacmi) = V1 + V2 + V3",
            additionalInfo: "Genellikle üç kompartmanlı model kullanılır:\n• V1 (Santral): Kan hacmi ve akciğerler gibi en hızlı ulaşılan alan.\n• V2 (Hızlı Dağılım): Kas ve organlar gibi damardan zengin dokular.\n• V3 (Yavaş Dağılım): Yağ ve deri gibi geç dengeye ulaşan dokular.\nKüçük Vd değeri hidrofilik (suda çözünen), büyük Vd değeri ise lipofilik (yağda çözünen) ilaçlara işaret eder.",
          ),
          PharmacologicalPrinciplesItem(
            title: "BİYOTRANSFORMASYON (METABOLİZMA)",
            description: "İlacın vücutta kimyasal olarak aktif veya inaktif metabolitlere dönüştürülme sürecidir; temel amaç ilacı suda çözünür hale getirip atmaktır.",
            subtitle: "Karaciğer kapasitesi ve kan akımı hızı belirleyicidir",
            additionalInfo: "İki ana fazda gerçekleşir:\n• Faz I: Oksidasyon, redüksiyon veya hidroliz reaksiyonları ile moleküle polar gruplar eklenir.\n• Faz II: Glukuronidasyon gibi konjugasyon işlemleri ile ilaç tamamen hidrofilik hale getirilerek böbreklerden atıma hazırlanır.\nKaraciğer kan akımı düşük olan ilaçlarda metabolik kapasite (enzim gücü) sınırlayıcı faktördür.",
          ),
          PharmacologicalPrinciplesItem(
            title: "ATILIM VE EKSKRESYON YOLLARI",
            description: "İlaç ve metabolitlerinin vücuttan tamamen uzaklaştırılması sürecidir; birincil yol böbrekler, ikincil yol ise safradır.",
            subtitle: "Enterohepatik siklus ilacın vücutta kalış süresini uzatabilir",
            additionalInfo: "Renal klirens, böbreklerin birim zamanda temizlediği plazma hacmini ifade eder. Safra yoluyla atılan bazı ilaçlar (örneğin Lorazepam Glukuronit) bağırsaklardan tekrar emilerek karaciğere dönebilir (Enterohepatik Siklus); bu durum ilacın etki süresini beklenmedik şekilde uzatabilir.",
          ),
        ],
      ),
      PharmacologicalPrinciplesCategory(
        categoryName: 'Farmakodinamik (İlaç Vücuda Ne Yapar)',
        items: [
          PharmacologicalPrinciplesItem(
            title: "POTENS VE TERAPÖTİK PENCERE",
            description: "İlacın dozu ile oluşturduğu yanıt arasındaki ilişkiyi ve güvenli kullanım aralığını tanımlar.",
            subtitle: "Eşik değer: Etkinin başlaması için gerekli minimum konsantrasyon",
            additionalInfo: "• Sigmoid İlişki: Konsantrasyon artışıyla etki bir noktaya kadar artar, ardından maksimum kapasiteye (Emax) ulaşılır ve sabitlenir.\n• Potens: Belirli bir etkiyi oluşturmak için gereken ilaç miktarıdır.\n• Terapötik Pencere: İlacın etkili olduğu minimum konsantrasyon ile toksik etkilerin başladığı konsantrasyon arasındaki güvenli koridordur; bu koridorun dar olması (örneğin Digoksin) risklidir.",
          ),
          PharmacologicalPrinciplesItem(
            title: "AGONİST VE ANTAGONİST İLİŞKİLERİ",
            description: "İlacın reseptöre bağlanarak bir yanıt oluşturup oluşturmadığını ifade eden temel etkileşim türleridir.",
            additionalInfo: "• Agonist: Reseptöre bağlanır ve biyolojik bir yanıt tetikler (örneğin opioidler).\n• Antagonist: Reseptöre bağlandığı halde tek başına bir yanıt oluşturmaz; ancak o bölgeyi işgal ederek agonistin etkisini engeller veya geri çevirir (örneğin Nalokson).",
          ),
          PharmacologicalPrinciplesItem(
            title: "ANTAGONİZMA TÜRLERİ (KOMPETİTİF / NONKOMPETİTİF)",
            description: "İlaçların birbirlerinin etkilerini hangi mekanizma ile ortadan kaldırdığını gösterir.",
            additionalInfo: "• Kompetitif (Yarışmalı): Agonist ve antagonist aynı bağlanma bölgesi için yarışır. Doz artırılarak bu engel aşılabilir.\n• Nonkompetitif: Antagonist, agonistten farklı bir bölgeye bağlanarak veya reseptörü kalıcı olarak değiştirerek etkiyi engeller; agonist dozu artırılsa bile engel genellikle aşılamaz.",
          ),
        ],
      ),
    ];
  }
}
