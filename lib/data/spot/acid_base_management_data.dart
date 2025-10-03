import 'package:flutter/material.dart';

class AcidBaseManagementItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AcidBaseManagementItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AcidBaseManagementCategory {
  final String categoryName;
  final List<AcidBaseManagementItem> items;

  AcidBaseManagementCategory({
    required this.categoryName,
    required this.items,
  });
}

class AcidBaseManagementData {
  static List<AcidBaseManagementCategory> getAcidBaseManagementData(BuildContext context) {
    return [
      AcidBaseManagementCategory(
        categoryName: 'Tanımlar',
        items: [
          AcidBaseManagementItem(
            title: 'Brönsted–Lowry',
            description: 'Asit = H⁺ verici, Baz = H⁺ alıcı',
          ),
          AcidBaseManagementItem(
            title: 'Arhenius',
            description: 'Asit = H⁺ açığa çıkarır, Baz = OH⁻ açığa çıkarır',
          ),
          AcidBaseManagementItem(
            title: 'Güçlü İyon Farkı (SID)',
            description: '(Na⁺+K⁺+Ca²⁺+Mg²⁺) – (Cl⁻+Laktat⁻)',
          ),
          AcidBaseManagementItem(
            title: 'Fizyolojik Solüsyonlarda [H⁺]',
            description: '3 değişken ile belirlenir: SID, PCO₂, ATOT (zayıf asitlerin toplamı)',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Tampon Sistemleri',
        items: [
          AcidBaseManagementItem(
            title: 'Bikarbonat',
            description: 'H₂O + CO₂ ↔ H₂CO₃ ↔ H⁺ + HCO₃⁻',
          ),
          AcidBaseManagementItem(
            title: 'Hb',
            description: 'Histidin zengin, pKa=6.8 → en güçlü nonkarbonik tampon',
          ),
          AcidBaseManagementItem(
            title: 'İntrasellüler Protein & Fosfat',
            description: 'Geç etkili',
          ),
          AcidBaseManagementItem(
            title: 'Amonyak',
            description: 'Proksimal tübül glutamin deaminasyonu → kronik asidozda en önemli',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Solunumsal Kompansasyon',
        items: [
          AcidBaseManagementItem(
            title: 'PaCO₂ Etkisi',
            description: 'PaCO₂ ↑ 1 mmHg → ventilasyon 1–4 L/dk ↑',
          ),
          AcidBaseManagementItem(
            title: 'Metabolik Asidoz',
            description: 'HCO₃⁻ ↓ 1 mEq/L → PaCO₂ 1–1.5 mmHg ↓',
          ),
          AcidBaseManagementItem(
            title: 'Metabolik Alkaloz',
            description: 'HCO₃⁻ ↑ 1 mEq/L → PaCO₂ 0.25–1 mmHg ↑',
            subtitle: '(PaCO₂ genelde 55\'i geçmez)',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Renal Kompansasyon',
        items: [
          AcidBaseManagementItem(
            title: 'Asidoz',
            description: 'HCO₃⁻ reabsorbsiyonu ↑ (proksimal %80, distal %20)',
            subtitle: 'Titre edilebilir asit (fosfat) ↑',
            additionalInfo: 'Amonyak oluşumu ↑ (en önemlisi)',
          ),
          AcidBaseManagementItem(
            title: 'Alkaloz',
            description: 'HCO₃⁻ atılımı ↑',
          ),
          AcidBaseManagementItem(
            title: 'Baz Açığı',
            description: '(+) → alkaloz, (–) → asidoz',
            subtitle: 'pH=7.40, PaCO₂=40 mmHg varsayılarak hesaplanır',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Asidoz Fizyolojik Etkileri',
        items: [
          AcidBaseManagementItem(
            title: 'Sempatik Aktivite',
            description: 'pH ↓ → sempatik aktivite baskılanır (<7.20\'da belirgin)',
          ),
          AcidBaseManagementItem(
            title: 'Oksijen Eğrisi',
            description: 'Sola kayar → doku hipoksisi riski',
          ),
          AcidBaseManagementItem(
            title: 'Katekolamin Yanıtı',
            description: '↓',
          ),
          AcidBaseManagementItem(
            title: 'Potasyum',
            description: 'pH 0.1 ↓ → K⁺ 0.6 mEq/L ↑',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Solunumsal Asidoz',
        items: [
          AcidBaseManagementItem(
            title: 'Akut',
            description: 'PaCO₂ ↑ 10 mmHg → HCO₃⁻ 1 mEq/L ↑',
          ),
          AcidBaseManagementItem(
            title: 'Kronik',
            description: 'PaCO₂ ↑ 10 mmHg → HCO₃⁻ 4 mEq/L ↑',
          ),
          AcidBaseManagementItem(
            title: 'Tedavi',
            description: 'CO₂ üretimi azalt, ventilasyonu ↑',
            subtitle: 'İv HCO₃⁻ sadece pH <7.10, HCO₃⁻ <15 ise',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Metabolik Asidoz',
        items: [
          AcidBaseManagementItem(
            title: 'Anyon Açığı',
            description: 'Na⁺ – (Cl⁻ + HCO₃⁻)',
            subtitle: 'Normal: 7–14 mEq/L',
            additionalInfo: '30 → yüksek anyon açıklı asidoz',
          ),
          AcidBaseManagementItem(
            title: 'Yüksek Anyon Açığı Nedenleri',
            description: 'Endojen asit birikimi (KBY <20 mL/dk GFR)',
            subtitle: 'Laktik asidoz (0.3–1.3 normal), Ketoasidoz',
            additionalInfo: 'Toksinler: salisilat (mikst bozukluk), metanol, etilen glikol',
          ),
          AcidBaseManagementItem(
            title: 'Normal Anyon Açığı Nedenleri',
            description: 'GİS HCO₃⁻ kaybı (diyare)',
            subtitle: 'RTA tip I–II–IV',
            additionalInfo: 'Dilüsyonel (NS yüklemesi)',
          ),
          AcidBaseManagementItem(
            title: 'Tedavi',
            description: 'Önce solunum düzelt',
            subtitle: 'pH <7.20 → NaHCO₃ (1 mEq/kg)',
            additionalInfo: 'Verilecek doz ≈ Baz açığı x %30 x kilo (yarısı başlanır → AKG kontrol)',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Asidoz Anestezik Yön',
        items: [
          AcidBaseManagementItem(
            title: 'SSS',
            description: 'Depresyonu, havayolu refleks ↓',
          ),
          AcidBaseManagementItem(
            title: 'Opioidler',
            description: 'Noniyonize formu ↑',
          ),
          AcidBaseManagementItem(
            title: 'Katekolamin Cevabı',
            description: '↓',
          ),
          AcidBaseManagementItem(
            title: 'Süksinilkolin',
            description: 'Asidoz + hiperkalemi → Sch kullanılmaz',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Alkaloz Fizyolojik Etkileri',
        items: [
          AcidBaseManagementItem(
            title: 'Oksijen Eğrisi',
            description: 'Sola kayar → doku hipoksisi',
          ),
          AcidBaseManagementItem(
            title: 'Hipokalemi',
            description: 'İyonize Ca²⁺ ↓',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Solunumsal Alkaloz',
        items: [
          AcidBaseManagementItem(
            title: 'Kompansasyon',
            description: 'PaCO₂ ↓ 10 mmHg → HCO₃⁻ 2–5 mEq/L ↓',
          ),
          AcidBaseManagementItem(
            title: 'Tedavi',
            description: 'Nedenini düzelt',
            subtitle: 'pH >7.60 → HCl, arginin HCl, NH₄Cl verilebilir',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Metabolik Alkaloz',
        items: [
          AcidBaseManagementItem(
            title: 'Klorür Duyarlı',
            description: '<10 mEq/L: Kusma, gastrik drenaj, diüretik',
            subtitle: 'Tedavi: NaCl + KCl',
          ),
          AcidBaseManagementItem(
            title: 'Klorür Dirençli',
            description: '>20 mEq/L: Mineralokortikoid ↑',
            subtitle: 'Tedavi: spironolakton',
          ),
          AcidBaseManagementItem(
            title: 'Diğer Nedenler',
            description: 'Kan ürünleri (sitrat, laktat → HCO₃⁻), Na-penisilin, refeeding',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Alkaloz Anestezik Yön',
        items: [
          AcidBaseManagementItem(
            title: 'Serebral Kan Akımı',
            description: '↓',
          ),
          AcidBaseManagementItem(
            title: 'Aritmi Riski',
            description: 'Hipokalemi + alkaloz → aritmi riski',
          ),
          AcidBaseManagementItem(
            title: 'Nondepolarizan Blok',
            description: 'Alkalemi → nondepolarizan blok ↑',
          ),
          AcidBaseManagementItem(
            title: 'Opioid Depresyonu',
            description: 'Solunumsal alkaloz → opioid depresyonu ↑',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Kan Gazı Ölçümü',
        items: [
          AcidBaseManagementItem(
            title: 'Venöz PaO₂',
            description: '≈ 40 mmHg (doku ekstraksiyonunu yansıtır)',
          ),
          AcidBaseManagementItem(
            title: 'Venöz PaCO₂',
            description: 'Arteriyelden 4–6 mmHg ↑',
          ),
          AcidBaseManagementItem(
            title: 'Venöz pH',
            description: 'Arteriyelden 0.05 ↑',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Kritik Ezberler',
        items: [
          AcidBaseManagementItem(
            title: 'Asidoz pH Etkisi',
            description: 'pH ↓ → K ↑ (0.6 mEq/L/0.1 pH)',
          ),
          AcidBaseManagementItem(
            title: 'Akut Resp. Asidoz',
            description: 'PaCO₂ ↑ 10 → HCO₃⁻ +1',
          ),
          AcidBaseManagementItem(
            title: 'Kronik Resp. Asidoz',
            description: 'PaCO₂ ↑ 10 → HCO₃⁻ +4',
          ),
          AcidBaseManagementItem(
            title: 'Metabolik Asidoz Kompanzasyonu',
            description: 'HCO₃⁻ ↓ 1 → PaCO₂ –1.2',
          ),
          AcidBaseManagementItem(
            title: 'Metabolik Alkaloz Kompanzasyonu',
            description: 'HCO₃⁻ ↑ 1 → PaCO₂ +0.7',
          ),
          AcidBaseManagementItem(
            title: 'MAK Etkileri',
            description: 'Hiponatremi MAK ↓, hipernatremi MAK ↑',
          ),
          AcidBaseManagementItem(
            title: 'Süksinilkolin Kontrendikasyonu',
            description: 'Hiperkalemik + asidoz hastalarda kontrendike',
          ),
        ],
      ),
    ];
  }
}
