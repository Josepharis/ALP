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
  static List<CholinesteraseInhibitorsCategory> getCholinesteraseInhibitorsData(BuildContext context) {
    return [
      CholinesteraseInhibitorsCategory(
        categoryName: 'General',
        items: [
          CholinesteraseInhibitorsItem(
            title: 'Cholinergic vs Adrenergic',
            description: 'Cholinergic = opposite of adrenergic effects',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Synthesis',
            description: 'Acetyl-CoA + Choline → Acetylcholine (via choline acetyltransferase)',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Degradation',
            description: 'Acetylcholine → Choline + Acetate (via AChE)',
          ),
          CholinesteraseInhibitorsItem(
            title: 'ACh Release Sites',
            description: 'All parasympathetic, some sympathetic (ganglia, adrenal medulla, sweat glands), CNS, skeletal muscle',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Receptors - Nicotinic',
            description: 'Ganglia, skeletal muscle',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Receptors - Muscarinic',
            description: 'Bronchi, salivary glands, SA node',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Eye Receptors',
            description: 'Both nicotinic and muscarinic receptors present',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Clinical Agents - Methacholine',
            description: 'Asthma provocation test',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Clinical Agents - Bethanechol',
            description: 'Wide-angle glaucoma',
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Mechanism of Action',
        items: [
          CholinesteraseInhibitorsItem(
            title: 'Organophosphates',
            description: 'Irreversible binding to AChE',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Carbamates',
            description: 'Neostigmine, pyridostigmine, physostigmine → reversible',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Myasthenia Gravis',
            description: 'Diagnosis (edrophonium), treatment (neostigmine, pyridostigmine)',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Depolarizing Block (SC)',
            description: 'Prolonged with cholinesterase inhibitors',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Neostigmine/Pyridostigmine',
            description: 'Limited inhibition of pseudocholinesterase',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Edrophonium',
            description: 'Minimal or no effect on pseudocholinesterase',
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Clinical Effects',
        items: [
          CholinesteraseInhibitorsItem(
            title: 'CVS Effects',
            description: 'Muscarinic effect → bradycardia, arrest',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Pulmonary Effects',
            description: 'Bronchospasm, increased secretions',
          ),
          CholinesteraseInhibitorsItem(
            title: 'CNS Effects',
            description: 'Physostigmine crosses BBB → widespread activation',
          ),
          CholinesteraseInhibitorsItem(
            title: 'GI Effects',
            description: '↑ peristalsis, ↑ secretions → PONV, fecal incontinence',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Side Effect Reduction',
            description: 'Atropine or glycopyrrolate',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Reversal Assessment',
            description: 'TOF & tetanic correlation; more sensitive to high-frequency stimulation',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Recovery Order',
            description: 'Head lift > inspiratory force > VC > TV',
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Specific Agents',
        items: [
          CholinesteraseInhibitorsItem(
            title: 'Neostigmine - Structure',
            description: 'Carbamate + quaternary ammonium (does not cross BBB)',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Neostigmine - Dose',
            description: '0.04–0.08 mg/kg (max 5 mg)',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Neostigmine - Onset',
            description: '5–10 min',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Neostigmine - Anticholinergic Pairing',
            description: '1 mg Neo → 0.2 mg Glycopyrrolate',
            subtitle: '1 mg Neo → 0.4 mg Atropine',
            additionalInfo: 'Pregnancy: Atropine > Glycopyrrolate',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Pyridostigmine - Structure',
            description: 'Quaternary ammonium + phenol',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Pyridostigmine - Dose',
            description: '0.25 mg/kg (20% potency of Neo)',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Pyridostigmine - Onset',
            description: '10–15 min (slower)',
            subtitle: 'Duration: longer',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Pyridostigmine - Pairing',
            description: '1 mg Pyrido → 0.05 mg Glycopyrrolate or 0.1 mg Atropine',
            subtitle: 'Glycopyrrolate preferred (better onset match)',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Edrophonium - Structure',
            description: 'No carbamate, non-covalent binding',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Edrophonium - Dose',
            description: '0.5–1 mg/kg',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Edrophonium - Onset',
            description: '1–2 min (fastest)',
            subtitle: 'Duration: shortest',
            additionalInfo: 'Least muscarinic effect\nLower anticholinergic requirement (half dose sufficient)',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Physostigmine - Structure',
            description: 'Tertiary amine (crosses BBB)',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Physostigmine - Dose',
            description: '0.01–0.03 mg/kg',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Physostigmine - Uses',
            description: 'Central anticholinergic syndrome, volatile/BZD delirium, postoperative shivering, morphine depression',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Physostigmine - Side Effects',
            description: 'Salivation, vomiting, seizures',
            subtitle: 'Atropine preferred (better tolerated)',
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Sugammadex',
        items: [
          CholinesteraseInhibitorsItem(
            title: 'Structure',
            description: 'γ-cyclodextrin',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Binding',
            description: 'Binds steroidal muscle relaxants (rocuronium, vecuronium, pancuronium) 1:1',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Excretion',
            description: 'Unchanged by kidneys',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Dose',
            description: '1–16 mg/kg',
            subtitle: 'Fast, selective effect',
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'L-Cysteine',
        items: [
          CholinesteraseInhibitorsItem(
            title: 'Function',
            description: 'Rapidly reverses gantacurium (fumarate group) block within 2–3 min',
          ),
          CholinesteraseInhibitorsItem(
            title: 'Mechanism',
            description: 'Conjugation with cysteine → inactive metabolite',
          ),
        ],
      ),
      CholinesteraseInhibitorsCategory(
        categoryName: 'Key Exam Spots',
        items: [
          CholinesteraseInhibitorsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Neostigmine: most common, does not cross BBB',
            subtitle: 'Pyridostigmine: slower, longer duration',
            additionalInfo: 'Edrophonium: fastest, shortest\nPhysostigmine: crosses BBB → central use\nSugammadex: specific for steroidal relaxants\nSC block prolonged with cholinesterase inhibitors',
          ),
        ],
      ),
    ];
  }
}
