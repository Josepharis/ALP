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
            title: "ABSORPTION PRINCIPLES",
            description: "The process by which a drug transitions from its site of administration into the bloodstream; determined by drug properties, dose, and local blood flow.",
            subtitle: "First-pass hepatic metabolism plays a critical role in the oral route",
            additionalInfo: "Key principles:\n• Ionization: Non-ionized (uncharged) forms of drugs are absorbed much faster than ionized forms.\n• First-Pass Effect: Administrations via the oral cavity, esophagus, and lower parts of the rectum can bypass the liver and enter the systemic circulation directly.\n• Skin Barrier: The stratum corneum layer forms a strong barrier for substances other than lipophilic small molecules.",
          ),
          PharmacologicalPrinciplesItem(
            title: "DISTRIBUTION AND PLASMA PROTEINS",
            description: "The process of a drug spreading from the plasma into tissues; it first reaches well-perfused organs (heart, lungs, brain).",
            subtitle: "Fat and skin tissue serve as reservoirs for lipophilic drugs",
            additionalInfo: "Plasma protein binding determines the amount of free (active) drug:\n• Albumin: Binds acidic drugs such as barbiturates.\n• α1-acid Glycoprotein: Binds basic drugs such as local anesthetics.\n• Distribution Rate: After an IV bolus, the drug first distributes to vessel-rich tissues (causing a rapid fall in plasma concentration), then moves to more slowly perfused tissues.\n• Context-Sensitive Half-Time: Represents the time required for the plasma concentration to decrease by 50% after a continuous infusion is stopped.",
          ),
          PharmacologicalPrinciplesItem(
            title: "BODY COMPARTMENT MODELS",
            description: "Virtual volume partitions used to mathematically explain the movement of a drug within the body.",
            subtitle: "Vdss (Volume of Distribution at Steady State) = V1 + V2 + V3",
            additionalInfo: "A three-compartment model is generally used:\n• V1 (Central): Areas reached most rapidly, such as blood volume and the lungs.\n• V2 (Rapid Distribution): Vessel-rich tissues such as muscles and organs.\n• V3 (Slow Distribution): Tissues that reach equilibrium late, such as fat and skin.\nA small Vd value indicates hydrophilic (water-soluble) drugs, while a large Vd value points to lipophilic (fat-soluble) drugs.",
          ),
          PharmacologicalPrinciplesItem(
            title: "BIOTRANSFORMATION (METABOLISM)",
            description: "The process by which a drug is chemically converted into active or inactive metabolites in the body; the primary goal is to make the drug water-soluble for excretion.",
            subtitle: "Hepatic capacity and blood flow rate are the primary determinants",
            additionalInfo: "Occurs in two main phases:\n• Phase I: Polar groups are added to the molecule via oxidation, reduction, or hydrolysis reactions.\n• Phase II: The drug is made completely hydrophilic through conjugation processes such as glucuronidation, preparing it for renal excretion.\nFor drugs with low hepatic extraction, metabolic capacity (enzymatic strength) is the limiting factor.",
          ),
          PharmacologicalPrinciplesItem(
            title: "EXCRETION PATHWAYS",
            description: "The process of completely removing the drug and its metabolites from the body; the primary route is the kidneys, and the secondary route is the bile.",
            subtitle: "Enterohepatic cycling can prolong the duration of the drug in the body",
            additionalInfo: "Renal clearance refers to the volume of plasma cleared by the kidneys per unit time. Some drugs excreted via the bile (e.g., Lorazepam Glucuronide) can be reabsorbed from the intestines and return to the liver (Enterohepatic Circulation); this can unexpectedly prolong the drug's duration of action.",
          ),
        ],
      ),
      PharmacologicalPrinciplesCategory(
        categoryName: 'Pharmacodynamics (What the drug does to the body)',
        items: [
          PharmacologicalPrinciplesItem(
            title: "POTENCY AND THERAPEUTIC WINDOW",
            description: "Defines the relationship between the dose of a drug and the response it produces, as well as its safe range of use.",
            subtitle: "Threshold value: The minimum concentration required for the effect to begin",
            additionalInfo: "• Sigmoid Relationship: With increasing concentration, the effect increases up to a point, then the maximum capacity (Emax) is reached and plateaus.\n• Potency: The amount of drug required to produce a specific effect.\n• Therapeutic Window: The safe corridor between the minimum effective concentration and the concentration at which toxic effects begin; a narrow corridor (e.g., Digoxin) is risky.",
          ),
          PharmacologicalPrinciplesItem(
            title: "AGONIST AND ANTAGONIST RELATIONSHIPS",
            description: "Fundamental types of interactions expressing whether a drug produces a response by binding to a receptor.",
            additionalInfo: "• Agonist: Binds to a receptor and triggers a biological response (e.g., opioids).\n• Antagonist: Does not produce a response on its own even when bound to the receptor; however, it prevents or reverses the effect of the agonist by occupying that site (e.g., Naloxone).",
          ),
          PharmacologicalPrinciplesItem(
            title: "TYPES OF ANTAGONISM (COMPETITIVE / NON-COMPETITIVE)",
            description: "Shows the mechanism through which drugs counteract each other's effects.",
            additionalInfo: "• Competitive: The agonist and antagonist compete for the same binding site. This blockade can be overcome by increasing the dose.\n• Non-competitive: The antagonist prevents the effect by binding to a site different from the agonist or by permanently altering the receptor; even if the agonist dose is increased, the blockade generally cannot be overcome.",
          ),
        ],
      ),
    ];
  }
}
