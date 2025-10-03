import 'package:flutter/material.dart';

class AnalgesicAgentsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnalgesicAgentsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnalgesicAgentsCategory {
  final String categoryName;
  final List<AnalgesicAgentsItem> items;

  AnalgesicAgentsCategory({
    required this.categoryName,
    required this.items,
  });
}

class AnalgesicAgentsData {
  static List<AnalgesicAgentsCategory> getAnalgesicAgentsData(BuildContext context) {
    return [
      AnalgesicAgentsCategory(
        categoryName: 'Opioids',
        items: [
          AnalgesicAgentsItem(
            title: 'Receptor Types',
            description: 'All opioid receptors (µ, κ, δ, σ) are G-protein–coupled',
          ),
          AnalgesicAgentsItem(
            title: 'Receptor Activation',
            description: 'Hyperpolarization, inhibition of Ca²⁺ channels, activation of K⁺ channels',
          ),
          AnalgesicAgentsItem(
            title: 'Acute Effects',
            description: 'Adenylate cyclase inhibition + phospholipase C activation',
          ),
          AnalgesicAgentsItem(
            title: 'Endogenous Opioids',
            description: 'Endorphin, enkephalin, dynorphin',
          ),
          AnalgesicAgentsItem(
            title: 'Analgesia Pathway',
            description: 'PAG → NRM → inhibitory pathway at spinal dorsal horn',
          ),
          AnalgesicAgentsItem(
            title: 'Isomer Potency',
            description: 'Levorotatory isomers > dextrorotatory (more potent)',
          ),
          AnalgesicAgentsItem(
            title: 'Transdermal Fentanyl',
            description: 'Reaches plateau in 14–24 h, effective for 72 h',
          ),
          AnalgesicAgentsItem(
            title: 'Morphine',
            description: 'Low lipid solubility',
          ),
          AnalgesicAgentsItem(
            title: 'Alfentanil',
            description: 'High lipid solubility + low Vd',
          ),
          AnalgesicAgentsItem(
            title: 'Remifentanil',
            description: 'Metabolized by nonspecific esterases',
          ),
          AnalgesicAgentsItem(
            title: 'Morphine Metabolite',
            description: 'M-6-glucuronide (more potent)',
          ),
          AnalgesicAgentsItem(
            title: 'Meperidine Metabolite',
            description: 'Normeperidine → epileptogenic',
          ),
          AnalgesicAgentsItem(
            title: 'Tramadol Metabolite',
            description: 'O-desmethyltramadol (active metabolite)',
          ),
          AnalgesicAgentsItem(
            title: 'Renal Excretion',
            description: 'Morphine & Meperidine: renally excreted, accumulate',
          ),
          AnalgesicAgentsItem(
            title: 'Meperidine CVS Effects',
            description: 'Increases HR, histamine release → hypotension + tachycardia',
          ),
          AnalgesicAgentsItem(
            title: 'Respiratory Effects',
            description: 'Depress respiration, ↓ hypoxic drive, ↑ PaCO₂',
            subtitle: 'High dose → muscle rigidity',
          ),
          AnalgesicAgentsItem(
            title: 'Cerebral Effects',
            description: '↓ CMRO₂, ↓ CBF, ↓ ICP (minimal EEG effect)',
          ),
          AnalgesicAgentsItem(
            title: 'Remifentanil Tolerance',
            description: 'Tolerance + opioid-induced hyperalgesia possible',
          ),
          AnalgesicAgentsItem(
            title: 'Meperidine - Shivering',
            description: 'Meperidine (10–25 mg IV): treatment for postoperative shivering',
          ),
          AnalgesicAgentsItem(
            title: 'GI Effects',
            description: '↓ peristalsis, Oddi sphincter spasm (reversed with naloxone/glucagon)',
            subtitle: 'Tolerance does not develop to constipation',
          ),
          AnalgesicAgentsItem(
            title: 'Opioid-Induced Constipation',
            description: 'Methyl-naltrexone, alvimopan',
          ),
          AnalgesicAgentsItem(
            title: 'Contraindication',
            description: 'Meperidine + MAOI',
          ),
          AnalgesicAgentsItem(
            title: 'Drug Interaction',
            description: 'Erythromycin prolongs alfentanil effect',
          ),
        ],
      ),
      AnalgesicAgentsCategory(
        categoryName: 'Cyclooxygenase (COX) Inhibitors',
        items: [
          AnalgesicAgentsItem(
            title: 'COX Function',
            description: 'COX catalyzes AA → PGH₂ conversion',
          ),
          AnalgesicAgentsItem(
            title: 'COX-1',
            description: 'Constitutive (gastric mucosa, platelets)',
          ),
          AnalgesicAgentsItem(
            title: 'COX-2',
            description: 'Induced by inflammation',
          ),
          AnalgesicAgentsItem(
            title: 'Aspirin',
            description: 'Irreversible acetylation of COX-1 (lasts 1 week)',
          ),
          AnalgesicAgentsItem(
            title: 'Selective COX-2 Inhibitors',
            description: 'Paracetamol, coxibs → fewer GI side effects but ↑ MI/thrombosis risk',
          ),
          AnalgesicAgentsItem(
            title: 'Drug Classes - Salicylic Acid',
            description: 'Aspirin',
          ),
          AnalgesicAgentsItem(
            title: 'Drug Classes - Acetic Acid',
            description: 'Ketorolac',
          ),
          AnalgesicAgentsItem(
            title: 'Drug Classes - Propionic Acid',
            description: 'Ibuprofen',
          ),
          AnalgesicAgentsItem(
            title: 'Drug Classes - Heterocyclic',
            description: 'Celecoxib',
          ),
          AnalgesicAgentsItem(
            title: 'Absorption',
            description: 'Rapid; peak <3 h',
          ),
          AnalgesicAgentsItem(
            title: 'Distribution',
            description: 'Distribute into inner ear & joint spaces; albumin-bound',
          ),
          AnalgesicAgentsItem(
            title: 'Elimination',
            description: 'Hepatic elimination',
          ),
          AnalgesicAgentsItem(
            title: 'Paracetamol Overdose',
            description: 'NAPQI → hepatotoxicity',
          ),
          AnalgesicAgentsItem(
            title: 'Excretion',
            description: 'Mainly urinary',
          ),
          AnalgesicAgentsItem(
            title: 'Ductus Arteriosus',
            description: 'PGs maintain ductus arteriosus patency; PG inhibitors → used in DA closure therapy',
          ),
          AnalgesicAgentsItem(
            title: 'Lung Function',
            description: 'Do not significantly affect lung function at clinical doses',
          ),
          AnalgesicAgentsItem(
            title: 'GI Risk',
            description: 'COX-1 inhibition → ↑ risk of upper GI bleeding',
          ),
        ],
      ),
      AnalgesicAgentsCategory(
        categoryName: 'Key Exam Spots',
        items: [
          AnalgesicAgentsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Opioids: µ, κ, δ, σ receptors are G-protein–coupled',
            subtitle: 'Levorotatory isomers > dextrorotatory',
            additionalInfo: 'Morphine: M-6-glucuronide metabolite\nMeperidine: Normeperidine → epileptogenic\nAspirin: irreversible COX-1 inhibition (1 week)',
          ),
        ],
      ),
    ];
  }
}
