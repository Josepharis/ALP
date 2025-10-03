import 'package:flutter/material.dart';

class SpinalEpiduralCaudalBlocksItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  SpinalEpiduralCaudalBlocksItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class SpinalEpiduralCaudalBlocksCategory {
  final String categoryName;
  final List<SpinalEpiduralCaudalBlocksItem> items;

  SpinalEpiduralCaudalBlocksCategory({
    required this.categoryName,
    required this.items,
  });
}

class SpinalEpiduralCaudalBlocksData {
  static List<SpinalEpiduralCaudalBlocksCategory> getSpinalEpiduralCaudalBlocksData(BuildContext context) {
    return [
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Anatomy',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'Vertebrae',
            description: '7C – 12T – 5L – 5S',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Needle Pathway',
            description: 'Skin → subcutaneous tissue → supraspinous ligament → interspinous ligament → ligamentum flavum → epidural space → dura',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Spinal Cord Termination',
            description: 'Adult L1, child L3',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Dural Sac Termination',
            description: 'Adult S2, child S3',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Artery of Adamkiewicz',
            description: 'Supplies lower anterior 2/3 of cord',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Mechanism of Action',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'Differential Block',
            description: 'Sympathetic > sensory > motor',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Cardiac Accelerator Fibers',
            description: 'T1–T4',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Hypotension Prevention',
            description: 'Fluid preload insufficient → ephedrine preferred',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Phrenic Nerve',
            description: 'C3–C5 → high block may impair respiration',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'T5–L1 Sympathetic Block',
            description: '↑ Vagal tone → ↑ bowel motility',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Sacral Block',
            description: 'S2–S4 → urinary retention',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Surgical Stress Response',
            description: 'Suppresses surgical stress response',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Contraindications',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'Absolute',
            description: 'Patient refusal, coagulopathy, severe hypovolemia, local infection',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Relative',
            description: 'Severe aortic/mitral stenosis, pre-existing neurological deficit/demyelinating disease',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Anticoagulant Drugs',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'Warfarin',
            description: 'INR must be normal',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Aspirin/NSAIDs',
            description: 'Alone: not a risk',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Clopidogrel/Ticlopidine',
            description: 'Clopidogrel → stop 7 days before; ticlopidine → 14 days',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'SC Heparin',
            description: 'Low dose: not contraindicated',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'LMWH',
            description: 'If bloody puncture → delay postop LMWH 24 h',
            subtitle: 'Catheter removal → 2 h before next dose or 10 h after last dose',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Thrombolytics/Fibrinolytics',
            description: 'Absolutely contraindicated',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Technical Notes',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'Surface Landmarks',
            description: 'C7: most prominent spinous process',
            subtitle: 'Inferior scapular angle: T7',
            additionalInfo: 'Iliac crest line: L4–L5\nPSIS: S2',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Positions',
            description: 'Sitting, lateral, jackknife',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Approaches',
            description: 'Midline or paramedian',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Spinal Anesthesia',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'Needles',
            description: 'Quincke (cutting), Whitacre/Sprotte (non-cutting)',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'CSF Baricity',
            description: '1.003–1.008',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Baricity Modification',
            description: 'Add glucose → hyperbaric; add sterile water → hypobaric',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'LA Requirements',
            description: 'Use preservative-free LA',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Lidocaine 5%',
            description: 'Avoided (risk of TNS/CES)',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Epinephrine',
            description: 'Prolongs tetracaine effect by 50%, minimal effect with bupivacaine',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Epidural Anesthesia',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'Needles',
            description: 'Tuohy (blunt, curved tip), Crawford (sharp)',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Catheter',
            description: 'Advanced 2–6 cm into epidural space',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'LA Dose',
            description: '1–2 mL per segment',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Alkalinization',
            description: '10 mL LA + 1 mEq NaHCO₃ (for lidocaine, mepivacaine, chloroprocaine)',
            subtitle: 'Bupivacaine precipitates >pH 6.8 → do not alkalinize',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Caudal Anesthesia',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'Common Use',
            description: 'Commonly used in children',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Entry Point',
            description: 'Entry via sacral hiatus',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Complications',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'High Spinal',
            description: 'LOC, apnea, hypotension',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Total Spinal',
            description: 'Cranial nerve involvement',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Urinary Retention',
            description: 'Sacral block',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Post-dural Puncture Headache',
            description: '12–72 h after; best treatment = epidural blood patch (15–20 mL)',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Spinal/Epidural Hematoma',
            description: 'Spinal 1:220,000, epidural 1:150,000; urgent decompression ≤12 h',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Epidural Abscess',
            description: 'Most common organisms → Staph aureus/epidermidis',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'TNS',
            description: 'Most common with hyperbaric lidocaine',
          ),
          SpinalEpiduralCaudalBlocksItem(
            title: 'Lidocaine Neurotoxicity',
            description: 'Bladder–bowel dysfunction',
          ),
        ],
      ),
      SpinalEpiduralCaudalBlocksCategory(
        categoryName: 'Key Exam Spots',
        items: [
          SpinalEpiduralCaudalBlocksItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Spinal cord termination: adult L1, child L3',
            subtitle: 'Differential block: sympathetic > sensory > motor',
            additionalInfo: 'Cardiac accelerator fibers: T1–T4\nLMWH: catheter removal 2 h before next dose\nPDPH: epidural blood patch (15–20 mL)\nLidocaine 5% avoided (TNS/CES risk)',
          ),
        ],
      ),
    ];
  }
}
