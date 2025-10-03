import 'package:flutter/material.dart';

class LocalAnestheticsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  LocalAnestheticsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class LocalAnestheticsCategory {
  final String categoryName;
  final List<LocalAnestheticsItem> items;

  LocalAnestheticsCategory({
    required this.categoryName,
    required this.items,
  });
}

class LocalAnestheticsData {
  static List<LocalAnestheticsCategory> getLocalAnestheticsData(BuildContext context) {
    return [
      LocalAnestheticsCategory(
        categoryName: 'Mechanism of Action',
        items: [
          LocalAnestheticsItem(
            title: 'Resting Membrane Potential',
            description: '–70 mV (maintained by Na–K ATPase)',
          ),
          LocalAnestheticsItem(
            title: 'Stimulus Response',
            description: 'Stimulus → voltage-gated Na⁺ channel opens → +35 mV',
          ),
          LocalAnestheticsItem(
            title: 'LA Binding',
            description: 'Local anesthetics (LAs) bind to the α subunit of Na⁺ channels → block depolarization',
          ),
          LocalAnestheticsItem(
            title: 'Use-Dependent Block',
            description: 'Higher affinity for open & inactivated channels (use-dependent block)',
          ),
          LocalAnestheticsItem(
            title: 'Effect Strength',
            description: 'Effect stronger in:',
            subtitle: 'Small-diameter fibers',
            additionalInfo: 'Myelinated fibers\nSlowly conducting fibers',
          ),
          LocalAnestheticsItem(
            title: 'Other Na⁺ Channel Blockers',
            description: 'TCAs, meperidine, volatile anesthetics, CCBs, ketamine',
          ),
          LocalAnestheticsItem(
            title: 'Tetrodotoxin',
            description: 'Binds externally to Na⁺ channels',
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Structure–Activity Relationship',
        items: [
          LocalAnestheticsItem(
            title: 'Structure',
            description: 'Lipophilic group + ester/amide linkage',
          ),
          LocalAnestheticsItem(
            title: 'Articaine',
            description: 'Contains thiophene ring instead of benzene',
          ),
          LocalAnestheticsItem(
            title: 'Weak Bases',
            description: 'LAs = weak bases (partially ionized at physiological pH)',
          ),
          LocalAnestheticsItem(
            title: 'Potency',
            description: 'Potency ~ lipid solubility (octanol solubility)',
          ),
          LocalAnestheticsItem(
            title: 'Onset Time',
            description: 'Onset time ~ pKa',
            subtitle: 'Higher pKa → slower onset',
            additionalInfo: 'Exception: Chloroprocaine (high pKa but fastest onset)',
          ),
          LocalAnestheticsItem(
            title: 'Benzocaine',
            description: 'Lacks charged form',
          ),
          LocalAnestheticsItem(
            title: 'Commercial Solution pH',
            description: '6–7 (4–5 if with epinephrine)',
          ),
          LocalAnestheticsItem(
            title: 'Alkalinization',
            description: '10 mL LA + 1 mL 8.4% NaHCO₃ → faster onset',
          ),
          LocalAnestheticsItem(
            title: 'Duration',
            description: 'Higher lipid solubility → longer duration',
            subtitle: 'Protein binding: α1-acid glycoprotein',
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Clinical Pharmacology',
        items: [
          LocalAnestheticsItem(
            title: 'Absorption (highest to lowest)',
            description: 'IV > Tracheal > Intercostal > Paracervical > Epidural > Sciatic > SC',
          ),
          LocalAnestheticsItem(
            title: 'Epinephrine/Phenylephrine',
            description: 'Adding epinephrine/phenylephrine → prolongs short-acting agents',
          ),
          LocalAnestheticsItem(
            title: 'EMLA',
            description: '5% lidocaine + 5% prilocaine: 1–2 h duration, 3–5 mm penetration',
          ),
          LocalAnestheticsItem(
            title: 'Distribution - α-phase',
            description: 'Highly perfused tissues (brain, heart)',
          ),
          LocalAnestheticsItem(
            title: 'Distribution - β-phase',
            description: 'Poorly perfused tissues',
          ),
          LocalAnestheticsItem(
            title: 'Lung Storage',
            description: 'Lungs trap a significant amount of LA',
          ),
          LocalAnestheticsItem(
            title: 'Muscle Storage',
            description: 'Muscles store large amounts of LA',
          ),
          LocalAnestheticsItem(
            title: 'Ester Metabolism',
            description: 'By plasma pseudocholinesterase → metabolite = PABA (allergy)',
          ),
          LocalAnestheticsItem(
            title: 'Amide Metabolism',
            description: 'By hepatic CYP450 (rate: Prilocaine > Lidocaine > Mepivacaine > Ropivacaine > Bupivacaine)',
          ),
          LocalAnestheticsItem(
            title: 'Prilocaine Toxicity',
            description: 'Prilocaine >10 mg/kg → o-toluidine → methemoglobinemia',
          ),
          LocalAnestheticsItem(
            title: 'MetHb Treatment',
            description: '1–2 mg/kg of 1% methylene blue, 5 min',
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Systemic Effects',
        items: [
          LocalAnestheticsItem(
            title: 'Neurological - Early Toxicity',
            description: 'Perioral numbness, tongue paresthesia, tinnitus, blurred vision',
          ),
          LocalAnestheticsItem(
            title: 'Neurological - Severe Toxicity',
            description: 'Agitation, seizures',
          ),
          LocalAnestheticsItem(
            title: 'Seizure Treatment',
            description: 'BDZ + hyperventilation → ↑ seizure threshold',
          ),
          LocalAnestheticsItem(
            title: 'Lidocaine ICP',
            description: 'Lidocaine 1.5 mg/kg → attenuates ICP rise during intubation',
          ),
          LocalAnestheticsItem(
            title: 'MAC Reduction',
            description: '↓ MAC by 40%',
          ),
          LocalAnestheticsItem(
            title: 'Neurotoxicity Ranking',
            description: 'Lidocaine = Tetracaine > Bupivacaine > Ropivacaine',
          ),
          LocalAnestheticsItem(
            title: 'Cauda Equina Syndrome',
            description: 'Continuous intrathecal 5% lidocaine → Cauda Equina Syndrome (CES)',
          ),
          LocalAnestheticsItem(
            title: 'Respiratory Effects',
            description: 'Lidocaine → ↓ hypoxic drive',
            subtitle: 'Bronchodilator, but inhaled form may cause bronchospasm in asthmatics',
          ),
          LocalAnestheticsItem(
            title: 'Cardiovascular - Phase IV Depression',
            description: '↓ automaticity',
          ),
          LocalAnestheticsItem(
            title: 'Cardiovascular - Low Dose',
            description: 'Inhibits NO synthase → vasoconstriction',
          ),
          LocalAnestheticsItem(
            title: 'Cardiovascular - High Dose',
            description: 'Arrhythmia, AV block, hypotension',
          ),
          LocalAnestheticsItem(
            title: 'Cardiotoxicity Ranking',
            description: 'Bupivacaine > Ropivacaine > Lidocaine',
          ),
          LocalAnestheticsItem(
            title: 'Ropivacaine',
            description: 'Pure S-isomer, safest',
          ),
          LocalAnestheticsItem(
            title: 'Levobupivacaine',
            description: 'Equivalent to bupivacaine but safer',
          ),
          LocalAnestheticsItem(
            title: 'Cocaine',
            description: 'Blocks NE reuptake → HT, arrhythmias',
          ),
          LocalAnestheticsItem(
            title: 'Immunologic - Esters',
            description: '→ PABA',
          ),
          LocalAnestheticsItem(
            title: 'Immunologic - Amides',
            description: '→ methylparaben',
          ),
          LocalAnestheticsItem(
            title: 'Musculoskeletal',
            description: 'Myotoxic',
          ),
          LocalAnestheticsItem(
            title: 'Hematologic',
            description: 'Inhibits coagulation, ↑ fibrinolysis (seen in TEG)',
          ),
        ],
      ),
      LocalAnestheticsCategory(
        categoryName: 'Key Exam Spots',
        items: [
          LocalAnestheticsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Bupivacaine: most cardiotoxic',
            subtitle: 'Ropivacaine: safest (S-isomer)',
            additionalInfo: 'Chloroprocaine: fastest onset\nBenzocaine & Prilocaine: cause metHb\nEpinephrine: ↓ absorption, ↑ duration\nEarly toxicity sign = perioral numbness\nHigh-concentration intrathecal lidocaine → Cauda Equina Syndrome',
          ),
        ],
      ),
    ];
  }
}
