import 'package:flutter/material.dart';

class AnticholinergicDrugsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnticholinergicDrugsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnticholinergicDrugsCategory {
  final String categoryName;
  final List<AnticholinergicDrugsItem> items;

  AnticholinergicDrugsCategory({
    required this.categoryName,
    required this.items,
  });
}

class AnticholinergicDrugsData {
  static List<AnticholinergicDrugsCategory> getAnticholinergicDrugsData(
    BuildContext context,
  ) {
    return [
      AnticholinergicDrugsCategory(
        categoryName: 'Mechanism of Action and Structure',
        items: [
          AnticholinergicDrugsItem(
            title: "CHEMICAL STRUCTURE AND COMPETITIVE BINDING",
            description: "Anticholinergics, which are aromatic acid esters, bind to muscarinic receptors by competing (competitively) with acetylcholine (ACh) and blocking its effect.",
            subtitle: "The ester bond physically blocks ACh from docking at receptor sites",
            additionalInfo: "They have almost no effects at clinical doses on nicotinic receptors. Since their effects are competitive, this blockade can be reversed as the amount of ACh in the environment increases (for example, with cholinesterase inhibitors).",
          ),
          AnticholinergicDrugsItem(
            title: "MUSCARINIC RECEPTOR TYPES (M1, M2, M3)",
            description: "The specific effects of anticholinergics on organs depend on the muscarinic receptor subtype in that region.",
            subtitle: "M1: Neuronal nerve transmission; M2: Cardiac SA node; M3: Glands and bronchial smooth muscle",
            additionalInfo: "• M1: Found in the central nervous system and gastric parietal cells.\n• M2: Responsible for slowing down the heart.\n• M3: Mediates increased secretions and bronchial narrowing. Anticholinergics non-selectively block most of these subtypes.",
          ),
        ],
      ),
      AnticholinergicDrugsCategory(
        categoryName: 'Clinical System Pharmacology',
        items: [
          AnticholinergicDrugsItem(
            title: "CARDIOVASCULAR AND RESPIRATORY EFFECTS",
            description: "Increases heart rate (tachycardia) by removing vagal suppression on the sinoatrial (SA) node and relaxes bronchial smooth muscles.",
            subtitle: "They do not affect contractile force since there is no direct cholinergic innervation in the ventricles and peripheral vessels",
            additionalInfo: "• Heart: Atropine can cause bradycardia (very low dose) or tachycardia (clinical dose) depending on the dose.\n• Lungs: Dries out mucus (antisialagogue) and provides bronchodilation. This situation can increase anatomical dead space.",
          ),
          AnticholinergicDrugsItem(
            title: "CEREBRAL EFFECTS AND PHYSOSTIGMINE ANTIDOTE",
            description: "They can stimulate or sedate the central nervous system depending on their chemical structures (tertiary or quaternary ammonium).",
            subtitle: "While Atropine causes stimulation, Scopolamine provides significant sedation and amnesia",
            additionalInfo: "Scopolamine is 100 times stronger than atropine in the brain. If 'central anticholinergic syndrome' develops, Physostigmine, an anticholinesterase, is the most effective antidote (crosses BBB due to its tertiary structure).",
          ),
          AnticholinergicDrugsItem(
            title: "GASTROINTESTINAL AND OPHTHALMIC EFFECTS",
            description: "Slows emptying by reducing stomach and intestinal movements (peristalsis); it impairs the response to light by enlarging the pupils (mydriasis).",
            subtitle: "GI: Significantly reduces salivary and gastric secretions; Eye: Causes loss of accommodation (cycloplegia)",
            additionalInfo: "Although they reduce intestinal motility, they do not stop it completely. They can increase the risk of reflux by lowering lower esophageal sphincter pressure. They can trigger an 'acute angle-closure glaucoma' crisis by obstructing aqueous humor drainage in the eye.",
          ),
          AnticholinergicDrugsItem(
            title: "GENITOURINARY AND THERMOREGULATION EFFECTS",
            description: "Can increase the risk of urinary retention by relaxing bladder muscles and elevate body temperature (hyperthermia) by inhibiting sweating.",
            additionalInfo: "Inability to urinate (retention) is a common complication, especially in elderly men with BPH (enlarged prostate). Sweating inhibition can lead to hyperthermia, known as 'atropine fever,' particularly in pediatric patients.",
          ),
        ],
      ),
      AnticholinergicDrugsCategory(
        categoryName: 'Specific Anticholinergic Agents',
        items: [
          AnticholinergicDrugsItem(
            title: "ATROPINE (THE GOLD STANDARD FOR BRADYARRHYTHMIA)",
            description: "A natural tertiary amine alkaloid and the most effective agent in treating acute vagal bradycardias (surgical or drug-related).",
            subtitle: "The maximum dose is 2 mg (for full vagal block in adults)",
            additionalInfo: "Crosses the BBB minimally. Its antisialagogue effect is weaker than scopolamine's, but its effect on the heart is stronger. The inhaler form (Ipratropium Bromide) is used for bronchodilation in asthma and COPD.",
          ),
          AnticholinergicDrugsItem(
            title: "SCOPOLAMINE (POTENT SEDATION AND AMNESIA)",
            description: "An agent that stands out for its strong central nervous system effects (sedation, amnesia, delirium), unlike atropine.",
            subtitle: "In patients with angle-closure glaucoma, scopolamine should be avoided due to its mydriatic effect",
            additionalInfo: "It is a potent antisialagogue and is used in postoperative nausea/vomiting (PONV) prophylaxis (transdermal patch or IV). It is the anticholinergic that enters the brain most rapidly.",
          ),
          AnticholinergicDrugsItem(
            title: "GLYCOPYRROLATE (LONG-ACTING, DOES NOT CROSS BBB)",
            description: "A synthetic agent that cannot cross the blood-brain barrier (BBB) due to its quaternary ammonium structure, therefore lacking central side effects.",
            subtitle: "Approximately half the dose of atropine is used; its duration of action is longer (2–4 hours)",
            additionalInfo: "The most compatible agent with neostigmine in postoperative muscle relaxant reversal procedures. Its effect on both the heart and salivary glands is more controlled and longer-lasting than atropine's.",
          ),
        ],
      ),
    ];
  }
}
