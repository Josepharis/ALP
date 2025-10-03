import 'package:flutter/material.dart';

class AdrenergicAgonistsAntagonistsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AdrenergicAgonistsAntagonistsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AdrenergicAgonistsAntagonistsCategory {
  final String categoryName;
  final List<AdrenergicAgonistsAntagonistsItem> items;

  AdrenergicAgonistsAntagonistsCategory({
    required this.categoryName,
    required this.items,
  });
}

class AdrenergicAgonistsAntagonistsData {
  static List<AdrenergicAgonistsAntagonistsCategory> getAdrenergicAgonistsAntagonistsData(BuildContext context) {
    return [
      AdrenergicAgonistsAntagonistsCategory(
        categoryName: 'Adrenoseptörler - Fizyoloji',
        items: [
          AdrenergicAgonistsAntagonistsItem(
            title: 'Sempatik Nörotransmitter',
            description: 'Noradrenalin (ter bezi ve bazı damarlar hariç).',
            subtitle: 'Yıkım: MAO, COMT, geri alım, difüzyon.',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Reseptörler (G-protein bağlı)',
            description: 'α1 (Gq): Düz kas kontraksiyonu ↑, PVR ↑, SAB ↑.',
            subtitle: 'α2 (Gi): Presinaptik NT salınımını ↓ (negatif feedback), santral etkide sedasyon + hipotansiyon.',
            additionalInfo: 'β1 (Gs): Kalpte kronotropi, inotropi, dromotropi ↑.\nβ2 (Gs): Düz kas gevşemesi (BD, VD, uterin relaksasyon), glikojenoliz ↑, lipoliz ↑, K hücre içine → hipokalemi, aritmi.\nβ3: Adipoz dokuda lipoliz + termoregülasyon.\nD1: Renal, barsak, kalpte VD.\nD2: Droperidol antiemetik etkisi.',
          ),
        ],
      ),
      AdrenergicAgonistsAntagonistsCategory(
        categoryName: 'Adrenerjik Agonistler',
        items: [
          AdrenergicAgonistsAntagonistsItem(
            title: 'Fenilefrin',
            description: 'α1 agonist',
            subtitle: 'VC, KB ↑; taşifilaksi hızlı.',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'α2 Agonistler',
            description: 'Klonidin, Deksmedetomidin',
            subtitle: 'Sedasyon, analjezi, bradikardi, hipotansiyon.',
            additionalInfo: 'Ani kesilme → rebound HT.',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Epinefrin',
            description: 'β1 → kalp hızı & kontraktilite ↑; β2 → BD; α1 → VC.',
            subtitle: 'Anafilaksi, arrest.',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Efedrin',
            description: 'Direkt + indirekt; uzun etkili; hipotansiyonda tercih.',
            subtitle: 'Uterus kan akımını ↓ yapmaz.',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Norepinefrin',
            description: 'α1 → güçlü VC; β1 → kontraktilite ↑; sistolik & diyastolik ↑.',
            subtitle: 'Ekstravazasyon → nekroz.',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Dopamin',
            description: '0,5–3 → D1 (RBF ↑, diürez ↑).',
            subtitle: '3–10 → β1 (kalp debisi ↑).',
            additionalInfo: '10–20 → α1 (PVR ↑, RBF ↓).',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'İzoproterenol',
            description: 'Saf β agonist; kalp hızı ↑, VD, DKB ↓.',
            subtitle: 'O₂ tüketimi ↑.',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Dobutamin',
            description: 'β1 + β2; KKY/KAH\'da iyi.',
            subtitle: 'CABG sonrası rutin değil.',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Dopeksamin',
            description: 'Dopamine göre renal perfüzyonda üstün.',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Fenoldopam',
            description: 'Selektif D1 agonist; RBF ↑, diürez ↑, HT ↓.',
            subtitle: 'Kontrast nefropatisinde endike.',
          ),
        ],
      ),
      AdrenergicAgonistsAntagonistsCategory(
        categoryName: 'Adrenerjik Antagonistler',
        items: [
          AdrenergicAgonistsAntagonistsItem(
            title: 'α Bloker',
            description: 'Fentolamin: α1–α2 blok.',
            subtitle: 'Hipotansiyon + refleks taşikardi.',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Karma Antagonist',
            description: 'Labetalol: α1 + β1 + β2 blok.',
            subtitle: 'KB ↓, PVR ↓; refleks taşikardi yapmaz.',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'β Blokerler',
            description: 'Esmolol: Selektif β1; EKT, AF\'de yararlı.',
            subtitle: 'Yarı ömrü 9 dk (esterazla yıkılır).',
            additionalInfo: 'Metoprolol: Selektif β1; hepatik eliminasyon.\nPropranolol: Nonselektif; SVT, iskemide faydalı; bronkospazm/KKY\'de kontrendike. Yarı ömrü 100 dk.\nNebivolol: β1 selektif; NO sentezi ↑.\nKarvedilol: KMP\'ye bağlı KY, MI sonrası ventriküler disfonksiyon + HT tedavisinde.',
          ),
        ],
      ),
    ];
  }
}
