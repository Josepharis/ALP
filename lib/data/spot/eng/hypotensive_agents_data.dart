import 'package:flutter/material.dart';

class HypotensiveAgentsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  HypotensiveAgentsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class HypotensiveAgentsCategory {
  final String categoryName;
  final List<HypotensiveAgentsItem> items;

  HypotensiveAgentsCategory({
    required this.categoryName,
    required this.items,
  });
}

class HypotensiveAgentsData {
  static List<HypotensiveAgentsCategory> getHypotensiveAgentsData(BuildContext context) {
    return [
      HypotensiveAgentsCategory(
        categoryName: 'Nitric Vasodilators',
        items: [
          HypotensiveAgentsItem(
            title: 'Sodium Nitroprusside - Mechanism',
            description: 'NO → ↑ cGMP → arteriolar + venous vasodilation',
          ),
          HypotensiveAgentsItem(
            title: 'Sodium Nitroprusside - Half-life',
            description: '<5 s → ideal for titration',
          ),
          HypotensiveAgentsItem(
            title: 'Sodium Nitroprusside - Dose',
            description: '0.5–10 mcg/kg/min (1–2 mcg/kg bolus suppresses intubation response)',
          ),
          HypotensiveAgentsItem(
            title: 'Sodium Nitroprusside - Metabolism',
            description: 'MetHb + CN⁻ →',
            subtitle: 'MetHb → cyanometHb',
            additionalInfo: 'CN⁻ + thiosulfate → thiocyanate (renal excretion)\nCN⁻ + cytochrome oxidase → cyanide toxicity',
          ),
          HypotensiveAgentsItem(
            title: 'Cyanide Toxicity Signs',
            description: 'Metabolic acidosis, arrhythmia, high venous O₂, resistant hypotension',
          ),
          HypotensiveAgentsItem(
            title: 'Cyanide Toxicity Treatment',
            description: '100% O₂, thiosulfate, sodium nitrate, methylene blue',
          ),
          HypotensiveAgentsItem(
            title: 'Sodium Nitroprusside - Organ Effects',
            description: '↓ Preload & afterload',
            subtitle: '↑ Coronary steal syndrome',
            additionalInfo: '↑ ICP, impaired cerebral autoregulation\nPulmonary vasodilation → ↓ hypoxic response\nRBF preserved',
          ),
          HypotensiveAgentsItem(
            title: 'Nitroglycerin - Mechanism',
            description: 'NO → ↑ cGMP (similar to nitroprusside)',
          ),
          HypotensiveAgentsItem(
            title: 'Nitroglycerin - Dose',
            description: '0.5–10 mcg/kg/min; also given sublingual/transdermal',
          ),
          HypotensiveAgentsItem(
            title: 'Nitroglycerin - Clinical Use',
            description: 'Myocardial ischemia, HT, ventricular failure',
            subtitle: 'Binds PVC sets → use glass tubing',
          ),
          HypotensiveAgentsItem(
            title: 'Nitroglycerin - Metabolism',
            description: 'Liver + blood reductase; may cause MetHb',
          ),
          HypotensiveAgentsItem(
            title: 'Nitroglycerin - Effects',
            description: '↓ Venous return, ↓ O₂ demand',
            subtitle: 'Improves subendocardial blood flow',
            additionalInfo: 'Relieves coronary spasm\nNo coronary steal phenomenon\nLess rebound HT\nPulmonary: bronchodilation\nUterine relaxation (50–100 mcg)\n↓ Platelet aggregation',
          ),
          HypotensiveAgentsItem(
            title: 'Hydralazine - Mechanism',
            description: 'Direct arteriolar smooth muscle vasodilation (↑ cGMP)',
          ),
          HypotensiveAgentsItem(
            title: 'Hydralazine - Dose',
            description: '15–20 mg IV, onset ~15 min, duration 2–4 h',
          ),
          HypotensiveAgentsItem(
            title: 'Hydralazine - Clinical Use',
            description: 'Preferred in pregnancy-induced HT',
            subtitle: 'Metabolism: Hepatic',
          ),
          HypotensiveAgentsItem(
            title: 'Hydralazine - Effects',
            description: 'Reflex tachycardia, ↑ contractility; beneficial in CHF',
          ),
        ],
      ),
      HypotensiveAgentsCategory(
        categoryName: 'Non-Nitric Vasodilators',
        items: [
          HypotensiveAgentsItem(
            title: 'Fenoldopam - Mechanism',
            description: 'D1 agonist → vasodilation; also α2 affinity',
          ),
          HypotensiveAgentsItem(
            title: 'Fenoldopam - Clinical Use',
            description: 'Malignant HT',
          ),
          HypotensiveAgentsItem(
            title: 'Fenoldopam - Dose',
            description: '0.1 mcg/kg/min, ↑ in 15–20 min',
          ),
          HypotensiveAgentsItem(
            title: 'Fenoldopam - Side Effects',
            description: 'Headache, flushing, tachycardia, hypokalemia, hypotension',
          ),
          HypotensiveAgentsItem(
            title: 'Fenoldopam - Metabolism',
            description: 'CYP450 → inactive metabolites (no dose adjustment in organ failure)',
          ),
          HypotensiveAgentsItem(
            title: 'Fenoldopam - Effects',
            description: '↓ SBP & DBP, ↑ IOP (caution in glaucoma)',
            subtitle: 'Preserves RBF & GFR, ↑ Na excretion',
          ),
          HypotensiveAgentsItem(
            title: 'Calcium Channel Blockers (Dihydropyridines, -dipine)',
            description: 'Block L-type calcium channels',
            subtitle: 'Clinical use: Routine in cardiothoracic surgery',
            additionalInfo: 'Feature: Minimal effect on cardiac conduction',
          ),
        ],
      ),
      HypotensiveAgentsCategory(
        categoryName: 'Key Exam Spots',
        items: [
          HypotensiveAgentsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Nitroprusside: rapid, risk of cyanide toxicity',
            subtitle: 'Nitroglycerin: venous predominant, no steal, relieves coronary spasm',
            additionalInfo: 'Hydralazine: useful in pregnancy HT, slow onset\nFenoldopam: D1 agonist, renal protective, caution in glaucoma\nCCB (-dipine): vessel-selective, minimal cardiac conduction effect',
          ),
        ],
      ),
    ];
  }
}
