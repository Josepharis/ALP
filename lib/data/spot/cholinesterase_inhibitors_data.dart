import 'package:flutter/material.dart';

class CholinesteraseInhibitorsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CholinesteraseInhibitorsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CholinesteraseInhibitorsCategory {
  final String categoryName;
  final List<CholinesteraseInhibitorsItem> items;

  CholinesteraseInhibitorsCategory({
    required this.categoryName,
    required this.items,
  });
}

class CholinesteraseInhibitorsData {
  static List<CholinesteraseInhibitorsCategory> getCholinesteraseInhibitorsData(
    BuildContext context,
  ) {
    return [
      CholinesteraseInhibitorsCategory(
        categoryName: 'Genel Kolinerjik Farmakoloji',
        items: [
          CholinesteraseInhibitorsItem(
            title: "TEMEL ANTİADRENERJİK PRENSİPLER",
            description: "Kolinerjik sistem, vücutta genellikle adrenerjik (sempatik) etkilerin tam tersi yönünde fonksiyon gösteren parasempatik sistemi yönetir.",
            additionalInfo: "Dinlenme ve sindirme (rest and digest) durumlarını kontrol eder. Kalp hızını yavaşlatır, salgıları artırır ve sindirimi hızlandırır. Anestezide bu etkiler genellikle istenmeyen yan etkiler olarak karşımıza çıkar ve yönetilmesi gerekir.",
          ),
          CholinesteraseInhibitorsItem(
            title: "ASETİLKOLİN SENTEZ VE YIKIM DÖNGÜSÜ",
            description: "Asetilkolin (Ach), sinir uçlarında kolin asetiltransferaz enzimiyle sentezlenir ve asetilkolinesteraz (AChE) ile hızla parçalanır.",
            subtitle: "Sentez: Asetil-KoA + Kolin → Asetilkolin",
            additionalInfo: "AChE enzimi doğadaki en hızlı çalışan enzimlerden biridir; Ach molekülünü kolin ve asetata parçalayarak sinyal iletimini milisaniyeler içinde sonlandırır. Kolinesteraz inhibitörleri işte bu yıkım aşamasını bloke ederek ortamdaki Ach miktarını artırır.",
          ),
          CholinesteraseInhibitorsItem(
            title: "SALGILANMA BÖLGELERİ VE SİSTEMLER",
            description: "Ach; tüm parasempatik sinir uçlarında, sempatik ganglionlarda, adrenal medullada ve iskelet kası motor uç plağında temel mediyatördür.",
            additionalInfo: "İstisna olarak ter bezleri sempatik sistem kontrolünde olmasına rağmen Ach ile uyarılırlar. Ayrıca merkezi sinir sisteminde (SSS) bilişsel fonksiyonlar ve bellek üzerinde kritik rolleri vardır.",
          ),
          CholinesteraseInhibitorsItem(
            title: "NİKOTİNİK VE MUSKARİNİK RESEPTÖRLER",
            description: "Kolinerjik reseptörler, yerleşim yerlerine ve bağlandıkları ajanlara göre Nikotinik ve Muskarinik olarak ikiye ayrılırlar.",
            subtitle: "Nikotinik: Ganglion ve iskelet kası; Muskarinik: Kalp, düz kas ve bezler",
            additionalInfo: "• Nikotinik Reseptörler: Hızlı iyon kanalları üzerinden çalışır.\n• Muskarinik Reseptörler: G-proteini üzerinden yavaş etki gösterir. M1 nöronal, M2 kardiyak (SA nod), M3 ise bezler ve bronşlarda yoğunlaşmıştır. Kan-beyin bariyeri (KBB) her iki reseptör tipini de içerir.",
          ),
          CholinesteraseInhibitorsItem(
            title: "KLİNİK TANI VE TEST AJANLARI",
            description: "Bazı kolinerjik ilaçlar, hastalıkların teşhisinde provokasyon veya tedavi amaçlı spesifik olarak kullanılırlar.",
            additionalInfo: "• Metakolin: Astım teşhisinde havayolu duyarlılığını test etmek için provokasyon testinde kullanılır.\n• Betanekol: Geniş açılı glokom tedavisi ve GİS motilitesini artırmak için tercih edilebilir.",
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Kolinesteraz İnhibitör Mekanizmaları',
        items: [
          CholinesteraseInhibitorsItem(
            title: "İNHİBİTÖRLERİN BAĞLANMA ÖZELLİKLERİ (REVERSİBL/İRREVERSİBL)",
            description: "AChE enzimini bloke eden ajanlar, bağın gücüne ve süresine göre kalıcı veya geçici etki gösterirler.",
            subtitle: "Organofosfatlar irreversibl (kalıcı), Karbamatlar reversibl (geçici) bağ yapar",
            additionalInfo: "Anestezide kas gevşetici geri çevirmede kullanılan Neostigmin, Pridostigmin ve Fizostigmin karbamat yapısındadır. Edrofonyum ise kovalent olmayan zayıf bir bağ kurarak en kısa etkili ajan ünvanını alır.",
          ),
          CholinesteraseInhibitorsItem(
            title: "MYASTENİA GRAVİS TANI VE TEDAVİSİ",
            description: "Nöromüsküler kavşaktaki reseptör azlığı ile seyreden Myastenia Gravis hastalığında bu ajanlar hayati öneme sahiptir.",
            subtitle: "Edrofonyum (Tanı testi) ve Neostigmin/Pridostigmin (Uzun süreli tedavi)",
            additionalInfo: "Tensilon testi (Edrofonyum) ile hastanın kas gücünde ani bir düzelme olması tanıyı doğrular. Pridostigmin, yavaş başlangıcı ve uzun etkisi nedeniyle oral idame tedavisinde altın standarttır.",
          ),
          CholinesteraseInhibitorsItem(
            title: "DEPOLARİZAN BLOK ETKİLEŞİMİ",
            description: "Kolinesteraz inhibitörleri, süksinilkolinin (SC) etkisini beklenenin aksine uzatırlar.",
            additionalInfo: "Çünkü bu ilaçlar psödokolinesteraz enzimini de (sınırlı olsa da) bloke ederek SC'nin vücuttan temizlenmesini yavaşlatırlar. Bu nedenle SC sonrası blok tam dönmeden neostigmin yapılması 'faz II blok' riskini ve felç süresini artırır.",
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Klinik Organ Sistem Etkileri',
        items: [
          CholinesteraseInhibitorsItem(
            title: "KARDİYOVASKÜLER VE PULMONER ETKİLER",
            description: "Artan Ach miktarı kalp hızını düşürür ve havayolu direncini artırarak solunumu güçleştirir.",
            subtitle: "Muskarinik stimülasyon; bradikardi, asistoli ve yoğun bronkospazma yol açabilir",
            additionalInfo: "Bu tehlikeli yan etkileri önlemek için kolinesteraz inhibitörleri her zaman bir antikolinerjik (Atropin veya Glikoprolat) ile kombine edilerek uygulanmalıdır.",
          ),
          CholinesteraseInhibitorsItem(
            title: "SANTRAL SİNİR SİSTEMİ (SSS) VE FİZOSTİGMİN",
            description: "Ajanın kimyasal yapısı (tertiyer veya kuarterner amonyum), beyin üzerindeki etkilerini belirler.",
            subtitle: "Fizostigmin kan-beyin bariyerini (KBB) geçen tek ajandır",
            additionalInfo: "Kuarterner amonyum yapısındaki Neostigmin beyne giremezken, tersiyer amin yapısındaki Fizostigmin merkezi sinir sistemine hızla girer. Bu özelliğiyle 'santral antikolinerjik sendrom' tedavisinde eşsizdir.",
          ),
          CholinesteraseInhibitorsItem(
            title: "GASTROİNTESTİNAL SİSTEM (GİS) VE YAN ETKİLER",
            description: "Bağırsak hareketlerini (peristaltizm) ve salgıları artırarak postoperatif bulantı-kusma ve inkontinans riskini tetikler.",
            additionalInfo: "Salgıların artışı (siyalore) ve mide boşalmasının hızlanması postoperatif konforu etkileyebilir. Modern klinik uygulamada Glikoprolat kullanımı bu etkileri minimize etmede başarılıdır.",
          ),
          CholinesteraseInhibitorsItem(
            title: "KAS GÜCÜ VE GERİ DÖNÜŞ DEĞERLENDİRMESİ",
            description: "Kas gevşetici etkisinin geri dönmesi (reversal), TOF monitorizasyonu ve klinik kriterlerle titizlikle izlenmelidir.",
            subtitle: "Kas gücü dönüş sırası: Baş kaldırma > İnspirasyon gücü > VC > TV",
            additionalInfo: "Baş kaldırma (5 sn) ve dili dışarı çıkarma yeteneği en güvenilir klinik göstergelerdir. Tidal hacim (TV) ise duyarlılığı en düşük kriterdir ve blok tam çözülmese de normal görünebilir.",
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Spesifik Klinik Ajanlar',
        items: [
          CholinesteraseInhibitorsItem(
            title: "NEOSTİGMİN (KUARTERNER AMONYUM)",
            description: "Anestezide en sık kullanılan, kuarterner amonyum yapısı nedeniyle beyne girmeyen standart reversal ajandır.",
            subtitle: "Doz: 0,04–0,08 mg/kg; Atropin veya Glikoprolat ile eşleştirilir",
            additionalInfo: "Etkisi 5-10 dakikada başlar. 1 mg Neostigmin için genellikle 0.2 mg Glikoprolat veya 0.4 mg Atropin gereklidir. Gebelerde atropinle eşleştirilmesi, plasentadan geçiş dengesi açısından daha uygundur.",
          ),
          CholinesteraseInhibitorsItem(
            title: "PRİDOSTİGMİN (YAVAŞ VE UZUN ETKİLİ)",
            description: "Neostigmine göre daha yavaş etki gösteren (%20 potent) ancak etkisi daha uzun süren bir ajandır.",
            additionalInfo: "Etkisi 10-15 dakikada başlar. Etki başlama hızı uyumlu olduğu için genellikle Glikoprolat ile kombine edilir. Kronik Myastenia Gravis tedavisinde birincil tercihtir.",
          ),
          CholinesteraseInhibitorsItem(
            title: "EDROFONYUM (HIZLI VE KISA ETKİLİ)",
            description: "Kovalent olmayan zayıf bağlanması sayesinde etkisi en hızlı başlayan ve en kısa süren ajandır.",
            additionalInfo: "1-2 dakikada etki gösterir. Muskarinik yan etkileri en az olan ajandır, bu yüzden daha düşük doz antikolinerjik gerektirir. Enzimle kurduğu bağ 'hidrojen bağı' düzeyindedir.",
          ),
          CholinesteraseInhibitorsItem(
            title: "FİZOSTİGMİN (TERSİYER AMİN - KBB GEÇER)",
            description: "Beyne girebilme özelliği sayesinde santral yan etkileri ve deliryumu geri çevirmek için kullanılan tek inhibitördür.",
            additionalInfo: "Santral antikolinerjik sendrom, morfin kaynaklı solunum depresyonu ve postoperatif titreme gibi durumlarda tercih edilir. Hızlı uygulandığında salivasyon, kusma ve nöbet gibi ciddi muskarinik krizlere yol açabilir.",
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Modern Antagonizma: Sugammadeks',
        items: [
          CholinesteraseInhibitorsItem(
            title: "SUGAMMADEKS MEKANİZMASI VE YAPI",
            description: "Gama-siklodekstrin yapısında olan bu ajan, steroid yapılı kas gevşeticileri fiziksel olarak hapsederek etkisiz hale getirir.",
            subtitle: "Roküronyum, Veküronyum ve Panküronyum'u 1:1 oranında bağlar",
            additionalInfo: "Asetilkolin miktarını artırmaz, yani muskarinik yan etki (bradikardi vb.) yapmaz. Bu nedenle atropin kullanımı gerektirmez. İlaç-sugammadeks kompleksi esas olarak böbrekler yoluyla değişmeden atılır.",
          ),
          CholinesteraseInhibitorsItem(
            title: "KLİNİK DOZ VE SELEKTİVİTE",
            description: "Bloğun derinliğine göre 2 mg/kg ile 16 mg/kg arasında değişen dozlarda uygulanır.",
            additionalInfo: "En hızlı geri dönüşü (reversal) Roküronyum üzerinde sağlar. Çok derin blokları bile (saniyeler içinde) geri çevirebilme özelliği ile 'entübe edilemeyen-havalandırılamayan' senaryolarda hayat kurtarıcıdır.",
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Alternatif Yöntemler: L-Sistein',
        items: [
          CholinesteraseInhibitorsItem(
            title: "GANTAKÜRİUM ANTAGONİZMASI (L-SİSTEİN)",
            description: "Ultra kısa etkili yeni ajan Gantaküryum'un blokajını moleküler düzeyde hızlıca sonlandıran özel bir yöntemdir.",
            additionalInfo: "Gantaküryumun fumarat grubuna bağlanan L-Sistein, ilacı dakikalar içinde inaktif metabolitlere dönüştürür. Klasik kolinesteraz inhibitörlerine ihtiyacı ortadan kaldırır.",
          ),
        ],
      ),
    ];
  }
}
