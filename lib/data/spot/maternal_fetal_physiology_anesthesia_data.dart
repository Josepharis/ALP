import 'package:flutter/material.dart';

class MaternalFetalPhysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  MaternalFetalPhysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class MaternalFetalPhysiologyAnesthesiaCategory {
  final String categoryName;
  final List<MaternalFetalPhysiologyAnesthesiaItem> items;

  MaternalFetalPhysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class MaternalFetalPhysiologyAnesthesiaData {
  static List<MaternalFetalPhysiologyAnesthesiaCategory> getMaternalFetalPhysiologyAnesthesiaData(BuildContext context) {
    return [
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'SSS Değişiklikleri',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'MAK',
            description: '↓ %40 (progesteron ↑)',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Rejyonal Anestezi',
            description: 'LA ihtiyacı ↓ %30',
            subtitle: 'Epidural ven dolgunluğu → blok yayılımı ↑',
            additionalInfo: 'MLAK = %50 analjezi sağlayan LA dozu',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Solunum Değişiklikleri',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'O₂ Tüketimi ve Ventilasyon',
            description: '↑ (termde %50)',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'PaCO₂',
            description: '28–32 mmHg (kompanse respiratuvar alkaloz)',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'FRK',
            description: '↓ %20 (48 saatte normale döner)',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Apne',
            description: 'Hızlı desatürasyon',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Mukozal Ödem',
            description: 'Küçük ETT önerilir',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Kardiyovasküler Değişiklikler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Kan Hacmi',
            description: '↑ 1000–1500 mL (Hb ~11 g/dL, dilüsyonel anemi)',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Kalp Debisi',
            description: '↑ %40 (HR ↑ %20, SV ↑ %30)',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Supin Pozisyon',
            description: 'Vena kava basısı → kalp debisi ↓',
            subtitle: 'Sol yana yatır → uterin kan akımı korunur',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Venöz Staz',
            description: 'Gebelik → venöz staz, tromboz eğilimi ↑',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Renal & GİS Değişiklikleri',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Kreatinin',
            description: '0.5–0.6 mg/dL (düşer)',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Proteinüri & Glukozüri',
            description: 'Hafif proteinüri & glukozüri normal',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Gastrik Boşalma',
            description: 'Gecikir, reflü ↑',
            subtitle: 'LES basıncını ↓: opioidler, antikolinerjikler',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Hepatik Değişiklikler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'ALP',
            description: '↑ (plasental kaynaklı)',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Albümin',
            description: '↓',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Psödokolinesteraz',
            description: '↓ %25–30 (6. haftada normale döner)',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Safra Kesesi',
            description: 'Progesteron → safra kesesi boşalması ↓',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Hematolojik Değişiklikler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Anemi',
            description: 'Dilüsyonel anemi',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Lökositoz',
            description: '21.000\'e kadar',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Trombositler',
            description: '%10 ↓',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Koagülasyon',
            description: 'Fibrinojen ve koag faktörleri (VII, VIII, IX, X, XII) ↑ → hiperkoagülabilite',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Metabolik Değişiklikler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Diyabetojenik Durum',
            description: 'Yağ asitleri, keton ↑, KH toleransı ↓',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Tiroid',
            description: 'HCG & östrojen → tiroid büyür, T3–T4 ↑ (serbest düzey normal)',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Kalsiyum',
            description: 'Total Ca ↓ (iyonize normal)',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Kas-İskelet Değişiklikleri',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Ligamentöz Gevşeklik',
            description: 'Sırt ağrısı ↑',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Uteroplasental Dolaşım',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Uterus Akımı',
            description: 'Normal: 50 mL/dk → termde 600–700 mL/dk',
            subtitle: 'Otoregülasyon yok, maksimum dilate',
            additionalInfo: 'α-adrenerjik duyarlılık yüksek',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Uterin Akımı Azaltan Faktörler',
            description: 'Hipotansiyon, VC, kontraksiyon',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Hipotansiyon Tedavisi',
            description: 'Efedrin, fenilefrin, metaraminol',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Plasenta Değişimi',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Difüzyon',
            description: 'Gazlar ve küçük iyonlar',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Kolaylaştırılmış Difüzyon',
            description: 'Glukoz',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Aktif Transport',
            description: 'Aminoasit, vitamin, Ca/Fe',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Veziküler Transport',
            description: 'Ig',
            subtitle: 'Membran defekti → Rh uyumsuzluğu riski',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Gaz Değişimi',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Fetal PaO₂',
            description: '30–35 mmHg',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Fetal Hb',
            description: '15 g/dL',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Fetal O₂ Tüketimi',
            description: '~7 mL/kg/dk',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Anoksiye Dayanıklılık',
            description: 'Fetüs anoksiye 10 dk dayanabilir',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Ajan Geçişi',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Kolay Geçenler',
            description: 'IV & inhalasyon ajanları',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Geçmeyenler',
            description: 'Kas gevşeticiler',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'LA',
            description: 'Zayıf bazlar → plasentayı geçer',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Uterin Kan Akımına Etkiler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Propofol/Barbitüratlar',
            description: '↓ hafif',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Ketamin',
            description: '≤1.5 mg/kg: değişmez',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Volatil Ajanlar',
            description: '↓, <1 MAK\'da minimal',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'N₂O',
            description: 'Tek başına: uterin VC',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Lidokain',
            description: 'Uterin VC',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Epidural',
            description: 'Preeklampsi: uterin akım ↑',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Normal Doğum & Anestezi',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Ağrı Etkileri',
            description: 'DK ventilasyonu %300 ↑, O₂ tüketimi %60 ↑',
            subtitle: 'PaCO₂ 20 mmHg\'a kadar düşer',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Kontraksiyon',
            description: '300–500 mL kan dolaşıma katılır',
            subtitle: 'Postpartum: kalp debisi %80 ↑',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Doğumda Kullanılan Ajanlar',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Volatil Ajanlar',
            description: 'Uterusu baskılar, >0.75 MAK → atoni riski',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Opioid',
            description: 'Doğum süresini uzatır',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Epidural',
            description: 'Düşük konsantrasyonla güvenli',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Vazopressörler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'α₁',
            description: 'Kontraksiyon',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'β₂',
            description: 'Relaksasyon',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Fenilefrin',
            description: '<40 mcg → uterin akım ↑',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Efedrin',
            description: 'Uterin kontraksiyona az etkili',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Uterotonikler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Oksitosin',
            description: '0.5–8 mU/dk',
            subtitle: 'Yan etkiler → hipotansiyon, taşikardi, hiperstimülasyon, su retansiyonu',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Metilergonovin',
            description: '0.2 mg IM',
            subtitle: 'Güçlü kontraksiyon + HT',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Karboprost (PGF₂α)',
            description: '0.25 mg IM (astımda kontrendike)',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Tokolitikler',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'MgSO₄',
            description: '4 g yük + 2 g/sa infüzyon (tokoliz, eklampsi)',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'β₂ Agonistler',
            description: 'Ritodrin, terbutalin: erken doğum inhibisyonu',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Fetal Dolaşım',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Oksijenlenmiş Kan',
            description: 'Plasenta → VCI → sağ atriyum → foramen ovale → sol atriyum → üst vücut',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Desatüre Kan',
            description: 'SVC → sağ ventrikül → duktus arteriozus → inen aorta + plasenta',
          ),
        ],
      ),
      MaternalFetalPhysiologyAnesthesiaCategory(
        categoryName: 'Doğumda Değişim',
        items: [
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Surfaktan',
            description: 'hf → yeterli surfaktan',
          ),
          MaternalFetalPhysiologyAnesthesiaItem(
            title: 'Doğum Sonrası',
            description: 'Akciğer açılır, foramen ovale fonksiyonel kapanır',
            subtitle: 'Duktus arteriozus → PaO₂ ↑ ile kapanır (2–3 hf)',
            additionalInfo: 'Açık kalma → kalıcı pulmoner HT',
          ),
        ],
      ),
    ];
  }
}
