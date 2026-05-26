import 'package:flutter/material.dart';

class IntravenousAnestheticsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  IntravenousAnestheticsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class IntravenousAnestheticsCategory {
  final String categoryName;
  final List<IntravenousAnestheticsItem> items;

  IntravenousAnestheticsCategory({
    required this.categoryName,
    required this.items,
  });
}

class IntravenousAnestheticsData {
  static List<IntravenousAnestheticsCategory> getIntravenousAnestheticsData(
    BuildContext context,
  ) {
    return [
      IntravenousAnestheticsCategory(
        categoryName: 'Barbiturates',
        items: [
          IntravenousAnestheticsItem(
            title: "MECHANISM OF ACTION (GABAA RECEPTOR)",
            description: "Produces central nervous system depression by binding to the GABAA receptor complex and prolonging the opening time of chloride (Cl⁻) channels.",
            additionalInfo: "This effect results in neuronal hyperpolarization and suppressed nerve transmission. At high doses, they can act directly as GABAA mimetics. They have no analgesic (pain-relieving) properties and may even increase pain sensitivity (anti-analgesia) at low doses.",
          ),
          IntravenousAnestheticsItem(
            title: "PHARMACOKINETICS AND DISTRIBUTION",
            description: "The termination of effect after a single dose occurs primarily through rapid redistribution from the central compartment to peripheral tissues rather than metabolism.",
            subtitle: "Thiopental is 60–80% protein-bound; its half-life is 10–12 hours",
            additionalInfo: "Methohexital provides faster recovery compared to thiopental because it is cleared more rapidly by the liver. Barbiturates are highly lipophilic (fat-soluble) drugs, which is why they enter the brain rapidly and distribute to fat and muscle tissues just as quickly.",
          ),
          IntravenousAnestheticsItem(
            title: "SYSTEMIC EFFECTS",
            description: "Prominent cardiovascular and respiratory depression occurs, while they are noted for their brain-protective properties.",
            subtitle: "They decrease cerebral metabolic rate (CMRO₂) and intracranial pressure (ICP)",
            additionalInfo: "• CVS: Blood pressure falls due to peripheral vasodilation and myocardial depression; reflex tachycardia may be seen.\n• Respiratory: They reduce respiratory rate and depth. Since they do not fully suppress upper airway reflexes, they carry a risk of laryngospasm and bronchospasm.\n• Brain: They reduce intracranial pressure by decreasing cerebral blood flow; this is advantageous in neurosurgical cases.",
          ),
          IntravenousAnestheticsItem(
            title: "SIDE EFFECTS AND CONTRAINDICATIONS",
            description: "Caution should be exercised in patient selection due to their potential to trigger histamine release and metabolic disorders.",
            additionalInfo: "Thiobarbiturates (Thiopental) can cause histamine release, creating a risk for asthmatic patients. The most important contraindication is Porphyria (Acute Intermittent Porphyria); it can trigger fatal crises by inducing the ALA synthetase enzyme. Additionally, they may leave a garlic or onion taste in the mouth after injection.",
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Benzodiazepines',
        items: [
          IntravenousAnestheticsItem(
            title: "BENZODIAZEPINE MECHANISM OF ACTION",
            description: "Provides sedation and amnesia by increasing the 'frequency' of chloride channel opening via GABAA receptors.",
            subtitle: "Its specific antagonist is Flumazenil",
            additionalInfo: "While barbiturates increase the 'duration' of channel opening, benzodiazepines increase the 'frequency.' They have a safe therapeutic index. They have no analgesic effects but produce potent anterograde amnesia (not remembering the moment of the procedure).",
          ),
          IntravenousAnestheticsItem(
            title: "PHARMACOKINETIC PROFILE",
            description: "Midazolam, Diazepam, and Lorazepam are the most commonly used derivatives; their solubility changes depending on pH.",
            subtitle: "t½: Diazepam (30 h) > Lorazepam (15 h) > Midazolam (2 h)",
            additionalInfo: "Midazolam is water-soluble at acidic pH (ampoule form) but becomes lipophilic at body pH, rapidly crossing the blood-brain barrier. Metabolism of Diazepam results in long-acting active metabolites (desmethyldiazepam), which can lead to prolonged effects in the elderly.",
          ),
          IntravenousAnestheticsItem(
            title: "SYSTEMIC EFFECTS AND AMNESIA",
            description: "Exert minimal effect on the cardiovascular system while suppressing the respiratory center in a dose-dependent manner.",
            additionalInfo: "They are generally used for sedation and premedication. Since they can reduce the CO₂ response at hypnotic doses, monitored follow-up is always required. They have skeletal muscle relaxant properties, but this effect is at the spinal cord level and does not affect the neuromuscular junction.",
          ),
          IntravenousAnestheticsItem(
            title: "DRUG INTERACTIONS AND ANTAGONISM",
            description: "Significantly reduce the dose requirements of other anesthetics (opioids and volatile agents).",
            additionalInfo: "• MAC Effect: They can reduce the MAC value of inhalation agents by up to 30%.\n• Metabolism: Drugs such as cimetidine and erythromycin can slow down the breakdown of this group via cytochrome P450, leading to prolonged effects.\n• Flumazenil: Rapidly reverses the effects of benzodiazepines, but since its half-life is short, follow-up for the risk of re-sedation is essential.",
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Ketamine',
        items: [
          IntravenousAnestheticsItem(
            title: "DISSOCIATIVE ANESTHESIA MECHANISM",
            description: "Dissociates communication between the thalamus and the limbic system by antagonizing NMDA receptors; creates a state where the patient's eyes are open but they are detached from the environment.",
            subtitle: "Active metabolite is Norketamine",
            additionalInfo: "Unlike other IV anesthetics, it provides potent analgesia. The dissociative anesthesia state is accompanied by a cataleptic posture, nystagmus, and sometimes involuntary muscle movements. It is also thought to interact with opioid receptors.",
          ),
          IntravenousAnestheticsItem(
            title: "CVS AND RESPIRATORY EFFECTS",
            description: "The only induction agent that increases blood pressure, heart rate, and cardiac output by stimulating the sympathetic system.",
            subtitle: "Preserves airway reflexes and ventilatory drive; it is a potent bronchodilator",
            additionalInfo: "Ideal for induction in hypotensive and shock patients. It does not suppress respiration but can trigger laryngospasm risk by increasing salivary secretions (generally combined with Glycopyrrolate). It is effective in reducing lung resistance in patients with bronchospasm.",
          ),
          IntravenousAnestheticsItem(
            title: "CEREBRAL EFFECTS AND SIDE EFFECTS",
            description: "Since it can increase cerebral blood flow and intracranial pressure, limited use is recommended in neurosurgical cases.",
            additionalInfo: "• Psychomimetic Reactions: Vivid dreams, illusions, and hallucinations may be seen during emergence; this can be reduced with benzodiazepines.\n• Muscle Relaxants: Can potentiate the effect of non-depolarizing muscle relaxants.\n• May increase intraocular pressure.",
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Etomidate',
        items: [
          IntravenousAnestheticsItem(
            title: "MECHANISM OF ACTION AND STABILITY",
            description: "Acting via GABAA receptors and the RAS system, it is considered the safest (most stable) intravenous agent, especially for cardiac patients.",
            additionalInfo: "It has almost no side effects on the cardiovascular system. It does not cause histamine release and maintains blood pressure. It is rapidly metabolized by the liver and plasma esterases.",
          ),
          IntravenousAnestheticsItem(
            title: "SYSTEMIC EFFECTS AND CONTROL",
            description: "One of the agents that best preserves cerebral perfusion pressure while reducing cerebral blood flow and metabolism.",
            additionalInfo: "Suppresses respiration minimally; the risk of apnea development is low. It is a primary choice for induction in patients with asthma or severe heart failure.",
          ),
          IntravenousAnestheticsItem(
            title: "ENDOCRINE EFFECTS (11-BETA HYDROXYLASE)",
            description: "The most characteristic side effect of etomidate is that it stops cortisol synthesis by causing adrenocortical suppression.",
            additionalInfo: "Even in a single dose, it inhibits the 11-beta hydroxylase enzyme, preventing cortisol production for 6–8 hours. Its use as an infusion is not recommended in conditions where the stress response is vital, such as sepsis.",
          ),
          IntravenousAnestheticsItem(
            title: "SIDE EFFECTS (MYOCLONUS)",
            description: "Involuntary muscle twitches (myoclonus) seen in 30–60% of patients during induction and pain at the injection site are common.",
            additionalInfo: "Myoclonus is due to the removal of subcortical inhibition and can be reduced with premedication (opioid or benzodiazepine). Incidence of postoperative nausea and vomiting is also higher compared to other agents.",
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Propofol',
        items: [
          IntravenousAnestheticsItem(
            title: "PROPOFOL MECHANISM OF ACTION",
            description: "Allosterically facilitates GABAA receptor functions and provides a rapid, sharp-onset anesthesia in the central nervous system.",
            additionalInfo: "The cornerstone of modern anesthesia. Widely used in sedation, induction, and TIVA (Total Intravenous Anesthesia) applications. Enhances patient comfort during emergence due to its anti-emetic properties.",
          ),
          IntravenousAnestheticsItem(
            title: "PHARMACOKINETICS AND ELIMINATION",
            description: "Rapidly removed from the body with a very fast distribution half-life (2–8 min) and high clearance; has a low accumulation effect.",
            additionalInfo: "Extrahepatic metabolism (especially in the lungs) exists. This rapid clearance makes propofol ideal for 'rapid awakening after infusion' (rapid recovery).",
          ),
          IntravenousAnestheticsItem(
            title: "SYSTEMIC EFFECTS AND EEG MONITORING",
            description: "Can significantly lower blood pressure and systemic vascular resistance; suppresses respiration to a level where intubation can be performed.",
            additionalInfo: "• Brain: Reduces CMRO₂ and ICP values; frequently preferred in neurosurgery.\n• EEG: As dose increases, transition from low voltage to high voltage, then to burst-suppression and isoelectric EEG is seen.\n• Respiratory: Leads to deep respiratory depression; apnea duration is longer than with barbiturates.",
          ),
          IntravenousAnestheticsItem(
            title: "SIDE EFFECTS AND INFUSION SYNDROME",
            description: "Can cause pain during injection; carries a rare but fatal risk of 'Propofol Infusion Syndrome' during long-term high-dose usage.",
            additionalInfo: "• Pain: Causes pain in the vein due to its lipid content involving soy/egg emulsion; can be prevented with lidocaine.\n• Infusion Syndrome: Can develop at doses above 4 mcg/kg/h; characterized by metabolic acidosis, heart failure, and rhabdomyolysis.\n• Hypersensitivity: Should be used with caution in those with egg allergy.",
          ),
        ],
      ),
    ];
  }
}
