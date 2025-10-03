import 'package:flutter/material.dart';

class AnesthesiaAdjuvantDrugsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnesthesiaAdjuvantDrugsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnesthesiaAdjuvantDrugsCategory {
  final String categoryName;
  final List<AnesthesiaAdjuvantDrugsItem> items;

  AnesthesiaAdjuvantDrugsCategory({
    required this.categoryName,
    required this.items,
  });
}

class AnesthesiaAdjuvantDrugsData {
  static List<AnesthesiaAdjuvantDrugsCategory> getAnesthesiaAdjuvantDrugsData(BuildContext context) {
    return [
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Aspirasyon & Profilaksi',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: 'Aspirasyon Pnömonisi Riski',
            description: 'pH <2.5 ve hacim >25 mL',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Antiasitler',
            description: 'pH\'ı hızla yükseltir ama intragastrik hacmi artırır → aspirasyon daha zararlı olabilir.',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'H2 Blokerleri',
            description: 'Gastrik asit salgısını azaltır, pH\'yı yükseltir, sadece uygulandıktan sonraki mide sıvısında etki.',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Metoklopramid',
            description: 'Mide boşalmasını hızlandırır, alt özofagus sfinkter tonusunu ↑ (pH değişmez).',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'PPI\'lar',
            description: 'Proton pompasını inhibe eder, asit sekresyonunu en güçlü baskılayan grup.',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Histamin Fizyolojisi & Reseptörler',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: 'H1 Reseptörü',
            description: 'Fosfolipaz C aktivasyonu → bronkokonstriksiyon, kapiller geçirgenlik ↑, lökotaksis ↑',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'H2 Reseptörü',
            description: 'cAMP ↑ → mide asit salgısı ↑, kalp hızı & kontraktilite ↑',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'H3 Reseptörü',
            description: 'Presinaptik, negatif feedback (histamin salınımını azaltır).',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'H4 Reseptörü',
            description: 'İmmün sistemde rol (notlarında yok ama sınavda gelebilir).',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'H1 Blokerleri',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: '1. Kuşak H1 Blokerleri',
            description: 'Difenhidramin, prometazin, hidroksizin → sedatif, antiemetik, antikolinerjik.',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: '2. Kuşak H1 Blokerleri',
            description: 'Loratadin, setirizin, feksofenadin → KBB\'ni geçmez, alerjik rinit/ürtiker.',
            subtitle: 'Astımda etkisiz!',
            additionalInfo: 'Sedatif etkileri SSS depresanları ile artar.',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'H2 Blokerleri',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: 'Simetidin',
            description: 'P-450 inhibisyonu (warfarin, fenitoin, diazepam, propranolol etkileşim!).',
            subtitle: 'Yan etki: jinekomasti, impotans, hepatotoksisite.',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Ranitidin',
            description: 'P-450\'yi hafif etkiler.',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Famotidin/Nizatidin',
            description: 'P-450 etkisi yok.',
            subtitle: 'Hızlı IV uygulama → hipotansiyon + bradikardi.',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Metoklopramid',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: 'Mekanizma',
            description: 'Periferde kolinomimetik, santralde dopamin antagonist.',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Etkiler',
            description: 'Mide boşalması ↑, sıvı hacmi ↓, antiemetik etki (KTZ dopamin R blokajı).',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Yan Etkiler',
            description: 'Ekstrapiramidal bulgular, Parkinsonda kontrendike, feokromasitomada HT krizi.',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Proton Pompa İnhibitörleri',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: 'İlaçlar',
            description: 'Omeprazol, lansoprazol, pantoprazol.',
            subtitle: 'Etki: Asit sekresyonunu en güçlü baskılar.',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Yan Etkiler',
            description: 'Uzun süre kullanım → enterokromafin hücre hiperplazisi, bakteriyel kolonizasyon ↑.',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'İlaç Etkileşimleri',
            description: 'Diazepam, varfarin, fenitoin klirensini azaltır; klopidogrel etkinliğini azaltır.',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'POBK (Postoperatif Bulantı Kusma)',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: 'Risk Faktörleri',
            description: 'Kadın, sigara içmeme, taşıt tutması öyküsü.',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Anestezi Faktörleri',
            description: 'Volatil anestezik, N₂O, opioidler.',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Cerrahi Faktörleri',
            description: 'Süre uzaması (her 30 dk → %60 artış).',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Antiemetikler',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: '5-HT3 Antagonistleri',
            description: 'Ondansetron → QT uzaması, baş ağrısı, KC yetmezliğinde doz azalt.',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Butirofenonlar',
            description: 'Droperidol → QT uzaması, torsades riski.',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Deksametazon',
            description: '4 mg, cerrahi başında verilir.',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'NK-1 Antagonistleri',
            description: 'Aprepitant → ondansetronla aditif etki.',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Spot Sorular',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: 'ÖZET SPOT SORULAR',
            description: 'Aspirasyon pnömonisi için kritik değer? → pH <2.5, hacim >25 mL',
            subtitle: 'Astımda etkisiz antihistaminik? → H1 blokerler',
            additionalInfo: 'Jinekomasti yapan ilaç? → Simetidin\nQT uzaması yapan antiemetik? → Ondansetron & Droperidol\nMide boşalmasını hızlandıran ilaç? → Metoklopramid\nKlopidogrel etkinliğini azaltan ilaç? → Omeprazol (PPI)\nSedatif etkili antihistaminikler? → 1. kuşak H1 blokerleri',
          ),
        ],
      ),
    ];
  }
}
