import 'package:flutter/material.dart';

class PediatricAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PediatricAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PediatricAnesthesiaCategory {
  final String categoryName;
  final List<PediatricAnesthesiaItem> items;

  PediatricAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class PediatricAnesthesiaData {
  static List<PediatricAnesthesiaCategory> getPediatricAnesthesiaData(BuildContext context) {
    return [
      PediatricAnesthesiaCategory(
        categoryName: 'Anatomical and Physiological Features',
        items: [
          PediatricAnesthesiaItem(
            title: 'Respiratory System',
            description: 'Lung compliance ↓, chest wall compliance ↑ → small residual capacities',
            subtitle: 'Full alveolar development: 8 years',
            additionalInfo: 'Large tongue, high larynx (C4 in child, C6 in adult)\n<5 years: narrowest part = cricoid cartilage (adult = glottis)\nNewborns: obligatory nasal breathing for first 5 months',
          ),
          PediatricAnesthesiaItem(
            title: 'Cardiovascular',
            description: 'Cardiac output HR-dependent',
            subtitle: 'Hypovolemia → hypotension without tachycardia',
            additionalInfo: 'Baroreceptor reflex immature',
          ),
          PediatricAnesthesiaItem(
            title: 'Metabolism/Temperature',
            description: 'Larger surface area → ↑ heat loss, hypothermia risk',
            subtitle: 'Brown fat metabolism limited in preterms',
          ),
          PediatricAnesthesiaItem(
            title: 'Renal/Hepatic',
            description: 'Renal function matures at 6–24 months',
            subtitle: 'Conjugation immature → slower drug elimination',
          ),
          PediatricAnesthesiaItem(
            title: 'Glucose',
            description: 'Glycogen stores limited → prone to hypoglycemia',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Pharmacology',
        items: [
          PediatricAnesthesiaItem(
            title: 'Weight Estimate',
            description: '(age × 2) + 9 (50th percentile)',
          ),
          PediatricAnesthesiaItem(
            title: 'Body Water',
            description: '↑ → larger Vd for water-soluble drugs',
            subtitle: 'Protein binding ↓ → higher free drug fraction',
          ),
          PediatricAnesthesiaItem(
            title: 'Inhalation Agents',
            description: '↑ MV + ↓ FRC → rapid induction',
            subtitle: 'Low blood/gas partition coefficient → fast equilibration, overdose risk',
            additionalInfo: 'Sevoflurane: least respiratory depression, rapid emergence\nDesflurane: rapid emergence, but ↑ agitation/delirium\nHalothane/sevoflurane: sensitize heart to catecholamines',
          ),
          PediatricAnesthesiaItem(
            title: 'IV Agents - Propofol',
            description: 'Higher dose in children (maintenance ~250 mcg/kg/min)',
            subtitle: 'Long/high dose → propofol infusion syndrome',
          ),
          PediatricAnesthesiaItem(
            title: 'IV Agents - Thiopental',
            description: 'NB 3–4 mg/kg, infant 5–6 mg/kg',
          ),
          PediatricAnesthesiaItem(
            title: 'IV Agents - Opioids',
            description: 'More potent in NB, especially morphine (immature conjugation)',
            subtitle: 'Remifentanil: high clearance, unchanged elimination',
          ),
          PediatricAnesthesiaItem(
            title: 'IV Agents - Ketamine',
            description: 'Resistance to hypnotic effect possible',
          ),
          PediatricAnesthesiaItem(
            title: 'IV Agents - Midazolam',
            description: 'Clearance ↓ in NB',
          ),
          PediatricAnesthesiaItem(
            title: 'Muscle Relaxants',
            description: 'Faster onset in children',
            subtitle: 'Sch: only for full-stomach + laryngospasm resistant to ventilation',
            additionalInfo: 'Atracurium/cisatracurium safe (extrahepatic elimination)',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Preoperative',
        items: [
          PediatricAnesthesiaItem(
            title: 'URI Risk',
            description: 'Within 2–4 weeks → ↑ complications',
          ),
          PediatricAnesthesiaItem(
            title: 'Fasting Rules',
            description: 'Breast milk: 4 h',
            subtitle: 'Formula/solid: 6 h',
            additionalInfo: 'Water/clear fluids: 2 h',
          ),
          PediatricAnesthesiaItem(
            title: 'Premedication',
            description: 'Midazolam (oral/IV/nasal)',
          ),
          PediatricAnesthesiaItem(
            title: 'Atropine',
            description: 'For bradycardia prophylaxis in NB/infants',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Monitoring',
        items: [
          PediatricAnesthesiaItem(
            title: 'Glucose Thresholds',
            description: 'NB <30 mg/dL',
            subtitle: 'Infant <40 mg/dL',
            additionalInfo: 'Child <60 mg/dL',
          ),
          PediatricAnesthesiaItem(
            title: 'SpO₂ Site',
            description: 'Best preductal site: earlobe',
          ),
          PediatricAnesthesiaItem(
            title: 'Invasive Monitoring',
            description: 'NB → right radial artery',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Induction & Airway',
        items: [
          PediatricAnesthesiaItem(
            title: 'Induction Strategy',
            description: 'If no cooperation → inhalational induction first, then IV',
          ),
          PediatricAnesthesiaItem(
            title: 'Tube Size',
            description: 'Tube size (mm): 4 + (age/4)',
          ),
          PediatricAnesthesiaItem(
            title: 'Tube Length',
            description: 'Tube length (cm): 12 + (age/2)',
          ),
          PediatricAnesthesiaItem(
            title: 'Cuffed Tube',
            description: 'Leak test (15–20 cmH₂O)',
          ),
          PediatricAnesthesiaItem(
            title: 'PEEP',
            description: '10 cmH₂O may resolve laryngospasm',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Maintenance',
        items: [
          PediatricAnesthesiaItem(
            title: 'Ventilation - <10 kg',
            description: 'PIP 15–18 cmH₂O',
          ),
          PediatricAnesthesiaItem(
            title: 'Ventilation - ~10 kg',
            description: 'TV 6–8 mL/kg',
          ),
          PediatricAnesthesiaItem(
            title: 'Agent Switching',
            description: 'Switching from sevo (induction) to iso (maintenance) → ↓ postop delirium',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Fluid Management',
        items: [
          PediatricAnesthesiaItem(
            title: 'Maintenance',
            description: '4-2-1 rule',
          ),
          PediatricAnesthesiaItem(
            title: 'Glucose Requirements',
            description: '<8 yrs: 6 mg/kg/min',
            subtitle: '8 yrs: 2 mg/kg/min',
            additionalInfo: 'Preterm: 6–8 mg/kg/min',
          ),
          PediatricAnesthesiaItem(
            title: 'Blood Volume',
            description: 'Preterm: 100 mL/kg',
            subtitle: 'NB: 85–90 mL/kg',
            additionalInfo: 'Infant: 80 mL/kg',
          ),
          PediatricAnesthesiaItem(
            title: 'Hct Targets',
            description: 'Preterm/NB: ~40%',
            subtitle: 'Child: tolerates 20–26%',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Regional',
        items: [
          PediatricAnesthesiaItem(
            title: 'Caudal Block',
            description: 'Bupivacaine 0.125–0.25% (2.5 mg/kg)',
          ),
          PediatricAnesthesiaItem(
            title: 'Volume Requirements',
            description: 'Sacral: 0.5 mL/kg; mid-thoracic: 1.25 mL/kg',
          ),
          PediatricAnesthesiaItem(
            title: 'Opioids',
            description: 'May be added (morphine 25 mcg/kg)',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Recovery',
        items: [
          PediatricAnesthesiaItem(
            title: 'Laryngospasm',
            description: 'CPAP → lidocaine 1–1.5 mg/kg or Sch if resistant',
          ),
          PediatricAnesthesiaItem(
            title: 'Post-intubation Croup',
            description: 'Most common at 1–4 yrs → treat with IV dexamethasone + nebulized racemic epinephrine',
          ),
          PediatricAnesthesiaItem(
            title: 'Pain Management',
            description: 'Acetaminophen, ketorolac, PCA (>6–7 yrs)',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Specific Diseases',
        items: [
          PediatricAnesthesiaItem(
            title: 'Prematurity',
            description: 'PCA <50–60 wks → postop apnea risk → monitoring',
          ),
          PediatricAnesthesiaItem(
            title: 'CDH',
            description: 'PIP <30, permissive hypercapnia, NG decompression',
          ),
          PediatricAnesthesiaItem(
            title: 'TOF',
            description: 'Intubation without NMB, avoid positive pressure',
          ),
          PediatricAnesthesiaItem(
            title: 'Omphalocele/Gastroschisis',
            description: 'N₂O contraindicated; avoid PIP >35',
          ),
          PediatricAnesthesiaItem(
            title: 'Pyloric Stenosis',
            description: 'RSI after fluid/electrolyte correction',
          ),
          PediatricAnesthesiaItem(
            title: 'Croup/Epiglottitis',
            description: 'Severe airway obstruction risk',
          ),
          PediatricAnesthesiaItem(
            title: 'Down Syndrome',
            description: 'Difficult airway + cardiac anomalies',
          ),
          PediatricAnesthesiaItem(
            title: 'Scoliosis',
            description: 'Neuromonitoring; MH risk (with muscular dystrophy)',
          ),
        ],
      ),
      PediatricAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          PediatricAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Weight estimate: (age × 2) + 9',
            subtitle: 'Tube size: 4 + (age/4), length: 12 + (age/2)',
            additionalInfo: 'Glucose thresholds: NB <30, infant <40, child <60 mg/dL\nCaudal: bupivacaine 0.125–0.25% (2.5 mg/kg)\nPrematurity: PCA <50–60 wks → apnea risk\nCDH: PIP <30, permissive hypercapnia',
          ),
        ],
      ),
    ];
  }
}
