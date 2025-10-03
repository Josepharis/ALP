import 'package:flutter/material.dart';

class CardiovascularSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiovascularSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiovascularSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<CardiovascularSurgeryAnesthesiaItem> items;

  CardiovascularSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiovascularSurgeryAnesthesiaData {
  static List<CardiovascularSurgeryAnesthesiaCategory> getCardiovascularSurgeryAnesthesiaData(BuildContext context) {
    return [
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Cardiopulmonary Bypass (CPB)',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Basic Circuit - Reservoir',
            description: 'Collects venous blood; roller pump → air risk, centrifugal pump → requires adequate blood',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Basic Circuit - Oxygenator',
            description: 'Silicone membrane; CO₂ removal depends on gas volume',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Basic Circuit - Heat Exchanger',
            description: 'Warms/cools by conduction; bubble filter',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Pump Types - Roller',
            description: 'Pressure-independent, less RBC damage',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Pump Types - Centrifugal',
            description: 'Pressure-dependent, less traumatic',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Pump Types - Pulsatile',
            description: 'May improve tissue perfusion',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Arterial Filter',
            description: '27–40 µm, prevents emboli',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Accessories',
            description: 'Cardiotomy suction, LV vent, cardioplegia pump, ultrafiltration',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Systemic Hypothermia',
            description: '20–32°C; metabolic O₂ demand halves at every 10°C decrease',
            subtitle: 'Total circulatory arrest possible at 15–18°C for ~0 min',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Myocardial Protection - Cardioplegia',
            description: 'K⁺-rich solution, repeated every 30 min',
            subtitle: 'Reduces energy consumption; air removal critical',
            additionalInfo: 'K⁺: 10–40 mEq/L; Ca, Mg, bicarbonate, mannitol, membrane stabilizers added\nRetrograde > antegrade; avoid hypercalcemia',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Physiological Effects',
            description: '↑ Stress hormones, systemic inflammation → edema, ARDS, coagulopathy, AKI',
            subtitle: 'Pharmacokinetics altered: ↓ hydrophilic agents in plasma; heparin affects free Ca & protein binding',
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Anesthesia in Cardiac Surgery',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Adults - Preop',
            description: 'Assess cardiac & systemic status; pulmonary, renal, neurological functions',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Before Induction',
            description: 'Premedication (BDZ + opioid), monitoring (ECG II, V5; invasive BP; CVP/PA pressure; TEE; urine; temperature; EEG; TCD)',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Induction',
            description: 'Controlled, calm; caution with fluid bolus; hypotension managed with phenylephrine/vasopressin/ephedrine',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Anesthetic Choices - High-dose Opioids',
            description: 'Less myocardial depression, ↑ postop respiratory depression',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Anesthetic Choices - TIVA',
            description: 'Fast-track (propofol + opioid; target 1.5–2 µg/mL)',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Anesthetic Choices - Mixed IV/Inhalational',
            description: 'Early extubation, no N₂O',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Muscle Relaxants',
            description: 'Rocuronium, vecuronium, cisatracurium',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Pre-bypass - Heparin',
            description: '300–400 U/kg (ACT 400–480 s)',
            subtitle: 'ATIII deficiency → heparin resistance → FFP or recombinant ATIII',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Pre-bypass - Bleeding Prophylaxis',
            description: 'ε-aminocaproic acid, tranexamic acid',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Bypass Period - Flow',
            description: '2–2.5 L/min/m², MAP 50–80 mmHg',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Bypass Period - Hypothermia',
            description: 'Moderate 26–32°C, deep 20–25°C',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Bypass Period - Ventilation',
            description: '1–2 L/min or PEEP 5 cmH₂O',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Bypass Period - Cardioplegia',
            description: 'Via aortic cannula, retrograde or antegrade',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Bypass Period - Cerebral Protection',
            description: 'TEE, epi-aortic echo, steroids, mannitol, head cooling, NMDA antagonist, thiopental/propofol',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Weaning',
            description: 'Gradual ↓ in pump flow; systolic BP >80–90 mmHg before separation',
            subtitle: 'May require intra-aortic balloon pump',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Postop',
            description: 'Hct 25–30; monitor electrolytes & rhythm',
            subtitle: 'Protamine: reversal dose 1–1.3 mg/100 U heparin',
            additionalInfo: 'Bleeding >10 mL/kg/h → re-exploration\nMaintain sedation, analgesia, and hemodynamic stability',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Off-pump CABG',
            description: 'Surgical site stabilized with suction',
            subtitle: 'Distal anastomosis may require vasopressors; proximal may require vasodilators',
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Pediatric Cardiac Surgery',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Preop',
            description: 'Treat pulmonary infection & CHF; PGE1 in ductus-dependent lesions',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Induction - IV',
            description: 'Hypnotic + opioid',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Induction - IM',
            description: 'Ketamine 4–10 mg/kg + atropine',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Induction - Inhalation',
            description: 'Sevoflurane, ≤50% N₂O',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Monitoring',
            description: 'Arterial line, CVP; PA catheter rarely',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'CPB',
            description: 'Prepared with blood (1/3) to prevent hemodilution; pH-stat approach better in circulatory arrest cases',
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Heart Transplantation',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Preop',
            description: 'EF <20%, no advanced organ damage, PVR <6–8 Wood',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Anesthesia',
            description: 'Full stomach precautions; H2 blocker/metoclopramide, preop cyclosporine',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Post-CPB',
            description: 'Risk of hyperventilation, RV failure',
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Pericardial Diseases',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Tamponade - Acute',
            description: '100–200 mL fluid → hypotension, tachycardia, tachypnea',
            subtitle: 'CVP: absent y descent, prominent x descent',
            additionalInfo: 'Anesthesia: low-dose ketamine ideal; epinephrine 5–10 mcg',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Constrictive Pericarditis',
            description: 'CVP: y descent visible, Kussmaul\'s sign (+)',
            subtitle: 'Pericardiectomy: CPB standby; avoid cardiac depression, bradycardia, hypotension',
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Vascular Surgery',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Aortic Surgery - Dissection',
            description: 'Proximal → surgical; distal → medical',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Aortic Surgery - Aneurysm',
            description: '>5 cm → surgical indication',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Aortic Surgery - Coarctation',
            description: 'Preductal (<1 yr), postductal (adult)',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Aortic Surgery - Anesthesia',
            description: 'CPB, TEE, ε-aminocaproic acid, deep hypothermia/circulatory arrest',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Descending Thoracic Aorta',
            description: 'Without CPB: distal hypotension, proximal hypertension',
            subtitle: 'Postop: bleeding control, hemodynamic stability',
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: 'Carotid Surgery - Indication',
            description: '≥70% stenosis or 30–70% with TIA/stroke',
            subtitle: 'Goal: preserve cerebral & coronary perfusion',
            additionalInfo: 'High risk: age >75, symptomatic, uncontrolled HT, thrombosis, carotid siphon lesion',
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'CPB: 2–2.5 L/min/m², MAP 50–80 mmHg',
            subtitle: 'Heparin: 300–400 U/kg (ACT 400–480 s)',
            additionalInfo: 'Protamine: 1–1.3 mg/100 U heparin\nHypothermia: 20–32°C\nCardioplegia: K⁺ 10–40 mEq/L\nTamponade: 100–200 mL fluid',
          ),
        ],
      ),
    ];
  }
}
