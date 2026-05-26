import 'package:flutter/material.dart';

class CholinesteraseInhibitorsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CholinesteraseInhibitorsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CholinesteraseInhibitorsCategory {
  final String categoryName;
  final List<CholinesteraseInhibitorsItem> items;

  CholinesteraseInhibitorsCategory({
    required this.categoryName,
    required this.items,
  });
}

class CholinesteraseInhibitorsData {
  static List<CholinesteraseInhibitorsCategory> getCholinesteraseInhibitorsData(
    BuildContext context,
  ) {
    return [
      CholinesteraseInhibitorsCategory(
        categoryName: 'General Cholinergic Pharmacology',
        items: [
          CholinesteraseInhibitorsItem(
            title: "BASIC ANTIA DRENERGIC PRINCIPLES",
            description: "The cholinergic system manages the parasympathetic system, which generally functions in the opposite direction of adrenergic (sympathetic) effects in the body.",
            additionalInfo: "It controls 'rest and digest' states. It slows heart rate, increases secretions, and accelerates digestion. In anesthesia, these effects often appear as undesirable side effects that must be managed.",
          ),
          CholinesteraseInhibitorsItem(
            title: "ACETYLCHOLINE SYNTHESIS AND DEGRADATION CYCLE",
            description: "Acetylcholine (ACh) is synthesized in nerve endings by the enzyme choline acetyltransferase and rapidly broken down by acetylcholinesterase (AChE).",
            subtitle: "Synthesis: Acetyl-CoA + Choline → Acetylcholine",
            additionalInfo: "The AChE enzyme is one of the fastest-acting enzymes in nature; it terminates signal transmission within milliseconds by breaking the ACh molecule into choline and acetate. Cholinesterase inhibitors block this degradation phase, increasing the amount of ACh in the environment.",
          ),
          CholinesteraseInhibitorsItem(
            title: "SECRETION SITES AND SYSTEMS",
            description: "ACh is the primary mediator at all parasympathetic nerve endings, sympathetic ganglia, the adrenal medulla, and the motor end-plate of skeletal muscle.",
            additionalInfo: "As an exception, sweat glands are stimulated by ACh despite being under sympathetic system control. Additionally, they have critical roles in cognitive functions and memory in the central nervous system (CNS).",
          ),
          CholinesteraseInhibitorsItem(
            title: "NICOTINIC AND MUSCARINIC RECEPTORS",
            description: "Cholinergic receptors are divided into Nicotinic and Muscarinic based on their locations and the agents they bind.",
            subtitle: "Nicotinic: Ganglia and skeletal muscle; Muscarinic: Heart, smooth muscle, and glands",
            additionalInfo: "• Nicotinic Receptors: Work via fast ion channels.\n• Muscarinic Receptors: Exert slow effects via G-proteins. M1 is neuronal, M2 is cardiac (SA node), and M3 is concentrated in glands and bronchi. The blood-brain barrier (BBB) contains both receptor types.",
          ),
          CholinesteraseInhibitorsItem(
            title: "CLINICAL DIAGNOSTIC AND TESTING AGENTS",
            description: "Some cholinergic drugs are used specifically for provocation or treatment purposes in the diagnosis of diseases.",
            additionalInfo: "• Methacholine: Used in provocation tests to assess airway hyperresponsiveness in asthma diagnosis.\n• Bethanechol: May be preferred for wide-angle glaucoma treatment and to increase GI motility.",
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Cholinesterase Inhibitor Mechanisms',
        items: [
          CholinesteraseInhibitorsItem(
            title: "INHIBITOR BINDING CHARACTERISTICS (REVERSIBLE/IRREVERSIBLE)",
            description: "Agents that block the AChE enzyme exhibit permanent or temporary effects based on the strength and duration of the bond.",
            subtitle: "Organophosphates bind irreversibly (permanent), while Carbamates bind reversibly (temporary)",
            additionalInfo: "Neostigmine, Pyridostigmine, and Physostigmine, used for muscle relaxant reversal in anesthesia, are carbamates. Edrophonium earns the title of shortest-acting agent by forming a weak non-covalent bond.",
          ),
          CholinesteraseInhibitorsItem(
            title: "MYASTHENIA GRAVIS DIAGNOSIS AND TREATMENT",
            description: "These agents are of vital importance in Myasthenia Gravis, a disease characterized by a lack of receptors at the neuromuscular junction.",
            subtitle: "Edrophonium (Diagnostic test) and Neostigmine/Pyridostigmine (Long-term treatment)",
            additionalInfo: "In the Tensilon test (Edrophonium), a sudden improvement in the patient's muscle strength confirms the diagnosis. Pyridostigmine is the gold standard for oral maintenance therapy due to its slow onset and long duration.",
          ),
          CholinesteraseInhibitorsItem(
            title: "DEPOLARIZING BLOCK INTERACTION",
            description: "Unexpectedly, cholinesterase inhibitors prolong the effect of succinylcholine (SC).",
            additionalInfo: "Because these drugs also block the pseudocholinesterase enzyme (even if limitedly), they slow the clearance of SC from the body. Therefore, administering neostigmine after SC before the block is fully resolved increases the risk of a 'Phase II block' and the duration of paralysis.",
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Clinical Organ System Effects',
        items: [
          CholinesteraseInhibitorsItem(
            title: "CARDIOVASCULAR AND PULMONARY EFFECTS",
            description: "Increased amounts of ACh lower the heart rate and complicate breathing by increasing airway resistance.",
            subtitle: "Muscarinic stimulation can lead to bradycardia, asystole, and severe bronchospasm",
            additionalInfo: "To prevent these dangerous side effects, cholinesterase inhibitors should always be administered in combination with an anticholinergic (Atropine or Glycopyrrolate).",
          ),
          CholinesteraseInhibitorsItem(
            title: "CENTRAL NERVOUS SYSTEM (CNS) AND PHYSOSTIGMINE",
            description: "The chemical structure of the agent (tertiary or quaternary ammonium) determines its effects on the brain.",
            subtitle: "Physostigmine is the only agent that crosses the blood-brain barrier (BBB)",
            additionalInfo: "Neostigmine, with its quaternary ammonium structure, cannot enter the brain, whereas Physostigmine, with its tertiary amine structure, enters the CNS rapidly. This feature makes it unique in the treatment of 'central anticholinergic syndrome.'",
          ),
          CholinesteraseInhibitorsItem(
            title: "GASTROINTESTINAL SYSTEM (GI) AND SIDE EFFECTS",
            description: "Increases intestinal movements (peristalsis) and secretions, triggering the risk of postoperative nausea/vomiting and incontinence.",
            additionalInfo: "Increased secretions (sialorrhea) and accelerated gastric emptying can affect postoperative comfort. The use of Glycopyrrolate in modern clinical practice is successful in minimizing these effects.",
          ),
          CholinesteraseInhibitorsItem(
            title: "MUSCLE STRENGTH AND REVERSAL ASSESSMENT",
            description: "Reversal of muscle relaxant effects must be meticulously monitored with TOF monitoring and clinical criteria.",
            subtitle: "Order of muscle strength recovery: Head lift > Inspiratory force > VC > TV",
            additionalInfo: "The ability to lift the head (for 5 s) and stick out the tongue are the most reliable clinical indicators. Tidal volume (TV) is the criterion with the lowest sensitivity and can appear normal even if the block is not fully resolved.",
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Specific Clinical Agents',
        items: [
          CholinesteraseInhibitorsItem(
            title: "NEOSTIGMINE (QUATERNARY AMMONIUM)",
            description: "The standard reversal agent most commonly used in anesthesia; it does not enter the brain due to its quaternary ammonium structure.",
            subtitle: "Dose: 0.04–0.08 mg/kg; paired with Atropine or Glycopyrrolate",
            additionalInfo: "Its effect begins in 5-10 minutes. 0.2 mg of Glycopyrrolate or 0.4 mg of Atropine is generally required for 1 mg of Neostigmine. In pregnant women, pairing it with atropine is more appropriate in terms of the balance of placental transfer.",
          ),
          CholinesteraseInhibitorsItem(
            title: "PYRIDOSTIGMINE (SLOW AND LONG-ACTING)",
            description: "An agent that exhibits slower action (20% potency) compared to neostigmine but has a longer duration of effect.",
            additionalInfo: "Its effect begins in 10-15 minutes. It is generally combined with Glycopyrrolate because their onset of action is compatible. It is the primary choice in the treatment of chronic Myasthenia Gravis.",
          ),
          CholinesteraseInhibitorsItem(
            title: "EDROPHONIUM (FAST AND SHORT-ACTING)",
            description: "The agent with the fastest onset and shortest duration due to its weak non-covalent binding.",
            additionalInfo: "Exerts effects within 1-2 minutes. It is the agent with the fewest muscarinic side effects, therefore requiring lower doses of anticholinergic. The bond it forms with the enzyme is at the 'hydrogen bond' level.",
          ),
          CholinesteraseInhibitorsItem(
            title: "PHYSOSTIGMINE (TERTIARY AMINE - CROSSES BBB)",
            description: "The only inhibitor used to reverse central side effects and delirium due to its ability to enter the brain.",
            additionalInfo: "Preferred in cases such as central anticholinergic syndrome, morphine-induced respiratory depression, and postoperative shivering. Rapid administration can lead to severe muscarinic crises such as salivation, vomiting, and seizures.",
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Modern Antagonism: Sugammadex',
        items: [
          CholinesteraseInhibitorsItem(
            title: "SUGAMMADEX MECHANISM AND STRUCTURE",
            description: "This agent, with a gamma-cyclodextrin structure, inactivates steroidal muscle relaxants by physically encapsulating them.",
            subtitle: "Binds Rocuronium, Vecuronium, and Pancuronium in a 1:1 ratio",
            additionalInfo: "It does not increase the amount of acetylcholine, meaning it does not cause muscarinic side effects (bradycardia, etc.). Therefore, it does not require the use of atropine. The drug-sugammadex complex is excreted primarily unchanged through the kidneys.",
          ),
          CholinesteraseInhibitorsItem(
            title: "CLINICAL DOSE AND SELECTIVITY",
            description: "Administered in doses ranging from 2 mg/kg to 16 mg/kg depending on the depth of the block.",
            additionalInfo: "Provides the fastest reversal on Rocuronium. Its ability to reverse even very deep blocks (within seconds) makes it life-saving in 'cannot-intubate, cannot-ventilate' scenarios.",
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Alternative Methods: L-Cysteine',
        items: [
          CholinesteraseInhibitorsItem(
            title: "GANTACURIUM ANTAGONISM (L-CYSTEINE)",
            description: "A special method that rapidly terminates the blockade of the new ultra-short-acting agent Gantacurium at the molecular level.",
            additionalInfo: "L-Cysteine, binding to the fumarate group of gantacurium, converts the drug into inactive metabolites within minutes. It eliminates the need for classic cholinesterase inhibitors.",
          ),
        ],
      ),
    ];
  }
}
