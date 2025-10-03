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
            title: 'Complication Spectrum',
            description: 'Range from mild–moderate (nausea, shivering, mild hypotension) to life-threatening events (airway obstruction, anaphylaxis, cardiac arrest, malignant hyperthermia, massive bleeding)',
          ),
          AnesthesiaComplicationsItem(
            title: 'Prevention Strategy',
            description: 'Most can be prevented or mitigated through risk identification, proper monitoring, and rapid intervention',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Cardiovascular Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Hypotension',
            description: 'Hypovolemia, excessive anesthetic depth, allergic reaction, myocardial depression',
          ),
          AnesthesiaComplicationsItem(
            title: 'Hypertension',
            description: 'Inadequate anesthesia, surgical stimulation, catecholamine excess, drug withdrawal',
          ),
          AnesthesiaComplicationsItem(
            title: 'Arrhythmias',
            description: 'Hypoxia, electrolyte disorders, volatile agents, vagal stimulation, catheter manipulation',
          ),
          AnesthesiaComplicationsItem(
            title: 'Cardiac Arrest',
            description: 'Most commonly due to hypoxia and hypovolemia',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Respiratory Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Hypoxia',
            description: 'Most frequent complication → airway obstruction, bronchospasm, intubation error, atelectasis',
          ),
          AnesthesiaComplicationsItem(
            title: 'Hypoventilation',
            description: 'Residual neuromuscular block, opioids, thoracic surgery',
          ),
          AnesthesiaComplicationsItem(
            title: 'Aspiration',
            description: 'Inadequate fasting, emergency surgery, pregnancy',
          ),
          AnesthesiaComplicationsItem(
            title: 'Bronchospasm/Laryngospasm',
            description: 'Asthmatics, during intubation/extubation, irritant gases',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Neurological Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Awareness',
            description: 'Inadequate anesthesia, especially with TIVA, high-risk surgeries (cardiac, obstetric, trauma)',
          ),
          AnesthesiaComplicationsItem(
            title: 'Postoperative Delirium',
            description: 'Especially in elderly; hypoxia, hyponatremia, drugs',
          ),
          AnesthesiaComplicationsItem(
            title: 'Neuropathy',
            description: 'Improper positioning, compression (ulnar, peroneal nerve)',
          ),
          AnesthesiaComplicationsItem(
            title: 'Neuraxial Block Complications',
            description: 'Headache, hematoma, infection, neurological injury',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Immunologic / Drug-related Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Anaphylaxis/Anaphylactoid Reactions',
            description: 'NMBs, latex, antibiotics, colloids',
            subtitle: 'Clinical: sudden hypotension, bronchospasm, skin findings',
            additionalInfo: 'Treatment: epinephrine (10–100 µg IV), airway support, fluids, antihistamines, steroids',
          ),
          AnesthesiaComplicationsItem(
            title: 'Transfusion Reactions',
            description: 'Febrile, hemolytic, TRALI, TACO',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Thermoregulation Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Hypothermia',
            description: '↑ Bleeding, ↑ infection, delayed healing, arrhythmia risk',
          ),
          AnesthesiaComplicationsItem(
            title: 'Malignant Hyperthermia',
            description: 'Triggered by volatile agents + succinylcholine, genetic RYR1 defect',
            subtitle: 'Clinical: hypercarbia (earliest sign), tachycardia, rigidity, hyperthermia',
            additionalInfo: 'Treatment: dantrolene, cooling, correction of electrolytes',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Gastrointestinal & Renal Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Aspiration Pneumonia',
            description: 'Mendelson\'s syndrome',
          ),
          AnesthesiaComplicationsItem(
            title: 'Paralytic Ileus / PONV',
            description: 'Among most common postoperative issues → prophylaxis with 5-HT3 antagonists, dexamethasone, droperidol',
          ),
          AnesthesiaComplicationsItem(
            title: 'Oliguria/AKI',
            description: 'Hypovolemia, sepsis, nephrotoxins',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Position-related Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Supine',
            description: 'Atelectasis, aspiration risk',
          ),
          AnesthesiaComplicationsItem(
            title: 'Trendelenburg',
            description: 'Facial edema, ↑ ICP/IOP',
          ),
          AnesthesiaComplicationsItem(
            title: 'Prone',
            description: 'Pressure sores, optic neuropathy, venous pooling',
          ),
          AnesthesiaComplicationsItem(
            title: 'Lateral',
            description: 'Peroneal nerve injury, pulmonary V/Q mismatch',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Postoperative Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Uncontrolled Pain',
            description: 'May cause respiratory failure, hypertension, tachycardia',
          ),
          AnesthesiaComplicationsItem(
            title: 'PONV',
            description: 'Risk ↑ in female, nonsmoker, prior PONV, opioid use',
          ),
          AnesthesiaComplicationsItem(
            title: 'Shivering',
            description: 'Due to hypothermia or anesthetic effects',
          ),
          AnesthesiaComplicationsItem(
            title: 'Fever',
            description: 'Infection, transfusion reaction, MH, thyroid storm',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Rare Specific Complications',
        items: [
          AnesthesiaComplicationsItem(
            title: 'Air Embolism',
            description: 'Esp. sitting position neurosurgery',
          ),
          AnesthesiaComplicationsItem(
            title: 'Thromboembolism (DVT/PE)',
            description: 'Orthopedic, long surgeries, immobility',
          ),
          AnesthesiaComplicationsItem(
            title: 'Vision Loss',
            description: 'Prolonged prone, hypotension, anemia (ischemic optic neuropathy)',
          ),
          AnesthesiaComplicationsItem(
            title: 'Iatrogenic Trauma',
            description: 'Dental damage (intubation), tracheal laceration, vascular injury',
          ),
        ],
      ),
      AnesthesiaComplicationsCategory(
        categoryName: 'Clinical Practice Summary',
        items: [
          AnesthesiaComplicationsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Most frequent: hypotension, hypoxia, PONV, shivering',
            subtitle: 'Most severe: airway obstruction, anaphylaxis, MH, cardiac arrest',
            additionalInfo: 'Prevention > Treatment: preop evaluation, proper monitoring, prepared equipment, and rapid intervention save lives',
          ),
        ],
      ),
    ];
  }
}
