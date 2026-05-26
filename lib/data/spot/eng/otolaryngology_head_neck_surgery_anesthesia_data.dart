import 'package:flutter/material.dart';

class OtolaryngologyHeadNeckSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OtolaryngologyHeadNeckSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OtolaryngologyHeadNeckSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<OtolaryngologyHeadNeckSurgeryAnesthesiaItem> items;

  OtolaryngologyHeadNeckSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class OtolaryngologyHeadNeckSurgeryAnesthesiaData {
  static List<OtolaryngologyHeadNeckSurgeryAnesthesiaCategory>
      getOtolaryngologyHeadNeckSurgeryAnesthesiaData(BuildContext context) {
    return [
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Endoscopy',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "PREOPERATIVE EVALUATION BEFORE LARYNGOSCOPY",
            description: "In patients with airway pathology, airway patency should be confirmed by radiological imaging and indirect laryngoscopy.",
            subtitle: "Fiberoptic and other equipment must be kept ready in cases where a difficult airway is predicted",
            additionalInfo: "Sedative premedication should be avoided in these patients as it will increase the risk of respiratory obstruction.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "PREMEDICATION AND SECRETION CONTROL (GLYCOPYRROLATE)",
            description: "Administration of Glycopyrrolate 1 hour before the operation is recommended to clarify the surgical view by reducing secretions.",
            additionalInfo: "Its antisialogogue effect also reduces the risk of aspiration during airway manipulation.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "USE OF MUSCLE RELAXANTS AND EXTUBATION TIMING",
            description: "Succinylcholine or intermediate-acting non-depolarizant can be preferred; however, deep block delays awakening and return of airway reflexes.",
            additionalInfo: "Complete removal of the NMB effect at the end of surgery is critical to prevent laryngospasm.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "ENDOSCOPIC VENTILATION TECHNIQUES AND APNEA",
            description: "Small ID ETT use or 'intermittent apnea' techniques following 2-3 minute surgical periods can be applied to open up space for surgery.",
            subtitle: "Although tracheal cannulas are suitable for short-term procedures, they may remain insufficient in long-term ventilation",
            additionalInfo: "The patient's oxygenation status should be monitored in constant communication with the surgeon.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "JET VENTILATION APPLICATION AND PARAMETERS (30-50 PSI)",
            description: "Ventilation is provided with the help of a small cannula at a pressure of 30-50 psi, with 1-2 second inspiration and 4-6 second passive expiration phases.",
            subtitle: "Caution should be exercised due to the risk of air trapping and pulmonary barotrauma (pneumothorax)",
            additionalInfo: "In modified jet ventilation, a frequency of up to 80-300 per minute can be reached with very small cannulas.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "INTRAOPERATIVE HEMODYNAMIC FLUCTUATIONS AND NERVE BLOCKS",
            description: "Hypertensive and hypotensive attacks developing during laryngoscopy should be controlled with short-acting agents (Remifentanil etc.).",
            subtitle: "Glossopharyngeal and Superior Laryngeal nerve blocks can soften the hemodynamic response",
            additionalInfo: "Suppression of the reflex response is important, especially in patients with limited cardiac reserve.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "AGENT SELECTION IN LASER SURGERY AND CO2/YAG DIFFERENCE",
            description: "CO2 laser penetrates less into tissue due to its long wavelength absorbed in water; YAG laser can cause deep tissue damage with its shorter wavelength.",
            subtitle: "N2O (Nitrous Oxide) should not be used and FiO2 should be kept at a minimum level because it supports combustion",
            additionalInfo: "Water in cells explodes by absorbing CO2 laser energy; this provides tissue ablation.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "LASER SAFETY PRECAUTIONS AND AIRWAY FIRE",
            description: "The tube cuff must be filled with saline (SF), wet packs should be used in the airway, and at least a 60 mL SF water source must be kept ready.",
            additionalInfo: "Airway fire is the most fatal complication of laser surgery; the first intervention is removal of the tube and cessation of ventilation.",
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Nasal and Sinus Surgery',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "RESPIRATORY EVALUATION BEFORE NASAL SURGERY",
            description: "Mask ventilation can be difficult in those with nasal obstruction; the use of NSAIDs in those with nasal polyps should be questioned due to allergic reactions.",
            additionalInfo: "Bleeding disorders or use of anticoagulants must be corrected before surgery.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "INTRAOPERATIVE NASAL ANESTHESIA AND TUBE SELECTION",
            description: "The surgical area is prepared by topical and submucosal local anesthetic application; RAE (pre-formed) or spiral tubes are preferred to open up area for surgery.",
            additionalInfo: "Use of an oropharyngeal airway after general anesthesia induction facilitates ventilation.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "ENDOSCOPIC SINUS SURGERY (ESS) AND EYE PROTECTION",
            description: "Since the surgical area is very close to the eye during ESS, eye movements should be monitored and eyes should be protected against corneal abrasion.",
            subtitle: "Patient immobility (sufficient NMB) is essential to prevent brain tissue or optic nerve damage",
            additionalInfo: "The medial rectus muscle or orbital wall is open to trauma during surgery.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "EXTUBATION CRITERIA AFTER NASAL OPERATION",
            description: "A smooth emergence ensuring airway reflexes are preserved is targeted since straining and coughing will increase nasal bleeding during extubation.",
            additionalInfo: "The patient should be extubated when awake enough not to aspirate stomach contents or blood.",
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Head and Neck Cancer Surgery',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "COMORBIDITY AND AIRWAY IN HEAD-NECK CANCERS",
            description: "COPD and CAD depending on heavy smoking and alcohol use usually accompany these patients; intubation can be very difficult due to the mass.",
            subtitle: "Inhalational induction or awake fiberoptic intubation is life-saving if the airway passage is narrowed",
            additionalInfo: "Standard laryngoscopy may fail due to anatomical distortion.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "INTRAOPERATIVE MONITORING AND HYPOTHERMIA CONTROL",
            description: "Invasive artery (A-line) and CVP monitoring is standard in long-lasting dissections and active warming systems must be used.",
            additionalInfo: "A drop in body temperature triggers coagulopathy and wound healing problems.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "OXYGEN MANAGEMENT DURING TRACHEOSTOMY (FIO2 <30%)",
            description: "FiO2 should be reduced below 30% and the tube cuff should be deflated before cautery manipulation to prevent fire risk at the moment the trachea is opened.",
            additionalInfo: "After the tracheostomy cannula is placed, position should be confirmed with lung sounds and ETCO2.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "NERVE MONITORING AND ANESTHESIA MAINTENANCE",
            description: "Neuromuscular blocker use (NMB) should be discontinued or special monitoring tubes should be used in cases where recurrent laryngeal nerve detection is required.",
            subtitle: "Vasopressors should be avoided to avoid impairing flap perfusion in vascular surgeries where free flap is applied",
            additionalInfo: "Flap flow is optimized by keeping ideal hematocrit (Hct) values in the 27-30% range.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "CAROTID SINUS MANIPULATION AND CARDIOVASCULAR EFFECTS",
            description: "Carotid sinus or stellate ganglion manipulation during neck dissection can lead to severe bradycardia and blood pressure fluctuations.",
            subtitle: "Hypertension and loss of hypoxic drive can develop after bilateral neck dissection",
            additionalInfo: "The anesthesiologist must follow hemodynamics by the second during sinus traction.",
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Maxillofacial Reconstruction / Orthognathic Surgery',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "MAXILLOFACIAL TRAUMAS AND NASAL INTUBATION RISK",
            description: "Difficult airway equipment should be ready in those with airway trauma; nasal intubation is dangerous in Le Fort II and III fractures due to risk of skull base trauma.",
            additionalInfo: "Traumatic bleeding and tissue edema can make mask ventilation impossible.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "BLOOD CONTROL AND MONITORING IN ORTHOGNATHIC SURGERY",
            description: "Bleeding and aspiration are controlled with controlled hypotension techniques and the use of oropharyngeal packing.",
            subtitle: "Wide IV access and invasive arterial pressure monitoring is recommended",
            additionalInfo: "Prevention of aspiration is essential for postoperative pulmonary complications.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "EXTUBATION AND ASPIRATION AFTER RECONSTRUCTION",
            description: "Oropharyngeal packs should be removed and the mouth and stomach should be aspirated thoroughly before extubation.",
            additionalInfo: "In cases where the mandible and maxilla are fixed (wire), vomiting during awakening is a life-threatening aspiration risk.",
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Ear Surgery',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "N2O CONTRAINDICATION AND DURATION IN EAR SURGERY",
            description: "N2O must be stopped 15-30 minutes before graft placement in tympanoplasty surgery as it will increase middle ear space pressure.",
            additionalInfo: "It can lead to surgical failure by causing the graft to move out of place (dislodgement).",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "HEMOSTASIS AND POSITIONING IN EAR SURGERY",
            description: "Elevation of the head, epinephrine solutions, and if necessary controlled hypotension are applied for a clear view in microscopic surgery.",
            additionalInfo: "Even a single drop of blood in the operation area can completely obstruct view.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "FACIAL NERVE DETECTION AND NMB AGENTS",
            description: "Neuromuscular blocker (NMB) should not be given to avoid preventing nerve stimulation at stages where the facial nerve must be surgically protected.",
            additionalInfo: "Short-acting relaxant can only be used during induction.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "POSTOPERATIVE COMPLICATIONS (VERTIGO AND PONV)",
            description: "Vertigo and PONV are common in ENT surgeries, especially in ear operations; propofol induction can reduce this risk somewhat.",
            subtitle: "Combined use of Retadron and 5-HT3 antagonists is beneficial",
            additionalInfo: "Vestibular stimulation can cause temporary but severe imbalance.",
          ),
        ],
      ),
      OtolaryngologyHeadNeckSurgeryAnesthesiaCategory(
        categoryName: 'Oral Surgery',
        items: [
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "ANESTHESIA SELECTION IN ORAL AND DENTAL SURGERY",
            description: "While local anesthetic blocks are sufficient for most superficial procedures; sedation can be provided with low-dose opioid and midazolam in case of cooperation difficulty.",
            additionalInfo: "Depth of sedation should be monitored closely for airway safety.",
          ),
          OtolaryngologyHeadNeckSurgeryAnesthesiaItem(
            title: "LOCAL ANESTHETIC DOSE LIMITS WITH EPINEPHRINE (LIDOCAINE/BUPIVACAINE)",
            description: "Dose limits must be meticulously observed in solutions with epinephrine to prevent toxicity (%2 Lidocaine 1/100,000 max 12 mL).",
            subtitle: "The maximum safe dose is 8 mL in %0.5 Bupivacaine 1/200,000 solution",
            additionalInfo: "Dose overdosage can cause systemic toxicity (LAST) and cardiac arrhythmias.",
          ),
        ],
      ),
    ];
  }
}
