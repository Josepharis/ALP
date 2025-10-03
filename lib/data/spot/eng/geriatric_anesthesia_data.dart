import 'package:flutter/material.dart';

class GeriatricAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  GeriatricAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class GeriatricAnesthesiaCategory {
  final String categoryName;
  final List<GeriatricAnesthesiaItem> items;

  GeriatricAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class GeriatricAnesthesiaData {
  static List<GeriatricAnesthesiaCategory> getGeriatricAnesthesiaData(BuildContext context) {
    return [
      GeriatricAnesthesiaCategory(
        categoryName: 'Cardiovascular System',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Cardiac Changes',
            description: 'Cardiac and vascular compliance ↓, valvular calcification ↑',
          ),
          GeriatricAnesthesiaItem(
            title: 'Maximum HR',
            description: '↓ ~1 bpm per year after age 50',
          ),
          GeriatricAnesthesiaItem(
            title: 'Diastolic Dysfunction',
            description: 'Common (but dysfunction ≠ failure)',
            subtitle: 'E/é >15 → diastolic dysfunction; <8 → normal',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Respiratory System',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Alveolar Changes',
            description: 'Alveolar distension + small airway collapse → V/Q mismatch',
          ),
          GeriatricAnesthesiaItem(
            title: 'Volume Changes',
            description: 'RV and FRC ↑, closing capacity ↑',
          ),
          GeriatricAnesthesiaItem(
            title: 'PaO₂ Decline',
            description: '↓ ~0.35 mmHg per year',
          ),
          GeriatricAnesthesiaItem(
            title: 'Management',
            description: 'Prolonged preoxygenation, higher intraop FiO₂, PEEP, aggressive pulmonary toilet',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Metabolic & Endocrine',
        items: [
          GeriatricAnesthesiaItem(
            title: 'O₂ Consumption',
            description: '↓',
          ),
          GeriatricAnesthesiaItem(
            title: 'Weight Loss',
            description: 'Begins after age 60',
          ),
          GeriatricAnesthesiaItem(
            title: 'Thermoregulation',
            description: 'Impaired → ↑ hypothermia risk',
          ),
          GeriatricAnesthesiaItem(
            title: 'DM Prevalence',
            description: '~70% after age 70',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Renal Function',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Muscle Mass',
            description: '↓ → creatinine may appear normal but BUN ↑',
          ),
          GeriatricAnesthesiaItem(
            title: 'Renal Function',
            description: 'Dilution/concentration, Na & glucose reabsorption impaired',
          ),
          GeriatricAnesthesiaItem(
            title: 'AKI Risk',
            description: '↑ AKI risk, predisposed to hypo-/hyperkalemia',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Gastrointestinal & Hepatic',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Liver Function',
            description: 'Liver mass ↓, biotransformation ↓',
          ),
          GeriatricAnesthesiaItem(
            title: 'Serum Albumin',
            description: '↓ → ↓ binding of acidic drugs',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Central Nervous System',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Cerebral Blood Flow',
            description: 'Autoregulation preserved, but cerebral blood flow ↓ 10–20%',
          ),
          GeriatricAnesthesiaItem(
            title: 'Neuronal Changes',
            description: 'Neuronal loss → ↑ sensory threshold',
          ),
          GeriatricAnesthesiaItem(
            title: 'Anesthetic Requirement',
            description: '↓ (both GA and LA)',
          ),
          GeriatricAnesthesiaItem(
            title: 'Postop Behavioral Disorders',
            description: '~30% within 1 week',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Musculoskeletal & Skin',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Muscle Mass',
            description: '↓, skin atrophy → prone to trauma',
          ),
          GeriatricAnesthesiaItem(
            title: 'Fragile Veins',
            description: 'IV access more difficult',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Age-Related Pharmacologic Changes',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Body Composition',
            description: 'Muscle mass ↓, fat mass ↑ → Vd of lipophilic drugs ↑, elimination prolonged',
          ),
          GeriatricAnesthesiaItem(
            title: 'Albumin Binding',
            description: '↓ → ↓ binding of acidic drugs (benzodiazepines, barbiturates, opioids)',
          ),
          GeriatricAnesthesiaItem(
            title: 'α1-acid Glycoprotein',
            description: '↑ → ↑ binding of basic drugs (local anesthetics)',
          ),
          GeriatricAnesthesiaItem(
            title: 'Inhalation Agents',
            description: 'MAC ↓ 4% per decade after age 40',
            subtitle: 'Impaired pulmonary gas exchange → slower recovery',
            additionalInfo: 'Liver function minimally affected',
          ),
          GeriatricAnesthesiaItem(
            title: 'IV Agents - Sensitivity',
            description: 'Sensitivity ↑, dose requirement ↓ (~50%)',
            subtitle: 'Propofol, midazolam, alfentanil, fentanyl dose ↓',
          ),
          GeriatricAnesthesiaItem(
            title: 'IV Agents - Opioids',
            description: 'Fentanyl/alfentanil/sufentanil: PK stable but PD altered',
            subtitle: 'Remifentanil: both PK & PD altered',
          ),
          GeriatricAnesthesiaItem(
            title: 'Muscle Relaxants',
            description: 'NMB response generally unchanged',
            subtitle: 'Onset may be prolonged',
            additionalInfo: 'Hepatic/renal elimination drugs (rocuronium, vecuronium, pancuronium) → prolonged effect\nAtracurium/cisatracurium → safe (organ-independent elimination)',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Clinical Pearls',
        items: [
          GeriatricAnesthesiaItem(
            title: 'Anesthetic Doses',
            description: 'Use lower anesthetic doses → longer effect',
          ),
          GeriatricAnesthesiaItem(
            title: 'Respiratory Management',
            description: 'Prolong preoxygenation, apply PEEP',
          ),
          GeriatricAnesthesiaItem(
            title: 'Complications Prevention',
            description: 'Prevent hypothermia & AKI',
          ),
          GeriatricAnesthesiaItem(
            title: 'Postop Monitoring',
            description: 'High risk for postop delirium/behavioral changes',
          ),
          GeriatricAnesthesiaItem(
            title: 'Access Considerations',
            description: 'Fragile vessels/skin make access more difficult',
          ),
        ],
      ),
      GeriatricAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          GeriatricAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Maximum HR ↓ ~1 bpm per year after age 50',
            subtitle: 'PaO₂ ↓ ~0.35 mmHg per year',
            additionalInfo: 'MAC ↓ 4% per decade after age 40\nDM prevalence ~70% after age 70\nPostop behavioral disorders in ~30% within 1 week\nUse lower anesthetic doses → longer effect',
          ),
        ],
      ),
    ];
  }
}
