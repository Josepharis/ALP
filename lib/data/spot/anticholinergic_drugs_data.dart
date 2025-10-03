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
  static List<AnticholinergicDrugsCategory> getAnticholinergicDrugsData(BuildContext context) {
    return [
      AnticholinergicDrugsCategory(
        categoryName: 'Etki Mekanizması',
        items: [
          AnticholinergicDrugsItem(
            title: 'Yapı ve Bağlanma',
            description: 'Aromatik asit esterleri',
            subtitle: 'Ester bağı, ACh\'nin reseptöre bağlanmasını kompetitif olarak bloke eder',
          ),
          AnticholinergicDrugsItem(
            title: 'Muskarinik Reseptörler',
            description: 'M1 → nöronal',
            subtitle: 'M2 → kardiyak',
            additionalInfo: 'M3 → glandüler',
          ),
        ],
      ),
      AnticholinergicDrugsCategory(
        categoryName: 'Klinik Farmakoloji',
        items: [
          AnticholinergicDrugsItem(
            title: 'Kardiyovasküler Etkiler',
            description: 'SA nod blokajı → taşikardi',
            subtitle: 'Ventrikül / periferik damarlar etkilenmez (doğrudan kolinerjik innervasyon yok)',
            additionalInfo: 'Yüksek doz → VD → flushing',
          ),
          AnticholinergicDrugsItem(
            title: 'Solunum Etkileri',
            description: 'Burun → bronşa kadar sekresyonu inhibe eder',
            subtitle: 'Bronş düz kaslarını gevşetir',
            additionalInfo: 'Anatomik ölü boşluk ↑',
          ),
          AnticholinergicDrugsItem(
            title: 'Serebral Etkiler',
            description: 'Atropin: stimülasyon, eksitasyon, halüsinasyon',
            subtitle: 'Skopolamin: sedasyon, amnezi',
            additionalInfo: 'Fizostigmin: bu etkileri geri çevirir',
          ),
          AnticholinergicDrugsItem(
            title: 'Gastrointestinal Etkiler',
            description: 'Tükürük sekresyonu belirgin ↓',
            subtitle: 'Gastrik sekresyon ↓ (daha az)',
            additionalInfo: 'İntestinal motilite ↓, peristaltizm ↓\nAlt özofagus sfinkter basıncı ↓',
          ),
          AnticholinergicDrugsItem(
            title: 'Oftalmik Etkiler',
            description: 'Midriyazis + siklopleji (akomodasyon kaybı)',
            subtitle: 'Akut kapalı açılı glokom riski düşük',
          ),
          AnticholinergicDrugsItem(
            title: 'Genitoüriner Etkiler',
            description: 'Mesane tonusu ↓',
            subtitle: 'BPH\'de idrar retansiyonu',
          ),
          AnticholinergicDrugsItem(
            title: 'Termoregülasyon',
            description: 'Hipertermi riski (terleme azalır)',
          ),
        ],
      ),
      AnticholinergicDrugsCategory(
        categoryName: 'Özel Antikolinerjik Ajanlar',
        items: [
          AnticholinergicDrugsItem(
            title: 'Atropin',
            description: 'Tersiyer amin, rasemik',
            subtitle: 'Doz: 0,01–0,02 mg/kg (maks 2 mg)',
            additionalInfo: 'En etkili bradiaritmi tedavisi\nKlinik dozda SSS etkisi minimal\nToksik doz: eksitasyon + post-op amnezi\n\n0,01–0,02 mg/kg IM → antisiyalog etki\nEtki süresi: 30 dk\n\nİpratropiyum bromür → bronkospazmda inhaler form',
          ),
          AnticholinergicDrugsItem(
            title: 'Skopolamin',
            description: 'Atropin + epoksit',
            subtitle: 'Uygulama: IM',
            additionalInfo: 'Atropinden güçlü antisiyalog\nSSS etkisi ↑ → sedasyon, amnezi, deliryum\nPONV profilaksisi\nKapalı açılı glokomda kaçınılmalı',
          ),
          AnticholinergicDrugsItem(
            title: 'Glikoprolat',
            description: 'Kuarterner amonyum (KBB/KGB geçmez)',
            subtitle: 'Atropinin yarı dozu kullanılır',
            additionalInfo: 'Antisiyalog etkili\nEtki süresi: 2–4 saat (uzun)',
          ),
        ],
      ),
      AnticholinergicDrugsCategory(
        categoryName: 'Altın Spotlar',
        items: [
          AnticholinergicDrugsItem(
            title: 'Özet',
            description: 'Atropin → bradiaritmide en etkili',
            subtitle: 'Skopolamin → SSS etkisi en fazla, PONV profilaksisi',
            additionalInfo: 'Glikoprolat → KBB geçmez, uzun etkili antisiyalog\nM1 → nöronal, M2 → kardiyak, M3 → glandüler\nBPH\'de idrar retansiyonu + hipertermi riski',
          ),
        ],
      ),
    ];
  }
}
