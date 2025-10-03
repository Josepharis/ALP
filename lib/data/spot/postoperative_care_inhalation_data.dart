import 'package:flutter/material.dart';

class PostoperativeCareInhalationItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PostoperativeCareInhalationItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PostoperativeCareInhalationCategory {
  final String categoryName;
  final List<PostoperativeCareInhalationItem> items;

  PostoperativeCareInhalationCategory({
    required this.categoryName,
    required this.items,
  });
}

class PostoperativeCareInhalationData {
  static List<PostoperativeCareInhalationCategory> getPostoperativeCareInhalationData(BuildContext context) {
    return [
      PostoperativeCareInhalationCategory(
        categoryName: 'Genel İlkeler',
        items: [
          PostoperativeCareInhalationItem(
            title: 'Mekanik Ventilasyon ve İnhalasyon',
            description: 'Postanestezik bakım ünitesinde (PACU) ve yoğun bakımda kritik rol oynar',
          ),
          PostoperativeCareInhalationItem(
            title: 'Hedefler',
            description: 'Oksijenlenme, ventilasyon, asit-baz dengesi, akciğer koruyucu stratejiler ve komplikasyonları önlemek',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Oksijen Tedavisi',
        items: [
          PostoperativeCareInhalationItem(
            title: 'Rutin PACU Oksijen Uygulaması',
            description: 'Hipoksemi riskini azaltır',
          ),
          PostoperativeCareInhalationItem(
            title: 'Hipoksemi Nedenleri',
            description: 'Rezidüel anestezik etki, atelektazi, obstrüksiyon, hipoventilasyon',
          ),
          PostoperativeCareInhalationItem(
            title: 'Nazal Kanül',
            description: '1–6 L/dk (FiO₂ ~%24–44)',
          ),
          PostoperativeCareInhalationItem(
            title: 'Basit Maske',
            description: '6–10 L/dk (FiO₂ ~%35–60)',
          ),
          PostoperativeCareInhalationItem(
            title: 'Venturi Maske',
            description: 'Sabit FiO₂ sağlar (%24–50)',
          ),
          PostoperativeCareInhalationItem(
            title: 'Rezervuarlı Maske',
            description: '%60–90 FiO₂',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Nemlendirme ve İnhalasyon Tedavileri',
        items: [
          PostoperativeCareInhalationItem(
            title: 'Mekanik Ventilasyonda Nemlendirme',
            description: 'Mutlak nem ≥30 mg/L, sıcaklık ~37 °C olmalı',
          ),
          PostoperativeCareInhalationItem(
            title: 'Isı-Nem Değiştiriciler (HME)',
            description: 'Pratik, kısa süreli kullanım',
          ),
          PostoperativeCareInhalationItem(
            title: 'Aktif Nemlendiriciler',
            description: 'Yoğun bakımda tercih edilir, daha etkin',
          ),
          PostoperativeCareInhalationItem(
            title: 'İnhalasyon İlaçları',
            description: 'Bronkodilatörler (β2-agonist, antikolinerjik), mukolitikler, antibiyotikler',
          ),
          PostoperativeCareInhalationItem(
            title: 'Nebülizasyon',
            description: 'Ventilatör devresine entegre edilebilir',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Mekanik Ventilasyon Endikasyonları',
        items: [
          PostoperativeCareInhalationItem(
            title: 'Hipoksemi',
            description: 'PaO₂ <60 mmHg, FiO₂ >0.5',
          ),
          PostoperativeCareInhalationItem(
            title: 'Hiperkapni',
            description: 'PaCO₂ >50 mmHg, pH <7.25',
          ),
          PostoperativeCareInhalationItem(
            title: 'Solunum Kas Yorgunluğu',
            description: 'Apne',
          ),
          PostoperativeCareInhalationItem(
            title: 'Hemodinamik İnstabilite',
            description: 'Bilinç değişikliği, aspirasyon riski',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Ventilasyon Modları',
        items: [
          PostoperativeCareInhalationItem(
            title: 'Kontrollü Modlar (CMV)',
            description: 'Hasta katkısı yok',
          ),
          PostoperativeCareInhalationItem(
            title: 'Assist-Control (AC)',
            description: 'Hasta her nefeste ventilatör desteği alır',
          ),
          PostoperativeCareInhalationItem(
            title: 'Senkronize Aralıklı Zorunlu Ventilasyon (SIMV)',
            description: 'Hem spontan hem mekanik solunum',
          ),
          PostoperativeCareInhalationItem(
            title: 'Basınç Destekli Ventilasyon (PSV)',
            description: 'Spontan solunuma destek',
          ),
          PostoperativeCareInhalationItem(
            title: 'PEEP (Pozitif Ekspiratuar Basınç)',
            description: 'Atelektazi önleme, oksijenlenmeyi artırma',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Mekanik Ventilasyon Parametreleri',
        items: [
          PostoperativeCareInhalationItem(
            title: 'Tidal Volüm',
            description: '6–8 mL/kg (ARDS\'de 6 mL/kg önerilir)',
          ),
          PostoperativeCareInhalationItem(
            title: 'Solunum Sayısı',
            description: '10–14/dk (PaCO₂\'ye göre ayarlanır)',
          ),
          PostoperativeCareInhalationItem(
            title: 'FiO₂',
            description: 'En düşük efektif düzey hedeflenir',
          ),
          PostoperativeCareInhalationItem(
            title: 'PEEP',
            description: '5 cmH₂O (başlangıç), ARDS\'de 10–20 cmH₂O',
          ),
          PostoperativeCareInhalationItem(
            title: 'Plateau Basıncı',
            description: '<30 cmH₂O tutulmalı',
          ),
          PostoperativeCareInhalationItem(
            title: 'PIP (Peak Inspiratuar Basınç)',
            description: '<35–40 cmH₂O olmalı',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Noninvaziv Mekanik Ventilasyon (NIV)',
        items: [
          PostoperativeCareInhalationItem(
            title: 'CPAP',
            description: 'Sürekli pozitif basınç, oksijenlenmeyi artırır',
          ),
          PostoperativeCareInhalationItem(
            title: 'BiPAP',
            description: 'İnspiryum ve ekspiryumda farklı basınç sağlar',
          ),
          PostoperativeCareInhalationItem(
            title: 'NIV Endikasyonları',
            description: 'KOAH alevlenmesi, kardiyojenik akciğer ödemi, hafif-orta ARDS',
          ),
          PostoperativeCareInhalationItem(
            title: 'NIV Kontrendikasyonları',
            description: 'Bilinç bozukluğu, aspirasyon riski, hemodinamik instabilite',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Komplikasyonlar',
        items: [
          PostoperativeCareInhalationItem(
            title: 'Barotravma',
            description: 'Pnömotoraks, pnömomediastinum',
          ),
          PostoperativeCareInhalationItem(
            title: 'Volütravma',
            description: 'Aşırı tidal volüm',
          ),
          PostoperativeCareInhalationItem(
            title: 'Oksijen Toksisitesi',
            description: 'FiO₂ >0.6, uzun süre → absorptif atelektazi, serbest radikal hasarı',
          ),
          PostoperativeCareInhalationItem(
            title: 'Hemodinamik Etkiler',
            description: 'Yüksek PEEP → venöz dönüş azalması, hipotansiyon',
          ),
          PostoperativeCareInhalationItem(
            title: 'Ventilatör İlişkili Pnömoni (VAP)',
            description: 'En sık enfeksiyon komplikasyonu',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Weaning (Ventilatörden Ayırma)',
        items: [
          PostoperativeCareInhalationItem(
            title: 'Hazırlık Kriterleri',
            description: 'SpO₂ >%90 (FiO₂ ≤0.4, PEEP ≤5)',
            subtitle: 'Hemodinamik stabilite',
            additionalInfo: 'PaO₂/FiO₂ >150–200',
          ),
          PostoperativeCareInhalationItem(
            title: 'Spontan Solunum Denemesi (SBT)',
            description: '≥30 dk',
          ),
          PostoperativeCareInhalationItem(
            title: 'RSBI (Rapid Shallow Breathing Index)',
            description: '<105 başarılı weaning\'i öngörür',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Postanestezik Dönem İçin Spot Notlar',
        items: [
          PostoperativeCareInhalationItem(
            title: 'PACU\'da Hipoksemi',
            description: 'En sık → oksijen, pozisyon, CPAP',
          ),
          PostoperativeCareInhalationItem(
            title: 'Rezidüel Kas Blokajı ve Opioid',
            description: 'Hipoventilasyon riski',
          ),
          PostoperativeCareInhalationItem(
            title: 'Titreme',
            description: 'O₂ tüketimini artırır, ventilatör desteği gerekebilir',
          ),
          PostoperativeCareInhalationItem(
            title: 'Mekanik Ventilasyonun En Sık Komplikasyonu',
            description: 'Pnömoni',
          ),
          PostoperativeCareInhalationItem(
            title: 'Uzun Süreli FiO₂ >0.6',
            description: 'Toksisite riski',
          ),
        ],
      ),
    ];
  }
}
