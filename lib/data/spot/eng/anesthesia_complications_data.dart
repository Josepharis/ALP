import 'package:flutter/material.dart';

class AnesthesiaComplicationsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnesthesiaComplicationsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnesthesiaComplicationsCategory {
  final String categoryName;
  final List<AnesthesiaComplicationsItem> items;

  AnesthesiaComplicationsCategory({
    required this.categoryName,
    required this.items,
  });
}

class AnesthesiaComplicationsData {
  static List<AnesthesiaComplicationsCategory> getAnesthesiaComplicationsData(BuildContext context) {
    return [
      AnesthesiaComplicationsCategory(
        categoryName: 'Overview',
        items: [
          AnesthesiaComplicationsItem(
            title: 'COMPLICATION SPECTRUM AND CLINICAL SEVERITY',
            description: 'Ranges from mild–moderate events like nausea and shivering to life-threatening issues like cardiac arrest.',
            additionalInfo: 'Major events include airway obstruction, anaphylaxis, malignant hyperthermia, and massive bleeding.',
          ),
          AnesthesiaComplicationsItem(
            title: 'PREVENTION STRATEGIES IN ANESTHESIA',
            description: 'Most complications can be prevented or mitigated through pre-procedural risk identification and proper monitoring.',
            additionalInfo: 'Rapid intervention remains the key when an unexpected adverse event occurs.',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Cardiovascular Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'HYPOTENSION: ETIOLOGY AND MANAGEMENT',
            description: 'Commonly caused by hypovolemia, excessive anesthetic depth, allergic reactions, or myocardial depression.',
            additionalInfo: 'Prompt fluid resuscitation or vasopressor support is usually required.',
          ),
          AnesthesiaComplicationsItem(
            title: 'HYPERTENSION: STIMULI AND WITHDRAWAL',
            description: 'Triggered by inadequate anesthetic depth, surgical stimulation, catecholamine surge, or drug withdrawal.',
            additionalInfo: 'Acute management focuses on deepening anesthesia or using short-acting antihypertensives.',
          ),
          AnesthesiaComplicationsItem(
            title: 'PERIOPERATIVE ARRHYTHMIAS',
            description: 'Linked to hypoxia, electrolyte imbalances, volatile agents, vagal stimulation, or catheter manipulation.',
            additionalInfo: 'Initial management involves identifying and treating the underlying cause.',
          ),
          AnesthesiaComplicationsItem(
            title: 'CARDIAC ARREST IN THE OR',
            description: 'Most commonly occurs secondary to profound hypoxia or severe hypovolemia.',
            additionalInfo: 'Effective CPR and adherence to ACLS protocols are life-saving.',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Respiratory Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'HYPOXIA: THE MOST FREQUENT COMPLICATION',
            description: 'Common causes include airway obstruction, bronchospasm, intubation errors, and atelectasis.',
            additionalInfo: 'Constant pulse oximetry and capnography are vital for early detection.',
          ),
          AnesthesiaComplicationsItem(
            title: 'HYPOVENTILATION AND RESIDUAL PARALYSIS',
            description: 'Often due to residual neuromuscular block, opioid overdose, or recovery from thoracic surgery.',
            additionalInfo: 'Ensuring full reversal of muscle relaxants is a critical safety step.',
          ),
          AnesthesiaComplicationsItem(
            title: 'ASPIRATION RISK AND PREVENTION',
            description: 'High risk in patients with inadequate fasting times, emergency surgeries, or during pregnancy.',
            additionalInfo: 'Can lead to severe chemical pneumonitis and acute respiratory distress syndrome (ARDS).',
          ),
          AnesthesiaComplicationsItem(
            title: 'BRONCHOSPASM AND LARYNGOSPASM',
            description: 'Frequent in asthmatics or during airway manipulation (intubation/extubation) and with irritant gases.',
            additionalInfo: 'Laryngospasm after extubation is an airway emergency requiring immediate 100% O2 and/or propofol.',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Neurological Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'INTRAOPERATIVE AWARENESS',
            description: 'Result of inadequate anesthetic depth; high-risk in cardiac, obstetric, and trauma surgeries.',
            additionalInfo: 'Monitoring anesthetic levels (e.g., BIS) may be considered in TIVA cases.',
          ),
          AnesthesiaComplicationsItem(
            title: 'POSTOPERATIVE DELIRIUM',
            description: 'Particularly common in the elderly, triggered by hypoxia, hyponatremia, or certain medications.',
            additionalInfo: 'Associated with increased morbidity and longer hospital stays.',
          ),
          AnesthesiaComplicationsItem(
            title: 'PERIOPERATIVE NEUROPATHY',
            description: 'Typically caused by improper positioning leading to compression of the ulnar or peroneal nerves.',
            additionalInfo: 'Pressure point padding is the primary preventive measure.',
          ),
          AnesthesiaComplicationsItem(
            title: 'NEURAXIAL BLOCK COMPLICATIONS',
            description: 'Includes post-dural puncture headache (PDPH), spinal hematoma, infection, and rare neurological injury.',
            additionalInfo: 'Spinal hematoma is a surgical emergency requiring rapid decompression.',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Immunologic / Drug-related Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'ANAPHYLAXIS AND ANAPHYLACTOID REACTIONS',
            description: 'Triggered most often by neuromuscular blockers (NMBs), latex, antibiotics, or colloids.',
            subtitle: 'Clinical signs: sudden hypotension, bronchospasm, and skin manifestations',
            additionalInfo: 'Emergency treatment involves epinephrine (10–100 µg IV titration), fluids, and airway support.',
          ),
          AnesthesiaComplicationsItem(
            title: 'TRANSFUSION REACTIONS (TRALI AND TACO)',
            description: 'Ranges from febrile/hemolytic reactions to severe lung injury (TRALI) or circulatory overload (TACO).',
            additionalInfo: 'TRALI is a leading cause of transfusion-related mortality characterized by acute hypoxia.',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Thermoregulation Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'PERIOPERATIVE HYPOTHERMIA',
            description: 'Increases the risk of bleeding, surgical site infections, delayed healing, and arrhythmias.',
            additionalInfo: 'Active warming should be maintained to keep core temperature above 36 °C.',
          ),
          AnesthesiaComplicationsItem(
            title: 'MALIGNANT HYPERTHERMIA: GENETIC CRISIS',
            description: 'Pharmacogenetic disorder triggered by volatile agents or succinylcholine in patients with RYR1 defects.',
            subtitle: 'Clinical signs: hypercarbia (earliest), tachycardia, muscle rigidity, and hyperthermia',
            additionalInfo: 'Requires immediate treatment with dantrolene, cooling, and intensive metabolic support.',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Gastrointestinal & Renal Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'ASPIRATION PNEUMONIA (MENDELSON’S SYNDROME)',
            description: 'Chemical lung injury resulting from the inhalation of acidic gastric contents.',
            additionalInfo: 'Prevention through NPO guidelines and rapid sequence induction (RSI) is key.',
          ),
          AnesthesiaComplicationsItem(
            title: 'PARAALYTIC ILEUS AND PONV',
            description: 'Postoperative nausea and vomiting (PONV) is one of the most common and distressing postoperative issues.',
            additionalInfo: 'Prophylaxis includes 5-HT3 antagonists, dexamethasone, and avoiding excessive opioids.',
          ),
          AnesthesiaComplicationsItem(
            title: 'OLIGURIA AND ACUTE KIDNEY INJURY (AKI)',
            description: 'Triggered by intraoperative hypovolemia, severe sepsis, or use of nephrotoxic medications.',
            additionalInfo: 'Optimizing renal perfusion is the primary goal of management.',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Position-related Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'SUPINE POSITION AND RESPIRATORY IMPACT',
            description: 'Can lead to reduced functional residual capacity (FRC), atelectasis, and aspiration risk.',
            additionalInfo: 'Standard position for many abdominal and thoracic procedures.',
          ),
          AnesthesiaComplicationsItem(
            title: 'TRENDELENBURG POSITION: CRANIAL CONGESTION',
            description: 'Increases venous return but also raises intracranial (ICP) and intraocular (IOP) pressure.',
            additionalInfo: 'Facial and airway edema are significant concerns during prolonged Trendelenburg.',
          ),
          AnesthesiaComplicationsItem(
            title: 'PRONE POSITION: UNIQUE RISKS',
            description: 'Associated with pressure sores, venous pooling in extremities, and rare ischemic optic neuropathy.',
            additionalInfo: 'Eyes and face must be checked regularly for excessive pressure.',
          ),
          AnesthesiaComplicationsItem(
            title: 'LATERAL DEKUBIT AND V/Q MISMATCH',
            description: 'Risks include peroneal nerve injury and significant ventilation/perfusion mismatch in the lungs.',
            additionalInfo: 'Proper padding of the dependent leg and axillary roll placement are required.',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Postoperative Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'UNCONTROLLED POSTOPERATIVE PAIN',
            description: 'Can cause respiratory shallowing, acute hypertension, and myocardial tachycardia.',
            additionalInfo: 'Effective pain control is essential for early mobilization and recovery.',
          ),
          AnesthesiaComplicationsItem(
            title: 'POSTOPERATIVE NAUSEA AND VOMITING (PONV)',
            description: 'Risk is significantly higher in females, non-smokers, and those with a history of PONV or motion sickness.',
            additionalInfo: 'Frequent use of opioids in the recovery phase further increases risks.',
          ),
          AnesthesiaComplicationsItem(
            title: 'POSTOPERATIVE SHIVERING',
            description: 'Caused by perioperative hypothermia or the effects of volatile anesthetic agents.',
            additionalInfo: 'Can significantly increase myocardial oxygen demand.',
          ),
          AnesthesiaComplicationsItem(
            title: 'POSTOPERATIVE FEVER: DIFFERENTIALS',
            description: 'May indicate infection, transfusion reactions, late-onset MH, or thyroid storm.',
            additionalInfo: 'Timing of fever onset often points toward the most likely cause.',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Rare Specific Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'VENOUS AIR EMBOLISM',
            description: 'A critical risk in neurosurgery, particularly in the sitting position where veins remain open.',
            additionalInfo: 'Requires rapid identification via precordial Doppler or ETCO2 monitoring.',
          ),
          AnesthesiaComplicationsItem(
            title: 'THROMBOEMBOLISM (DVT AND PE)',
            description: 'Higher risk in major orthopedic surgery, prolonged operative times, and immobility.',
            additionalInfo: 'Standard prophylaxis involves both mechanical and pharmacological strategies.',
          ),
          AnesthesiaComplicationsItem(
            title: 'PERIOPERATIVE VISION LOSS',
            description: 'Typically due to ischemic optic neuropathy after prolonged prone surgeries combined with hypotension/anemia.',
            additionalInfo: 'A rare but devastating complication with high medicolegal implications.',
          ),
          AnesthesiaComplicationsItem(
            title: 'IATROGENIC TRAUMA DURING ANESTHESIA',
            description: 'Includes dental damage during intubation, tracheal lacerations, and vascular injuries from line placement.',
            additionalInfo: 'Dental trauma is the most frequent malpractice claim in anesthesia.',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Clinical Practice Summary',
        items: [
          AnesthesiaComplicationsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Frequent: Hypotension, Hypoxia, PONV, Shivering. Severe: Airway obstruction, Anaphylaxis, MH, Cardiac arrest.',
            additionalInfo: 'Prevention > Treatment: Careful evaluation and constant vigilance remain the anesthesiologist’s best tools.',
          ),
        ],
      ),
    ];
  }
}
