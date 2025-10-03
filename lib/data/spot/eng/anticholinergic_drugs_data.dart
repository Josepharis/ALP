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
  static List<AnticholinergicDrugsCategory> getAnticholinergicDrugsData(BuildContext context) {
    return [
      AnticholinergicDrugsCategory(
        categoryName: 'Mechanism of Action',
        items: [
          AnticholinergicDrugsItem(
            title: 'Structure',
            description: 'Aromatic acid esters',
          ),
          AnticholinergicDrugsItem(
            title: 'Ester Bond',
            description: 'Competitively blocks ACh binding to the receptor',
          ),
          AnticholinergicDrugsItem(
            title: 'Muscarinic Receptors - M1',
            description: 'Neuronal',
          ),
          AnticholinergicDrugsItem(
            title: 'Muscarinic Receptors - M2',
            description: 'Cardiac',
          ),
          AnticholinergicDrugsItem(
            title: 'Muscarinic Receptors - M3',
            description: 'Glandular',
          ),
        ],
      ),
      AnticholinergicDrugsCategory(
        categoryName: 'Clinical Pharmacology',
        items: [
          AnticholinergicDrugsItem(
            title: 'Cardiovascular Effects',
            description: 'SA node blockade → tachycardia',
            subtitle: 'Ventricles / peripheral vessels not affected (no direct cholinergic innervation)',
            additionalInfo: 'High doses → vasodilation → flushing',
          ),
          AnticholinergicDrugsItem(
            title: 'Respiratory Effects',
            description: 'Inhibits secretions from nasal mucosa to bronchi',
            subtitle: 'Relaxes bronchial smooth muscles',
            additionalInfo: 'Increases anatomical dead space',
          ),
          AnticholinergicDrugsItem(
            title: 'Cerebral Effects',
            description: 'Atropine: stimulation, excitation, hallucinations',
            subtitle: 'Scopolamine: sedation, amnesia',
            additionalInfo: 'Physostigmine: reverses these effects',
          ),
          AnticholinergicDrugsItem(
            title: 'Gastrointestinal Effects',
            description: 'Marked reduction in salivary secretion',
            subtitle: 'Mild reduction in gastric secretion',
            additionalInfo: '↓ Intestinal motility, ↓ peristalsis\n↓ Lower esophageal sphincter pressure',
          ),
          AnticholinergicDrugsItem(
            title: 'Ophthalmic Effects',
            description: 'Mydriasis + cycloplegia (loss of accommodation)',
            subtitle: 'Low risk of acute closed-angle glaucoma',
          ),
          AnticholinergicDrugsItem(
            title: 'Genitourinary Effects',
            description: '↓ Bladder tone',
            subtitle: 'Urinary retention in BPH',
          ),
          AnticholinergicDrugsItem(
            title: 'Thermoregulation',
            description: 'Risk of hyperthermia (reduced sweating)',
          ),
        ],
      ),
      AnticholinergicDrugsCategory(
        categoryName: 'Specific Anticholinergic Agents',
        items: [
          AnticholinergicDrugsItem(
            title: 'Atropine - Structure',
            description: 'Tertiary amine, racemic',
          ),
          AnticholinergicDrugsItem(
            title: 'Atropine - Dose',
            description: '0.01–0.02 mg/kg (max 2 mg)',
          ),
          AnticholinergicDrugsItem(
            title: 'Atropine - Clinical Use',
            description: 'Most effective treatment for bradyarrhythmia',
          ),
          AnticholinergicDrugsItem(
            title: 'Atropine - CNS Effects',
            description: 'Minimal CNS effect at clinical doses',
            subtitle: 'Toxic doses: excitation + postoperative amnesia',
          ),
          AnticholinergicDrugsItem(
            title: 'Atropine - Antisialagogue',
            description: '0.01–0.02 mg/kg IM → antisialagogue effect',
            subtitle: 'Duration: 30 min',
          ),
          AnticholinergicDrugsItem(
            title: 'Atropine - Ipratropium Bromide',
            description: 'Inhaled form used in bronchospasm',
          ),
          AnticholinergicDrugsItem(
            title: 'Scopolamine - Structure',
            description: 'Atropine + epoxide derivative',
            subtitle: 'Administration: IM',
          ),
          AnticholinergicDrugsItem(
            title: 'Scopolamine - Potency',
            description: 'More potent antisialagogue than atropine',
          ),
          AnticholinergicDrugsItem(
            title: 'Scopolamine - CNS Effects',
            description: 'Greater CNS effects → sedation, amnesia, delirium',
          ),
          AnticholinergicDrugsItem(
            title: 'Scopolamine - Clinical Use',
            description: 'Used for PONV prophylaxis',
            subtitle: 'Avoid in closed-angle glaucoma',
          ),
          AnticholinergicDrugsItem(
            title: 'Glycopyrrolate - Structure',
            description: 'Quaternary ammonium (does not cross BBB/placenta)',
          ),
          AnticholinergicDrugsItem(
            title: 'Glycopyrrolate - Dose',
            description: 'Used at half the dose of atropine',
          ),
          AnticholinergicDrugsItem(
            title: 'Glycopyrrolate - Effects',
            description: 'Effective antisialagogue',
            subtitle: 'Duration: 2–4 h (longer)',
          ),
        ],
      ),
      AnticholinergicDrugsCategory(
        categoryName: 'Key Exam Spots',
        items: [
          AnticholinergicDrugsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Atropine → most effective in bradyarrhythmia',
            subtitle: 'Scopolamine → strongest CNS effect, used in PONV prophylaxis',
            additionalInfo: 'Glycopyrrolate → does not cross BBB, long-lasting antisialagogue\nM1 = neuronal, M2 = cardiac, M3 = glandular\nRisks: urinary retention in BPH + hyperthermia',
          ),
        ],
      ),
    ];
  }
}
