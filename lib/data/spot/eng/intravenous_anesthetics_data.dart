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
  static List<IntravenousAnestheticsCategory> getIntravenousAnestheticsData(BuildContext context) {
    return [
      IntravenousAnestheticsCategory(
        categoryName: 'Barbiturates',
        items: [
          IntravenousAnestheticsItem(
            title: 'Mechanism',
            description: 'Act via GABA_A (increase duration of Cl⁻ channel opening)',
          ),
          IntravenousAnestheticsItem(
            title: 'Pharmacokinetics - General',
            description: 'Induction ends by redistribution',
          ),
          IntravenousAnestheticsItem(
            title: 'Thiopental',
            description: '60% protein binding, t½ = 10–12 s',
          ),
          IntravenousAnestheticsItem(
            title: 'Methohexital',
            description: 'Rapid hepatic extraction → rapid recovery',
          ),
          IntravenousAnestheticsItem(
            title: 'Cardiovascular Effects',
            description: '↓ BP, reflex tachycardia',
          ),
          IntravenousAnestheticsItem(
            title: 'Respiratory Effects',
            description: '↓ RR and TV, ↑ risk of bronchospasm/laryngospasm',
          ),
          IntravenousAnestheticsItem(
            title: 'Cerebral Effects',
            description: '↓ CMRO₂, ↓ CBF, ↓ ICP',
          ),
          IntravenousAnestheticsItem(
            title: 'Side Effects',
            description: 'Histamine release (thiobarbiturates), garlic taste, triggers porphyria crisis',
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Benzodiazepines',
        items: [
          IntravenousAnestheticsItem(
            title: 'Mechanism',
            description: 'Act via GABA_A (increase frequency of Cl⁻ channel opening)',
          ),
          IntravenousAnestheticsItem(
            title: 'Antagonist',
            description: 'Flumazenil',
          ),
          IntravenousAnestheticsItem(
            title: 'Midazolam',
            description: 'pH-sensitive (acidic → hydrophilic; physiologic → lipophilic)',
          ),
          IntravenousAnestheticsItem(
            title: 'Diazepam',
            description: 'Active metabolite (Phase I)',
          ),
          IntravenousAnestheticsItem(
            title: 'Half-Life',
            description: 'Diazepam 30 h, Lorazepam 15 h, Midazolam 2 h',
          ),
          IntravenousAnestheticsItem(
            title: 'Cardiovascular Effects',
            description: 'Minimal',
          ),
          IntravenousAnestheticsItem(
            title: 'Respiratory Effects',
            description: '↓ CO₂ response → monitoring essential!',
          ),
          IntravenousAnestheticsItem(
            title: 'Cerebral Effects',
            description: 'Anterograde amnesia, anticonvulsant, no analgesic effect',
          ),
          IntravenousAnestheticsItem(
            title: 'Interactions - MAC',
            description: '↓ MAC by 30%',
          ),
          IntravenousAnestheticsItem(
            title: 'Interactions - Metabolism',
            description: 'Cimetidine ↓ diazepam metabolism',
            subtitle: 'Erythromycin ↓ midazolam metabolism',
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Ketamine',
        items: [
          IntravenousAnestheticsItem(
            title: 'Mechanism',
            description: 'NMDA antagonist; thalamus–limbic dissociation → dissociative anesthesia',
          ),
          IntravenousAnestheticsItem(
            title: 'Pharmacokinetics',
            description: 'Active metabolite = norketamine',
          ),
          IntravenousAnestheticsItem(
            title: 'Cardiovascular Effects',
            description: '↑ Sympathetic activity → ↑ HR, ↑ BP, ↑ CO',
          ),
          IntravenousAnestheticsItem(
            title: 'Respiratory Effects',
            description: 'Preserves ventilatory drive, bronchodilator, airway reflexes intact',
          ),
          IntravenousAnestheticsItem(
            title: 'Cerebral Effects',
            description: '↑ CBF, ↑ ICP',
          ),
          IntravenousAnestheticsItem(
            title: 'Side Effects',
            description: 'Increased secretions (↓ with glycopyrrolate), psychomimetic reactions',
          ),
          IntravenousAnestheticsItem(
            title: 'Note',
            description: 'Blocks non-depolarizing muscle relaxants',
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Etomidate',
        items: [
          IntravenousAnestheticsItem(
            title: 'Mechanism',
            description: 'GABA_A (R+ isomer), depresses RAS',
          ),
          IntravenousAnestheticsItem(
            title: 'Pharmacokinetics',
            description: 'High protein binding; hepatic + plasma esterase metabolism',
          ),
          IntravenousAnestheticsItem(
            title: 'Cardiovascular Effects',
            description: 'Stable, no histamine release',
          ),
          IntravenousAnestheticsItem(
            title: 'Respiratory Effects',
            description: 'Apnea rare',
          ),
          IntravenousAnestheticsItem(
            title: 'Cerebral Effects',
            description: '↓ CBF, ↓ ICP, CPP preserved',
          ),
          IntravenousAnestheticsItem(
            title: 'Endocrine Effects',
            description: 'Adrenocortical suppression (11-β hydroxylase inhibition)',
          ),
          IntravenousAnestheticsItem(
            title: 'Side Effects',
            description: 'Myoclonus (30–60%)',
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Propofol',
        items: [
          IntravenousAnestheticsItem(
            title: 'Mechanism',
            description: 'Allosteric facilitator of GABA_A',
          ),
          IntravenousAnestheticsItem(
            title: 'Pharmacokinetics',
            description: 'Very rapid redistribution (t½α = 2–8 min); extrahepatic elimination',
          ),
          IntravenousAnestheticsItem(
            title: 'Cardiovascular Effects',
            description: '↓ BP, ↓ SVR (generally well tolerated)',
          ),
          IntravenousAnestheticsItem(
            title: 'Respiratory Effects',
            description: 'Depression → apnea, sufficient for intubation',
          ),
          IntravenousAnestheticsItem(
            title: 'Cerebral Effects',
            description: '↓ CBF, ↓ ICP, ↓ CMRO₂',
            subtitle: 'CPP generally preserved',
          ),
          IntravenousAnestheticsItem(
            title: 'EEG Effects',
            description: 'Low-voltage fast activity → high-voltage slow waves → burst suppression',
          ),
          IntravenousAnestheticsItem(
            title: 'Side Effects',
            description: 'Painful injection (glycerol), propofol infusion syndrome',
          ),
          IntravenousAnestheticsItem(
            title: 'Interactions',
            description: '↓ midazolam dose by 10%; ↓ opioid clearance',
          ),
        ],
      ),
      IntravenousAnestheticsCategory(
        categoryName: 'Key Exam Spots',
        items: [
          IntravenousAnestheticsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Thiopental: t½ = 10–12 s, induction ends by redistribution',
            subtitle: 'Midazolam: pH-sensitive, t½ = 2 h',
            additionalInfo: 'Ketamine: NMDA antagonist, ↑ BP/HR\nEtomidate: adrenocortical suppression\nPropofol: t½α = 2–8 min, extrahepatic elimination',
          ),
        ],
      ),
    ];
  }
}
