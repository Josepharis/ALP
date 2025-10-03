import 'package:flutter/material.dart';

class AnesthesiaAdjuvantDrugsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnesthesiaAdjuvantDrugsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnesthesiaAdjuvantDrugsCategory {
  final String categoryName;
  final List<AnesthesiaAdjuvantDrugsItem> items;

  AnesthesiaAdjuvantDrugsCategory({
    required this.categoryName,
    required this.items,
  });
}

class AnesthesiaAdjuvantDrugsData {
  static List<AnesthesiaAdjuvantDrugsCategory> getAnesthesiaAdjuvantDrugsData(BuildContext context) {
    return [
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Aspiration & Prophylaxis',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: 'Risk of Aspiration Pneumonia',
            description: 'pH <2.5 and volume >25 mL',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Antacids',
            description: 'Rapidly increase pH but increase intragastric volume → aspiration may be more harmful',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'H2 Blockers',
            description: 'Reduce gastric acid secretion, increase pH',
            subtitle: 'Act only on gastric fluid after administration',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Metoclopramide',
            description: 'Accelerates gastric emptying, ↑ lower esophageal sphincter tone',
            subtitle: 'No change in pH',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'PPIs',
            description: 'Inhibit proton pump, most potent suppression of acid secretion',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Histamine Physiology & Receptors',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: 'H1',
            description: 'Activates phospholipase C → bronchoconstriction, ↑ capillary permeability, ↑ leukotaxis',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'H2',
            description: '↑ cAMP → ↑ gastric acid secretion, ↑ HR & contractility',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'H3',
            description: 'Presynaptic, negative feedback (reduces histamine release)',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'H4',
            description: 'Role in immune system (not in notes but exam relevant)',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'H1 Blockers',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: '1st Generation',
            description: 'Diphenhydramine, Promethazine, Hydroxyzine → sedative, antiemetic, anticholinergic',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: '2nd Generation',
            description: 'Loratadine, Cetirizine, Fexofenadine → do not cross BBB, used for allergic rhinitis/urticaria',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Asthma',
            description: 'Ineffective in asthma!',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Sedative Effects',
            description: 'Enhanced by CNS depressants',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'H2 Blockers',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: 'Cimetidine',
            description: 'P-450 inhibition (interacts with warfarin, phenytoin, diazepam, propranolol)',
            subtitle: 'Side effects: gynecomastia, impotence, hepatotoxicity',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Ranitidine',
            description: 'Mild P-450 inhibition',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Famotidine/Nizatidine',
            description: 'No P-450 effect',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Rapid IV Administration',
            description: 'May cause hypotension + bradycardia',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Metoclopramide',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: 'Mechanism',
            description: 'Peripheral cholinomimetic, central dopamine antagonist',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Effects',
            description: '↑ gastric emptying, ↓ fluid volume, antiemetic effect (CTZ dopamine receptor blockade)',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Side Effects',
            description: 'Extrapyramidal symptoms, contraindicated in Parkinson\'s disease, HT crisis in pheochromocytoma',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Proton Pump Inhibitors (PPIs)',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: 'Examples',
            description: 'Omeprazole, Lansoprazole, Pantoprazole',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Effect',
            description: 'Most potent suppression of acid secretion',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Side Effects',
            description: 'Long-term use → enterochromaffin cell hyperplasia, ↑ bacterial colonization',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Drug Interactions',
            description: '↓ clearance of diazepam, warfarin, phenytoin; ↓ effectiveness of clopidogrel',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'PONV (Postoperative Nausea and Vomiting)',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: 'Risk Factors',
            description: 'Female, non-smoker, history of motion sickness',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Anesthesia-Related',
            description: 'Volatile anesthetics, N₂O, opioids',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Surgery-Related',
            description: 'Longer duration (each 30 min → ↑ risk by 60%)',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Antiemetics',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: '5-HT3 Antagonists (-setrons)',
            description: 'Ondansetron → QT prolongation, headache, reduce dose in liver failure',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Butyrophenones',
            description: 'Droperidol → QT prolongation, torsades risk',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'Dexamethasone',
            description: '4 mg, given at beginning of surgery',
          ),
          AnesthesiaAdjuvantDrugsItem(
            title: 'NK-1 Antagonists',
            description: 'Aprepitant → additive effect with ondansetron',
          ),
        ],
      ),
      AnesthesiaAdjuvantDrugsCategory(
        categoryName: 'Key Exam Spots',
        items: [
          AnesthesiaAdjuvantDrugsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Critical values for aspiration pneumonia? → pH <2.5, volume >25 mL',
            subtitle: 'Antihistaminics ineffective in asthma? → H1 blockers',
            additionalInfo: 'Drug causing gynecomastia? → Cimetidine\nAntiemetics causing QT prolongation? → Ondansetron & Droperidol\nDrug that accelerates gastric emptying? → Metoclopramide\nDrug that reduces clopidogrel efficacy? → Omeprazole (PPI)\nSedative antihistamines? → 1st generation H1 blockers',
          ),
        ],
      ),
    ];
  }
}
