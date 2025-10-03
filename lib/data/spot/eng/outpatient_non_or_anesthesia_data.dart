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
  static List<OutpatientNonOrAnesthesiaCategory> getOutpatientNonOrAnesthesiaData(BuildContext context) {
    return [
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'General Principles',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'Definition',
            description: 'Anesthesia + surgical intervention on the same day → discharge',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Advantages',
            description: 'Lower cost, faster recovery, reduced infection risk',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Challenges',
            description: 'Patient selection, complication management, limited resources (especially outside the OR)',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Patient Selection',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'Suitable Patients',
            description: 'ASA I–II, selected ASA III cases',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Contraindications',
            description: 'Uncontrolled DM, HTN, severe cardiac/pulmonary disease, active infection',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Special Groups - Children',
            description: 'Generally suitable, especially ENT/urology',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Special Groups - Elderly',
            description: 'Safe with careful selection',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Special Groups - Obesity',
            description: '↑ Risk (airway, PONV, OSA)',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Preoperative Preparation',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'Fasting Guidelines',
            description: 'Solids → 6–8 h',
            subtitle: 'Breast milk → 4 h',
            additionalInfo: 'Clear fluids → 2 h',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Premedication',
            description: 'Minimal sedatives → rapid recovery, early discharge',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Prophylaxis',
            description: 'Antiemetics in high PONV risk patients',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Induction & Maintenance',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'Induction',
            description: 'IV agents (propofol most common, fast recovery advantage); intranasal/IM options in children',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Maintenance',
            description: 'TIVA or low-dose inhalation agents; short-acting opioids (fentanyl, remifentanil)',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Muscle Relaxants',
            description: 'Minimal need, short-acting preferred',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Monitoring',
            description: 'ASA standards (ECG, SpO₂, NIBP, ETCO₂) mandatory in all settings',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Non-Operating Room Anesthesia (NORA)',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'Locations',
            description: 'Endoscopy units, radiology (MRI/CT), interventional cardiology/radiology, ED',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Challenges',
            description: 'Limited access to patient/equipment, restricted oxygen supply, need for rescue equipment',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Special Cases - MRI',
            description: 'Magnetic-compatible monitors/equipment required',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Special Cases - Endoscopy',
            description: 'Airway sharing risk',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Special Cases - Pediatric Radiology',
            description: 'Often requires deep sedation/GA',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Recovery & Discharge',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'Discharge Criteria',
            description: 'Stable vitals, adequate analgesia, controlled PONV, able to take oral fluids, ambulate without assistance, Aldrete ≥9/10',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Discharge Requirement',
            description: 'Responsible adult companion at discharge',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Complications',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'Airway Obstruction',
            description: 'Especially sedation + upper GI procedures',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Hypoventilation/Hypoxemia',
            description: 'Common in closed spaces',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'PONV',
            description: 'Most frequent cause of delayed discharge',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Bleeding/Hemodynamic Instability',
            description: 'Especially interventional cardiology/radiology',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Ideal Agent Properties',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'Characteristics',
            description: 'Rapid onset, short duration, predictable elimination',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Preferred Agents',
            description: 'Propofol (gold standard), remifentanil, sevoflurane',
          ),
          OutpatientNonOrAnesthesiaItem(
            title: 'Antiemetic Combination',
            description: 'Ondansetron + dexamethasone',
          ),
        ],
      ),
      OutpatientNonOrAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          OutpatientNonOrAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Patient selection + monitoring critical in ambulatory & NORA',
            subtitle: 'Propofol = most commonly used agent',
            additionalInfo: 'Discharge: Aldrete ≥9 + responsible escort required\nMost common issues: PONV & airway safety\nFasting: solids 6–8 h, clear fluids 2 h\nNORA locations: endoscopy, radiology, interventional procedures',
          ),
        ],
      ),
    ];
  }
}
