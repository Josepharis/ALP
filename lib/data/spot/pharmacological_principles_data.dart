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
  static List<PharmacologicalPrinciplesCategory> getPharmacologicalPrinciplesData(BuildContext context) {
    return [
      PharmacologicalPrinciplesCategory(
        categoryName: 'Farmakokinetik (Vücut İlaca Ne Yapar)',
        items: [
          PharmacologicalPrinciplesItem(
            title: 'Emilim (Absorbsiyon)',
            description: 'İlaç özellikleri, doz ve absorbsiyon bölgesi etkiler.',
            subtitle: 'Oral: İlk geçiş hepatik metabolizma önemli.',
            additionalInfo: 'Noniyonize > iyonize ilaç emilir.\n\nAğız, özafagus, rektum → karaciğeri atlayabilir.\n\nCilt: Stratum korneum lipofilik küçük moleküllere bariyer.',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Dağılım (Distrübisyon)',
            description: 'İlaç kanlanan organlara öncelikli gider.',
            subtitle: 'Yağ/deri → lipofilik ilaçlar için depo.',
            additionalInfo: 'Albumin: asidik ilaçları bağlar (barbitürat).\nα1-asit glikoprotein: bazik ilaçlar (lokal anestetik).\n\nIV bolus sonrası: hızlı dağılım → plazmada hızlı düşüş.\n\nKonteks duyarlı yarı ömür: infüzyon sonrası plazmada %50 düşüş zamanı.',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Kompartmanlar',
            description: 'V1: santral (kan, akciğer)\nV2: hızlı dağılım periferik\nV3: yavaş dağılım periferik',
            subtitle: 'Vdss = V1 + V2 + V3 → küçük = hidrofilik, büyük = lipofilik',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Biyotransformasyon',
            description: 'Faz I: oksidasyon, redüksiyon, hidroliz → polar metabolit\nFaz II: glukuronidasyon → hidrofilik hale getirir',
            subtitle: 'Karaciğer kan akımı düşük etkili ilaçlarda az rol oynar; metabolik kapasite belirleyicidir',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Atılım (Ekskresyon)',
            description: 'Renal klirens: böbrekler ile uzaklaştırılan miktar\nSafra → enterohepatik siklus',
            subtitle: 'Örnek: Lorazepam → Lorazepam Glukuronit → tekrar geri',
          ),
        ],
      ),
      PharmacologicalPrinciplesCategory(
        categoryName: 'Kompartman Modelleri',
        items: [
          PharmacologicalPrinciplesItem(
            title: 'Kompartman Tanımları',
            description: 'Santral: kan ve akciğerler\nHızlı dengelenen: damardan zengin (kas, organ)\nYavaş dengelenen: yağ, deri',
            subtitle: '3 kompartmanlı model: hızlı arteriyel örnekleme varsa',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Bolus Sonrası Dağılım',
            description: 'Periferik kompartmanlara hızlı geçiş → plazma düşüşü',
            subtitle: 'Terminal yarı ömür: ilacın tamamen vücuttan atılmasını gösterir',
          ),
        ],
      ),
      PharmacologicalPrinciplesCategory(
        categoryName: 'Farmakodinamik (İlaç Vücuda Ne Yapar)',
        items: [
          PharmacologicalPrinciplesItem(
            title: 'Etki (Potens, Etkinlik, Terapötik Pencere)',
            description: 'Doz-yanıt ve konsantrasyon-yanıt ilişkisi',
            subtitle: 'Eşik değer: etki başlaması için gerekli konsantrasyon',
            additionalInfo: 'Sigmoid ilişki: konsantrasyon artışıyla maksimum etki sabitlenir\n\nTerapötik pencere: etkili konsantrasyon ile toksik konsantrasyon aralığı',
          ),
          PharmacologicalPrinciplesItem(
            title: 'İlaç Reseptörleri',
            description: 'Agonist: yanıt oluşturur\nAntagonist: agonist etkisini geri çevirir, tek başına etkisiz',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Antagonizma',
            description: 'Kompetitif: agonist ile yarışır\nNonkompetitif: agonist etkisini geri çevirir, bağlanma yeri farklı',
          ),
        ],
      ),
    ];
  }
}
