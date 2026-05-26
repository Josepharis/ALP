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
            title: 'FIELD BLOCK',
            description: 'Targeting cutaneous nerves like intercostobrachial and saphenous by injecting around the surgical field.',
            additionalInfo: 'Typical examples include the intercostobrachial block for axillary surgery and the saphenous nerve block for distal leg procedures.',
          ),
          PeripheralNerveBlocksItem(
            title: 'PARESTHESIA',
            description: 'An outdated technique of eliciting an electric shock-like sensation by directly contacting the nerve with the needle.',
            additionalInfo: 'This method is no longer recommended in modern anesthesia due to the high risk of nerve injury and pain.',
          ),
          PeripheralNerveBlocksItem(
            title: 'NERVE STIMULATION',
            description: 'Using high-frequency/low-current stimulation to localize nerves based on muscle twitch responses.',
            subtitle: 'Safe range: 0.2–0.5 mA; responses below 0.2 mA indicate a high risk of intraneural needle placement',
            additionalInfo: 'Typically performed using a frequency of 1–2 Hz and a starting current of 5 mA.',
          ),
          PeripheralNerveBlocksItem(
            title: 'ULTRASOUND (USG)',
            description: 'Real-time visualization of nerves and surrounding structures to improve block success and safety.',
            additionalInfo: 'High-frequency probes are used for superficial structures, while low-frequency curvilinear probes are needed for deeper structures.',
          ),
          PeripheralNerveBlocksItem(
            title: 'CONTINUOUS BLOCK',
            description: 'Long-term analgesia achieved via perineural catheters with continuous local anesthetic infusions.',
            additionalInfo: 'Utilizing long-acting LAs at low concentrations maximizes sensory blockade while minimizing motor block.',
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Upper Extremity Blocks',
        items: [
          PeripheralNerveBlocksItem(
            title: 'BRACHIAL PLEXUS ANATOMY',
            description: 'Formed by the anterior rami of the C4–T1 spinal nerves, providing sensory and motor supply to the arm.',
            subtitle: 'Cords (lateral, medial, posterior) are arranged around the axillary artery',
            additionalInfo: 'Terminal branches include the median, ulnar, radial, and musculocutaneous nerves.',
          ),
          PeripheralNerveBlocksItem(
            title: 'INTERSCALENE BLOCK',
            description: 'Ideally suited for shoulder and proximal humerus surgeries by targeting the C5–C7 segments.',
            subtitle: 'Complications include phrenic nerve block, Horner\'s syndrome, and RLN paralysis; C8–T1 (ulnar) is often spared',
            additionalInfo: 'LA volumes: 10 mL for postoperative analgesia; 20–30 mL for surgical anesthesia.',
          ),
          PeripheralNerveBlocksItem(
            title: 'SUPRACLAVICULAR BLOCK',
            description: 'Known as the "spinal of the arm," it captures the plexus at its most compact point.',
            subtitle: 'LA: 30–40 mL (fractionated); primary risk is pneumothorax',
            additionalInfo: 'Phrenic nerve block occurs in approximately 50% of cases.',
          ),
          PeripheralNerveBlocksItem(
            title: 'INFRACLAVICULAR BLOCK',
            description: 'An excellent choice for procedures at or below the elbow, preserving the T2 dermatome.',
            subtitle: 'Entry: 2 cm medial and 2 cm caudal to the coracoid process, reaching a depth of ~5 cm',
            additionalInfo: 'Typically requires 30 mL of LA. Success is indicated by finger flexion or extension responses.',
          ),
          PeripheralNerveBlocksItem(
            title: 'AXILLARY BLOCK',
            description: 'The standard approach for forearm and hand surgery, though less suitable for perineural catheters.',
            subtitle: 'Each nerve usually requires ~10 mL of LA; total volume ~40 mL',
            additionalInfo: 'The musculocutaneous nerve is often separate from the artery and requires targeted injection.',
          ),
          PeripheralNerveBlocksItem(
            title: 'MOTOR RESPONSES',
            description: 'Specific hand movements confirm successful localization of terminal brachial plexus branches.',
            subtitle: 'Median → wrist flexion/thumb opposition; Ulnar → 4th–5th finger flexion',
            additionalInfo: 'Radial → extension; Musculocutaneous → supination.',
          ),
          PeripheralNerveBlocksItem(
            title: 'TERMINAL BLOCKS',
            description: 'Individual nerve blocks at the elbow or wrist using 3–10 mL of LA per nerve.',
            subtitle: 'The intercostobrachial (T2) nerve must be blocked separately to prevent tourniquet pain',
            additionalInfo: 'Highly targeted approach for specific finger or skin injuries.',
          ),
          PeripheralNerveBlocksItem(
            title: 'IVRA (BIER BLOCK)',
            description: 'Intravenous injection of low-concentration lidocaine into a blood-depleted limb under tourniquet control.',
            subtitle: '%0.5 lidocaine: 25 mL for the forearm, 50 mL for the arm',
            additionalInfo: 'Tourniquet must remain inflated for at least 15–20 min; deflation must be slow to prevent systemic toxicity.',
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Lower Extremity Blocks',
        items: [
          PeripheralNerveBlocksItem(
            title: 'PLEXUSES',
            description: 'The lumbar (L1–L4) and sacral (L4–S4) plexuses provide the entire nerve supply to the leg.',
            subtitle: 'Lumbar → femoral, obturator, lateral femoral cutaneous; Sacral → sciatic nerve',
            additionalInfo: 'Each plexus requires distinct approaches for comprehensive lower limb anesthesia.',
          ),
          PeripheralNerveBlocksItem(
            title: 'FEMORAL BLOCK',
            description: 'Targets the femoral nerve (L2–L4) to facilitate hip flexion and knee extension.',
            subtitle: 'Requires 30–40 mL of LA; commonly used for hip fractures and knee surgery',
            additionalInfo: 'Fascia iliaca approach is a popular alternative for multi-level blockade.',
          ),
          PeripheralNerveBlocksItem(
            title: 'LATERAL FEMORAL CUTANEOUS',
            description: 'A purely sensory block for the outer thigh, localized 2 cm medial and distal to the ASIS.',
            additionalInfo: 'Typically requires 10–15 mL of LA; useful for skin grafts and meralgia paresthetica.',
          ),
          PeripheralNerveBlocksItem(
            title: 'OBTURATOR BLOCK',
            description: 'Blocks the obturator nerve (L2–L4) by entering 1.5 cm inferior and lateral to the pubic tubercle.',
            subtitle: 'Response: thigh adduction; frequently combined with femoral blocks for knee surgery',
            additionalInfo: 'Requires 15–20 mL of LA.',
          ),
          PeripheralNerveBlocksItem(
            title: 'PSOAS COMPARTMENT (LUMBAR PLEXUS)',
            description: 'A deep, paravertebral approach to the entire lumbar plexus using a long needle.',
            subtitle: 'Potential complication: retroperitoneal bleeding or unintentional epidural spread',
            additionalInfo: 'Highly effective for major hip and femoral procedures.',
          ),
          PeripheralNerveBlocksItem(
            title: 'SAPHENOUS BLOCK',
            description: 'Targeting the purely sensory medial branch of the femoral nerve below the knee.',
            subtitle: 'LA: 5–10 mL; must be combined with a sciatic block for complete below-knee anesthesia',
            additionalInfo: 'Can be performed at the mid-thigh (adductor canal) or ankle level.',
          ),
          PeripheralNerveBlocksItem(
            title: 'SCIATIC BLOCK',
            description: 'Providing extensive anesthesia to the leg and foot, localized at the midpoint between the PSIS and greater trochanter.',
            subtitle: 'LA: 25 mL; approaches include posterior, anterior, subgluteal, and popliteal',
            additionalInfo: 'The popliteal approach is the standard for foot and ankle surgery.',
          ),
          PeripheralNerveBlocksItem(
            title: 'ANKLE BLOCK',
            description: 'A multi-nerve block involving 5 distinct nerves at the ankle for foot surgery.',
            subtitle: 'Low complication rate; avoid epinephrine and high-volume injections to prevent compartment pressure',
            additionalInfo: 'Nerves involved: tibial, deep peroneal, superficial peroneal, sural, and saphenous.',
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Truncal Blocks',
        items: [
          PeripheralNerveBlocksItem(
            title: 'SUPERFICIAL CERVICAL PLEXUS',
            description: 'Performed at the lateral border of the SCM muscle for superficial neck procedures.',
            additionalInfo: 'LA: 5+5 mL injected subcutaneously along the posterior border of the muscle.',
          ),
          PeripheralNerveBlocksItem(
            title: 'INTERCOSTAL BLOCK',
            description: 'Blockade of the subcostal nerves using 3–5 mL of LA per segment.',
            subtitle: 'Highest rate of systemic absorption of any block → increased risk of LAST',
            additionalInfo: 'Pneumothorax is a known risk; largely replaced by paravertebral blocks.',
          ),
          PeripheralNerveBlocksItem(
            title: 'PARAVERTEBRAL BLOCK',
            description: 'Segmental blockade of spinal nerves for thoracic or abdominal wall anesthesia.',
            subtitle: 'Mastectomy: T3–T6; Hernia repair: T10–L2; Axillary dissection: C7–T2',
            additionalInfo: 'Dose: 5 mL/segment. Complications include pneumothorax and retroperitoneal injury.',
          ),
          PeripheralNerveBlocksItem(
            title: 'TAP BLOCK',
            description: 'Injection between the internal oblique and transversus abdominis for abdominal wall analgesia.',
            subtitle: 'Targets the subcostal (T12) and ilioinguinal/iliohypogastric (L1) nerves',
            additionalInfo: 'Typically utilizes 20 mL of LA; excellent for post-cesarean pain management.',
          ),
        ],
      ),
      PeripheralNerveBlocksCategory(
        categoryName: 'Critical Clinical Notes',
        items: [
          PeripheralNerveBlocksItem(
            title: 'LA DOSE/VOLUME',
            description: 'Accurate dosing and volume planning are critical for both block success and patient safety.',
            additionalInfo: 'Always calculate maximum safe doses based on body weight prior to injection.',
          ),
          PeripheralNerveBlocksItem(
            title: 'ULTRASOUND BENEFITS',
            description: 'USG significantly increases success rates while reducing vascular injury and LAST risk.',
            additionalInfo: 'Real-time monitoring allows for smaller volumes to achieve clinical objectives.',
          ),
          PeripheralNerveBlocksItem(
            title: 'COMPLICATIONS',
            description: 'Major risks include pneumothorax (supraclavicular/intercostal), intraneural injection, and systemic toxicity.',
            additionalInfo: 'A lipid rescue kit must be immediately available during any major regional procedure.',
          ),
          PeripheralNerveBlocksItem(
            title: 'IVRA TOURNIQUET',
            description: 'The tourniquet must remain inflated for 15–20 minutes to allow drug fixation and avoid rapid systemic release.',
            additionalInfo: 'Deflation should be cyclic or slow to test for CNS sensitivity.',
          ),
          PeripheralNerveBlocksItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Key points: nerve stimulator aralığı 0.2–0.5 mA, interscalene C5–C7 dense focus, IVRA time limits.',
            subtitle: 'Supraclavicular = "spinal of the arm"; Paravertebral = 5 mL/segment',
            additionalInfo: 'TAP block: 20 mL LA; Brachial plexus: C4–T1 roots; Horner\'s: interscalene risk; LAST: systemic risk.',
          ),
        ],
      ),
    ];
  }
}
