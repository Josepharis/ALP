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
        categoryName: 'Adrenoceptors – Physiology',
        items: [
          AdrenergicAgonistsAntagonistsItem(
            title: 'Sympathetic NT',
            description: 'Norepinephrine (except sweat glands and some vessels)',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Metabolism',
            description: 'MAO, COMT, reuptake, diffusion',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Receptors (G-protein coupled)',
            description: 'All adrenoceptors are G-protein coupled',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'α1 (Gq)',
            description: '↑ Smooth muscle contraction, ↑ PVR, ↑ SBP',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'α2 (Gi)',
            description: '↓ Presynaptic NT release (negative feedback)',
            subtitle: 'Central effect → sedation + hypotension',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'β1 (Gs)',
            description: '↑ Chronotropy, inotropy, dromotropy in the heart',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'β2 (Gs)',
            description: 'Smooth muscle relaxation (bronchodilation, vasodilation, uterine relaxation)',
            subtitle: '↑ glycogenolysis, ↑ lipolysis, K⁺ shift into cells → hypokalemia, arrhythmia',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'β3',
            description: 'Lipolysis + thermoregulation in adipose tissue',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'D1',
            description: 'Vasodilation in renal, gut, heart',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'D2',
            description: 'Droperidol → antiemetic effect',
          ),
        ],
      ),
      AdrenergicAgonistsAntagonistsCategory(
        categoryName: 'Adrenergic Agonists',
        items: [
          AdrenergicAgonistsAntagonistsItem(
            title: 'Phenylephrine (α1)',
            description: 'Vasoconstriction, ↑ BP; rapid tachyphylaxis',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'α2 Agonists (Clonidine, Dexmedetomidine)',
            description: 'Sedation, analgesia, bradycardia, hypotension',
            subtitle: 'Sudden withdrawal → rebound HT',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Epinephrine - β1 Effects',
            description: '↑ HR & contractility',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Epinephrine - β2 Effects',
            description: 'Bronchodilation',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Epinephrine - α1 Effects',
            description: 'Vasoconstriction',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Epinephrine - Uses',
            description: 'Anaphylaxis, cardiac arrest',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Ephedrine',
            description: 'Direct + indirect action; long-acting; preferred in hypotension',
            subtitle: 'Does not reduce uterine blood flow',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Norepinephrine',
            description: 'α1 → strong vasoconstriction; β1 → ↑ contractility',
            subtitle: '↑ systolic & diastolic BP; extravasation → necrosis',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Dopamine - Low Dose (0.5–3 mcg/kg/min)',
            description: 'D1 (↑ RBF, ↑ diuresis)',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Dopamine - Medium Dose (3–10 mcg/kg/min)',
            description: 'β1 (↑ cardiac output)',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Dopamine - High Dose (10–20 mcg/kg/min)',
            description: 'α1 (↑ PVR, ↓ RBF)',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Isoproterenol',
            description: 'Pure β agonist; ↑ HR, vasodilation, ↓ DBP',
            subtitle: '↑ O₂ consumption',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Dobutamine',
            description: 'β1 + β2; useful in CHF/CAD',
            subtitle: 'Not routine after CABG',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Dopexamine',
            description: 'Superior to dopamine in renal perfusion',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Fenoldopam',
            description: 'Selective D1 agonist; ↑ RBF, ↑ diuresis, ↓ BP',
            subtitle: 'Indicated in contrast-induced nephropathy',
          ),
        ],
      ),
      AdrenergicAgonistsAntagonistsCategory(
        categoryName: 'Adrenergic Antagonists',
        items: [
          AdrenergicAgonistsAntagonistsItem(
            title: 'α Blocker (Phentolamine)',
            description: 'α1–α2 block; hypotension + reflex tachycardia',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Mixed (Labetalol)',
            description: 'α1 + β1 + β2 block; ↓ BP, ↓ PVR',
            subtitle: 'No reflex tachycardia',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Esmolol',
            description: 'Selective β1; useful in ECT, AF',
            subtitle: 't½ = 9 min (metabolized by esterases)',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Metoprolol',
            description: 'Selective β1; hepatic elimination',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Propranolol',
            description: 'Nonselective; useful in SVT, ischemia',
            subtitle: 'Contraindicated in bronchospasm/CHF; t½ = 100 min',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Nebivolol',
            description: 'β1 selective; ↑ NO synthesis',
          ),
          AdrenergicAgonistsAntagonistsItem(
            title: 'Carvedilol',
            description: 'Used in cardiomyopathy-related HF, post-MI ventricular dysfunction, and HT',
          ),
        ],
      ),
      AdrenergicAgonistsAntagonistsCategory(
        categoryName: 'Key Exam Spots',
        items: [
          AdrenergicAgonistsAntagonistsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'α1: vasoconstriction, β1: cardiac stimulation, β2: bronchodilation',
            subtitle: 'Dopamine: 0.5-3 D1, 3-10 β1, 10-20 α1',
            additionalInfo: 'Epinephrine: anaphylaxis, cardiac arrest\nEsmolol: t½ = 9 min\nPropranolol: contraindicated in bronchospasm/CHF',
          ),
        ],
      ),
    ];
  }
}
