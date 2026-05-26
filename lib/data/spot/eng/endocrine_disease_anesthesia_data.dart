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
  static List<EndocrineDiseaseAnesthesiaCategory>
      getEndocrineDiseaseAnesthesiaData(BuildContext context) {
    return [
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Pancreas & Diabetes',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: "DAILY INSULIN SECRETION AND SOURCE",
            description: "The healthy human body secretes approximately 50 Units of insulin daily from the islets of Langerhans in the pancreas.",
            additionalInfo: "This basal and postprandial secretion is essential for maintaining glucose homeostasis.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "DIABETES MELLITUS DIAGNOSTIC CRITERIA",
            description: "Diagnosis is confirmed with a fasting blood glucose level >126 mg/dL or an HbA1c value >6.5%.",
            additionalInfo: "Elevated HbA1c reflects poor long-term glycemic control and is associated with increased perioperative complications.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "DKA (DIABETIC KETOACIDOSIS) CLINICAL PICTURE",
            description: "DKA is a life-threatening acute metabolic complication and may be the very first manifestation of Type 1 Diabetes.",
            additionalInfo: "Characterized by hyperglycemia, metabolic acidosis, and ketonuria.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "DKA TREATMENT PROTOCOL AND FLUIDS",
            description: "Standard treatment involves insulin infusion at 0.1 U/kg/hr and aggressive NaCl replacement (1–2 L in the first hour).",
            subtitle: "Fluid replacement continues at 200–500 mL/hr; D5W is started when glucose falls below 250 mg/dL",
            additionalInfo: "The target drop in glucose is 75–100 mg/dL per hour; serum potassium levels must be monitored extremely closely as insulin drives K+ into cells.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "HYPERGLYCEMIA AND BRAIN OSMOLALITY",
            description: "Serum osmolality exceeding 360 mOsm/L due to high glucose leads to serious seizures and mental status changes.",
            additionalInfo: "Rapid correction should be avoided to prevent cerebral edema.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "HYPOGLYCEMIA SYMPTOMS AND BRAIN DAMAGE",
            description: "Glucose levels below 50 mg/dL trigger sympathetic discharge (sweating, tachycardia, irritability) and can cause irreversible brain damage.",
            additionalInfo: "Under general anesthesia, these symptoms are often masked, making regular monitoring vital.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "PERIOPERATIVE DIABETES MANAGEMENT (PRE-OP)",
            description: "HbA1c levels should be optimized; autonomic neuropathy must be screened for due to the risk of delayed gastric emptying.",
            subtitle: "Oral hypoglycemics like metformin should be stopped 24–48 hours before major surgery",
            additionalInfo: "Autonomic dysfunction also increases the risk of hemodynamic instability during induction.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "INTRAOPERATIVE GLUCOSE TARGETS",
            description: "Blood glucose should be maintained <180 mg/dL; a single unit of IV insulin typically lowers glucose by 25–30 mg/dL.",
            subtitle: "Insulin infusions are calculated at 0.1 U/kg/hr or the [glucose/150] rule",
            additionalInfo: "Frequent finger-stick measurements are required for safe management.",
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Thyroid Disorders',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: "HYPERTHYROIDISM SYMPTOMS AND SIGNS",
            description: "Patients present with weight loss, diarrhea, heat intolerance, and cardiac arrhythmias like sinus tachycardia or atrial fibrillation (AF).",
            additionalInfo: "Arrhythmias are often resistant to standard treatments until the thyroid state is controlled.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "PHARMACOLOGICAL MANAGEMENT OF HYPERTHYROIDISM",
            description: "Synthesis is blocked by PTU or Methimazole, while hormone release is inhibited by the administration of Iodide.",
            subtitle: "Beta-blockers are used to manage symptoms and reduce the conversion of T4 to active T3",
            additionalInfo: "Achieving a euthyroid state before elective surgery is the primary goal.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "THYROID STORM (THYROTOXIC CRISIS)",
            description: "Thyroid storm occurs 6–24 hours post-stress, presenting with hyperpyrexia, extreme tachycardia, and altered consciousness.",
            subtitle: "Differential diagnosis from Malign Hyperthermia (MH) is based on the absence of muscle rigidity and normal CK levels",
            additionalInfo: "Treatment includes active cooling, beta-blockers, PTU, iodide, and steroid support.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "HYPOTHYROIDISM AND METABOLIC SUPPRESSION",
            description: "Patients exhibit elevated TSH and low T4 levels, often resulting in cold mottled skin due to peripheral vasoconstriction.",
            additionalInfo: "Metabolism is significantly slowed, affecting drug clearance and thermoregulation.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "MYXEDEMA COMA CHARACTERISTICS",
            description: "This is a severe form of hypothyroidism characterized by hypoventilation, hypothermia, hyponatremia, and heart failure.",
            additionalInfo: "It represents a medical emergency with very high mortality rates.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "ANESTHESIA FOR HYPOTHYROID PATIENTS",
            description: "Anesthetic requirements are decreased, and there is a significantly increased risk for hypoxia and hypothermia.",
            subtitle: "Levothyroxine has a long half-life (8 days); a single missed dose is not critical",
            additionalInfo: "Patients must be monitored closely in the post-op period for opioid-induced respiratory depression.",
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Parathyroid Gland',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: "PTH (PARATHYROID HORMONE) PHYSIOLOGY",
            description: "PTH increases serum calcium via bone mobilization and renal reabsorption, while simultaneously increasing phosphate excretion.",
            additionalInfo: "It is the primary regulator of calcium homeostasis in the body.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "HYPERPARATHYROIDISM AND HYPERCALCEMIA",
            description: "Elevated calcium levels lead to hypertension (HT), cardiac arrhythmias, and a high incidence of kidney stones.",
            subtitle: "Acute treatment involves saline hydration and furosemide diuresis",
            additionalInfo: "Malignancy-related cases may require bisphosphonates, steroids, and calcitonin.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "HYPOPARATHYROIDISM AND HYPOCALCEMIA",
            description: "Low calcium levels lead to tetany and neuromuscular irritability, evidenced by positive Chvostek and Trousseau signs.",
            additionalInfo: "Symptoms can progress to laryngospasm and seizures if not treated with IV calcium.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "PERIOPERATIVE CALCIUM MANAGEMENT",
            description: "Hypocalcemia must be corrected preoperatively; use of albumin or citrate-containing blood products should be approached with caution.",
            additionalInfo: "Citrate in blood products binds ionized calcium, potentially worsening tetany.",
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Adrenal Gland',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: "ADDISON'S DISEASE (PRIMARY ADRENAL INSUFFICIENCY)",
            description: "A primary glucocorticoid and mineralocorticoid deficiency that impairs the body's ability to handle physiological stress.",
            additionalInfo: "Characteristic hyperpigmentation and salt craving may be present.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "ACUTE ADRENAL CRISIS AND SHOCK",
            description: "Presents as refractory hypotension or sudden cardiac arrest that is unresponsive to standard resuscitation efforts.",
            additionalInfo: "Usually triggered by surgical stress in patients with suppressed adrenal function.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "STRESS-DOSE STEROID PROTOCOLS",
            description: "Mandatory for patients with suspected insufficiency; typically given as 3x100 mg hydrocortisone daily.",
            subtitle: "Alternatively: 25 mg at induction followed by 100 mg/24 hr infusion",
            additionalInfo: "Failure to provide stress doses can lead to fatal intraoperative hemodynamic collapse.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "CUSHING'S SYNDROME (GLUCOCORTICOID EXCESS)",
            description: "Characterized by hypertension, central obesity, sarcopenia, and osteoporosis with a high risk of fractures.",
            subtitle: "Anesthesiologists must manage hypokalemic metabolic alkalosis and careful positioning",
            additionalInfo: "Fragile skin and bones require extra care during patient transfer.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "PHEOCHROMOCYTOMA (CATECHOLAMINE EXCESS)",
            description: "Adrenal tumors that cause paroxysmal hypertension, severe headache, palpitations, and drenching sweats.",
            additionalInfo: "The classic triad is headache, sweating, and tachycardia.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "PREOPERATIVE OPTIMIZATION FOR PHEOCHROMOCYTOMA",
            description: "Effective management requires alpha-blockade followed by fluid resuscitation, then beta-blockade only after alpha-blockade is complete.",
            additionalInfo: "Starting beta-blockers first can cause life-threatening hypertensive crises (unopposed alpha-agonism).",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "INTRAOPERATIVE PHEOCHROMOCYTOMA MANAGEMENT",
            description: "Invasive arterial monitoring (IABP) and wide-bore IV access are mandatory to manage extreme blood pressure fluctuations.",
            subtitle: "Hypertensive spikes are treated with fast-acting vasodilators like nitroprusside, phentolamine, or nicardipine",
            additionalInfo: "Indirect sympathomimetics and histamine-releasing drugs (like morphine or atracurium) must be strictly avoided.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "HEMODYNAMICS POST-TUMOR REMOVAL",
            description: "Following tumor ligation, blood pressure often drops precipitously, requiring aggressive fluid boluses and vasopressors.",
            additionalInfo: "Phenylephrine or norepinephrine may be needed until the vascular space adapts.",
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Obesity and Anesthesia',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: "OBESITY CLASSIFICATION (BMI)",
            description: "Obesity is defined as a BMI >30, while morbid obesity corresponds to a BMI >40.",
            additionalInfo: "BMI is a primary factor in predicting difficult airway and ventilation complications.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "PATHOPHYSIOLOGY OF OBESITY",
            description: "Characteristic findings include decreased FRC, OSA (Obstructive Sleep Apnea), restrictive lung patterns, and increased CO2 production.",
            additionalInfo: "Rapid desaturation occurs due to the low oxygen reserve in the FRC.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "OBESITY ANESTHESIA CONSIDERATIONS",
            description: "Requires aspiration prophylaxis and 'Ramp Positioning' (elevating head, neck, and shoulders) to facilitate intubation.",
            subtitle: "Drug dosing should be based on ideal body weight for most agents; epidural doses are reduced by 20–25%",
            additionalInfo: "Short-acting agents are preferred to ensure rapid return of protective airway reflexes.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "POST-OP OBESITY MANAGEMENT",
            description: "Patients should be extubated only when fully awake and sitting upright; CPAP may be required to maintain patency.",
            additionalInfo: "Cautious opioid use is mandatory to prevent terminal respiratory depression.",
          ),
        ],
      ),
      EndocrineDiseaseAnesthesiaCategory(
        categoryName: 'Carcinoid Syndrome',
        items: [
          EndocrineDiseaseAnesthesiaItem(
            title: "CARCINOID SYNDROME ETIOLOGY",
            description: "Caused by the systemic release of serotonin, histamine, and kallikreins from neuroendocrine tumors.",
            additionalInfo: "Vasoactive mediators are usually metabolized by the liver unless the tumor has metastasized to the liver.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "CARCINOID CLINICAL SYMPTOMS",
            description: "Presents as flushing, bronchospasm, severe diarrhea, extreme blood pressure swings, and right-sided heart valve disease.",
            additionalInfo: "Right-sided valvular fibrosis is a hallmark of long-standing carcinoid syndrome.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "CARCINOID DIAGNOSIS AND MONITORS",
            description: "Confirmed via elevated urinary 5-HIAA and plasma chromogranin A levels.",
            additionalInfo: "Monitoring must include IABP and frequent blood glucose checks.",
          ),
          EndocrineDiseaseAnesthesiaItem(
            title: "ANESTHETIC MANAGEMENT FOR CARCINOID",
            description: "Tumor manipulation should be minimized to prevent a massive release of mediators; non-histamine-releasing drugs are preferred.",
            subtitle: "Octreotide should be available to treat intraoperative carcinoid crises",
            additionalInfo: "Regional anesthesia (RA) is generally preferred where appropriate to avoid stress.",
          ),
        ],
      ),
    ];
  }
}
