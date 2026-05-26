import 'package:flutter/material.dart';

class InhalationAnestheticsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  InhalationAnestheticsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class InhalationAnestheticsCategory {
  final String categoryName;
  final List<InhalationAnestheticsItem> items;

  InhalationAnestheticsCategory({
    required this.categoryName,
    required this.items,
  });
}

class InhalationAnestheticsData {
  static List<InhalationAnestheticsCategory> getInhalationAnestheticsData(
    BuildContext context,
  ) {
    return [
      InhalationAnestheticsCategory(
        categoryName: 'Pharmacokinetic Principles',
        items: [
          InhalationAnestheticsItem(
            title: "Fi (INSPIRED CONCENTRATION)",
            description: "The fresh gas concentration delivered from the anesthesia machine to the patient; directly determines the rate of induction.",
            additionalInfo: "Higher Fi values, small-volume breathing systems, and low circuit absorption (adherence to rubber/plastic surfaces) ensure faster induction and emergence (awakening). The higher the Fi, the more rapidly the amount of gas reaching the alveoli increases.",
          ),
          InhalationAnestheticsItem(
            title: "FA (ALVEOLER CONCENTRATION)",
            description: "The most important indicator reflecting the anesthetic concentration in the brain; the FA/Fi balance is related to the rate of induction.",
            subtitle: "Gases with a high blood/gas partition coefficient reach equilibrium late",
            additionalInfo: "The higher the rate at which gas from the alveoli passes into the blood (uptake), the more slowly the alveolar concentration (FA) rises and induction is delayed. Tissue uptake follows an order from vessel-rich organs to vessel-poor tissues. Especially for agents with high solubility (high blood/gas coefficient), increasing ventilation significantly accelerates the rise in the FA/Fi ratio.",
          ),
          InhalationAnestheticsItem(
            title: "CONCENTRATION AND SECOND GAS EFFECT",
            description: "Physical phenomena that increase the rate of entry and the concentration of other accompanying gases in the alveoli.",
            subtitle: "The use of N₂O accelerates the absorption of the other anesthetic agent given with it",
            additionalInfo: "• Concentration Effect: As the inspired gas concentration (Fi) increases, a larger mass of gas remains in the alveoli even if the alveolar volume decreases.\n• Second Gas Effect: A very rapidly absorbed gas like N₂O increases the partial pressure and absorption rate of the other (second) gas delivered with it in the alveoli, thereby accelerating induction.",
          ),
          InhalationAnestheticsItem(
            title: "ARTERIAL CONCENTRATION (Fa)",
            description: "Refers to the passage of gas from the alveoli into the arterial blood; ventilation-perfusion (V/Q) mismatch adversely affects this process.",
            additionalInfo: "In cases of right-to-left shunts in the lungs or inadequate ventilation (V/Q impairment), gas in the alveoli cannot fully pass into the blood. This situation results in a significant slowing of induction, particularly for agents with low solubility (rapid acting).",
          ),
          InhalationAnestheticsItem(
            title: "ELIMINATION AND EXCRETION PROCESSES",
            description: "The process of anesthetic gases being removed from the body primarily through the lungs.",
            subtitle: "100% O₂ should be delivered for 5-10 minutes after N₂O to prevent diffusion hypoxia",
            additionalInfo: "Metabolism generally occurs in the liver via the CYP2E1 enzyme. All factors that accelerate induction (low blood/gas solubility, high ventilation) also accelerate emergence. As N₂O rapidly returns to the alveoli, it can dilute the oxygen there (Diffusion Hypoxia), thus high-flow oxygen is essential during awakening.",
          ),
        ],
      ),
      InhalationAnestheticsCategory(
        categoryName: 'Pharmacodynamic Properties',
        items: [
          InhalationAnestheticsItem(
            title: "THEORIES OF ACTION AND RECEPTORS",
            description: "Inhalation agents provide amnesia and analgesia through multiple receptors in the central nervous system.",
            subtitle: "N₂O and Xenon primarily act as NMDA antagonists",
            additionalInfo: "Modern theories highlight GABA-A receptor activation and effects on glycine and nicotinic acetylcholine receptors. Amnesia (memory loss) is provided at the cortical level, while non-responsiveness to surgical stimuli and analgesia are created at the spinal cord level.",
          ),
          InhalationAnestheticsItem(
            title: "MEYER-OVERTON RULE AND PHYSICAL PROPERTIES",
            description: "A historical rule defining the direct proportion between the lipid solubility (lipophilicity) of an agent and its anesthetic potency.",
            subtitle: "As lipid solubility increases, the MAC value of the agent decreases (meaning its potency increases)",
            additionalInfo: "According to the critical volume hypothesis, anesthetic molecules embed into the neuronal membrane, expanding it and hindering the function of ion channels. Although protein-binding theories are more prominent today, lipophilicity remains an important indicator for predicting potency.",
          ),
          InhalationAnestheticsItem(
            title: "NEUROTOXICITY AND PROTECTION",
            description: "The field examining the potential protective or damaging effects of anesthetics on brain cells.",
            additionalInfo: "Experimental studies have shown that Isoflurane may increase neuronal apoptosis. On the other hand, NMDA antagonists (N₂O, Xenon) and some volatile agents may exhibit 'cardiac preconditioning' and neuroprotective (nerve-protecting) effects; this can provide an advantage in cases with a risk of ischemia.",
          ),
          InhalationAnestheticsItem(
            title: "MAC (MINIMUM ALVEOLAR CONCENTRATION)",
            description: "The alveolar concentration at sea level and 1 atmosphere of pressure that prevents a motor response to surgical stimulus in 50% of patients.",
            subtitle: "The MAC value corresponds to the ED50 value in pharmacology",
            additionalInfo: "• 1.3 × MAC: Ensures immobility in 95% of patients (ED95).\n• Variables: The MAC value decreases by approximately 6% for every 10 years of age. Factors such as pregnancy, hypothermia, and alcohol use affect the MAC value and change dose requirements.",
          ),
        ],
      ),
      InhalationAnestheticsCategory(
        categoryName: 'Agent-Specific Notes',
        items: [
          InhalationAnestheticsItem(
            title: "N₂O (NITROUS OXIDE / LAUGHING GAS)",
            description: "A colorless, sweet-smelling, non-flammable gas that supports combustion and has high analgesic potency.",
            additionalInfo: "• CVS: Maintains blood pressure via catecholamine surge.\n• Respiratory: Increases respiratory rate, decreases tidal volume; suppresses hypoxic response.\n• Brain: Increases intracranial pressure and metabolism.\n• Toxicity: Can impair DNA and myelin synthesis by inhibiting vitamin B12.\n• Contraindications: Air embolism, bowel obstruction, pneumothorax, and tympanoplasty graft surgery (causes expansion in closed spaces).",
          ),
          InhalationAnestheticsItem(
            title: "HALOTHANE",
            description: "A historical halogenated alkane that is pleasant-smelling, non-flammable, and stored in amber-colored bottles.",
            subtitle: "Can cause severe arrhythmias with epinephrine (Limit: 1.5 mcg/kg)",
            additionalInfo: "• CVS: Significantly suppresses cardiac output and baroreflex.\n• Liver: Can lead to 'Halothane Hepatitis' (1/35,000 risk); obesity, middle age, and female gender are risk factors.\n• Respiratory: A potent bronchodilator but impairs mucociliary clearance.\n• MH Trigger: Can trigger Malignant Hyperthermia. Fatal arrhythmias may be seen when used with aminophylline.",
          ),
          InhalationAnestheticsItem(
            title: "ISOFLURANE",
            description: "A sharp-smelling ether derivative; widely used due to its CVS stability and organ-protective properties.",
            subtitle: "Can cause Coronary Steal phenomenon",
            additionalInfo: "It may be preferred in neurosurgery because it reduces CMRO₂ and provides burst-suppression on EEG. Its metabolism is very low; metabolites such as TFA are produced minimally. It potentiates the effect of muscle relaxants. Contraindicated in a history of Malignant Hyperthermia.",
          ),
          InhalationAnestheticsItem(
            title: "DESFLURANE",
            description: "The agent providing the fastest induction and emergence (awakening) due to its low blood/gas solubility.",
            subtitle: "Requires a special heated vaporizer (Tec 6) because its boiling point is close to room temperature",
            additionalInfo: "It is not suitable for mask induction due to its airway-irritating properties. When its concentration is rapidly increased, it can cause tachycardia and hypertension via sympathetic activation. It can release Carbon Monoxide (CO) when in contact with dry soda-lime.",
          ),
          InhalationAnestheticsItem(
            title: "SEVOFLURANE",
            description: "The gold standard for pediatric and adult mask induction due to its pleasant smell and non-irritating nature.",
            subtitle: "Can form Compound A by interacting with soda-lime in low-flow anesthesia",
            additionalInfo: "• Nephrotoxicity: Fresh gas flow should not be reduced below 2 L/min to prevent the formation of Compound A.\n• Brain: Can impair cerebral autoregulation above 1.5 MAC.\n• Storage: Stabilized with water to prevent HF (Hydrogen Fluoride) formation in glass bottles. Can prolong the QT interval.",
          ),
          InhalationAnestheticsItem(
            title: "XENON",
            description: "An ideal but expensive gas that is rapid-acting, inert, environmentally friendly, and has no side effects on the cardiovascular system.",
            additionalInfo: "It is the agent with the lowest blood/gas solubility (0.115), thereby providing incredibly rapid induction/emergence. It provides potent analgesia and neuroprotection via NMDA receptor antagonism. Its routine use is limited due to high production costs.",
          ),
        ],
      ),
    ];
  }
}
