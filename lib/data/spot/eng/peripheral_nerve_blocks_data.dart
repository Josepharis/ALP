import 'package:flutter/material.dart';

class PeripheralNerveBlocksItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PeripheralNerveBlocksItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PeripheralNerveBlocksCategory {
  final String categoryName;
  final List<PeripheralNerveBlocksItem> items;

  PeripheralNerveBlocksCategory({
    required this.categoryName,
    required this.items,
  });
}

class PeripheralNerveBlocksData {
  static List<PeripheralNerveBlocksCategory> getPeripheralNerveBlocksData(BuildContext context) {
    return [
      PeripheralNerveBlocksCategory(
        categoryName: 'Block Techniques',
        items: [
          PeripheralNerveBlocksItem(
            title: 'Field Block',
            description: 'Cutaneous nerves (e.g., intercostobrachial, saphenous)',
          ),
          PeripheralNerveBlocksItem(
            title: 'Paresthesia',
            description: 'Outdated, no longer recommended',
          ),
          PeripheralNerveBlocksItem(
            title: 'Nerve Stimulation',
            description: '1–2 Hz, 0–5 mA; <0.2 mA = intraneural',
            subtitle: 'Safe range: 0.2–0.5 mA',
          ),
          PeripheralNerveBlocksItem(
            title: 'Ultrasound',
            description: 'High frequency = superficial structures; low frequency = deeper structures',
          ),
          PeripheralNerveBlocksItem(
            title: 'Continuous Block',
            description: 'Long-acting LA + low concentration = ↑ sensory block, ↓ motor block',
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Upper Extremity Blocks',
        items: [
          PeripheralNerveBlocksItem(
            title: 'Brachial Plexus Anatomy',
            description: 'Origin: C4–T1',
            subtitle: 'Cords: lateral, medial, posterior (around axillary artery)',
            additionalInfo: 'Terminal branches: median, ulnar, radial, musculocutaneous',
          ),
          PeripheralNerveBlocksItem(
            title: 'Interscalene Block',
            description: 'C5–C7 dense, C8–T1 (ulnar) often spared → not ideal for elbow/distal surgery',
            subtitle: 'Complications: phrenic nerve block, Horner\'s syndrome, RLN paralysis',
            additionalInfo: 'LA: 10 mL for postop analgesia; 20–30 mL for surgery',
          ),
          PeripheralNerveBlocksItem(
            title: 'Supraclavicular Block',
            description: '"Spinal of the arm" → not effective for shoulder',
            subtitle: 'LA: 30–40 mL (fractionated)',
            additionalInfo: 'Complications: pneumothorax, phrenic nerve block',
          ),
          PeripheralNerveBlocksItem(
            title: 'Infraclavicular Block',
            description: 'Ideal for elbow/distal arm; T2 dermatome preserved',
            subtitle: 'Entry: 2 cm medial–caudal to coracoid, ~5 cm depth',
            additionalInfo: 'LA: ~30 mL; motor response = finger flexion/extension',
          ),
          PeripheralNerveBlocksItem(
            title: 'Axillary Block',
            description: 'Not suitable for perineural catheter',
            subtitle: 'Each nerve ~10 mL; total ~40 mL',
          ),
          PeripheralNerveBlocksItem(
            title: 'Motor Responses',
            description: 'Median → wrist flexion, thumb opposition',
            subtitle: 'Ulnar → 4th–5th finger flexion',
            additionalInfo: 'Radial → extension\nMusculocutaneous → supination (may require separate block in coracobrachialis)',
          ),
          PeripheralNerveBlocksItem(
            title: 'Terminal Blocks',
            description: 'Median, ulnar, radial, musculocutaneous blocked individually with 3–10 mL LA',
            subtitle: 'Intercostobrachial (T2) not blocked by plexus block → must be blocked separately',
          ),
          PeripheralNerveBlocksItem(
            title: 'IVRA (Bier Block)',
            description: 'Proximal tourniquet, distal IV access',
            subtitle: '0.5% lidocaine: 25 mL (forearm), 50 mL (arm)',
            additionalInfo: 'Tourniquet inflated ≥15–20 min, deflated slowly',
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Lower Extremity Blocks',
        items: [
          PeripheralNerveBlocksItem(
            title: 'Plexuses',
            description: 'Lumbar (L1–L4) → femoral, obturator, lateral femoral cutaneous',
            subtitle: 'Sacral (L4–S4) → sciatic',
          ),
          PeripheralNerveBlocksItem(
            title: 'Femoral Block',
            description: 'Response: hip flexion, knee extension',
            subtitle: 'LA: 30–40 mL',
            additionalInfo: 'Fascia iliaca approach alternative',
          ),
          PeripheralNerveBlocksItem(
            title: 'Lateral Femoral Cutaneous',
            description: 'Landmark: 2 cm medial & distal to ASIS',
            subtitle: 'LA: 10–15 mL',
          ),
          PeripheralNerveBlocksItem(
            title: 'Obturator Block',
            description: 'Landmark: 1.5 cm inf/lat to pubic tubercle',
            subtitle: 'Response: thigh adduction',
            additionalInfo: 'LA: 15–20 mL',
          ),
          PeripheralNerveBlocksItem(
            title: 'Psoas Compartment (Lumbar Plexus)',
            description: 'Deep block, long needle',
            subtitle: 'Complication: retroperitoneal injury',
            additionalInfo: 'Effective for moderate–major surgery',
          ),
          PeripheralNerveBlocksItem(
            title: 'Saphenous Block',
            description: 'Medial branch of femoral nerve',
            subtitle: 'LA: 5–10 mL',
            additionalInfo: 'For below-knee blocks, combine with sciatic',
          ),
          PeripheralNerveBlocksItem(
            title: 'Sciatic Block',
            description: 'Landmark: midpoint between PSIS–greater trochanter',
            subtitle: 'LA: 25 mL',
            additionalInfo: 'Approaches: posterior, anterior, subgluteal, popliteal',
          ),
          PeripheralNerveBlocksItem(
            title: 'Ankle Block',
            description: '5 nerves targeted',
            subtitle: 'Low complication rate',
            additionalInfo: 'Avoid high volume & epinephrine',
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Truncal Blocks',
        items: [
          PeripheralNerveBlocksItem(
            title: 'Superficial Cervical Plexus',
            description: 'At SCM lateral border, junction of upper–middle thirds',
            subtitle: 'LA: 5 + 5 mL subcutaneous',
          ),
          PeripheralNerveBlocksItem(
            title: 'Intercostal Block',
            description: 'Subcostal approach; 3–5 mL LA',
            subtitle: 'High systemic absorption → toxicity risk',
            additionalInfo: 'Pneumothorax possible\nReplaced largely by paravertebral',
          ),
          PeripheralNerveBlocksItem(
            title: 'Paravertebral Block',
            description: 'Segmental block for thoracic/abdominal surgery',
            subtitle: 'Mastectomy: T3–T6; axillary dissection: C7–T2',
            additionalInfo: 'Hernia: T10–L2\nLA: 5 mL/segment\nComplications: pneumothorax, retroperitoneal injury',
          ),
          PeripheralNerveBlocksItem(
            title: 'TAP Block',
            description: 'For lower abdominal surgery/postop analgesia',
            subtitle: 'Targets: subcostal (T12), ilioinguinal, iliohypogastric (L1)',
            additionalInfo: 'Needle: between internal oblique & transversus abdominis\nLA: 20 mL',
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Critical Notes',
        items: [
          PeripheralNerveBlocksItem(
            title: 'LA Dose/Volume',
            description: 'Critical for success & safety',
          ),
          PeripheralNerveBlocksItem(
            title: 'Ultrasound Benefits',
            description: '↑ Success, ↓ complications',
          ),
          PeripheralNerveBlocksItem(
            title: 'Complications',
            description: 'Pneumothorax (supraclavicular, intercostal, paravertebral), intraneural injection, systemic toxicity',
          ),
          PeripheralNerveBlocksItem(
            title: 'IVRA Tourniquet',
            description: '≥15–20 min; avoid rapid deflation',
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Key Exam Spots',
        items: [
          PeripheralNerveBlocksItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Nerve stimulation: safe range 0.2–0.5 mA',
            subtitle: 'Interscalene: C5–C7 dense, C8–T1 often spared',
            additionalInfo: 'Supraclavicular: "spinal of the arm"\nIVRA: tourniquet ≥15–20 min\nParavertebral: 5 mL/segment\nTAP block: 20 mL LA',
          ),
        ],
      ),
    ];
  }
}
