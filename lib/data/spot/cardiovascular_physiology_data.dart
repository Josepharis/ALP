import 'package:flutter/material.dart';

class CardiovascularPhysiologyItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiovascularPhysiologyItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiovascularPhysiologyCategory {
  final String categoryName;
  final List<CardiovascularPhysiologyItem> items;

  CardiovascularPhysiologyCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiovascularPhysiologyData {
  static List<CardiovascularPhysiologyCategory> getCardiovascularPhysiologyData(BuildContext context) {
    return [
      CardiovascularPhysiologyCategory(
        categoryName: 'Kardiyak Aksiyon Potansiyeli',
        items: [
          CardiovascularPhysiologyItem(
            title: 'İstirahat Potansiyeli',
            description: '-80/-90 mV',
          ),
          CardiovascularPhysiologyItem(
            title: 'Faz 0',
            description: 'Na⁺ girişi (hızlı depolarizasyon)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Faz 1',
            description: 'Na⁺ inaktivasyonu',
          ),
          CardiovascularPhysiologyItem(
            title: 'Faz 2',
            description: 'Ca²⁺ girişi (plato)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Faz 3',
            description: 'K⁺ çıkışı (repolarizasyon)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Faz 4',
            description: 'İstirahat potansiyeline dönüş',
            subtitle: 'Refrakter dönem: Faz IV\'e kadar',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Kardiyak İletim Sistemi',
        items: [
          CardiovascularPhysiologyItem(
            title: 'SA Nod',
            description: 'Primer pacemaker, intrinsik hız 90–100/dk',
          ),
          CardiovascularPhysiologyItem(
            title: 'AV Nod',
            description: 'İleti gecikmesi (0.11 s), hız 40–60/dk',
          ),
          CardiovascularPhysiologyItem(
            title: 'His-Purkinje',
            description: 'En hızlı ileti → ventriküller eş zamanlı uyarılır (0.03 s)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Anesteziklerin Etkileri',
            description: 'Potent inhalasyon ajanları: SA nod baskılar, AV nod orta derece, Purkinje lifleri karmaşık',
            subtitle: 'Opioidler: AP süresini uzatır',
            additionalInfo: 'LA\'ler: yüksek dozda Na⁺ kanallarını bloke eder',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Kalbin İnnervasyonu',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Parasempatik (M2)',
            description: 'Negatif kronotropi, dromotropi, inotropi',
          ),
          CardiovascularPhysiologyItem(
            title: 'Sempatik (β1)',
            description: 'Pozitif kronotropi, dromotropi, inotropi',
          ),
          CardiovascularPhysiologyItem(
            title: 'İnnervasyon Dağılımı',
            description: 'Sağ vagus/sempatik → SA nod; Sol vagus/sempatik → AV nod',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Kalp Siklusu',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Atriyum Kontraksiyonu',
            description: 'Ventrikül dolumuna %20–30 katkı',
          ),
          CardiovascularPhysiologyItem(
            title: 'CVP Dalgaları',
            description: 'a dalgası: atriyum sistolü',
            subtitle: 'c dalgası: ventrikül sistolü',
            additionalInfo: 'v dalgası: atriyum dolumu',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Ventrikül Performansı',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Temel Formüller',
            description: 'CO = SV × HR',
            subtitle: 'CI = CO / VYA (2.5–4.2 L/dk/m²)',
            additionalInfo: 'EF = (EDV-ESV)/EDV → normal %67±8\nMiks venöz sat.: doku perfüzyonu göstergesi',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Önyük',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Önyük Göstergeleri',
            description: 'EDV = önyük göstergesi',
          ),
          CardiovascularPhysiologyItem(
            title: 'Frank-Starling Yasası',
            description: 'Hacim ↑ → CO ↑',
            subtitle: 'Aşırı hacim → CO değişmez/azalır',
          ),
          CardiovascularPhysiologyItem(
            title: 'Kalp Hızı Etkisi',
            description: '>120/dk hız dolumu azaltır',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Ardyük',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Duvar Gerilimi',
            description: 'Duvar gerilimi = (P×R)/(2×H) (Laplace)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Direnç Değerleri',
            description: 'SVR: 900–1500 dyn·s·cm⁻⁵',
            subtitle: 'PVR: 50–150 dyn·s·cm⁻⁵',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Kontraktilite',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Pozitif Etkiler',
            description: 'En güçlü pozitif etki: sempatik sistem',
          ),
          CardiovascularPhysiologyItem(
            title: 'Negatif Etkiler',
            description: 'Anoksi, asidoz, iskemi, katekolamin tükenmesi',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Sistemik Dolaşım',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Basınç Hesaplamaları',
            description: 'OAB = DB + 1/3 NB',
            subtitle: 'Nabız basıncı: SV ile doğru, arteriyel kompliyans ile ters',
          ),
          CardiovascularPhysiologyItem(
            title: 'Arteriyoller',
            description: 'En büyük basınç düşüşü (SVR belirleyici)',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Basınç Kontrol Mekanizmaları',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Erken Dönem',
            description: 'Barorefleks (karotis > aort)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Orta Dönem',
            description: 'RAA, AVP',
          ),
          CardiovascularPhysiologyItem(
            title: 'Uzun Dönem',
            description: 'Renal Na-su dengesi',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Koroner Dolaşım',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Koroner Arterler',
            description: 'RCA → RA, RV, LV inferior',
            subtitle: 'LCA → LA, septum, LV anterior-lateral',
          ),
          CardiovascularPhysiologyItem(
            title: 'Koroner Perfüzyon',
            description: 'Koroner perfüzyon basıncı = DBP – LVEDP',
            subtitle: 'Koroner kan akımı ≈ 250 mL/dk',
            additionalInfo: 'Sinüs sat. ≈ %30\nO₂ tüketimi: basınç işi %64',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Anesteziklerin Kardiyovasküler Etkileri',
        items: [
          CardiovascularPhysiologyItem(
            title: 'Volatil Ajanlar',
            description: 'Koroner VD, MVO₂ azalması, reperfüzyon koruması (ATP-duyarlı K⁺ kanalı)',
          ),
          CardiovascularPhysiologyItem(
            title: 'Sevofluran',
            description: 'Koroner steal yapmaz',
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Kalp Yetmezliği',
        items: [
          CardiovascularPhysiologyItem(
            title: 'En Sık Sebep',
            description: 'KAH',
          ),
          CardiovascularPhysiologyItem(
            title: 'Diyastolik Disfonksiyon',
            description: 'HT, KAH, HCM',
          ),
          CardiovascularPhysiologyItem(
            title: 'Kompansatuar Mekanizmalar',
            description: 'Önyük ↑, sempatik tonus ↑, ventriküler hipertrofi',
          ),
        ],
      ),
    ];
  }
}
