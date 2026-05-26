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
            title: 'MOLARITY',
            description: 'The number of moles of solute per 1 liter of solution.',
            additionalInfo: 'Used extensively for calculating chemical concentrations in laboratory medicine.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'MOLALITY',
            description: 'The number of moles of solute per 1 kilogram of solvent.',
            additionalInfo: 'Independent of temperature and pressure, making it useful in thermodynamics.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'EQUIVALENT',
            description: 'Calculated by multiplying the number of moles by the electrical charge (valence).',
            additionalInfo: 'Fundamental for balancing electrolytes in physiological solutions.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'OSMOTIC PRESSURE',
            description: 'A difference of 1 mOsm/L is approximately equal to 19.3 mmHg of pressure.',
            additionalInfo: 'The driving force behind fluid movement across semi-permeable cell membranes.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'OSMOLARITY',
            description: 'The total number of osmoles per liter of solution.',
            additionalInfo: 'Commonly used to describe the concentration of medical intravenous fluids.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'OSMOLALITY',
            description: 'The total number of osmoles per kilogram of solvent.',
            additionalInfo: 'Plasma osmolality is typically maintained between 280–290 mOsm/kg.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'TONICITY',
            description: 'The effect of a solution on cell volume, determining whether a cell swells or shrinks.',
            additionalInfo: 'Depends on the concentration of non-penetrating solutes.',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Fluid Compartments',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'INTRACELLULAR FLUID (ICS)',
            description: 'Contains K⁺ as the primary cation and a high concentration of proteins.',
            subtitle: 'Maintained by Na⁺/K⁺-ATPase activity (3 Na out for 2 K in)',
            additionalInfo: 'Constitutes approximately two-thirds of the total body water.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'EXTRACELLULAR FLUID (ECS)',
            description: 'Contains Na⁺ as the primary cation, including plasma and interstitial fluid.',
            additionalInfo: 'Represents about one-third of the total body water.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'INTERSTITIAL FLUID',
            description: 'Fluid between cells with a protein content of ~2 g/dL and a normal pressure of –5 mmHg.',
            subtitle: 'Positive pressure in this compartment leads to clinical edema',
            additionalInfo: 'Acts as a buffer zone for nutrient and waste exchange.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'INTRAVASCULAR FLUID',
            description: 'The plasma compartment where proteins are osmotically active.',
            additionalInfo: 'Colloid osmotic (oncotic) pressure prevents fluid leakage into the interstitium.',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Daily Water Balance',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'WATER INTAKE',
            description: 'Total intake is ~2500 mL, including ~300 mL from metabolic processes.',
            additionalInfo: 'Primarily regulated by the thirst mechanism in the hypothalamus.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'WATER LOSS',
            description: 'Total daily loss includes 1500 mL urine, 400 mL respiration, and 400 mL skin.',
            subtitle: 'Approximately 100 mL is lost via sweat and 100 mL via stool',
            additionalInfo: 'Insensible losses increase with fever and hyperventilation.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'PLASMA OSMOLALITY CALCULATION',
            description: '(Na × 2) + BUN/2.8 + glucose/18 ≈ 280–290 mOsm/kg.',
            additionalInfo: 'A vital measurement for identifying various metabolic imbalances.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'HYPERGLYCEMIA EFFECT ON SODIUM',
            description: 'Each 62 mg/dL increase in glucose causes a 1 mEq/L decrease in measured sodium.',
            additionalInfo: 'This pseudohyponatremia must be corrected clinically to determine the true Na level.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'OSMOLAL GAP',
            description: 'An increased gap suggests the presence of renal failure, ketoacidosis, TUR syndrome (glycine), or toxins.',
            additionalInfo: 'Reflects the difference between measured and calculated osmolality.',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'ADH & Thirst',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'ADH SOURCE',
            description: 'Synthesized in the supraoptic and paraventricular nuclei of the hypothalamus.',
            additionalInfo: 'Stored and released from the posterior pituitary gland.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'ADH RESPONSE',
            description: 'Increased osmolality triggers ADH release, leading to renal water retention.',
            additionalInfo: 'Acts on V2 receptors in the collecting ducts to increase water permeability.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'FULL ADH SUPPRESSION',
            description: 'Leads to massive water excretion of 10–20 L/day.',
            additionalInfo: 'Results in highly dilute urine with very low osmolality.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'NON-OSMOTIC ADH TRIGGER',
            description: 'ADH release is triggered if the total blood volume decreases by 5–10%.',
            additionalInfo: 'Prioritizes volume preservation over osmolality in emergency states.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'THIRST MECHANISM',
            description: 'The body\'s strongest defense mechanism against hyperosmolality and hypernatremia.',
            additionalInfo: 'Activated by osmoreceptors when osmotic pressure increases.',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Hypernatremia',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'LOW NA CONTENT (HYPOVOLEMIC)',
            description: 'Occurs when water loss exceeds sodium loss.',
            subtitle: 'Urine Na: renal sources >20 mEq/L, extrarenal sources <10 mEq/L',
            additionalInfo: 'Commonly seen in heavy sweating or osmotic diuresis.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'NORMAL NA CONTENT (DIABETES INSIPIDUS)',
            description: 'Characterized by large water losses with stable sodium content.',
            subtitle: 'Central DI (brain death/trauma) treated with desmopressin; Nephrogenic DI (Li/Mg) treated with thiazides',
            additionalInfo: 'Requires careful fluid replacement to prevent neurological injury.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'HIGH NA CONTENT (HYPERVOLEMIC)',
            description: 'Caused by hypertonic saline administration or hyperaldosteronism.',
            additionalInfo: 'Results in absolute sodium excess in the body.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'CLINICAL PRESENTATION OF HYPERNATREMIA',
            description: 'Progression from restlessness and irritability to coma.',
            subtitle: 'Acute rise >158 mEq/L carries high risk for intracranial hemorrhage and seizures',
            additionalInfo: 'Shrinking of brain cells causes mechanical tension on cerebral vessels.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'TREATMENT OF HYPERNATREMIA',
            description: 'Sodium correction should not exceed 0.5 mEq/L/hour to avoid brain edema.',
            subtitle: 'Elective surgery should be postponed if sodium is >150 mEq/L',
            additionalInfo: 'Slow correction allows brain cells to adapt to the changing osmotic environment.',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Hyponatremia',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'LOW NA CONTENT (HYPOVOLEMIC)',
            description: 'Renal loss is indicated by urine Na >20, while extrarenal loss shows urine Na <10.',
            additionalInfo: 'Requires isotonic saline to restore both volume and sodium.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'HIGH NA CONTENT (HYPERVOLEMIC)',
            description: 'Dilutional states like CHF, cirrhosis, and nephrotic syndrome.',
            additionalInfo: 'The total sodium is elevated, but free water is even higher.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'NORMAL NA CONTENT (EUVOLEMIC)',
            description: 'Commonly seen in SIADH where urine Na is >40 and Osm >100.',
            additionalInfo: 'Requires fluid restriction rather than saline administration.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'CLINICAL PRESENTATION OF HYPONATREMIA',
            description: 'Mild cases are often asymptomatic; severe symptoms typically manifest below 120 mEq/L.',
            additionalInfo: 'Includes nausea, confusion, and potential seizures due to cerebral edema.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'TREATMENT OF HYPONATREMIA',
            description: 'Hypovolemic types are treated with isotonic saline; euvolemic/hypervolemic types with fluid restriction.',
            subtitle: 'Acute symptomatic cases require hypertonic saline with controlled correction rates (0.5–1.5 mEq/L/hr)',
            additionalInfo: 'Safe elective anesthesia threshold is ≥130 mEq/L.',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Potassium (K⁺)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'NORMAL INTAKE',
            description: 'Requirement ranges between 40–140 mEq/day.',
            additionalInfo: 'Mostly excreted via the kidneys.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'K+ REGULATION',
            description: 'Regulated by Na⁺/K⁺-ATPase activity, insulin levels, and β2-agonist stimulation.',
            additionalInfo: 'Catecholamines can cause rapid intracellular shifts.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'PH EFFECT ON POTASSIUM',
            description: 'A change of 0.1 in pH results in a 0.6 mEq/L reciprocal change in potassium.',
            additionalInfo: 'Acidosis causes K⁺ to shift out of cells, potentially masking true depletion.',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Hypokalemia',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'HYPOKALEMIA CLINICAL AND ECG SIGNS',
            description: 'ECG reveals flat T waves and prominent U waves; patients may experience muscle weakness.',
            additionalInfo: 'Can lead to lethal ventricular arrhythmias if left untreated.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'HYPOKALEMIA TREATMENT',
            description: 'Oral replacement is preferred at 60–80 mEq/day.',
            subtitle: 'IV replacement should not exceed 8 mEq/h in peripheral lines or 20 mEq/h in central lines',
            additionalInfo: 'Potassium should be diluted and given via an infusion pump.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'ANESTHESIA CONSIDERATIONS FOR HYPOKALEMIA',
            description: 'Increases sensitivity to NMBs, necessitating a dose reduction of 25–50%.',
            subtitle: 'Patients on digoxin require K ≥4 mEq/L to prevent digitalis toxicity',
            additionalInfo: 'Hypokalemia predisposes to paralytic ileus postoperatively.',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Hyperkalemia',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'HYPERKALEMIA ECG PROGRESSION',
            description: 'Peaked T waves progress to wide QRS complexes and eventually the loss of P waves.',
            additionalInfo: 'A true medical emergency that can lead to asystole or ventricular fibrillation.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'HYPERKALEMIA ACIL TREATMENT',
            description: 'Calcium gluconate is used for rapid, short-term myocardial membrane stabilization.',
            subtitle: 'Sodium bicarbonate, β-agonists, and insulin with glucose push K⁺ into the cells',
            additionalInfo: 'Hemodialysis can lower K⁺ by 50 mEq/h and is the most definitive treatment.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'HYPERKALEMIA IN ANESTHESIA',
            description: 'Treat if >6 mEq/L. Elective surgery should be postponed due to the risk of cardiac arrest.',
            additionalInfo: 'Avoid succinylcholine and large-volume fluid loads containing K⁺.',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Calcium (Ca²⁺)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'NORMAL RANGE',
            description: 'Standard values are between 8.5–10.5 mg/dL.',
            additionalInfo: 'Half of the total calcium is bound to albumin.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'PH EFFECT ON CALCIUM',
            description: 'A decrease of 0.1 in pH leads to a 0.16 mg/dL increase in ionized calcium.',
            additionalInfo: 'Alkalosis increases binding, potentially leading to symptomatic hypocalcemia.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'HYPERCALCEMIA',
            description: 'Primarily caused by hyperparathyroidism or malignancy; leads to short QT and hypertension.',
            subtitle: 'Treatment: Large-volume fluids, loop diuretics, bisphosphonates, and calcitonin',
            additionalInfo: 'Elective surgery must be deferred due to metabolic and cardiovascular risks.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'HYPOCALCEMIA',
            description: 'Common in sepsis, renal failure, and following citrated blood transfusions.',
            subtitle: 'Clinical signs: Trousseau\'s and Chvostek\'s signs; ECG shows long QT',
            additionalInfo: 'Magnesium levels must also be checked as its deficiency causes refractory hypocalcemia.',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Phosphorus (P)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'NORMAL RANGE',
            description: 'Standard values are 2.5–4.5 mg/dL.',
            additionalInfo: 'Critical for ATP synthesis and bone metabolism.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'HYPOPHOSPHATEMIA',
            description: 'Severe levels (<1 mg/dL) can lead to multi-organ system failure.',
            subtitle: 'Treated with oral or IV replacement depending on severity',
            additionalInfo: 'In anesthesia, avoid hyperglycemia and alkalosis which shift P into cells.',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Magnesium (Mg²⁺)',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'NORMAL RANGE',
            description: 'Standard values are 1.7–2.1 mEq/L.',
            additionalInfo: 'Important co-factor for many enzymatic reactions.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'HYPERMAGNESEMIA',
            description: 'Causes hyporeflexia, bradycardia, and cardiovascular depression.',
            subtitle: 'Treated with calcium gluconate and potentially dialysis in severe cases',
            additionalInfo: 'Significantly enhances the effects of NMB drugs; doses must be reduced.',
          ),
          FluidElectrolyteImbalanceItem(
            title: 'HYPOMAGNESEMIA',
            description: 'Leads to arrhythmias (including AF), muscle spasms, and psychiatric changes.',
            subtitle: 'Treated with oral or IV Mg (1–2 g) as needed',
            additionalInfo: 'Must be corrected alongside other electrolyte disturbances for stability.',
          ),
        ],
      ),
      FluidElectrolyteImbalanceCategory(
        categoryName: 'Critical Key Points',
        items: [
          FluidElectrolyteImbalanceItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Key clinical pointers for electrolyte-driven anesthesia management.',
            subtitle: 'Hyponatremia/Hypernatremia impact on MAC; K effect on NMB; Ca effect on QT',
            additionalInfo: 'Elective surgery postponement: Na >150, K >6, severe Ca imbalances. Increased osmolal gap signals toxins.',
          ),
        ],
      ),
    ];
  }
}
