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
            title: 'ERAS (ENHANCED RECOVERY AFTER SURGERY) PROTOCOLS',
            description: 'Scientific and evidence-based protocols designed to reduce the physiological stress response of surgery.',
            additionalInfo: 'Focuses on accelerating recovery and improving patient safety throughout the entire perioperative journey.',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'MULTIMODAL AND MULTIDISCIPLINARY APPROACH',
            description: 'A collaborative effort involving surgeons, anesthesiologists, nurses, dietitians, and physiotherapists.',
            additionalInfo: 'Integration of various disciplines ensures the best possible outcomes for complex surgical pathways.',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'CLINICAL GOALS: REDUCING MORBIDITY AND MORTALITY',
            description: 'Primary objectives include reducing postoperative complications and significantly shortening the length of hospital stay.',
            additionalInfo: 'Aims to improve overall surgical success while ensuring cost-effectiveness without compromising safety.',
          ),
        ],
      ),
      EnhancedRecoveryProtocolsCategory(
        categoryName: 'Preoperative Strategies',
        items: [
          EnhancedRecoveryProtocolsItem(
            title: 'PATIENT EDUCATION AND OPTIMIZATION',
            description: 'Providing detailed surgical information reduces patient anxiety and improves compliance with the recovery protocol.',
            subtitle: 'Implementation of smoking and alcohol cessation at least 4 weeks prior to surgery',
            additionalInfo: 'Optimization of existing conditions like anemia, malnutrition, diabetes, and COPD is essential.',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'CARBOHYDRATE LOADING AND FASTING MANAGEMENT',
            description: 'Allowing clear fluids up to 2 hours before induction to maintain a metabolic steady state.',
            subtitle: 'Carbohydrate drinks reduce preoperative fasting duration and minimize postoperative insulin resistance',
            additionalInfo: 'Modern ERAS abandonment of "NPO after midnight" protocols improves patient comfort.',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'PREHABILITATION: EXERCISE AND PHYSIOTHERAPY',
            description: 'Pre-surgery exercise regimens and respiratory therapy help to increase functional reserve and capacity.',
            additionalInfo: 'Particularly beneficial for high-risk patients undergoing major thoracic or abdominal procedures.',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'PROPHYLACTIC ANTIBIOTIC TIMING',
            description: 'Administration should occur 30–60 minutes before the surgical incision to ensure peak tissue levels.',
            additionalInfo: 'Correct timing is a critical factor in preventing surgical site infections (SSI).',
          ),
        ],
      ),
      EnhancedRecoveryProtocolsCategory(
        categoryName: 'Intraoperative Strategies',
        items: [
          EnhancedRecoveryProtocolsItem(
            title: 'ANESTHESIA MANAGEMENT: OPIOID-SPARING STRATEGIES',
            description: 'Use of multimodal analgesia including NSAIDs, ketamine, and gabapentinoids to limit opioid side effects.',
            subtitle: 'Incorporation of regional techniques like TAP blocks and epidurals for primary pain control',
            additionalInfo: 'Reduced opioid consumption facilitates earlier return of gastrointestinal function.',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'GOAL-DIRECTED FLUID THERAPY (GDFT)',
            description: 'Dynamic fluid management aimed at avoiding both hypovolemia and tissue-edema-inducing fluid overload.',
            additionalInfo: 'Maintains optimal organ perfusion while preventing complications like ileus or poor wound healing.',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'NORMOTHERMIA MAINTENANCE',
            description: 'Consistent use of active warming blankets and warmed fluids to keep core temperature above 36.0°C.',
            additionalInfo: 'Preventing hypothermia reduces surgical bleeding and the risk of infectious complications.',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'MINIMALLY INVASIVE SURGICAL TECHNIQUES',
            description: 'Prioritizing laparoscopic and robotic approaches whenever possible to minimize surgical trauma.',
            additionalInfo: 'Smaller incisions result in a lower inflammatory response and faster physical mobilization.',
          ),
        ],
      ),
      EnhancedRecoveryProtocolsCategory(
        categoryName: 'Postoperative Strategies',
        items: [
          EnhancedRecoveryProtocolsItem(
            title: 'EARLY POSTOPERATIVE FEEDING',
            description: 'Commencing oral or enteral nutrition within the first 24 hours to stimulate bowel motility.',
            additionalInfo: 'Early nutrition protects the gut mucosal barrier and helps reduce infectious risks.',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'EARLY MOBILIZATION AND THROMBOPROPHYLAXIS',
            description: 'Encouraging patients to get out of bed on the day of surgery to prevent thrombosis and pulmonary complications.',
            additionalInfo: 'Adequate analgesia is a mandatory prerequisite for successful mobilization.',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'POSTOPERATIVE MULTIMODAL ANALGESIA',
            description: 'A planned approach utilizing regular paracetamol and NSAIDs while limiting systemic opioids.',
            additionalInfo: 'Dosing should be administered at scheduled intervals rather than "as needed" (PRN).',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'RAPID REMOVAL OF INVASIVE DEVICES',
            description: 'Prompt removal of nasogastric tubes, urinary catheters, and surgical drains as soon as clinically viable.',
            additionalInfo: 'Removing these devices promotes faster movement and reduces the risk of catheter-associated infections.',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'PERIOPERATIVE GLYCEMIC CONTROL',
            description: 'Strict monitoring of blood glucose levels to prevent hyperglycemia-induced complication risks.',
            additionalInfo: 'Managing insulin resistance through carbohydrate loading is a key component.',
          ),
        ],
      ),
      EnhancedRecoveryProtocolsCategory(
        categoryName: 'Multimodal Analgesia – Cornerstone of ERAS',
        items: [
          EnhancedRecoveryProtocolsItem(
            title: 'NSAIDS AND ACETAMINOPHEN (PARACETAMOL)',
            description: 'Fundamental analgesics that can reduce opioid requirements by up to 50% when used regularly.',
            additionalInfo: 'They also help in modulating the surgical inflammatory response.',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'EPIDURAL ANALGESIA FOR MAJOR SURGERY',
            description: 'The most effective method for blocking the sympathetic stress response in major abdominal or thoracic surgery.',
            additionalInfo: 'Acts to accelerate the return of normal bowel movements.',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'PERIPHERAL NERVE BLOCKS FOR REHABILITATION',
            description: 'Provides targeted regional comfort, allowing for aggressive early physical therapy and mobilization.',
            additionalInfo: 'Particularly effective in orthopedic and limb-focused surgeries.',
          ),
          EnhancedRecoveryProtocolsItem(
            title: 'LOCAL INFILTRATION AND WOUND SITE ANALGESIA',
            description: 'Surgical wound infiltration with local anesthetics provides significant early pain relief with low cost.',
            additionalInfo: 'A simple yet powerful component of the multimodal analgesic plan.',
          ),
        ],
      ),
      EnhancedRecoveryProtocolsCategory(
        categoryName: 'Outcomes of ERAS',
        items: [
          EnhancedRecoveryProtocolsItem(
            title: 'CLINICAL BENEFITS AND OUTCOMES',
            description: 'Significant reduction in postoperative complications including infections, thrombosis, and ileus.',
            subtitle: 'Evidence shows hospital stays can be shortened by an average of 2–3 days',
            additionalInfo: 'Leads to increased patient satisfaction, faster return to full activity, and overall reduction in healthcare costs.',
          ),
        ],
      ),
      EnhancedRecoveryProtocolsCategory(
        categoryName: 'Special Notes',
        items: [
          EnhancedRecoveryProtocolsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Key principles include a multimodal, multidisciplinary approach focusing on patient safety.',
            subtitle: 'Essential data: fast clear fluids 2h before, GDFT usage, early feeding within 24h',
            additionalInfo: 'Reduces length of stay (LOS) by 2–3 days; goals: reduce stress and accelerate physiological recovery.',
          ),
        ],
      ),
    ];
  }
}
