import 'package:flutter/material.dart';

class AnticholinergicDrugsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnticholinergicDrugsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnticholinergicDrugsCategory {
  final String categoryName;
  final List<AnticholinergicDrugsItem> items;

  AnticholinergicDrugsCategory({
    required this.categoryName,
    required this.items,
  });
}

class AnticholinergicDrugsData {
  static List<AnticholinergicDrugsCategory> getAnticholinergicDrugsData(
    BuildContext context,
  ) {
    return [
      AnticholinergicDrugsCategory(
        categoryName: 'Etki Mekanizması ve Yapı',
        items: [
          AnticholinergicDrugsItem(
            title: "KİMYASAL YAPI VE KOMPETİTİF BAĞLANMA",
            description: "Aromatik asit esterleri olan antikolinerjikler, muskarinik reseptörlere asetilkolin (ACh) ile yarışarak (kompetitif) bağlanır ve etkisini engeller.",
            subtitle: "Ester bağı, ACh'nin reseptör bölgelerine yerleşmesini fiziksel olarak bloke eder",
            additionalInfo: "Nikotinik reseptörler üzerinde klinik dozlarda etkileri yok denecek kadar azdır. Etkileri yarışmalı olduğu için ortamdaki ACh miktarı arttıkça (örneğin kolinesteraz inhibitörleri ile) bu blokaj geri çevrilebilir.",
          ),
          AnticholinergicDrugsItem(
            title: "MUSKARİNİK RESEPTÖR TİPLERİ (M1, M2, M3)",
            description: "Antikolinerjiklerin organlar üzerindeki spesifik etkileri, o bölgedeki muskarinik reseptör alt tipine bağlıdır.",
            subtitle: "M1: Nöronal sinir iletimi; M2: Kalp SA nodu; M3: Bezler ve bronş düz kası",
            additionalInfo: "• M1: Merkezi sinir sistemi ve gastrik paryetal hücrelerde bulunur.\n• M2: Kalbin yavaşlatılmasından sorumludur.\n• M3: Salgıların artışı ve bronş daralmasına aracılık eder. Antikolinerjikler bu alt tiplerin çoğunu non-selektif olarak bloke eder.",
          ),
        ],
      ),
      AnticholinergicDrugsCategory(
        categoryName: 'Klinik Sistem Farmakolojisi',
        items: [
          AnticholinergicDrugsItem(
            title: "KARDİYOVASKÜLER VE SOLUNUM ETKİLERİ",
            description: "Sinoatriyal (SA) nod üzerindeki vageal baskıyı kaldırarak kalp hızını artırır (taşikardi) ve bronş düz kaslarını gevşetir.",
            subtitle: "Ventrikül ve periferik damarlarda doğrudan kolinerjik innervasyon olmadığı için kasılma gücünü etkilemezler",
            additionalInfo: "• Kalp: Atropin doza bağlı olarak bradikardi (çok düşük doz) veya taşikardi (klinik doz) yapabilir.\n• Akciğer: Mukusu kurutur (antisiyalog) ve bronkodilatasyon sağlar. Bu durum anatomik ölü boşluğu artırabilir.",
          ),
          AnticholinergicDrugsItem(
            title: "SEREBRAL ETKİLER VE FİZOSTİGMİN ANTİDOTU",
            description: "Kimyasal yapılarına göre (tersiyer veya kuarterner amonyum) merkezi sinir sistemini uyarabilir veya yatıştırabilirler.",
            subtitle: "Atropin uyarılma yaparken, Skopolamin belirgin sedasyon ve amnezi sağlar",
            additionalInfo: "Skopolamin, beyinde atropinden 100 kat daha güçlüdür. 'Santral antikolinerjik sendrom' gelişirse antikolinesteraz olan Fizostigmin en etkili panzehirdir (tertiyer yapısı sayesinde KBB geçer).",
          ),
          AnticholinergicDrugsItem(
            title: "GASTROİNTESTİNAL VE OFTALMİK ETKİLER",
            description: "Mide bağırsak hareketlerini (peristaltizm) azaltarak boşalmayı yavaşlatır; göz bebeklerini büyüterek (midriyazis) ışığa yanıtı bozar.",
            subtitle: "GİS: Tükürük ve gastrik salgıları belirgin azaltır; Göz: Akomodasyon kaybına (siklopleji) neden olur",
            additionalInfo: "Bağırsak motilitesini azaltsalar da tamamen durdurmazlar. Alt özofagus sfinkter basıncını düşürerek reflü riskini artırabilirler. Gözde aköz hümör drenajını engelleyerek 'akut kapalı açılı glokom' krizini tetikleyebilirler.",
          ),
          AnticholinergicDrugsItem(
            title: "GENİTOÜRİNER VE TERMOREGÜLASYON ETKİLERİ",
            description: "Mesane kaslarını gevşeterek idrar retansiyonu riskini artırabilir ve terlemeyi engelleyerek vücut ısısını (hipertermi) yükseltebilir.",
            additionalInfo: "Özellikle BPH (prostat büyümesi) olan yaşlı erkeklerde idrar yapamama (retansiyon) sık görülen bir komplikasyondur. Terleme inhibisyonu, özellikle pediatrik hastalarda 'atropin ateşi' olarak bilinen hipertermi tablosuna yol açabilir.",
          ),
        ],
      ),
      AnticholinergicDrugsCategory(
        categoryName: 'Spesifik Antikolinerjik Ajanlar',
        items: [
          AnticholinergicDrugsItem(
            title: "ATROPİN (BRADİARİTMİ ALTIN STANDARDI)",
            description: "Doğal bir tersiyer amin alkaloidi olup, akut vageal bradikardilerin (cerrahi kaynaklı veya ilaç ilişkili) tedavisinde en etkili ajandır.",
            subtitle: "Maksimum dozu 2 mg'dır (erişkinde tam vagal blok için)",
            additionalInfo: "KBB'yi hafif düzeyde geçer. Antisiyalog (sekresyon kurutucu) etkisi skopolaminden daha zayıftır ancak kalp üzerindeki etkisi daha güçlüdür. İnhaler formu (İpratropiyum Bromür) astım ve KOAH'ta bronkodilatasyon için kullanılır.",
          ),
          AnticholinergicDrugsItem(
            title: "SKOPOLAMİN (GÜÇLÜ SEDASYON VE AMNEZİ)",
            description: "Atropinden farklı olarak güçlü merkezi sinir sistemi etkileriyle (sedasyon, amnezi, deliryum) öne çıkan bir ajandır.",
            subtitle: "Kapalı açılı glokomu olan hastalarda midriyazis yapıcı etkisi nedeniyle skopolaminden kaçınılmalıdır",
            additionalInfo: "Güçlü bir antisiyalogdur ve postoperatif bulantı-kusma (PONV) profilaksisinde (transdermal bant veya IV) kullanılır. Beyne en hızlı geçen antikolinerjiktir.",
          ),
          AnticholinergicDrugsItem(
            title: "GLİKOPROLAT (KBB GEÇMEYEN UZUN ETKİLİ)",
            description: "Kuarterner amonyum yapısı nedeniyle kan-beyin bariyerini (KBB) aşamayan, bu nedenle santral yan etkisi olmayan sentetik bir ajandır.",
            subtitle: "Atropinin yaklaşık yarı dozu kullanılır; etki süresi daha uzundur (2-4 saat)",
            additionalInfo: "Postoperatif kas gevşetici reversal işlemlerde neostigminle en uyumlu ajandır. Hem kalp hem de salgı bezleri üzerindeki etkisi atropinden daha kontrollü ve uzun sürelidir.",
          ),
        ],
      ),
    ];
  }
}
