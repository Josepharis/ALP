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
            title: 'BRØNSTED–LOWRY THEORY',
            description: 'Acids are substances that donate hydrogen ions (H⁺), whereas bases are those that accept H⁺.',
            additionalInfo: 'The most commonly used definition in clinical practice for acidity and alkalinity.',
          ),
          AcidBaseManagementItem(
            title: 'ARRHENIUS THEORY',
            description: 'Acids release hydrogen ions (H⁺) and bases release hydroxide ions (OH⁻) in aqueous solutions.',
            additionalInfo: 'Early foundation of acid-base chemistry but limited in biological applications.',
          ),
          AcidBaseManagementItem(
            title: 'STRONG ION DIFFERENCE (SID)',
            description: 'Calculated as (Na⁺+K⁺+Ca²⁺+Mg²⁺) – (Cl⁻+Lactate⁻) in body fluids.',
            additionalInfo: 'Stewart\'s approach identifies SID as one of the three independent variables determining pH.',
          ),
          AcidBaseManagementItem(
            title: '[H⁺] DETERMINATION',
            description: 'Determined by three independent variables in a physiological solution.',
            subtitle: 'Determining factors include SID, PCO₂, and ATOT (total concentration of non-volatile zayıf asitler)',
            additionalInfo: 'In this model, the concentration of bicarbonate and pH are dependent variables.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Compensatory Mechanisms',
        items: [
          AcidBaseManagementItem(
            title: 'BUFFER SYSTEMS',
            description: 'Utilizes bicarbonate (H₂O + CO₂ ↔ H₂CO₃ ↔ H⁺ + HCO₃⁻) as the primary extracellular defense.',
            subtitle: 'Hemoglobin (histidine-rich, pKa 6.8) is the strongest non-carbonic buffer; Ammonia is critical for chronic renal compensation',
            additionalInfo: 'Intracellular proteins and phosphate buffers provide a late-acting but significant buffering capacity.',
          ),
          AcidBaseManagementItem(
            title: 'RESPIRATORY COMPENSATION',
            description: 'A 1 mmHg rise in PaCO₂ results in an immediate increase in ventilation by 1–4 L/min.',
            subtitle: 'Metabolic acidosis triggers a 1–1.5 mmHg decrease in PaCO₂ per 1 mEq/L HCO₃⁻ drop',
            additionalInfo: 'Metabolic alkalosis results in increased PaCO₂ (0.25–1 mmHg per 1 mEq/L HCO₃⁻), though rarely exceeding 55 mmHg.',
          ),
          AcidBaseManagementItem(
            title: 'RENAL COMPENSATION',
            description: 'Acidosis leads to increased HCO₃⁻ reabsorption, increased titratable acid (phosphate), and ammonia production.',
            subtitle: 'Alkalosis is managed through the increased renal excretion of bicarbonate',
            additionalInfo: 'Renal mechanisms are slower but provide high-capacity buffering over 24–48 hours.',
          ),
          AcidBaseManagementItem(
            title: 'BASE EXCESS (BE)',
            description: 'Positive values suggest metabolic alkalosis, while negative values (base deficit) indicate metabolic acidosis.',
            subtitle: 'Calculated assuming standard conditions: pH 7.40 and PaCO₂ 40 mmHg',
            additionalInfo: 'Isolates the metabolic component of acid-base imbalance from the respiratory component.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Acidosis',
        items: [
          AcidBaseManagementItem(
            title: 'PHYSIOLOGICAL EFFECTS OF ACIDOSIS',
            description: 'Sympathetic activity is suppressed when pH drops below 7.20.',
            subtitle: 'Acute acidosis shifts the oxygen dissociation curve with a risk of tissue hypoxia',
            additionalInfo: 'Decreased catecholamine response occurs; a 0.1 pH decrease typically raises serum K⁺ by 0.6 mEq/L.',
          ),
          AcidBaseManagementItem(
            title: 'RESPIRATORY ACIDOSIS: COMPENSATION AND MANAGEMENT',
            description: 'Acute PaCO₂ rises of 10 mmHg result in a 1 mEq/L rise in HCO₃⁻, whereas chronic states result in a 4 mEq/L rise.',
            subtitle: 'Treatment involves reducing CO₂ production and increasing effective ventilation',
            additionalInfo: 'IV sodium bicarbonate is only recommended if pH is <7.10 and HCO₃⁻ is <15 mEq/L.',
          ),
          AcidBaseManagementItem(
            title: 'METABOLIC ACIDOSIS AND ANION GAP',
            description: 'Calculated as Na⁺ – (Cl⁻ + HCO₃⁻); a gap of 30 confirms high anion gap metabolic acidosis.',
            subtitle: 'Normal range is 7–14 mEq/L; elevated gaps occur in renal failure (GFR <20), lactic acidosis (N: 0.3–1.3), ketoacidosis, and toxin intake',
            additionalInfo: 'Specific toxins include salicylates, methanol, and ethylene glycol.',
          ),
          AcidBaseManagementItem(
            title: 'NORMAL ANION GAP ACIDOSIS CAUSES',
            description: 'Causes include GI HCO₃⁻ loss (diarrhea), Renal Tubular Acidosis (RTA I, II, IV), and dilutional effects from NS load.',
            additionalInfo: 'Often referred to as hyperchloremic metabolic acidosis.',
          ),
          AcidBaseManagementItem(
            title: 'METABOLIC ACIDOSIS TREATMENT STRATEGIES',
            description: 'Prioritize ventilation improvement before bicarbonate therapy.',
            subtitle: 'If pH is <7.20, administer NaHCO₃ (1 mEq/kg) based on calculated base deficit',
            additionalInfo: 'Dose formula: Base Deficit × 0.3 × weight; give half, then check ABG.',
          ),
          AcidBaseManagementItem(
            title: 'ANESTHETIC CONSIDERATIONS FOR ACIDOSIS',
            description: 'Includes risk of CNS depression and diminished airway protection reflexes.',
            subtitle: 'Increases the non-ionized fraction of opioids and reduces catecholamine response',
            additionalInfo: 'Succinylcholine is contraindicated in patients with combined hyperkalemia and acidosis.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Alkalosis',
        items: [
          AcidBaseManagementItem(
            title: 'PHYSIOLOGICAL EFFECTS OF ALKALOSIS',
            description: 'Oxygen dissociation curve shifts left, potentially leading to tissue hypoxia.',
            subtitle: 'Promotes hypokalemia and decreases the level of ionized calcium (Ca²⁺)',
            additionalInfo: 'Hypocalcemic Parestezi and arrhythmias may manifest during alkalemia.',
          ),
          AcidBaseManagementItem(
            title: 'RESPIRATORY ALKALOSIS AND TREATMENT',
            description: 'Each 10 mmHg drop in PaCO₂ results in a renal-mediated 2–5 mEq/L decrease in HCO₃⁻.',
            subtitle: 'Management centers on correcting the underlying cause of hyperventilation',
            additionalInfo: 'Severe cases (pH >7.60) may require acidification via HCl or NH₄Cl.',
          ),
          AcidBaseManagementItem(
            title: 'METABOLIC ALKALOSIS TYPES AND CAUSES',
            description: 'Chloride-sensitive (<10 mEq/L) occurs in vomiting or gastric drainage; Chloride-resistant (>20 mEq/L) occurs in mineralocorticoid excess.',
            subtitle: 'Treatment involves NaCl + KCl for sensitive types and spironolactone for resistant types',
            additionalInfo: 'Refeeding, blood product citrate metabolism, and Na-penicillin also contribute to metabolic alkalosis.',
          ),
          AcidBaseManagementItem(
            title: 'ANESTHETIC CONSIDERATIONS FOR ALKALOSIS',
            description: 'Alkalosis causes cerebral blood flow to decrease via vasoconstriction.',
            subtitle: 'Increases the risk of arrhythmias from hypokalemia and prolongs non-depolarizing blocks',
            additionalInfo: 'May also exacerbate respiratory depression following opioid administration.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Blood Gas Measurements',
        items: [
          AcidBaseManagementItem(
            title: 'VENOUS VS ARTERIAL GAS VALUES',
            description: 'Venous PaO₂ (~40 mmHg) reflects tissue oxygen extraction and perfusion quality.',
            subtitle: 'Venous PaCO₂ is 4–6 mmHg higher and venous pH is 0.05 units higher than arterial values',
            additionalInfo: 'Venous blood gas can be a reliable proxy for monitoring metabolic trends.',
          ),
        ],
      ),
      AcidBaseManagementCategory(
        categoryName: 'Critical Summary',
        items: [
          AcidBaseManagementItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Key markers for acid-base anesthesia: pH:K ratio, acute vs chronic compensation, and MAC effects.',
            subtitle: 'Acidosis: pH↓0.1→K↑0.6; Metabolics: Winters rules; Hyponatremia ↓ MAC',
            additionalInfo: 'Succinylcholine is contraindicated in hyperkalemia + acidosis. Acute resp. acidosis (10:1) vs chronic (10:4).',
          ),
        ],
      ),
    ];
  }
}
