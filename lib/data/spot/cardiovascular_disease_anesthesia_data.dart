import 'package:flutter/material.dart';

class CardiovascularDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiovascularDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiovascularDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<CardiovascularDiseaseAnesthesiaItem> items;

  CardiovascularDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiovascularDiseaseAnesthesiaData {
  static List<CardiovascularDiseaseAnesthesiaCategory> getCardiovascularDiseaseAnesthesiaData(BuildContext context) {
    return [
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Hipertansiyon (HT)',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Risk Değerlendirmesi',
            description: 'KB >180/110 → intraop komplikasyon riski (MI, aritmi, hipotansiyon).',
            subtitle: 'Malign HT: >210/120 + papil ödemi + ensefalopati.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Patofizyoloji',
            description: '%85-95 esansiyel; uzun dönemde LVH ve diastolik disfonksiyon.',
            subtitle: 'Vasküler hipertrofi, hiperinsülinemi, intrasellüler Ca ve Na artışı.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Preoperatif Hazırlık',
            description: 'Orta dereceli HT risk net değil; kötü kontrollü HT intraop risk artırır.',
            subtitle: 'ACE inh ve ARB sabah kesilmeli.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'İntraoperatif Hedef',
            description: 'Kan basıncı preop değer ±%20, >180/120 → 140-150/90-80 mmHg.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'İndüksiyon',
            description: 'Hipotansiyon ve hipertansiyon riskine dikkat; opioidler ve lidokain kullanılabilir.',
            subtitle: 'β-blokerler laringoskopi öncesi.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Postoperatif Komplikasyonlar',
            description: 'Kötü kontrollü HT → MI, KKY, hematom, sütür açılması.',
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'İskemik Kalp Hastalığı (İKH)',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Risk Faktörleri',
            description: 'Hipertansiyon, diyabet, sigara, hiperlipidemi, yaş, erkek cinsiyet, aile öyküsü.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Stabil Anjina',
            description: 'Egzersizle tetiklenir; %50-75 tıkanma semptom verir.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Anstabil Anjina',
            description: '≥3 atak/gün, yeni gelişen anjina, %80> darlık → preMI durumu.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Tedavi',
            description: 'β-bloker (HR 50-60/dk), KKB, nitratlar, ACE inh, statin, aspirin.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Preoperatif Hazırlık',
            description: 'β-bloker devam; statin devam.',
            subtitle: 'Öykü: göğüs ağrısı, dispne, düşük egzersiz toleransı.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Monitörizasyon',
            description: 'EKG, ST değişiklikleri, QTc, troponin, akciğer grafisi.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'İntraoperatif Hedefler',
            description: 'Diyastolik KB >50 mmHg; miyokard O₂ arz/talep oranı optimize.',
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Kapak Hastalıkları',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Mitral Darlık (MD)',
            description: 'Orifis alanı <1.5 cm² semptom: egzersizle dispne.',
            subtitle: 'Semptomlı → cerrahi veya perkütan transseptal valvüloplasti.',
            additionalInfo: 'İntraop: Sinüs ritmi korunmalı, taşikardi ve hipotansiyondan kaçın.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Mitral Yetmezlik (MY)',
            description: 'Rejürjütan akım %30-60 → orta semptom, >60 → ciddi.',
            subtitle: 'Tedavi: SVR ve ardyük azaltımı; orta-şiddet semptom → cerrahi.',
            additionalInfo: 'İntraop: Kalp hızı 80-100/dk, anestezi derinliği ve sıvı yönetimi kritik.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Aort Darlığı (AYD)',
            description: 'Kritik alan <0.7 cm², triad: dispne, anjina, senkop.',
            subtitle: 'İntraop: Kalp hızı 60-90/dk, atriyel sistol korunmalı, hipotansiyon fenilefrin ile.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Aort Yetmezliği (AYY)',
            description: 'Akut: pulmoner konjesyon; kronik: LV dilatasyonu ve ekzantirik hipertrofi.',
            subtitle: 'İntraop: Kalp hızı 80-100/dk, bradikardi ve ardyük artışından kaçın.',
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Konjenital Kalp Hastalıkları (KKH)',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Genel Bilgiler',
            description: 'Sıklık: <1% doğumda.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Siyanotik Hastalar',
            description: 'Hiperviskozite semptomları (hct >65%).',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Sol-Sağ Şant',
            description: 'Qp/Qs >1 → sol-sağ.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Sağ-Sol Şant',
            description: 'Şant yönü ve büyüklüğü SVR/PVR\'ye bağlı.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Fallot Tetralojisi',
            description: 'SVR korunmalı; ketamin tercih edilir.',
            subtitle: 'Hipersiyanotik öbet → fenilefrin 5 mcg/kg.',
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Kalp Nakli Yapılmış Hastalar',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Transplante Kalp Özellikleri',
            description: 'Denervedir → istirahat HR 100-120/dk.',
            subtitle: 'Katekolaminlere yanıt normal/artmış.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'İntraoperatif Dikkat',
            description: 'Önyük normal/yüksek; indirekt ajanlar az etkili.',
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Aritmiler ve ICD/Pacemaker',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: 'SVT',
            description: 'Hemodinamik instabil SVT → senkronize kardiyoversiyon.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'WPW',
            description: 'Prokainamid/amiodaron; digoksin ve non-dihidropiridin KKB kontrendike.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'AF',
            description: 'β-bloker veya amiodaron; >48 saat → 3 hafta pre-op, 4 hafta post-op antikoagülasyon.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'VT',
            description: 'Amiodaron/prokainamid; iskemik → β-bloker.',
            subtitle: 'Hemodinami bozuksa kardiyoversiyon.',
          ),
          CardiovascularDiseaseAnesthesiaItem(
            title: 'TdP',
            description: 'Mg sülfat ve izoproterenol.',
          ),
        ],
      ),
      CardiovascularDiseaseAnesthesiaCategory(
        categoryName: 'Endokardit Profilaksisi',
        items: [
          CardiovascularDiseaseAnesthesiaItem(
            title: 'Endikasyonlar',
            description: 'Prostetik kalp kapağı/materyali, endokardit öyküsü.',
            subtitle: 'Onarım sonrası rezidüel defekt, konjenital kalp hastalığı, transplant.',
          ),
        ],
      ),
    ];
  }
}
