import 'package:flutter/material.dart';

class AnalgesicAgentsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnalgesicAgentsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnalgesicAgentsCategory {
  final String categoryName;
  final List<AnalgesicAgentsItem> items;

  AnalgesicAgentsCategory({
    required this.categoryName,
    required this.items,
  });
}

class AnalgesicAgentsData {
  static List<AnalgesicAgentsCategory> getAnalgesicAgentsData(BuildContext context) {
    return [
      AnalgesicAgentsCategory(
        categoryName: 'Opioidler',
        items: [
          AnalgesicAgentsItem(
            title: 'Reseptör Mekanizması',
            description: 'Tüm opioid reseptörleri (µ, κ, δ, σ) G proteine bağlıdır.',
            subtitle: 'Reseptör aktivasyonu → hiperpolarizasyon, Ca⁺² kanallarını inhibe, K⁺ kanallarını aktive eder.',
            additionalInfo: 'Akut etkiler: adenilat siklaz inhibisyonu + fosfolipaz C aktivasyonu.\n\nEndojen opioidler: endorfin, enkefalin, dinorfin.',
          ),
          AnalgesicAgentsItem(
            title: 'Analjezi Yolu',
            description: 'PAG → NRM → spinal dorsal horn inhibitör yol.',
            subtitle: 'Levorotatorlar > dekstrorotatorlar (daha potent).',
          ),
          AnalgesicAgentsItem(
            title: 'Farmakokinetik',
            description: 'Transdermal fentanil: 14–24 saatte platoya ulaşır, 72 saat etkili.',
            subtitle: 'Morfin düşük yağda çözünür, alfentanil yüksek yağda çözünür + düşük Vd.',
            additionalInfo: 'Remifentanil: nonspesifik esterazlarla yıkılır.',
          ),
          AnalgesicAgentsItem(
            title: 'Metabolitler',
            description: 'Morfin metaboliti: M-6-glukronid (daha potent).',
            subtitle: 'Meperidin metaboliti: Normeperidin → epileptojenik.',
            additionalInfo: 'Tramadol → O-desmetiltramadol (aktif).\n\nMorfin & Meperidin → renal atılım, birikir.',
          ),
          AnalgesicAgentsItem(
            title: 'Kardiyovasküler Etkiler',
            description: 'Meperidin: kalp hızını artırır, histamin salınımı → hipotansiyon + taşikardi.',
          ),
          AnalgesicAgentsItem(
            title: 'Solunum Etkileri',
            description: 'Opioidler: solunumu deprese eder, hipoksik güdü ↓, PaCO₂ ↑.',
            subtitle: 'Yüksek doz → kas rijiditesi.',
          ),
          AnalgesicAgentsItem(
            title: 'Serebral Etkiler',
            description: 'CMRO₂, CBF, ICP ↓ (EEG minimal etkilenir).',
            subtitle: 'Remifentanil tolerans + opioid hiperaljezisi yapabilir.',
          ),
          AnalgesicAgentsItem(
            title: 'Gastrointestinal Etkiler',
            description: 'GİS: peristaltizm ↓, Oddi sfinkter spazmı (nalokson/glukagon ile çözülür).',
            subtitle: 'Kabızlığa tolerans gelişmez.',
            additionalInfo: 'Opioid kaynaklı konstipasyon: metilnaltrekson, alvimopan.',
          ),
          AnalgesicAgentsItem(
            title: 'Özel Kullanımlar',
            description: 'Meperidin (10–25 mg iv) post-op titreme tedavisinde.',
          ),
          AnalgesicAgentsItem(
            title: 'Etkileşimler',
            description: 'Meperidin + MAOI kontrendike!',
            subtitle: 'Eritromisin → alfentanil süresini uzatır.',
          ),
        ],
      ),
      AnalgesicAgentsCategory(
        categoryName: 'Siklooksijenaz İnhibitörleri',
        items: [
          AnalgesicAgentsItem(
            title: 'COX Enzimleri',
            description: 'COX: AA → PGH₂ dönüşümünü katalizler.',
            subtitle: 'COX-1: konstitütif (mide mukozası, trombosit).',
            additionalInfo: 'COX-2: inflamasyona yanıt.',
          ),
          AnalgesicAgentsItem(
            title: 'Aspirin',
            description: 'COX-1 irreversibl asetilasyon (1 hafta).',
          ),
          AnalgesicAgentsItem(
            title: 'Selektif COX-2 İnhibitörleri',
            description: 'Parasetamol, koksibler → GİS yan etkisi az, fakat MI/tromboz riski ↑.',
          ),
          AnalgesicAgentsItem(
            title: 'Yapı Sınıfları',
            description: 'Salisilik asit → Aspirin\nAsetik asit → Ketorolak\nPropiyonik asit → İbuprofen\nHeterosiklik → Selekoksib',
          ),
          AnalgesicAgentsItem(
            title: 'Farmakokinetik',
            description: 'Emilim hızlı, 3 saatten kısa sürede pik yapar.',
            subtitle: 'KBB & eklem aralığına geçer, albümine bağlanır.',
            additionalInfo: 'Hepatik eliminasyon.',
          ),
          AnalgesicAgentsItem(
            title: 'Toksisite',
            description: 'Parasetamol yüksek doz → NAPQI → hepatotoksisite.',
            subtitle: 'Atılım: çoğunlukla idrar.',
          ),
          AnalgesicAgentsItem(
            title: 'Patent Ductus Arteriosus',
            description: 'PG\'ler DA açıklığını sürdürür, PG inhibitörleri → DA kapatma tedavisinde kullanılır.',
          ),
          AnalgesicAgentsItem(
            title: 'Solunum Etkileri',
            description: 'Klinik dozlarda akciğer fonksiyonlarını etkilemezler.',
          ),
          AnalgesicAgentsItem(
            title: 'Yan Etkiler',
            description: 'COX-1 inh → Üst GİS kanaması riski.',
          ),
        ],
      ),
    ];
  }
}
