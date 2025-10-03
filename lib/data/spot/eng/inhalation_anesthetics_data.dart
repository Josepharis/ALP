import 'package:flutter/material.dart';

class InhalationAnestheticsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  InhalationAnestheticsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class InhalationAnestheticsCategory {
  final String categoryName;
  final List<InhalationAnestheticsItem> items;

  InhalationAnestheticsCategory({
    required this.categoryName,
    required this.items,
  });
}

class InhalationAnestheticsData {
  static List<InhalationAnestheticsCategory> getInhalationAnestheticsData(BuildContext context) {
    return [
      InhalationAnestheticsCategory(
        categoryName: 'Pharmacokinetics',
        items: [
          InhalationAnestheticsItem(
            title: 'Fi (Inspired Concentration)',
            description: 'High Fi, small respiratory system, low circuit absorption → rapid induction/recovery',
          ),
          InhalationAnestheticsItem(
            title: 'FA (Alveolar Concentration)',
            description: 'Increased uptake → slower induction',
            subtitle: 'Higher blood/gas partition coefficient → increased solubility → slower induction',
          ),
          InhalationAnestheticsItem(
            title: 'Tissue Uptake Order',
            description: 'Vessel-rich > muscle > fat > vessel-poor',
          ),
          InhalationAnestheticsItem(
            title: 'Ventilation Effect',
            description: 'Accelerates FA/Fi increase, especially for highly soluble agents',
          ),
          InhalationAnestheticsItem(
            title: 'Concentration Effect',
            description: 'Higher Fi → more gas remains in alveoli',
          ),
          InhalationAnestheticsItem(
            title: 'Second Gas Effect',
            description: 'N₂O increases uptake of other agents',
          ),
          InhalationAnestheticsItem(
            title: 'Arterial Concentration (Fa)',
            description: 'V/Q mismatch → slower induction',
          ),
          InhalationAnestheticsItem(
            title: 'Elimination',
            description: 'CYP2E1 metabolism; factors accelerating induction also accelerate recovery',
          ),
          InhalationAnestheticsItem(
            title: 'N₂O Diffusion Hypoxia',
            description: 'Administer 100% O₂ for >5 minutes after discontinuation',
          ),
          InhalationAnestheticsItem(
            title: 'Recovery',
            description: 'Generally faster than induction, duration-dependent',
          ),
        ],
      ),
      InhalationAnestheticsCategory(
        categoryName: 'Pharmacodynamics',
        items: [
          InhalationAnestheticsItem(
            title: 'Mechanisms of Action',
            description: 'N₂O, Xenon → NMDA antagonists',
            subtitle: 'Affect GABA and nicotinic Ach receptors',
            additionalInfo: 'Cortex → amnesia; Spinal cord → analgesia',
          ),
          InhalationAnestheticsItem(
            title: 'Meyer–Overton Rule',
            description: 'Higher lipid solubility → stronger effect (now outdated)',
          ),
          InhalationAnestheticsItem(
            title: 'Critical Volume Hypothesis',
            description: 'Membrane expansion causes effect',
          ),
          InhalationAnestheticsItem(
            title: 'Neurotoxicity',
            description: 'Isoflurane → ↑ neuronal apoptosis (experimental)',
          ),
          InhalationAnestheticsItem(
            title: 'Neuroprotection/Cardiac Preconditioning',
            description: 'NMDA antagonists may be neuroprotective',
          ),
          InhalationAnestheticsItem(
            title: 'MAC (Minimum Alveolar Concentration)',
            description: 'Alveolar concentration at 1 atm preventing movement in 50% of patients to surgical stimulus',
            subtitle: 'MAC = ED₅₀',
            additionalInfo: '1.3 × MAC = ED₉₅\nDecreases ~6% per decade',
          ),
        ],
      ),
      InhalationAnestheticsCategory(
        categoryName: 'Agent-Specific Notes',
        items: [
          InhalationAnestheticsItem(
            title: 'Nitrous Oxide (N₂O) - Properties',
            description: 'Not explosive, supports combustion',
          ),
          InhalationAnestheticsItem(
            title: 'N₂O - CVS Effects',
            description: 'Catecholamine stimulation',
          ),
          InhalationAnestheticsItem(
            title: 'N₂O - Respiratory Effects',
            description: '↑ RR, ↓ TV, suppresses hypoxic drive',
          ),
          InhalationAnestheticsItem(
            title: 'N₂O - Brain Effects',
            description: '↑ ICP, ↑ CMRO₂',
          ),
          InhalationAnestheticsItem(
            title: 'N₂O - GI Effects',
            description: '↑ POBK (postoperative bowel complications)',
          ),
          InhalationAnestheticsItem(
            title: 'N₂O - Toxicity',
            description: 'B₁₂ inhibition → impaired DNA and myelin synthesis',
          ),
          InhalationAnestheticsItem(
            title: 'N₂O - Contraindications',
            description: 'Air embolism, bowel distension, pneumothorax, tympanic graft',
          ),
          InhalationAnestheticsItem(
            title: 'N₂O - MAC Reduction',
            description: '65% N₂O → reduces MAC of other agents by ~50%',
          ),
          InhalationAnestheticsItem(
            title: 'Halothane - Properties',
            description: 'Halogenated alkane; stored in amber bottles',
          ),
          InhalationAnestheticsItem(
            title: 'Halothane - CVS Effects',
            description: '↓ MAP, ↓ CO, suppressed baroreflex',
            subtitle: 'Epinephrine safe ≤1.5 mcg/kg',
          ),
          InhalationAnestheticsItem(
            title: 'Halothane - Respiratory Effects',
            description: '↓ ventilation, bronchodilator, impairs mucociliary clearance',
          ),
          InhalationAnestheticsItem(
            title: 'Halothane - Brain Effects',
            description: '↑ CBF, ↓ CMRO₂',
          ),
          InhalationAnestheticsItem(
            title: 'Halothane - Other Effects',
            description: 'Potentiates NMB, triggers MH',
          ),
          InhalationAnestheticsItem(
            title: 'Halothane - Hepatotoxicity',
            description: 'Halothane hepatitis (1/35,000; risk: middle age, female, obesity)',
          ),
          InhalationAnestheticsItem(
            title: 'Halothane - Contraindications',
            description: 'MH history, hepatitis history',
          ),
          InhalationAnestheticsItem(
            title: 'Halothane - Drug Interaction',
            description: 'Aminophylline → severe arrhythmias',
          ),
          InhalationAnestheticsItem(
            title: 'Isoflurane - Properties',
            description: 'Ether-like',
          ),
          InhalationAnestheticsItem(
            title: 'Isoflurane - CVS Effects',
            description: 'Minimal depression; may cause coronary steal phenomenon',
          ),
          InhalationAnestheticsItem(
            title: 'Isoflurane - Brain Effects',
            description: '↑ CBF, ↓ CMRO₂, burst suppression on EEG',
          ),
          InhalationAnestheticsItem(
            title: 'Isoflurane - Other Effects',
            description: 'Potentiates NMB',
            subtitle: 'Low metabolism (TFA metabolite)',
          ),
          InhalationAnestheticsItem(
            title: 'Isoflurane - Contraindication',
            description: 'MH history',
          ),
          InhalationAnestheticsItem(
            title: 'Desflurane - Properties',
            description: 'Isoflurane derivative (Cl → F)',
            subtitle: 'Very low solubility → rapid emergence',
          ),
          InhalationAnestheticsItem(
            title: 'Desflurane - Airway Effects',
            description: 'Airway irritant → caution in induction',
            subtitle: 'Rapid concentration increase → catecholamine surge',
          ),
          InhalationAnestheticsItem(
            title: 'Desflurane - CO Production',
            description: 'CO production with dry absorbents (esp. BaOH₂, NaOH, KOH)',
          ),
          InhalationAnestheticsItem(
            title: 'Desflurane - Contraindication',
            description: 'MH history',
            subtitle: 'May cause postoperative delirium in pediatrics',
          ),
          InhalationAnestheticsItem(
            title: 'Sevoflurane - Properties',
            description: 'Pleasant odor, suitable for pediatrics',
          ),
          InhalationAnestheticsItem(
            title: 'Sevoflurane - CVS Effects',
            description: 'Prolongs QT, does not preserve CO',
          ),
          InhalationAnestheticsItem(
            title: 'Sevoflurane - Brain Effects',
            description: '↑ CBF, autoregulation impaired at 1.5 MAC',
          ),
          InhalationAnestheticsItem(
            title: 'Sevoflurane - Nephrotoxicity',
            description: 'Nephrotoxic metabolite: Compound A (risk if fresh gas flow <2 L/min)',
            subtitle: '↑ Fluoride levels (≥50 mmol/L)',
            additionalInfo: 'May form HF in glass bottles',
          ),
          InhalationAnestheticsItem(
            title: 'Sevoflurane - Contraindication',
            description: 'MH history',
          ),
          InhalationAnestheticsItem(
            title: 'Xenon - Properties',
            description: 'MAC 0.71 → very potent',
            subtitle: 'Blood/gas coefficient 0.115 → fastest induction',
            additionalInfo: 'NMDA antagonist\nVery expensive',
          ),
        ],
      ),
      InhalationAnestheticsCategory(
        categoryName: 'Key Exam Spots',
        items: [
          InhalationAnestheticsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'MAC = ED₅₀, 1.3 × MAC = ED₉₅',
            subtitle: 'N₂O: 65% reduces MAC by ~50%',
            additionalInfo: 'Halothane hepatitis: 1/35,000\nSevoflurane: Compound A risk if flow <2 L/min\nDesflurane: CO production with dry absorbents',
          ),
        ],
      ),
    ];
  }
}
