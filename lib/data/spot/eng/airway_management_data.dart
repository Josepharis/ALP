import 'package:flutter/material.dart';

class AirwayManagementItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AirwayManagementItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AirwayManagementCategory {
  final String categoryName;
  final List<AirwayManagementItem> items;

  AirwayManagementCategory({required this.categoryName, required this.items});
}

class AirwayManagementData {
  static List<AirwayManagementCategory> getAirwayManagementData(
    BuildContext context,
  ) {
    return [
      AirwayManagementCategory(
        categoryName: 'Airway Assessment and Scoring',
        items: [
          AirwayManagementItem(
            title: "MALLAMPATI CLASSIFICATION (AIRWAY SCORING)",
            description: "The primary test used in predicting a difficult airway by assessing the relationship between mouth opening and the size of the tongue relative to airway structures.",
            subtitle: "Mallampati Class I indicates easy, while Class IV suggests a very difficult intubation",
            additionalInfo: "• Class I: Soft palate, uvula, tonsils, and pharyngeal pillars are fully visible.\n• Class II: Soft palate and uvula are visible.\n• Class III: Only the soft palate and the base of the uvula are visible.\n• Class IV: Only the hard palate is visible; the soft palate cannot be distinguished at all.",
          ),
          AirwayManagementItem(
            title: "CORMACK-LEHANE GRADING (LARYNGOSCOPIC VIEW)",
            description: "A grading system based on how much of the glottic structures can be seen during direct laryngoscopy.",
            subtitle: "Grade I provides a full view, while no structures can be distinguished in Grade IV",
            additionalInfo: "• Grade I: The glottis (vocal cords) is fully visible.\n• Grade II: The posterior part of the glottis and cricoid structures are visible.\n• Grade III: Only the epiglottis is visible, vocal cords cannot be distinguished.\n• Grade IV: Only the base of the tongue or soft tissue is seen; even the epiglottis is not visible.",
          ),
          AirwayManagementItem(
            title: "PHYSICAL SIGNS PREDICTING DIFFICULT INTUBATION",
            description: "Anatomical measurements detected during preoperative physical examination are critical in determining the likelihood of a difficult airway.",
            additionalInfo: "• Thyromental Distance: Distance between the tip of the chin and the thyroid cartilage < 6 cm indicates difficult intubation.\n• Sternomental Distance: Distance between the upper end of the sternum and the chin < 12.5 cm indicates high risk.\n• Mouth Opening: If the interincisor distance is < 4 cm, placing a laryngoscope becomes difficult.\n• Neck Mobility: Inability to extend the head significantly impairs the line of sight.",
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Endotracheal Tube (ETT) Selection and Placement',
        items: [
          AirwayManagementItem(
            title: "TUBE DIAMETER AND DEPTH SELECTION IN ADULTS",
            description: "Different internal diameters (ID) and placement depths are preferred in adult men and women for ideal airway safety.",
            additionalInfo: "• Women: Usually a 7.0–7.5 mm ID tube is used; placement depth at the level of incisors is 20–21 cm.\n• Men: Usually an 8.0–8.5 mm ID tube is used; placement depth at the level of incisors is 21–23 cm.",
          ),
          AirwayManagementItem(
            title: "TUBE DIAMETER AND DEPTH CALCULATION IN CHILDREN (OVER 2 YEARS)",
            description: "In the pediatric population, tube diameter and placement depth are determined using mathematical formulas based on the child's age.",
            subtitle: "Formula for uncuffed tubes: (Age / 4) + 4 mm ID",
            additionalInfo: "• Tube Diameter (Cuffed): (Age / 4) + 3.5 mm ID.\n• Oral Depth: (Age / 2) + 12 cm.\n• Nasal Depth: (Age / 2) + 15 cm.",
          ),
          AirwayManagementItem(
            title: "TUBE SELECTION AND PLACEMENT PRINCIPLES IN INFANTS",
            description: "As the airway is very narrow in newborns and infants under 1 year, tube selection requires millimetric precision.",
            additionalInfo: "• Premature: 2.5–3.0 mm ID.\n• Term Newborn: 3.0–3.5 mm ID.\n• 1 Year: 3.5–4.0 mm ID.\n• Placement Depth: As a practical rule, the 'Tube ID x 3' formula is used (e.g., 4.0 mm tube → 12 cm depth).",
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Endotracheal Tube Cuff Management',
        items: [
          AirwayManagementItem(
            title: "CUFF CHARACTERISTICS AND MUCOSAL PERFUSION SAFETY",
            description: "In modern tubes, 'high volume / low pressure' cuffs are used in an attempt to prevent tracheal mucosal damage.",
            subtitle: "The ideal cuff pressure should be kept below the tracheal capillary perfusion pressure",
            additionalInfo: "Tracheal mucosal blood flow is impaired at pressures of approximately 25-30 mmHg. Therefore, keeping the cuff pressure in the 20-30 cmH2O (approximately 15-22 mmHg) range minimizes the risk of ischemia and necrosis.",
          ),
          AirwayManagementItem(
            title: "CUFF VOLUME AND PRESSURE LIMITS (ADULT AND PEDIATRIC)",
            description: "Correct inflation of the cuff is essential to prevent air leaks within the trachea and to protect the lungs from aspiration.",
            additionalInfo: "• Adult: Usually 5–10 mL of air is sufficient.\n• Pediatric (Cuffed): Sealing can be achieved with only 1–2 mL of air.\n• Use of a manometer is the gold standard; manual control of only the pilot balloon can be misleading.",
          ),
          AirwayManagementItem(
            title: "INFLATION CONTROL AND LEAK TEST APPLICATION",
            description: "After the cuff is inflated, there should be no leak when airway pressure reaches 20-25 cmH2O during positive pressure ventilation.",
            additionalInfo: "While inflating the tube cuff, air is delivered until no leak sound (leak cycle) is heard in the neck region with a stethoscope, and then the minimum sealing pressure is confirmed with a manometer.",
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Intubation Physiology and Clinical Response',
        items: [
          AirwayManagementItem(
            title: "SYMPATHETIC EFFECTS ON THE CARDIOVASCULAR SYSTEM",
            description: "Laryngoscopy and intubation maneuvers stimulate vascular and autonomic nerve terminals, causing a severe sympathetic discharge.",
            subtitle: "A sudden rise in blood pressure, tachycardia, and arrhythmias are the most common responses",
            additionalInfo: "This sympathetic response can be risky enough to lead to myocardial ischemia or cerebral hemorrhage, especially in patients with coronary artery disease, cerebral aneurysms, or high intracranial pressure.",
          ),
          AirwayManagementItem(
            title: "SUPPRESSING INTUBATION RESPONSE AND PREVENTIVE MEASURES",
            description: "Additional pharmacological agents and deep anesthesia levels are used before laryngoscopy to soften the patient's physiological response.",
            additionalInfo: "• Lidocaine (1–1.5 mg/kg IV): The most commonly used method; suppresses the increase in intracranial pressure and airway reflexes.\n• Opioids (Fentanyl/Remifentanil): The most potent agents for suppressing the sympathetic response.\n• Beta Blockers (Esmolol): May be preferred to keep tachycardia under control.",
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Supraglottic Airway Devices (LMA)',
        items: [
          AirwayManagementItem(
            title: "LARYNGEAL MASK (LMA) TYPES AND ASPIRATION PROTECTION",
            description: "Airway devices placed above the vocal cords that are less invasive compared to endotracheal tubes.",
            subtitle: "While the classic LMA does not provide protection against aspiration, next-generation LMAs (ProSeal, I-gel) have gastric ports",
            additionalInfo: "The gastric port reduces the risk of aspirating gastric contents and allows for the placement of a gastric tube. LMAs are included as rescue devices in difficult airway algorithms.",
          ),
          AirwayManagementItem(
            title: "LMA PLACEMENT TECHNIQUE AND VENTILATION LIMITS",
            description: "LMA cuffs have much higher pressure tolerance compared to endotracheal tubes, but correct placement is critical.",
            additionalInfo: "• Cuff Pressure: Recommended at a maximum of 60 cmH2O.\n• Ventilation Limit: Safe ventilation is usually provided at airway pressures below < 20 cmH2O; above this value, the risk of air leakage into the stomach and aspiration increases.",
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Advanced Airway Techniques (Fiberotic and Emergency)',
        items: [
          AirwayManagementItem(
            title: "INDICATIONS AND ADVANTAGES OF FIBEROPTIC INTUBATION",
            description: "The gold standard method in cases with anatomical difficulties, a need for neck stabilization, or limited mouth opening.",
            subtitle: "Life-saving in airway tumors or severe jaw anomalies requiring awake intubation",
            additionalInfo: "The greatest advantage compared to video laryngoscopy is that it does not require neck movement and provides direct visual control all the way to the trachea. It is the safest method for patients with cervical instability.",
          ),
          AirwayManagementItem(
            title: "SEDATION AND TOPICALIZATION IN FIBEROPTIC APPLICATION",
            description: "Airway reflexes should be fully suppressed with local anesthetics in awake applications to ensure patient comfort.",
            additionalInfo: "Accompanied by mild sedation (Midazolam/Opioid), lidocaine applied via 'spray' to the base of the tongue and laryngeal structures, or through nerve blocks, allows the patient to tolerate intubation.",
          ),
          AirwayManagementItem(
            title: "EMERGENCY AIRWAY MANAGEMENT AND SURGICAL INTERVENTIONS",
            description: "In 'cannot intubate and cannot ventilate' (CVCI) situations, surgical airway access is the last and fastest option.",
            additionalInfo: "• Cricothyrotomy: The fastest method applied within 15-30 seconds in emergencies, where the cricothyroid membrane is punctured.\n• Tracheostomy: Usually performed electively in awake patients or for long-term airway support; second choice in emergency conditions.\n• Needle Cricothyrotomy: Provides only oxygenation; may be insufficient for carbon dioxide elimination (ventilation).",
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Pediatric Airway Anatomy and Management',
        items: [
          AirwayManagementItem(
            title: "ANATOMICAL DIFFERENCES IN THE PEDIATRIC AIRWAY",
            description: "The airway of children is higher up, more anterior, and funnel-shaped compared to adults.",
            subtitle: "The epiglottis is longer and 'U' shaped; the narrowest region is at the level of the cricoid ring",
            additionalInfo: "The larynx is at the C3-C4 level (C5-C6 in adults). The tongue is larger relative to the mouth, and oxygen reserves (functional residual capacity) are low, making them prone to very rapid hypoxia.",
          ),
          AirwayManagementItem(
            title: "DEPTH AND PRESSURE CRITERIA IN PEDIATRIC INTUBATION",
            description: "Cuff pressure should be kept below 20 cmH2O during tube placement in young children to prevent the risk of mucosal edema.",
            additionalInfo: "The 'Tube Diameter x 3' rule is a practical guide for placement depth. Accidental tube slippage into the main bronchus (usually the right) is much easier in children; therefore, bilateral lung auscultation is mandatory.",
          ),
        ],
      ),
      AirwayManagementCategory(
        categoryName: 'Clinical Safety and Gold Tips',
        items: [
          AirwayManagementItem(
            title: "SUMMARY AND CRITICAL REMINDERS",
            description: "Fundamental knowledge with no margin of error in airway management exams and clinical practice.",
            additionalInfo: "• Cuff Pressure: 20–30 cmH2O (Should be measured with a manometer).\n• Capnography (EtCO2): The gold standard for confirming intubation.\n• Difficult Intubation Predictors: Thyromental distance < 6 cm, Mallampati IV.\n• Obese Patient Practice: The neck should be placed in a 'ramped' position (supported with pillows).\n• LMA Limit: Ventilation pressure should not exceed 20 cmH2O to prevent air leakage into the stomach.",
          ),
        ],
      ),
    ];
  }
}
