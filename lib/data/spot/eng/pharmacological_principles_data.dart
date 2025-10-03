import 'package:flutter/material.dart';

class PharmacologicalPrinciplesItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PharmacologicalPrinciplesItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PharmacologicalPrinciplesCategory {
  final String categoryName;
  final List<PharmacologicalPrinciplesItem> items;

  PharmacologicalPrinciplesCategory({
    required this.categoryName,
    required this.items,
  });
}

class PharmacologicalPrinciplesData {
  static List<PharmacologicalPrinciplesCategory> getPharmacologicalPrinciplesData(BuildContext context) {
    return [
      PharmacologicalPrinciplesCategory(
        categoryName: 'Pharmacokinetics (What the body does to the drug)',
        items: [
          PharmacologicalPrinciplesItem(
            title: 'Absorption - General',
            description: 'Influenced by drug properties, dose, and site of absorption',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Absorption - Oral',
            description: 'First-pass hepatic metabolism is important',
            subtitle: 'Non-ionized drugs are absorbed more readily than ionized drugs',
            additionalInfo: 'Oral cavity, esophagus, and rectum may bypass the liver',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Absorption - Skin',
            description: 'Stratum corneum acts as a barrier for lipophilic small molecules',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Distribution - General',
            description: 'Drugs are distributed first to well-perfused organs',
            subtitle: 'Fat/skin serve as reservoirs for lipophilic drugs',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Distribution - Protein Binding',
            description: 'Albumin: Binds acidic drugs (e.g., barbiturates)',
            subtitle: 'α1-acid glycoprotein: Binds basic drugs (e.g., local anesthetics)',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Distribution - IV Bolus',
            description: 'After IV bolus: rapid distribution causes a quick fall in plasma concentration',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Context-Sensitive Half-Time',
            description: 'Time for plasma concentration to fall by 50% after infusion ends',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Distribution - Compartments',
            description: 'V1: central (blood, lungs)',
            subtitle: 'V2: rapidly equilibrating peripheral',
            additionalInfo: 'V3: slowly equilibrating peripheral\nSteady-state volume of distribution (Vdss) = V1 + V2 + V3\nSmall Vdss = hydrophilic drug\nLarge Vdss = lipophilic drug',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Biotransformation - Phase I',
            description: 'Oxidation, reduction, hydrolysis → polar metabolites',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Biotransformation - Phase II',
            description: 'Glucuronidation → makes drug hydrophilic',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Biotransformation - Hepatic Extraction',
            description: 'For low hepatic extraction drugs, liver blood flow has little effect; metabolic capacity is the main determinant',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Excretion - Renal Clearance',
            description: 'Amount eliminated by kidneys',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Excretion - Biliary',
            description: 'Biliary excretion: Enterohepatic cycling may occur',
            subtitle: 'Example: Lorazepam → Lorazepam glucuronide → recycled back',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Compartment Models - Central',
            description: 'Blood and lungs',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Compartment Models - Rapidly Equilibrating',
            description: 'Vessel-rich group (muscles, organs)',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Compartment Models - Slowly Equilibrating',
            description: 'Fat, skin',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Compartment Models - 3-Compartment',
            description: 'Used if rapid arterial sampling is available',
            subtitle: 'After bolus: quick redistribution to peripheral compartments → plasma concentration decreases',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Terminal Half-Life',
            description: 'Time for the drug to be completely eliminated from the body',
          ),
        ],
      ),
      PharmacologicalPrinciplesCategory(
        categoryName: 'Pharmacodynamics (What the drug does to the body)',
        items: [
          PharmacologicalPrinciplesItem(
            title: 'Effect - General',
            description: 'Dose–response and concentration–response relationships',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Threshold Value',
            description: 'Minimum concentration required for effect',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Sigmoid Curve',
            description: 'Effect plateaus at maximum despite higher concentrations',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Therapeutic Window',
            description: 'Range between effective and toxic concentration',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Drug Receptors - Agonist',
            description: 'Produces a response',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Drug Receptors - Antagonist',
            description: 'Reverses the effect of an agonist, inactive when given alone',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Types of Antagonism - Competitive',
            description: 'Competes with agonist at the same site',
          ),
          PharmacologicalPrinciplesItem(
            title: 'Types of Antagonism - Non-Competitive',
            description: 'Antagonizes agonist effect at a different binding site',
          ),
        ],
      ),
      PharmacologicalPrinciplesCategory(
        categoryName: 'Key Exam Spots',
        items: [
          PharmacologicalPrinciplesItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Albumin binds acidic drugs, α1-acid glycoprotein binds basic drugs',
            subtitle: 'Small Vdss = hydrophilic, Large Vdss = lipophilic',
            additionalInfo: 'Phase I: oxidation/reduction/hydrolysis\nPhase II: glucuronidation\nContext-sensitive half-time: 50% decrease after infusion',
          ),
        ],
      ),
    ];
  }
}
