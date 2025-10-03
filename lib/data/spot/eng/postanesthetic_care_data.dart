import 'package:flutter/material.dart';

class PostanestheticCareItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PostanestheticCareItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PostanestheticCareCategory {
  final String categoryName;
  final List<PostanestheticCareItem> items;

  PostanestheticCareCategory({
    required this.categoryName,
    required this.items,
  });
}

class PostanestheticCareData {
  static List<PostanestheticCareCategory> getPostanestheticCareData(BuildContext context) {
    return [
      PostanestheticCareCategory(
        categoryName: 'General Principles',
        items: [
          PostanestheticCareItem(
            title: 'PACU (Postanesthesia Care Unit)',
            description: 'Established for close monitoring of physiological functions and early recognition/treatment of complications after anesthesia',
          ),
          PostanestheticCareItem(
            title: 'Goals',
            description: 'Stabilization of airway, respiration, circulation, pain, thermoregulation, and mental status',
          ),
          PostanestheticCareItem(
            title: 'Transfer to PACU',
            description: 'Only patients with adequate spontaneous respiration, stable circulation, and a secure airway are accepted',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Monitoring',
        items: [
          PostanestheticCareItem(
            title: 'Continuous Monitoring',
            description: 'ECG, SpO₂, noninvasive BP, respiratory rate',
          ),
          PostanestheticCareItem(
            title: 'High-Risk Patients',
            description: 'Invasive arterial/venous pressure, ETCO₂ monitoring',
          ),
          PostanestheticCareItem(
            title: 'Initial Assessment',
            description: 'Airway, oxygenation, circulation, consciousness, pain',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Airway and Respiration',
        items: [
          PostanestheticCareItem(
            title: 'Most Common Complication',
            description: 'Hypoxia',
          ),
          PostanestheticCareItem(
            title: 'Causes',
            description: 'Residual anesthetic effect, upper airway obstruction, bronchospasm, laryngospasm, aspiration, chest wall rigidity',
          ),
          PostanestheticCareItem(
            title: 'Management',
            description: 'Airway adjuncts (oropharyngeal/nasopharyngeal), positive pressure ventilation',
            subtitle: 'Bronchospasm → β₂-agonist, steroid',
            additionalInfo: 'Laryngospasm → positive pressure, if needed succinylcholine (0.1–0.5 mg/kg)\nAspiration → airway clearance, oxygen, intubation if required',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Circulatory Problems',
        items: [
          PostanestheticCareItem(
            title: 'Hypotension',
            description: 'Hypovolemia, residual anesthetics, vasodilators, cardiac depression, bleeding',
            subtitle: 'Treatment: volume replacement, vasopressors (ephedrine, phenylephrine), blood products',
          ),
          PostanestheticCareItem(
            title: 'Hypertension',
            description: 'Pain, hypercapnia, bladder distension, preop HT',
            subtitle: 'Treatment: analgesia, sedation, β-blockers, nitroprusside',
          ),
          PostanestheticCareItem(
            title: 'Arrhythmias',
            description: 'Hypoxia, hypercapnia, electrolyte imbalance, drug effects',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Neurological & Mental Status',
        items: [
          PostanestheticCareItem(
            title: 'Failure to Awaken',
            description: 'Residual anesthetic/opioid, hypoglycemia, hypoxia, stroke, neuromuscular block',
          ),
          PostanestheticCareItem(
            title: 'Agitation/Delirium',
            description: 'Hypoxia, pain, urinary retention, alcohol/drug withdrawal',
            subtitle: 'Management: oxygen, correct underlying cause, short-acting sedatives if needed',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Thermoregulation',
        items: [
          PostanestheticCareItem(
            title: 'Hypothermia (<36 °C)',
            description: 'Common after long surgeries, cold fluids/gases',
            subtitle: 'Results: shivering, ↑ O₂ consumption, cardiac stress, coagulopathy',
            additionalInfo: 'Treatment: active warming, warmed fluids/gases',
          ),
          PostanestheticCareItem(
            title: 'Hyperthermia',
            description: 'Most important cause → malignant hyperthermia (treated with dantrolene)',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Pain Management',
        items: [
          PostanestheticCareItem(
            title: 'Postop Pain',
            description: 'One of the most frequent issues',
          ),
          PostanestheticCareItem(
            title: 'Multimodal Approach',
            description: 'Opioids, NSAIDs, local infiltration, regional block',
            subtitle: 'PCA (patient-controlled analgesia) can be used',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'PONV (Postoperative Nausea & Vomiting)',
        items: [
          PostanestheticCareItem(
            title: 'Risk Factors',
            description: 'Female sex, nonsmoker, opioid use, prior PONV/motion sickness',
          ),
          PostanestheticCareItem(
            title: 'Prophylaxis',
            description: 'Ondansetron, dexamethasone, droperidol',
          ),
          PostanestheticCareItem(
            title: 'Treatment',
            description: 'Same agents or combination therapy',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Other Complications',
        items: [
          PostanestheticCareItem(
            title: 'Urinary Retention',
            description: 'Especially after spinal/epidural → α-blocker or catheterization',
          ),
          PostanestheticCareItem(
            title: 'Shivering',
            description: 'Most often due to hypothermia → meperidine 12.5–25 mg IV',
          ),
          PostanestheticCareItem(
            title: 'Muscle Weakness',
            description: 'Residual NMB → assess with TOF monitoring',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Discharge Criteria (from PACU)',
        items: [
          PostanestheticCareItem(
            title: 'Aldrete Score',
            description: '≥9–10 (respiration, circulation, consciousness, activity, SpO₂)',
          ),
          PostanestheticCareItem(
            title: 'Stable Vital Signs',
            description: 'Must be maintained',
          ),
          PostanestheticCareItem(
            title: 'Secure Airway',
            description: 'Adequate spontaneous respiration',
          ),
          PostanestheticCareItem(
            title: 'Pain and PONV Control',
            description: 'Under control',
          ),
          PostanestheticCareItem(
            title: 'No Surgical Complications',
            description: 'No signs of surgical complications',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Clinical Pearls',
        items: [
          PostanestheticCareItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Most common PACU complication: hypoxia',
            subtitle: 'Scoring system for discharge: Aldrete',
            additionalInfo: 'Most common cause of hypotension: hypovolemia\nResidual block: use anticholinesterase/sugammadex\nMost effective PONV prophylaxis: multimodal approach',
          ),
        ],
      ),
    ];
  }
}
