import 'package:flutter/material.dart';

class EndocrineDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  EndocrineDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class EndocrineDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<EndocrineDiseaseAnesthesiaItem> items;

  EndocrineDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class EndocrineDiseaseAnesthesiaData {
  static List<EndocrineDiseaseAnesthesiaCategory> getEndocrineDiseaseAnesthesiaData(BuildContext context) {
    return [
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Pancreas & Diabetes',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'Daily Insulin Secretion',
            description: '≈ 50 U (islets of Langerhans)',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Diagnosis',
            description: 'Fasting glucose >126 mg/dL or HbA1c >6.5%',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'DKA',
            description: 'May be first manifestation of type 1 DM',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'DKA Treatment',
            description: 'Insulin 0.1 U/kg/hr; NaCl 1–2 L in first hr → then 200–500 mL/hr',
            subtitle: 'Glucose <250 mg/dL → start D5W',
            additionalInfo: 'Target drop: 75–100 mg/dL/hr or 10%/hr\nMonitor K closely',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Hyperglycemia',
            description: '>360 mOsm/L → seizures, mental status changes',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Hypoglycemia',
            description: '<50 mg/dL severe; sweating, tachycardia, irritability (catecholamine release)',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Anesthesia - Pre-op',
            description: 'High HbA1c → ↑ periop complications; autonomic neuropathy → delayed gastric emptying',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Anesthesia - Intra-op',
            description: 'Keep glucose <180 mg/dL; 1 U insulin ↓ glucose 25–30 mg/dL; insulin infusion 0.1 U/kg/hr or [glucose/150]',
            subtitle: 'Sulfonylureas/metformin → stop 24–48 h before',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Anesthesia - Post-op',
            description: 'Maintain strict glucose control (stress hyperglycemia risk)',
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Thyroid',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'Hyperthyroidism - Symptoms',
            description: 'Weight loss, diarrhea, irritability, heat intolerance, arrhythmias (sinus tachycardia/AF)',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Hyperthyroidism - Treatment',
            description: 'PTU, methimazole → block synthesis',
            subtitle: 'Iodide → block release',
            additionalInfo: 'β-blockers → ↓ T4→T3 conversion',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Hyperthyroidism - Anesthesia',
            description: 'Pre-op: achieve euthyroid state',
            subtitle: 'Intra-op: monitor cardiac function & temperature; protect cornea in Graves\'',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Thyroid Storm',
            description: '6–24 h: hyperpyrexia, tachycardia, altered consciousness (not MH—no rigidity/CK rise)',
            subtitle: 'Treatment: cooling + β-blocker + PTU + iodide + steroid',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Hypothyroidism - Symptoms',
            description: 'High TSH, low T4; peripheral VC → cold mottled skin',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Myxedema Coma',
            description: 'Altered mental status, hypoventilation, hypothermia, hyponatremia, HF',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Hypothyroidism - Anesthesia',
            description: 'Pre-op: aim for euthyroid; single missed levothyroxine dose not an issue (T4 t½ ≈ 8 d)',
            subtitle: 'Intra-op: ↓ anesthetic requirements, ↑ hypoxia/hypothermia risk',
            additionalInfo: 'Post-op: monitor for opioid-induced respiratory depression',
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Parathyroid',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'PTH Function',
            description: '↑ Ca (bone mobilization, renal reabsorption), ↑ phosphate excretion',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Hyperparathyroidism',
            description: 'Hypercalcemia → HT, arrhythmias, kidney stones',
            subtitle: 'Treatment: saline + furosemide; if malignancy-related → bisphosphonate, steroid, calcitonin',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Hypoparathyroidism',
            description: 'Hypocalcemia → tetany, +Chvostek/Trousseau',
            subtitle: 'Treatment: IV calcium',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Anesthesia',
            description: 'Hypocalcemia must be corrected pre-op',
            subtitle: 'Beware of albumin/citrate-containing solutions',
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Adrenal Gland',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'Glucocorticoid Deficiency',
            description: 'Addison\'s: primary adrenal insufficiency',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Acute Adrenal Crisis',
            description: 'Hypotension, arrest, unresponsive to resuscitation',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Adrenal Insufficiency - Anesthesia',
            description: 'Stress-dose steroids mandatory → 3×100 mg hydrocortisone; alternative: 25 mg at induction + 100 mg/24 h postop',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Glucocorticoid Excess',
            description: 'Cushing\'s: sarcopenia, osteoporosis, central obesity, HT',
            subtitle: 'Anesthesia: hypokalemic metabolic alkalosis, ↑ fracture risk',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Catecholamine Excess',
            description: 'Pheochromocytoma: paroxysmal HT, headache, sweating, palpitations',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Pheochromocytoma - Anesthesia Pre-op',
            description: 'α-blockade + fluid, then β-blockade',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Pheochromocytoma - Anesthesia Intra-op',
            description: 'IABP monitoring, wide-bore IV',
            subtitle: 'HT → treat with phentolamine, nitroprusside, nicardipine',
            additionalInfo: 'Avoid indirect sympathomimetics & histamine-releasing drugs',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Pheochromocytoma - Post-tumor Removal',
            description: 'Hypotension → fluids, phenylephrine/norepi if needed',
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Obesity',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'BMI Classification',
            description: 'BMI >30 obese, >40 morbidly obese',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Physiology',
            description: '↓ FRC, OSA, restrictive lung pattern, ↑ CO₂ production',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Anesthesia - Pre-op',
            description: 'Aspiration prophylaxis, prepare for difficult airway',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Anesthesia - Intra-op',
            description: 'Use short-acting agents, dose by ideal body weight; epidural LA dose ↓ 20–25%',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Anesthesia - Post-op',
            description: 'Extubate only when full strength; CPAP; cautious opioid use',
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Carcinoid Syndrome',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'Cause',
            description: 'Serotonin, histamine, kallikrein release',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Symptoms',
            description: 'Flushing, bronchospasm, severe diarrhea, BP swings, right-sided heart disease',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Diagnosis',
            description: 'Urine 5-HIAA, plasma chromogranin ↑',
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: 'Anesthesia',
            description: 'Tumor manipulation may ↑ mediator release → avoid if possible',
            subtitle: 'Prefer RA and non–histamine-releasing drugs',
            additionalInfo: 'Monitor IABP, blood glucose',
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Daily insulin secretion ≈ 50 U',
            subtitle: 'DKA: insulin 0.1 U/kg/hr, NaCl 1–2 L first hr',
            additionalInfo: 'Thyroid storm: cooling + β-blocker + PTU + iodide + steroid\nStress-dose steroids: 3×100 mg hydrocortisone\nPheochromocytoma: α-blockade + fluid, then β-blockade\nBMI >30 obese, >40 morbidly obese',
          ),
        ],
      ),
    ];
  }
}
