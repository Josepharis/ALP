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
            title: 'DEFINITION OF THE PACU (POSTANESTHESIA CARE UNIT)',
            description: 'A specialized unit for the close monitoring of physiological functions and the early detection of post-anesthetic complications.',
            additionalInfo: 'Designed to ensure a safe transition for patients to surgical wards or intensive care.',
          ),
          PostanestheticCareItem(
            title: 'PRIMARY GOALS OF POSTANESTHETIC CARE',
            description: 'Focused on the stabilization of the airway, respiration, circulation, pain levels, and mental status.',
            additionalInfo: 'Thermoregulation is also a key target during the initial recovery phase.',
          ),
          PostanestheticCareItem(
            title: 'CRITERIA FOR TRANSFER TO THE PACU',
            description: 'Patients must exhibit adequate spontaneous respiration, cardiovascular stability, and have a secure airway established.',
            additionalInfo: 'The anesthesiologist remains responsible for the patient during the transport phase.',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Monitoring',
        items: [
          PostanestheticCareItem(
            title: 'CONTINUOUS HARVESTING OF VITAL SIGNS',
            description: 'Standard monitoring includes continuous ECG, pulse oximetry (SpO₂), noninvasive blood pressure, and respiratory rate.',
            additionalInfo: 'Vital signs should be documented at frequent, regular intervals.',
          ),
          PostanestheticCareItem(
            title: 'MONITORING FOR HIGH-RISK SURGICAL PATIENTS',
            description: 'May include invasive arterial pressure, central venous pressure, and continuous capnography (ETCO₂).',
            additionalInfo: 'Advanced monitoring is reserved for patients with significant comorbid disease or complex procedures.',
          ),
          PostanestheticCareItem(
            title: 'COMPONENTS OF THE INITIAL PACU ASSESSMENT',
            description: 'Immediate check of airway patency, oxygenation status, circulatory stability, level of consciousness, and pain.',
            additionalInfo: 'The findings are compared against the patient’s preoperative baseline.',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Airway and Respiration',
        items: [
          PostanestheticCareItem(
            title: 'THE MOST COMMON COMPLICATION: HYPOXIA',
            description: 'Insufficient oxygen levels represent the most frequent and potentially dangerous complication in the PACU.',
            additionalInfo: 'Hypoxia can occur rapidly and often subtly after general anesthesia.',
          ),
          PostanestheticCareItem(
            title: 'CAUSES OF POSTOPERATIVE RESPIRATORY DISTRESS',
            description: 'Linked to residual anesthetic agents, upper airway obstruction, bronchospasm, laryngospasm, and aspiration.',
            additionalInfo: 'Chest wall rigidity from high-dose opioids is another important differential diagnosis.',
          ),
          PostanestheticCareItem(
            title: 'MANAGEMENT OF AIRWAY OBSTRUCTION',
            description: 'Utilize airway adjuncts like oropharyngeal/nasopharyngeal airways and provide positive pressure ventilation if needed.',
            subtitle: 'Bronchospasm requires β₂-agonists and steroids while laryngospasm needs positive pressure and possible low-dose succinylcholine (0.1–0.5 mg/kg)',
            additionalInfo: 'Aspiration requires immediate airway clearance, high-flow oxygen, and potential re-intubation.',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Circulatory Problems',
        items: [
          PostanestheticCareItem(
            title: 'ETIOLOGY OF POSTOPERATIVE HYPOTENSION',
            description: 'Frequently caused by hypovolemia, residual anesthetic-induced vasodilation, or myocardial depression.',
            subtitle: 'Treatment involves rapid volume replacement, vasopressors (e.g., ephedrine), and blood products if warranted',
            additionalInfo: 'Unrecognized surgical bleeding must always be a consideration.',
          ),
          PostanestheticCareItem(
            title: 'POSTOPERATIVE HYPERTENSION TRIGGERS',
            description: 'Often driven by uncontrolled pain, hypercapnia, bladder distension, or a history of preoperative hypertension.',
            subtitle: 'Management focuses on adequate analgesia, sedation, and antihypertensives like β-blockers or nitroprusside',
            additionalInfo: 'Treating the underlying cause is more effective than sole pharmacological intervention.',
          ),
          PostanestheticCareItem(
            title: 'ARRHYTHMIAS IN THE RECOVERY UNIT',
            description: 'Usually secondary to underlying hypoxia, hypercapnia, electrolyte imbalances, or residual drug effects.',
            additionalInfo: 'Initial management involves correction of the metabolic trigger.',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Neurological & Mental Status',
        items: [
          PostanestheticCareItem(
            title: 'DELAYED RECOVERY OR FAILURE TO AWAKEN',
            description: 'May result from residual anesthetic or opioid effects, hypoglycemia, hypoxia, or perioperative stroke.',
            additionalInfo: 'Persistent neuromuscular block should be ruled out with TOF monitoring.',
          ),
          PostanestheticCareItem(
            title: 'POSTOPERATIVE AGITATION AND DELIRIUM',
            description: 'Commonly triggered by hypoxia, severe pain, urinary retention, or alcohol/drug withdrawal syndromes.',
            subtitle: 'Managed through oxygenation, correcting the underlying trigger, and limited use of short-acting sedatives',
            additionalInfo: 'Emergence delirium is more frequent in the pediatric population.',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Thermoregulation',
        items: [
          PostanestheticCareItem(
            title: 'MANAGEMENT OF POSTOPERATIVE HYPOTHERMIA (<36 °C)',
            description: 'Often occurring after prolonged surgery or use of unwarmed fluids and gases.',
            subtitle: 'Leads to shivering, five-fold increases in O₂ consumption, cardiac stress, and impaired coagulation',
            additionalInfo: 'Treatment involves active cutaneous warming and use of warmed fluids/gases.',
          ),
          PostanestheticCareItem(
            title: 'ASSESSING POSTOPERATIVE HYPERTHERMIA',
            description: 'While often inflammatory, the most critical cause to rule out is Malignant Hyperthermia (MH).',
            additionalInfo: 'MH requires immediate intervention with dantrolene and aggressive cooling.',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Pain Management',
        items: [
          PostanestheticCareItem(
            title: 'THE CHALLENGE OF ACUTE POSTOPERATIVE PAIN',
            description: 'One of the most frequent clinical issues in the PACU, requiring prompt and effective intervention.',
            additionalInfo: 'Inadequate control can lead to respiratory shallowing and delayed recovery.',
          ),
          PostanestheticCareItem(
            title: 'THE MULTIMODAL ANALGESIA PHILOSOPHY',
            description: 'Utilizes a combination of opioids, NSAIDs, local infiltration, and regional blocks to optimize comfort.',
            subtitle: 'PCA (Patient-Controlled Analgesia) is a safe and effective delivery method',
            additionalInfo: 'Goal is to minimize opioid-related side effects while maximizing pain relief.',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'PONV (Postoperative Nausea & Vomiting)',
        items: [
          PostanestheticCareItem(
            title: 'RISK FACTORS FOR POSTOPERATIVE EMESIS',
            description: 'Highest risk in females, non-smokers, those with a history of motion sickness or prior PONV, and opioid recipients.',
            additionalInfo: 'Use of the Apfel score helps quantify these risks.',
          ),
          PostanestheticCareItem(
            title: 'STRATEGIES FOR ANTIEMETIC PROPHYLAXIS',
            description: 'Common agents include ondansetron, dexamethasone, and droperidol, often used in combination.',
            additionalInfo: 'Prophylaxis is more effective than treating established vomiting.',
          ),
          PostanestheticCareItem(
            title: 'TREATMENT OF ESTABLISHED PONV',
            description: 'Management involves utilizing agents from different pharmacological classes or multimodal therapy.',
            additionalInfo: 'Hydration status also impacts the severity of symptoms.',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Other Complications',
        items: [
          PostanestheticCareItem(
            title: 'POSTOPERATİVE URINARY RETENTION',
            description: 'Common after neuraxial (spinal/epidural) anesthesia, requiring α-blockers or temporary catheterization.',
            additionalInfo: 'Bladder scanning helps in objective assessment.',
          ),
          PostanestheticCareItem(
            title: 'RECOVERY SHIVERING AND MEPERIDINE',
            description: 'Typically secondary to hypothermia; meperidine (12.5–25 mg IV) is uniquely effective for this condition.',
            additionalInfo: 'Active warming should accompany pharmacological treatment.',
          ),
          PostanestheticCareItem(
            title: 'RESIDUAL MUSCLE WEAKNESS',
            description: 'Results from incomplete reversal of neuromuscular block; must be verified with TOF monitoring (target >0.9).',
            additionalInfo: 'Sugammadex or anticholinesterases are used based on the degree of residual block.',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Discharge Criteria (from PACU)',
        items: [
          PostanestheticCareItem(
            title: 'THE ALDRETE DISCHARGE SCORING SYSTEM',
            description: 'Requires a score of ≥9–10 across categories including respiration, circulation, consciousness, activity, and SpO₂.',
            additionalInfo: 'Objective criteria reduce the variability in discharge decision-making.',
          ),
          PostanestheticCareItem(
            title: 'STABILITY OF VITAL SIGNS PRIOR TO DISCHARGE',
            description: 'Heart rate, blood pressure, and respiratory rate must remain within an acceptable range for 30–60 minutes.',
            additionalInfo: 'Orthostatic stability should be assessed if the patient is to ambulate.',
          ),
          PostanestheticCareItem(
            title: 'HAVA YOLU PATENCY AND PROTECTIVE REFLEXES',
            description: 'Adequate spontaneous respiration and presence of protective airway reflexes are mandatory.',
            additionalInfo: 'Patient should be able to clear secretions effectively.',
          ),
          PostanestheticCareItem(
            title: 'ADEQUACY OF PAIN AND NAUSEA CONTROL',
            description: 'Symptoms must be manageable with oral medications or baseline ward-level care.',
            additionalInfo: 'Severe, uncontrolled pain is a reason for continued monitoring.',
          ),
          PostanestheticCareItem(
            title: 'EXCLUSION OF SURGICAL COMPLICATIONS',
            description: 'Involves a check of the surgical site and drains for excessive bleeding or other acute issues.',
            additionalInfo: 'Final sign-off is often a collaborative effort with the surgical team.',
          ),
        ],
      ),
      PostanestheticCareCategory(
        categoryName: 'Clinical Pearls',
        items: [
          PostanestheticCareItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Key benchmarks: Hypoxia is the #1 complication; Aldrete is the discharge standard; Hypovolemia is the main hypotension cause.',
            additionalInfo: 'Always monitor for residual NMB (TOF >0.9) and employ multimodal PONV prophylaxis for best results.',
          ),
        ],
      ),
    ];
  }
}
