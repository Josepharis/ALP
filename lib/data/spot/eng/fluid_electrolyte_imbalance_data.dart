import 'package:flutter/material.dart';

class FluidElectrolyteImbalanceItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  FluidElectrolyteImbalanceItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class FluidElectrolyteImbalanceCategory {
  final String categoryName;
  final List<FluidElectrolyteImbalanceItem> items;

  FluidElectrolyteImbalanceCategory({
    required this.categoryName,
    required this.items,
  });
}

class FluidElectrolyteImbalanceData {
  static List<FluidElectrolyteImbalanceCategory> getFluidElectrolyteImbalanceData(BuildContext context) {
    return [
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Basic Concepts',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Molarity',
            description: 'Moles per 1 L solution',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Molality',
            description: 'Moles per 1 kg solvent',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Equivalent',
            description: 'Mol × electrical charge',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Osmotic Pressure',
            description: '1 mOsm/L difference ≈ 19.3 mmHg',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Osmolarity',
            description: 'Osmoles per liter',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Osmolality',
            description: 'Osmoles per kilogram',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Tonicity',
            description: 'Effect on cell volume',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Fluid Compartments',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Intracellular (ICS)',
            description: 'K⁺ main cation, high protein',
            subtitle: 'Na⁺/K⁺-ATPase (3 Na out: 2 K in)',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Extracellular (ECS)',
            description: 'Na⁺ main cation',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Interstitial',
            description: 'Protein 2 g/dL, –5 mmHg (if positive → edema)',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Intravascular',
            description: 'Plasma proteins are osmotically active',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Daily Water Balance',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Intake',
            description: '~2500 mL (300 mL metabolic)',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Loss',
            description: 'Urine 1500 mL, respiration 400 mL, skin 400 mL, sweat 100 mL, stool 100 mL',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Plasma Osmolality',
            description: '(Na × 2) + BUN/2.8 + glucose/18 ≈ 280–290 mOsm/kg',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Hyperglycemia Effect',
            description: 'Each ↑62 mg/dL glucose → Na ↓1 mEq/L',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Osmolal Gap',
            description: '↑ Osmolal gap → renal failure, ketoacidosis, TUR syndrome (glycine), toxins',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'ADH & Thirst',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'ADH Source',
            description: 'Hypothalamus (supraoptic/paraventricular)',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'ADH Response',
            description: '↑ Osmolality → ↑ ADH → water retention',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Full ADH Suppression',
            description: '10–20 L/day water excretion',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Non-Osmotic ADH',
            description: 'Triggered if blood volume ↓5–10%',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Thirst',
            description: 'Strongest defense against hyperosmolality/hypernatremia',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Hypernatremia',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Low Na Content',
            description: 'Water loss > Na loss',
            subtitle: 'Urine Na: renal >20, extrarenal <10',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Normal Na Content',
            description: 'Central/nephrogenic DI',
            subtitle: 'Central DI: brain death, trauma → treat with desmopressin',
            additionalInfo: 'Nephrogenic DI: unresponsive to ADH (lithium, amphotericin B, hypercalcemia) → treat with thiazides, Na/protein restriction',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'High Na Content',
            description: 'Hypertonic saline, hyperaldosteronism',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Clinical Presentation',
            description: 'Restlessness → coma',
            subtitle: 'Acute >158 → hemorrhage, seizures',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Treatment',
            description: 'Correct ≤0.5 mEq/L/hr',
            subtitle: 'Elective surgery postponed if >150 mEq/L',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Hyponatremia',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Low Na Content',
            description: 'Renal (urine Na >20), extrarenal (urine Na <10)',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'High Na Content',
            description: 'CHF, cirrhosis, nephrotic syndrome',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Normal Na Content',
            description: 'SIADH (urine Na >40, Osm >100), endocrine',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Clinical Presentation',
            description: 'Mild → often asymptomatic',
            subtitle: '<120 → severe symptoms',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Treatment',
            description: 'Hypovolemic → isotonic saline',
            subtitle: 'Euvolemic/hypervolemic → fluid restriction',
            additionalInfo: 'Acute symptomatic → hypertonic saline; correction rate: mild 0.5, moderate 1, severe 1.5 mEq/L/hr\nSafe anesthesia threshold: ≥130 mEq/L',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Potassium (K⁺)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Normal Intake',
            description: '40–140 mEq/day',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Regulation',
            description: 'Na⁺/K⁺-ATPase, insulin, β2-agonist',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'pH Effect',
            description: 'pH 0.1 change → K 0.6 mEq change',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Hypokalemia',
            description: 'ECG: flat T, ↑ U wave. Muscle weakness',
            subtitle: 'Treatment: Oral 60–80 mEq/day',
            additionalInfo: 'IV replacement: peripheral ≤8 mEq/h, central ≤20 mEq/h\nAnesthesia: digoxin → K ≥4; ↑ sensitivity to NMB (reduce dose 25–50%)',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Hyperkalemia',
            description: 'ECG: peaked T → wide QRS → absent P',
            subtitle: 'Treatment: Ca gluconate (short, rapid)',
            additionalInfo: 'NaHCO₃, β-agonist, insulin + glucose\nLoop diuretic, resin\nDialysis: ↓50 mEq/h\nAnesthesia: treat if >6; elective surgery postponed',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Calcium (Ca²⁺)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Normal Range',
            description: '8.5–10.5 mg/dL',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'pH Effect',
            description: 'pH ↓0.1 → Ca ↑0.16 mg/dL',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Hypercalcemia',
            description: 'Causes: primary HPT, malignancy',
            subtitle: 'ECG: short QT, HT, weakness',
            additionalInfo: 'Treatment: fluids + loop diuretic, bisphosphonate, calcitonin\nAnesthesia: elective surgery postponed',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Hypocalcemia',
            description: 'Causes: hypoparathyroidism, citrate blood, sepsis, renal failure',
            subtitle: 'Clinical: Trousseau, Chvostek, long QT',
            additionalInfo: 'Treatment: Ca replacement (check Mg)\nAnesthesia: unpredictable NMB response',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Phosphorus (P)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Normal Range',
            description: '2.5–4.5 mg/dL',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Hypophosphatemia',
            description: '<1 mg/dL → multi-organ failure',
            subtitle: 'Treatment: oral or IV (if severe)',
            additionalInfo: 'Anesthesia: avoid hyperglycemia & alkalosis',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Magnesium (Mg²⁺)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'Normal Range',
            description: '1.7–2.1 mEq/L',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Hypermagnesemia',
            description: 'Clinical: hyporeflexia, bradycardia, CV depression',
            subtitle: 'Treatment: Ca gluconate, dialysis',
            additionalInfo: 'Anesthesia: reduce NMB dose',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'Hypomagnesemia',
            description: 'Clinical: arrhythmia, AF, spasms',
            subtitle: 'Treatment: oral; if severe → 1–2 g IV Mg',
            additionalInfo: 'Anesthesia: must be corrected with other electrolytes',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Key Points',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: '↑ Osmolal gap → toxins/abnormal molecules',
            subtitle: 'Hyponatremia → ↓ MAC, Hypernatremia → ↑ MAC',
            additionalInfo: 'Hypokalemia → ↑ NMB sensitivity; Hyperkalemia → ↑ NMB effect\nHypocalcemia → long QT; Hypercalcemia → short QT\nElective surgery postponed in: Na >150, K >6, severe Ca disorders',
          ),
        ],
      ),
    ];
  }
}
