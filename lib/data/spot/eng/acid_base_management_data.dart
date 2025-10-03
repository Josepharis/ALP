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
        categoryName: 'Definitions',
        items: [
          AcidBaseManagementItem(
            title: 'Brønsted–Lowry',
            description: 'Acid = H⁺ donor, Base = H⁺ acceptor',
          ),
          AcidBaseManagementItem(
            title: 'Arrhenius',
            description: 'Acid = releases H⁺, Base = releases OH⁻',
          ),
          AcidBaseManagementItem(
            title: 'Strong Ion Difference (SID)',
            description: '(Na⁺+K⁺+Ca²⁺+Mg²⁺) – (Cl⁻+Lactate⁻)',
          ),
          AcidBaseManagementItem(
            title: '[H⁺] Determination',
            description: 'Determined by:',
            subtitle: 'SID',
            additionalInfo: 'PCO₂\nATOT (total weak acids)',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Compensatory Mechanisms',
        items: [
          AcidBaseManagementItem(
            title: 'Buffer Systems',
            description: 'Bicarbonate: H₂O + CO₂ ↔ H₂CO₃ ↔ H⁺ + HCO₃⁻',
            subtitle: 'Hemoglobin: histidine-rich, pKa 6.8 → strongest non-carbonic buffer',
            additionalInfo: 'Intracellular protein & phosphate: late effect\nAmmonia: from proximal tubule glutamine deamination → most important in chronic acidosis',
          ),
          AcidBaseManagementItem(
            title: 'Respiratory Compensation',
            description: 'PaCO₂ ↑1 mmHg → ventilation ↑1–4 L/min',
            subtitle: 'Metabolic acidosis: HCO₃⁻ ↓1 mEq/L → PaCO₂ ↓1–1.5 mmHg',
            additionalInfo: 'Metabolic alkalosis: HCO₃⁻ ↑1 mEq/L → PaCO₂ ↑0.25–1 mmHg (rarely >55)',
          ),
          AcidBaseManagementItem(
            title: 'Renal Compensation',
            description: 'Acidosis → ↑ HCO₃⁻ reabsorption, ↑ titratable acid (phosphate), ↑ ammonia (most important)',
            subtitle: 'Alkalosis → ↑ HCO₃⁻ excretion',
          ),
          AcidBaseManagementItem(
            title: 'Base Excess (BE)',
            description: '(+) → alkalosis, (–) → acidosis',
            subtitle: 'Calculated assuming pH 7.40, PaCO₂ 40 mmHg',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Acidosis',
        items: [
          AcidBaseManagementItem(
            title: 'Physiological Effects',
            description: 'pH ↓ → sympathetic activity suppressed (<7.20)',
            subtitle: 'O₂ dissociation curve shifts right → tissue hypoxia',
            additionalInfo: 'Catecholamine response ↓\npH ↓0.1 → K⁺ ↑0.6 mEq/L',
          ),
          AcidBaseManagementItem(
            title: 'Respiratory Acidosis',
            description: 'Acute: PaCO₂ ↑10 mmHg → HCO₃⁻ ↑1 mEq/L',
            subtitle: 'Chronic: PaCO₂ ↑10 mmHg → HCO₃⁻ ↑4 mEq/L',
            additionalInfo: 'Treatment: reduce CO₂ production, ↑ ventilation\nIV HCO₃⁻ only if pH <7.10 and HCO₃⁻ <15',
          ),
          AcidBaseManagementItem(
            title: 'Metabolic Acidosis',
            description: 'Anion gap = Na⁺ – (Cl⁻ + HCO₃⁻)',
            subtitle: 'Normal: 7–14 mEq/L',
            additionalInfo: '30 = high anion gap acidosis\nCauses: renal failure (GFR <20 mL/min), lactic acidosis (N: 0.3–1.3), ketoacidosis, toxins (salicylate, methanol, ethylene glycol)',
          ),
          AcidBaseManagementItem(
            title: 'Normal Anion Gap Causes',
            description: 'GI HCO₃⁻ loss (diarrhea), RTA I–II–IV, dilutional (NS load)',
          ),
          AcidBaseManagementItem(
            title: 'Metabolic Acidosis Treatment',
            description: 'First correct ventilation',
            subtitle: 'pH <7.20 → NaHCO₃ (1 mEq/kg)',
            additionalInfo: 'Dose ≈ Base deficit × 0.3 × weight (give half, then check ABG)',
          ),
          AcidBaseManagementItem(
            title: 'Anesthetic Considerations',
            description: 'CNS depression, ↓ airway reflexes',
            subtitle: 'Opioid non-ionized fraction ↑',
            additionalInfo: 'Catecholamine response ↓\nAcidosis + hyperkalemia → Succinylcholine contraindicated',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Alkalosis',
        items: [
          AcidBaseManagementItem(
            title: 'Physiological Effects',
            description: 'O₂ dissociation curve shifts left → tissue hypoxia',
            subtitle: 'Hypokalemia, ↓ ionized Ca²⁺',
          ),
          AcidBaseManagementItem(
            title: 'Respiratory Alkalosis',
            description: 'PaCO₂ ↓10 mmHg → HCO₃⁻ ↓2–5 mEq/L',
            subtitle: 'Treatment: correct underlying cause',
            additionalInfo: 'pH >7.60 → HCl, arginine HCl, NH₄Cl',
          ),
          AcidBaseManagementItem(
            title: 'Metabolic Alkalosis',
            description: 'Chloride-sensitive (<10 mEq/L): vomiting, gastric drainage, diuretics → treat with NaCl + KCl',
            subtitle: 'Chloride-resistant (>20 mEq/L): mineralocorticoid excess → treat with spironolactone',
            additionalInfo: 'Other causes: blood products (citrate, lactate → HCO₃⁻), Na-penicillin, refeeding',
          ),
          AcidBaseManagementItem(
            title: 'Anesthetic Considerations',
            description: 'Cerebral blood flow ↓',
            subtitle: 'Hypokalemia + alkalosis → ↑ arrhythmia risk',
            additionalInfo: 'Alkalemia → prolonged non-depolarizing block\nRespiratory alkalosis → ↑ opioid depression',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Blood Gas Measurements',
        items: [
          AcidBaseManagementItem(
            title: 'Venous vs Arterial',
            description: 'Venous PaO₂ ≈ 40 mmHg (reflects tissue extraction)',
            subtitle: 'Venous PaCO₂ 4–6 mmHg > arterial',
            additionalInfo: 'Venous pH ≈ 0.05 > arterial',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Critical Pearls',
        items: [
          AcidBaseManagementItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Acidosis: pH ↓ → K ↑0.6 mEq/L per 0.1 pH',
            subtitle: 'Acute resp. acidosis: PaCO₂ ↑10 → HCO₃⁻ +1',
            additionalInfo: 'Chronic resp. acidosis: PaCO₂ ↑10 → HCO₃⁻ +4\nMetabolic acidosis compensation: HCO₃⁻ ↓1 → PaCO₂ –1.2\nMetabolic alkalosis compensation: HCO₃⁻ ↑1 → PaCO₂ +0.7\nHyponatremia ↓ MAC, Hypernatremia ↑ MAC\nSuccinylcholine contraindicated in hyperkalemia + acidosis',
          ),
        ],
      ),
    ];
  }
}
