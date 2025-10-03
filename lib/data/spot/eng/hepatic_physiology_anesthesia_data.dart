import 'package:flutter/material.dart';

class HepaticPhysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  HepaticPhysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class HepaticPhysiologyAnesthesiaCategory {
  final String categoryName;
  final List<HepaticPhysiologyAnesthesiaItem> items;

  HepaticPhysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class HepaticPhysiologyAnesthesiaData {
  static List<HepaticPhysiologyAnesthesiaCategory> getHepaticPhysiologyAnesthesiaData(BuildContext context) {
    return [
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Functional Anatomy',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Average Weight',
            description: '1500 g',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Structure',
            description: 'Right and left lobes → 50,000–100,000 lobules',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Acinus Zones - Zone 1',
            description: 'Closest to portal system, receives most O₂',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Acinus Zones - Zone 3',
            description: 'Around central vein, least O₂, most hypoxia-sensitive',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Kupffer Cells',
            description: 'Liver macrophages',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Innervation',
            description: 'Sympathetic (T6–T11), parasympathetic (vagus), right phrenic nerve',
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Hepatic Blood Flow',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Cardiac Output',
            description: '25–30% of cardiac output goes to liver',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Oxygen Supply',
            description: '45–55% hepatic artery',
            subtitle: '50–55% portal vein',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Receptors - Hepatic Artery',
            description: 'α1 (VC), β2–D1 (VD)',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Receptors - Portal Vein',
            description: 'α1 and D1',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Clinical',
            description: 'Sympathetic activation → ↓ flow',
            subtitle: 'β-blockers → ↓ flow, ↓ portal pressure',
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Reservoir Function',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Portal Vein Pressure',
            description: '7–10 mmHg',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Blood Reservoir',
            description: 'Liver acts as a major blood reservoir',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Surgery',
            description: 'Keeping CVP low → ↓ bleeding',
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Metabolic Functions',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Glucose',
            description: 'Daily glucose consumption: 150 g',
            subtitle: 'Glycogen storage: 70 g',
            additionalInfo: 'Brain: glucose, shifts to ketones during prolonged fasting',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Protein Synthesis',
            description: 'All plasma proteins except immunoglobulins',
            subtitle: 'All coagulation factors except factor VIII and vWF',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Hormone Metabolism',
            description: 'T4 → T3 conversion',
            subtitle: 'Insulin, steroids, glucagon, ADH degradation',
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Drug Metabolism',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Phase I',
            description: 'P450, oxidation/reduction: inactivates barbiturates, benzodiazepines',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Phase II',
            description: 'Conjugation',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'P450 Inducers',
            description: 'Ethanol, barbiturates, ketamine, benzodiazepines',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'High-extraction Drugs',
            description: 'Flow-dependent clearance: labetalol, lidocaine, morphine, verapamil, propranolol',
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Bile Physiology',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Hepatocytes',
            description: 'Bile salts, cholesterol, phospholipids, conjugated bilirubin',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Gallbladder',
            description: 'Storage',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Clinical - Bile Deficiency',
            description: 'ADEK vitamin malabsorption',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Clinical - Vitamin K Deficiency',
            description: '↓ prothrombin, factor VII, IX, X',
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Liver Function Tests',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Total Bilirubin',
            description: '<1.5 mg/dL; >3 → jaundice',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: '↑ Conjugated Bilirubin',
            description: 'Hepatic dysfunction, cholestasis, obstruction',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: '↑ Unconjugated Bilirubin',
            description: 'Hemolysis, conjugation defect',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'AST/ALT',
            description: 'Marker of cell injury',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Alkaline Phosphatase',
            description: '25–85 IU/L, ↑ in obstruction',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Albumin',
            description: '3.5–5.5 g/dL, half-life 2–3 weeks',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Blood Ammonia',
            description: '47–65 µmol/L, ↑ → encephalopathy',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Prothrombin Time',
            description: '11–14 s, prolonged in hepatic failure',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Viscoelastic Tests',
            description: 'TEG, ROTEM: real-time coagulation analysis',
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Effects of Anesthesia on the Liver',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'Blood Flow',
            description: 'GA/RA generally ↓ hepatic blood flow',
            subtitle: 'High airway pressures → ↓ hepatic flow',
            additionalInfo: 'Liver surgery → ↓ hepatic blood flow up to 60%',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Metabolic Response',
            description: 'Surgical trauma → ↑ catecholamines, glucagon, cortisol → hyperglycemia',
            subtitle: 'RA/deep GA/sympathetic block → suppresses this response',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Opioids',
            description: 'Cause sphincter of Oddi spasm → relieved with naloxone/glucagon',
          ),
          HepaticPhysiologyAnesthesiaItem(
            title: 'Post-op Jaundice',
            description: 'Most common causes are RBC breakdown and hematoma resorption',
          ),
        ],
      ),
      HepaticPhysiologyAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          HepaticPhysiologyAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Liver receives 25–30% of cardiac output',
            subtitle: 'Portal vein pressure: 7–10 mmHg',
            additionalInfo: 'Zone 1: most O₂, Zone 3: least O₂, most hypoxia-sensitive\nDaily glucose consumption: 150 g\nTotal bilirubin: <1.5 mg/dL, >3 → jaundice\nAlbumin: 3.5–5.5 g/dL, half-life 2–3 weeks',
          ),
        ],
      ),
    ];
  }
}
