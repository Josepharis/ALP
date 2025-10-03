import 'package:flutter/material.dart';

class EnhancedRecoveryProtocolsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  EnhancedRecoveryProtocolsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class EnhancedRecoveryProtocolsCategory {
  final String categoryName;
  final List<EnhancedRecoveryProtocolsItem> items;

  EnhancedRecoveryProtocolsCategory({
    required this.categoryName,
    required this.items,
  });
}

class EnhancedRecoveryProtocolsData {
  static List<EnhancedRecoveryProtocolsCategory> getEnhancedRecoveryProtocolsData(BuildContext context) {
    return [
      EnhancedRecoveryProtocolsCategory(
        categoryName: 'General Principles',
        items: [
          EnhancedRecoveryProtocolsItem(
            title: 'ERAS Protocols',
            description: 'Designed to reduce physiological stress response and accelerate recovery in the perioperative period',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'Multimodal Approach',
            description: 'Multimodal, multidisciplinary approach → surgeon, anesthesiologist, nurse, dietitian, physiotherapist',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'Goals',
            description: 'Reduce complications, morbidity, mortality, and shorten hospital stay',
          ),
        ],
      ),
      EnhancedRecoveryProtocolsCategory(
        categoryName: 'Preoperative Strategies',
        items: [
          EnhancedRecoveryProtocolsItem(
            title: 'Patient Education & Optimization',
            description: 'Smoking/alcohol cessation',
            subtitle: 'Correction of anemia, malnutrition, diabetes, COPD, obesity',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'Carbohydrate Loading',
            description: 'Clear fluids allowed up to 2 h before surgery',
            subtitle: 'Reduces fasting time, lowers insulin resistance',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'Prehabilitation',
            description: 'Exercise, respiratory physiotherapy',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'Prophylactic Antibiotics',
            description: 'Given 30–60 min before incision',
          ),
        ],
      ),
      EnhancedRecoveryProtocolsCategory(
        categoryName: 'Intraoperative Strategies',
        items: [
          EnhancedRecoveryProtocolsItem(
            title: 'Anesthesia Management',
            description: 'Multimodal analgesia (opioid-sparing: NSAIDs, acetaminophen, ketamine, gabapentinoids, epidural)',
            subtitle: 'Regional anesthesia techniques (e.g., TAP block, epidural)',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'Fluid Therapy',
            description: 'Avoid both hypovolemia and fluid overload',
            subtitle: 'Goal-directed fluid therapy',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'Normothermia',
            description: 'Active warming, warmed fluids',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'Minimally Invasive Surgery',
            description: 'Laparoscopic/robotic approaches',
          ),
        ],
      ),
      EnhancedRecoveryProtocolsCategory(
        categoryName: 'Postoperative Strategies',
        items: [
          EnhancedRecoveryProtocolsItem(
            title: 'Early Feeding',
            description: 'Oral/enteral nutrition within 24 h → faster bowel motility, fewer infections',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'Early Mobilization',
            description: 'Bedside exercises → lower risk of thrombosis and pulmonary complications',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'Analgesia',
            description: 'Opioid-sparing multimodal analgesia',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'Early Removal of Invasive Devices',
            description: 'NG tubes, drains, catheters removed as soon as possible',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'Glycemic Control',
            description: 'Hyperglycemia increases complication risk',
          ),
        ],
      ),
      EnhancedRecoveryProtocolsCategory(
        categoryName: 'Multimodal Analgesia – Cornerstone of ERAS',
        items: [
          EnhancedRecoveryProtocolsItem(
            title: 'NSAIDs/Acetaminophen',
            description: 'Reduce opioid need',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'Epidural Analgesia',
            description: 'For major abdominal/thoracic surgery',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'Peripheral Nerve Blocks',
            description: 'For orthopedic surgery',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'Local Infiltration',
            description: 'At wound site',
          ),
        ],
      ),
      EnhancedRecoveryProtocolsCategory(
        categoryName: 'Outcomes of ERAS',
        items: [
          EnhancedRecoveryProtocolsItem(
            title: 'Clinical Benefits',
            description: 'Reduced postoperative complications',
            subtitle: 'Accelerated recovery',
            additionalInfo: 'Shortened hospital stay by 2–3 days\nIncreased patient satisfaction\nReduced healthcare costs',
          ),
        ],
      ),
      EnhancedRecoveryProtocolsCategory(
        categoryName: 'Key Exam Spots',
        items: [
          EnhancedRecoveryProtocolsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'ERAS: multimodal, multidisciplinary approach',
            subtitle: 'Carbohydrate loading: clear fluids up to 2h before',
            additionalInfo: 'Goal-directed fluid therapy\nEarly feeding within 24h\nOpioid-sparing multimodal analgesia\nShortened hospital stay by 2–3 days',
          ),
        ],
      ),
    ];
  }
}
