import 'package:flutter/material.dart';

class OutpatientNonOrAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OutpatientNonOrAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OutpatientNonOrAnesthesiaCategory {
  final String categoryName;
  final List<OutpatientNonOrAnesthesiaItem> items;

  OutpatientNonOrAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class OutpatientNonOrAnesthesiaData {
  static List<OutpatientNonOrAnesthesiaCategory>
      getOutpatientNonOrAnesthesiaData(BuildContext context) {
    return [
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'General Principles',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "DEFINITION OF OUTPATIENT SURGERY AND ANESTHESIA",
            description: "A system where both anesthesia and surgical intervention are applied and the patient is discharged within the same day.",
            additionalInfo: "It aims to increase efficiency by minimizing the hospital stay duration.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "ADVANTAGES OF SAME-DAY DISCHARGE AND SURGERY",
            description: "Low cost, reduced risk of hospital-acquired infection, and rapid recovery of the patient in their own environment are the main advantages.",
            additionalInfo: "It ensures that patients are less affected psychologically.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "CORE CHALLENGES IN OUTPATIENT ANESTHESIA MANAGEMENT",
            description: "Correct patient selection, complication management, and limited resources especially in non-hospital units are the biggest challenges.",
            additionalInfo: "It requires meticulous planning to keep unexpected hospitalization rates low.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Patient Selection',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "ASA CLASSIFICATION AND AMBULATORY SURGERY SUITABILITY (ASA I-II-III)",
            description: "ASA I and II patients are the most suitable candidates; ASA III cases with controlled comorbidities can also be accepted selectively.",
            additionalInfo: "The functional capacity of the patient is prominent rather than the disease state.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "ABSOLUTE CONTRAINDICATIONS FOR OUTPATIENT ANESTHESIA",
            description: "Uncontrolled diabetes, hypertension, severe cardiac/pulmonary failures, and active infections prevent outpatient surgery.",
            additionalInfo: "The absence of a companion to provide care at home is also a contraindication.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "SPECIAL PATIENT GROUPS (CHILD, ELDERLY AND OBESITY MANAGEMENT)",
            description: "Children are generally ideal for outpatient surgery; in elderly and obese patients, comorbidities are risk factors.",
            subtitle: "In case of obesity, airway difficulty, PONV and OSA risks increase significantly",
            additionalInfo: "ENT and urological minor surgeries are the most frequent outpatient procedures in children.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Preoperative Preparation',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "PREOPERATIVE FASTING RULES AND SOLID-LIQUID FOOD LIMITS",
            description: "Fasting rule of 6-8 hours for solid foods, 4 hours for breast milk and 2 hours for clear liquids is applied.",
            additionalInfo: "Unnecessarily long fasting can create dehydration and restlessness.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "PREMEDICATION STRATEGIES AND RAPID RECOVERY GOAL",
            description: "Minimal sedative doses are preferred, aiming for rapid recovery and early discharge of the patient.",
            additionalInfo: "Short-acting agents (e.g., Midazolam) can be used in patients with high anxiety levels.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "PONV (NAUSEA-VOMITING) PROPHYLAXIS AND RISK MANAGEMENT",
            description: "Antiemetic prophylaxis must be performed before or during surgery in patients with high PONV risk.",
            additionalInfo: "PONV is the most annoying factor preventing outpatient patients from going home.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Induction and Maintenance',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "INDUCTION AGENTS AND ADVANTAGES OF PROPOFOL",
            description: "Propofol is the gold standard induction agent for outpatient cases due to its rapid onset and rapid recovery features.",
            subtitle: "Intranasal or IM sedation options can also be evaluated in children if cooperation is not provided",
            additionalInfo: "Its anti-emetic feature makes propofol invaluable for this group.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "ANESTHESIA MAINTENANCE: TIVA AND INHALATION OPTIONS",
            description: "Maintenance is provided with TIVA (Total Intravenous Anesthesia) or low-solubility inhalation agents (Sevoflurane/Desflurane).",
            subtitle: "Short-acting opioids (Fentanyl, Remifentanil) increase peroperative comfort",
            additionalInfo: "Muscle relaxant need should be kept minimal; if necessary, short/medium acting ones should be preferred.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "STANDARD ASA MONITORING AND SAFETY PROTOCOLS",
            description: "ECG, SpO2, NIBP, and ETCO2 monitoring is mandatory in any setting where the intervention is performed (including non-hospital).",
            additionalInfo: "Safety standards should be kept at the same level as the operating room.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Non-Operating Room Anesthesia (NORA)',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "NORA (NON-OR) APPLICATION AREAS AND LOCATIONS",
            description: "Endoscopy units, MRI/CT radiology sections, interventional cardiology laboratories and emergency departments are the main NORA areas.",
            additionalInfo: "It should be remembered that the anesthesiologist is a 'guest' and there are non-standard conditions in these areas.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "TECHNICAL CHALLENGES AND EQUIPMENT IN NORA LOCATIONS",
            description: "Narrow spaces, equipment clutter, and limited access to the patient are the most basic physical challenges.",
            subtitle: "Spare oxygen source and fully equipped resuscitation (rescue) equipment should be ready at any moment",
            additionalInfo: "Communication breakdowns can pave the way for medical errors in these areas.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "RISKS IN SPECIAL AREAS SUCH AS MRI AND ENDOSCOPY",
            description: "Use of magnetic field compatible monitors and equipment in MRI units is a vital necessity.",
            subtitle: "Respiratory monitoring is difficult in endoscopic procedures due to airway sharing",
            additionalInfo: "Deep Sedation or general anesthesia may be required for children in radiology.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Recovery and Discharge',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "OUTPATIENT SURGERY DISCHARGE CRITERIA AND STABILITY",
            description: "Although the requirement to urinate has been abandoned in modern protocols, stability of vital signs is essential.",
            subtitle: "Oral fluid intake and ability to walk safely without support (wakefulness) is a must",
            additionalInfo: "Analgesia level should be sufficient for being sent home and pain should be under control.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "ALDRETE SCORING AND DISCHARGE THRESHOLD (>= 9/10)",
            description: "Modified Aldrete score is expected to be at least 9/10 for the discharge of the patient from the recovery unit or hospital.",
            additionalInfo: "Based on respiratory, circulation, consciousness, activity, and color criteria.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "SYSTEMIC DISCHARGE CONDITIONS AND COMPANION REQUIREMENT",
            description: "A responsible adult (companion) who will take the patient home and support them on their first night is a must in outpatient surgery.",
            additionalInfo: "The patient cannot drive alone and cannot return by public transportation.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Complications',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "AIRWAY OBSTRUCTION AND SEDATION RISKS",
            description: "Airway narrowings are frequent in procedures such as upper GI endoscopies where deep sedation is applied.",
            additionalInfo: "If necessary, airway tools (LMA, intubation) should be put into use immediately.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "HYPOVENTILATION AND HYPOXEMIA IN CLOSED SPACES",
            description: "The risk of developing hypoxemia due to hypoventilation is high in narrow areas that are difficult to monitor such as radiology.",
            additionalInfo: "Capnography (ETCO2) monitoring is life-saving in these areas.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "PONV: MOST FREQUENT CAUSE OF DELAYED DISCHARGE",
            description: "Postoperative nausea and vomiting (PONV) is the complication that most delays the discharge of outpatient patients from the hospital.",
            additionalInfo: "Should be managed with a multimodal antiemetic approach.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "HEMODYNAMIC INSTABILITY AND BLEEDING RISK",
            description: "Major bleedings and vascular complications can develop after interventional cardiological and radiological procedures.",
            additionalInfo: "Rapid fluid replacement and stabilization ability should also be in the NORA area.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Ideal Agent Properties',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "GENERAL PROPERTIES OF THE IDEAL AGENT IN OUTPATIENT ANESTHESIA",
            description: "Rapid-onset, short-acting agents that do not accumulate in the body (predictable elimination) are ideal.",
            additionalInfo: "Drugs that ensure the patient's 'ready and awake' state quickly are preferred.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "MOST FREQUENTLY PREFERRED OUTPATIENT AGENTS IN CLINIC",
            description: "Propofol, Remifentanil, Sevoflurane, and Desflurane are the cornerstones of modern outpatient anesthesia practice.",
            additionalInfo: "TIVA applications are usually more prominent in terms of comfort.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "COMBINED ANTIEMETIC TREATMENT AND DRUG OPTIONS",
            description: "The combination of Ondansetron (5-HT3 inhibitor) and Dexamethasone is the most powerful weapon in PONV prevention.",
            additionalInfo: "The ideal timing is during induction or close to the end of surgery.",
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'In Summary',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: "CRITICAL POINTS IN OUTPATIENT AND NORA MANAGEMENT",
            description: "High-standard monitoring with correct patient selection is the basis of safe anesthesia management.",
            additionalInfo: "Buildings outside the operating room are the places most prone to safety vulnerabilities for the anesthesiologist.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "MOST FREQUENTLY PREFERRED ANESTHETIC AGENTS",
            description: "Propofol is the most preferred agent in clinical practice due to its speed and anti-emetic effect.",
            additionalInfo: "Mask/Sevoflurane is still common in infant induction.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "DISCHARGE CONDITIONS AND IMPORTANCE OF THE ALDRETE SCORE",
            description: "It is a requirement that the Aldrete score be >= 9 for discharge and that there is definitely a companion with the patient.",
            additionalInfo: "In case of any doubt, the patient should be horizontalized in the hospital.",
          ),
          OutpatientNonOrAnesthesiaItem(
            title: "MOST FREQUENTLY ENCOUNTERED PEROPERATIVE PROBLEMS",
            description: "Airway safety (obstruction) and postoperative nausea-vomiting are the most common clinical problems encountered.",
            additionalInfo: "Aggressive prophylaxis against these problems is life-saving.",
          ),
        ],
      ),
    ];
  }
}
