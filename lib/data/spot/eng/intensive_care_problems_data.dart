import 'package:flutter/material.dart';

class IntensiveCareProblemsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  IntensiveCareProblemsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class IntensiveCareProblemsCategory {
  final String categoryName;
  final List<IntensiveCareProblemsItem> items;

  IntensiveCareProblemsCategory({
    required this.categoryName,
    required this.items,
  });
}

class IntensiveCareProblemsData {
  static List<IntensiveCareProblemsCategory> getIntensiveCareProblemsData(BuildContext context) {
    return [
      IntensiveCareProblemsCategory(
        categoryName: 'General Principles',
        items: [
          IntensiveCareProblemsItem(
            title: 'MULTISYSTEM RISK IN THE CRITICAL PATIENT',
            description: 'Intensive care patients typically present with high risks of multi-organ dysfunction rather than isolated single-system disease.',
            additionalInfo: 'Vigilant and proactive care is required to prevent progressive organ failure.',
          ),
          PostanestheticCareItem(
             title: "ANESTHESIOLOGIST'S ROLE IN CRITICAL CARE",
             description: "Key responsibilities include mechanical ventilation, circulatory support, fluid balance, and the management of severe sepsis.",
             additionalInfo: "The transition from the operating room to the ICU is a critical period managed by the anesthesia team.",
          ),
          IntensiveCareProblemsItem(
            title: 'REQUIREMENTS FOR SUCCESSFUL INTENSIVE CARE',
            description: 'Success depends on continuous physiological monitoring and a collaborative, multidisciplinary clinical approach.',
             additionalInfo: "Timely intervention based on monitoring trends is essential.",
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Respiratory System Problems',
        items: [
          IntensiveCareProblemsItem(
            title: 'HYPOXEMIA ETIOLOGY IN THE INTENSIVE CARE UNIT',
            description: 'Commonly results from atelectasis, ARDS, pneumonia, or pulmonary embolism.',
            subtitle: 'Diagnostic benchmarks: ↓ SpO₂ and PaO₂ <60 mmHg',
            additionalInfo: 'Management includes incremental FiO₂ adjustments, PEEP optimization, and recruitment maneuvers.',
          ),
          IntensiveCareProblemsItem(
            title: 'HYPERCAPNIA AND HYPOVENTILATION MECHANISMS',
            description: 'Often caused by residual sedative effects, opioid-induced respiratory depression, or upper airway obstruction.',
            additionalInfo: 'Increasing minute ventilation is the primary treatment for CO2 retention.',
          ),
          IntensiveCareProblemsItem(
            title: 'ACUTE RESPIRATORY DISTRESS SYNDROME (ARDS) CRITERIA',
            description: 'Characterized by acute onset, bilateral infiltrates on imaging, and a PaO₂/FiO₂ ratio ≤300.',
            subtitle: 'Lung-protective strategy: low tidal volume (6 mL/kg) and plateau pressure <30 cmH₂O',
            additionalInfo: 'Prone positioning may be considered in cases of refractory hypoxemia.',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Cardiovascular Problems',
        items: [
          IntensiveCareProblemsItem(
            title: 'HYPOTENSION AND SEPTIC SHOCK MANAGEMENT',
            description: 'Typically driven by hypovolemia, severe sepsis, or cardiogenic failure, threatening organ perfusion.',
            subtitle: 'Treatment: aggressive fluid resuscitation and norepinephrine as the first-line vasopressor',
            additionalInfo: 'Mean arterial pressure (MAP) targets should generally be ≥65 mmHg.',
          ),
          IntensiveCareProblemsItem(
            title: 'ICU HYPERTENSION AND SYMPATHETIC OVERACTIVITY',
            description: 'Often a secondary response to uncontrolled pain, severe anxiety, or increased intracranial pressure (ICP).',
            additionalInfo: 'Treating the underlying cause is prioritized over non-specific antihypertensive use.',
          ),
          IntensiveCareProblemsItem(
            title: 'PERIOPERATIVE ARRHYTHMIAS IN CRITICAL CARE',
            description: 'Linked to electrolyte disturbances, underlying hypoxia, or therapeutic catecholamine infusions.',
            subtitle: 'Immediate management includes correcting the underlying metabolic or respiratory trigger',
            additionalInfo: 'Magnesium and potassium levels should be kept in the high-normal range.',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Neurological Problems',
        items: [
          IntensiveCareProblemsItem(
            title: 'DELIRIUM AND AGITATION IN THE INTENSIVE CARE UNIT',
            description: 'Triggered by hypoxia, sepsis, drug withdrawal, or significant electrolyte abnormalities.',
            additionalInfo: 'Delirium is associated with prolonged ICU stays and higher overall mortality.',
          ),
          IntensiveCareProblemsItem(
            title: 'FAILURE TO AWAKEN AND METABOLIC ENCEPHALOPATHY',
            description: 'Causes include residual anesthetic effects, severe hypoglycemia, perioperative stroke, or uremia.',
            additionalInfo: 'Clinical exclusion of pharmacological sedation is the first step in assessment.',
          ),
          IntensiveCareProblemsItem(
            title: 'NEUROLOGICAL MONITORING AND PUPILLARY REFLEXES',
            description: 'Serial Glasgow Coma Scale (GCS) assessments, pupillary checks, and EEG are vital for detecting neurological decline.',
            additionalInfo: 'New-onset focal deficits require immediate neuroimaging.',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Renal Problems',
        items: [
          IntensiveCareProblemsItem(
            title: 'ACUTE KIDNEY INJURY (AKI) AND OLIGURIA CRITERIA',
            description: 'Often resulting from hypoperfusion, sepsis, or nephrotoxic drugs; diagnosed via creatinine rise or decreased urine output.',
            subtitle: 'Oliguria is defined as urine output <0.5 mL/kg/h',
            additionalInfo: 'Management targets include maintaining renal perfusion and starting RRT (e.g., CRRT) if needed.',
          ),
          IntensiveCareProblemsItem(
            title: 'LIFE-THREATENING ELECTROLYTE DISORDERS',
            description: 'Hyperkalemia is the most urgent metabolic emergency; hyponatremia and hypocalcemia also impact cardiovascular stability.',
            additionalInfo: 'Rapid shift of potassium (insulin/glucose) is a temporary life-saving measure.',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Gastrointestinal & Nutrition',
        items: [
          IntensiveCareProblemsItem(
            title: 'STRESS ULCER PROPHYLAXIS IN THE ICU',
            description: 'Standard practice involves proton pump inhibitors (PPIs) or H₂ blockers for high-risk patients.',
            additionalInfo: 'Mechanical ventilation and coagulopathy are the two strongest risk factors for stress bleeding.',
          ),
          IntensiveCareProblemsItem(
            title: 'POSTOPERATIVE ILEUS AND MOTILITY DISORDERS',
            description: 'Associated with excessive opioid use, electrolyte imbalances, and severe intra-abdominal sepsis.',
            additionalInfo: 'Reducing opioid burden and early mobilization can accelerate bowel recovery.',
          ),
          IntensiveCareProblemsItem(
            title: 'ENTERAL NUTRITION AND MUCOSAL INTEGRITY',
            description: 'The preferred route of nutritional delivery as it preserves intestinal architecture and reduces bacterial translocation.',
            subtitle: 'TPN (Total Parenteral Nutrition) carries significantly higher risks of sepsis and hyperglycemia',
            additionalInfo: 'Enteral feeding should be initiated within 24-48 hours if possible.',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Infection & Sepsis',
        items: [
          IntensiveCareProblemsItem(
            title: 'LEADING CAUSE OF ICU MORTALITY: SEPSIS',
            description: 'Sepsis and its progression to septic shock remain the most frequent causes of death in critical care settings.',
            additionalInfo: 'Requires rapid identification via qSOFA or SOFA scoring systems.',
          ),
          IntensiveCareProblemsItem(
            title: 'DIAGNOSTIC CRITERIA FOR SEVERE SEPSIS',
            description: 'Includes systemic temperature abnormalities, tachycardia, leukocytosis/leukopenia, and evidence of organ dysfunction.',
            additionalInfo: 'Elevated serum lactate is a key biomarker for tissue hypoperfusion.',
          ),
          IntensiveCareProblemsItem(
            title: 'EARLY MANAGEMENT OF SEPTIC SHOCK',
            description: 'Focuses on early broad-spectrum antibiotics (within 1 hour), fluid resuscitation, and norepinephrine for MAP maintenance.',
            subtitle: 'Surgical or radiological source control is mandatory for abscesses or necrotic tissue',
            additionalInfo: 'Initial fluid bolus of 30 mL/kg crystalloid is recommended.',
          ),
          IntensiveCareProblemsItem(
            title: 'ICU RISK FACTORS FOR SECONDARY INFECTION',
            description: 'Linked to invasive central lines, indwelling catheters, endotracheal intubation, and surgical site contamination.',
            additionalInfo: 'Infection bundles should be strictly followed to reduce VAP and CLABSI.',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Hematological Problems',
        items: [
          IntensiveCareProblemsItem(
            title: 'THROMBOCYTOPENIA IN CRITICAL ILLNESS',
            description: 'Common causes include severe sepsis, drug side effects, and heparin-induced thrombocytopenia (HIT).',
            additionalInfo: 'Profound drops in platelet counts increase the risk of spontaneous intracranial bleeding.',
          ),
          IntensiveCareProblemsItem(
            title: 'DIC (DISSEMINATED INTRAVASCULAR COAGULATION)',
            description: 'A systemic activation of coagulation leading to factor consumption and simultaneous bleeding and thrombosis.',
            subtitle: 'Management focus: treating the underlying cause (sepsis/trauma) and supporting with FFP/Platelets',
            additionalInfo: 'Schistocytes on a blood smear may support the diagnosis.',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Metabolic & Endocrine Problems',
        items: [
          IntensiveCareProblemsItem(
            title: 'STRESS HYPERGLYCEAMIA AND INSULIN TARGETS',
            description: 'Critical illness induces insulin resistance; maintaining blood glucose between 140–180 mg/dL is standard.',
            additionalInfo: 'Tight glycemic control (<110 mg/dL) is no longer recommended due to high hypoglycemia risks.',
          ),
          IntensiveCareProblemsItem(
            title: 'HYPOGLYCEMIA RISKS IN THE ICU',
            description: 'Often caused by intensive insulin therapy or liver failure; sepsis can also paradoxically cause low sugars.',
            additionalInfo: 'Requires immediate titration of glucose infusion.',
          ),
          IntensiveCareProblemsItem(
            title: 'CRITICAL ILLNESS ENDOCRINE EMERGENCIES',
            description: 'Includes relative adrenal insufficiency and thyroid storm; stress-dose hydrocortisone may be used for shock.',
            additionalInfo: 'Diagnosis of adrenal insufficiency in the ICU is often clinical based on vasopressor requirements.',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Neuromuscular Problems',
        items: [
          IntensiveCareProblemsItem(
            title: 'PROLONGED NEUROMUSCULAR BLOCKADE',
            description: 'Result of drug accumulation (especially in renal failure), hypermagnesemia, or severe acidosis.',
            additionalInfo: 'Always assess with TOF monitoring if patients fail to initiate spontaneous breaths.',
          ),
          IntensiveCareProblemsItem(
            title: 'CRITICAL ILLNESS POLYNEUROPATHY AND MYOPATHY',
            description: 'Associated with prolonged ICU stay, high-dose steroids, and sepsis; presents as generalized weakness.',
            subtitle: 'Major cause of ventilation weaning difficulty',
            additionalInfo: 'Early rehabilitation and mobilization are the only effective preventive measures.',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Special ICU Situations',
        items: [
          IntensiveCareProblemsItem(
            title: 'SEPSIS BUNDLED CARE AND CRYSTALLOIDS',
            description: 'Standardized approach involving lactate measurement, blood cultures, 30 mL/kg fluids, and early antibiotics.',
            additionalInfo: 'Crystalloids are preferred over colloids for initial resuscitation.',
          ),
          IntensiveCareProblemsItem(
            title: 'ACUTE CORONARY SYNDROME (ACS) IN THE ICU',
            description: 'Requires aspirin, heparin, beta-blockers, and early cardiology consultation for potential PCI.',
            additionalInfo: 'Troponin levels should be checked in all patients with unexplained tachycardia or chest pain.',
          ),
          IntensiveCareProblemsItem(
            title: 'PULMONARY EMBOLISM (PE) AND THROMBOLYSIS',
            description: 'A high-risk complication requiring anticoagulation; systemic thrombolysis is reserved for massive/unstable PE.',
            additionalInfo: 'Suspect PE in cases of sudden, unexplained hypoxemia or right heart strain.',
          ),
          IntensiveCareProblemsItem(
            title: 'MANAGEMENT OF STATUS EPILEPTICUS',
            description: 'Initial control with benzodiazepines followed by propofol or thiopental for refractory cases.',
            additionalInfo: 'Continuous EEG is required to rule out non-convulsive status.',
          ),
        ],
      ),
      IntensiveCareProblemsCategory(
        categoryName: 'Spot Notes',
        items: [
          IntensiveCareProblemsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Leading death cause: Sepsis/MOF. ARDS Target: 6 mL/kg tidal, <30 plateau. Shock drug: Norepinephrine.',
            additionalInfo: 'AKI: dialysis if oliguria persists despite fluids. Long intubation #1 risk: Pneumonia (VAP).',
          ),
        ],
      ),
    ];
  }
}

// Added this helper class because it was missing in the current scope for one specific item
class PostanestheticCareItem extends IntensiveCareProblemsItem {
  PostanestheticCareItem({
    required String title,
    required String description,
    String? subtitle,
    String? additionalInfo,
  }) : super(title: title, description: description, subtitle: subtitle, additionalInfo: additionalInfo);
}
