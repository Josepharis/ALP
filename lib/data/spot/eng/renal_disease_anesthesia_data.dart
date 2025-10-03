import 'package:flutter/material.dart';

class RenalDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RenalDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RenalDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<RenalDiseaseAnesthesiaItem> items;

  RenalDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class RenalDiseaseAnesthesiaData {
  static List<RenalDiseaseAnesthesiaCategory> getRenalDiseaseAnesthesiaData(BuildContext context) {
    return [
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Evaluation of Renal Function',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: 'BUN (Blood Urea Nitrogen)',
            description: 'Protein catabolism → ammonia → urea in liver',
            subtitle: 'BUN ∝ protein catabolism, ∝ 1/GFR',
            additionalInfo: '40–50% of ultrafiltrate reabsorbed → not reliable for GFR\nNormal: 10–20 mg/dL\n50 mg/dL → renal dysfunction\nHypovolemia → ↑ reabsorption',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Serum Creatinine',
            description: 'Muscle breakdown product (stable muscle mass → reliable GFR marker)',
            subtitle: 'Male: 0.8–1.3 mg/dL; Female: 0.6–1 mg/dL',
            additionalInfo: 'After age 20, GFR ↓ 5% per decade\nCimetidine → ↓ creatinine secretion',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Creatinine Clearance',
            description: 'Mild impairment: 40–60 mL/min',
            subtitle: 'Moderate: 25–40 mL/min',
            additionalInfo: 'Severe: <25 mL/min',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'BUN/Creatinine Ratio',
            description: 'Normal: 10–15:1',
            subtitle: '15:1 → hypovolemia, HF, cirrhosis, nephrotic syndrome',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Urinalysis',
            description: 'Systemic acidosis + urine pH >7 → renal tubular acidosis',
            subtitle: 'Specific gravity: 1.010 ≈ 290 mOsm/kg',
            additionalInfo: '1.018 → adequate concentration\nGlucosuria: glucose >180 mg/dL\nProteinuria: >150 mg/day',
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Anesthetic Agents and Renal Failure',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: 'IV Agents - Propofol, Etomidate',
            description: 'PK unchanged; etomidate free fraction ↑ (hypoalbuminemia)',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'IV Agents - Barbiturates',
            description: 'PK unchanged; in acidosis, non-ionized fraction ↑ → faster effect',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'IV Agents - Ketamine',
            description: 'PK unchanged; metabolite accumulation possible',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'IV Agents - Benzodiazepines',
            description: 'Free fraction ↑ (hypoalbuminemia), active metabolites accumulate (diazepam, midazolam caution)',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'IV Agents - Opioids',
            description: 'Mostly hepatic metabolism',
            subtitle: 'Remifentanil safe',
            additionalInfo: 'Morphine, meperidine → active metabolites accumulate (contraindicated)',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'IV Agents - Anticholinergics',
            description: 'Atropine, glycopyrrolate tolerated; accumulation with repeated doses',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'IV Agents - Antiemetics',
            description: 'H2 blockers require dose reduction, PPIs safe, metoclopramide accumulates, 5-HT3 antagonists safe',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Inhalation Agents',
            description: 'Volatile agents → ideal; sevoflurane with low flow → compound A risk (not clinically significant)',
            subtitle: 'N₂O → avoid if Hb <7 g/dL',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Muscle Relaxants - Succinylcholine',
            description: 'Safe if K⁺ <5 mEq/L',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Muscle Relaxants - Cisatracurium, Atracurium',
            description: 'Plasma metabolism, safe',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Muscle Relaxants - Vecuronium',
            description: '~20% renal excretion, slightly prolonged effect',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Muscle Relaxants - Rocuronium',
            description: 'Hepatic elimination, considered safe',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Muscle Relaxants - Curare',
            description: '40–60% renal excretion, prolonged effect',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Muscle Relaxants - Pancuronium',
            description: '60–90% renal excretion, prolonged effect',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Reversal Agents',
            description: 'Neostigmine, edrophonium, pyridostigmine → renal excretion → prolonged duration',
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Clinical Manifestations of Renal Failure',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: 'Metabolic',
            description: 'Metabolic acidosis, hyperkalemia, hyperphosphatemia, hypocalcemia, hypermagnesemia, hyperuricemia',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Hematologic',
            description: 'Anemia (Hb 6–8 g/dL), platelet dysfunction',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Cardiovascular',
            description: 'HT, LVH, HF, arrhythmias',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Pulmonary',
            description: 'Hyperventilation (acidosis response), fluid overload → edema',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Endocrine',
            description: 'Type 2 DM common, secondary hyperparathyroidism, hypertriglyceridemia',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Neurological',
            description: 'Confusion–coma, peripheral sensory neuropathy',
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Anesthetic Management in Renal Failure',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: 'Pre-op',
            description: 'Last dialysis ideally within 24 h',
            subtitle: 'Optimize K⁺, acid-base, hematology',
            additionalInfo: 'If RA planned → coagulation must be assessed',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Intra-op - Monitoring',
            description: 'Arterial catheter (major surgery), NIBP on arm without fistula',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Intra-op - Induction',
            description: 'Propofol/etomidate safe; esmolol for HT control',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Intra-op - Maintenance',
            description: 'Volatile agents, propofol, opioids (except meperidine, morphine)',
            subtitle: 'Muscle relaxants: atracurium/cisatracurium preferred',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Intra-op - Fluid Management',
            description: 'Avoid K⁺- and glucose-containing solutions',
            subtitle: 'Blood loss replaced with PRBCs or colloids',
            additionalInfo: 'Allogeneic transfusion → ↓ rejection risk post-transplant',
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Anesthesia in Mild–Moderate Renal Dysfunction',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: 'Mild (GFR 40–60)',
            description: 'Preserve renal tissue',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Moderate (25–40)',
            description: 'Azotemia + anemia + HT present',
            subtitle: 'Hypovolemia → ↑ postoperative AKI risk',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Monitoring',
            description: 'For major surgery: invasive arterial line, urine output ≥0.5 mL/kg/h',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Induction',
            description: 'Avoid hypovolemia → hypotension worsens renal perfusion',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Maintenance',
            description: 'All agents safe except low-flow sevoflurane',
          ),
          RenalDiseaseAnesthesiaItem(
            title: 'Fluid Therapy',
            description: 'Maintain normovolemia or mild hypervolemia for renal protection',
          ),
        ],
      ),
      RenalDiseaseAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          RenalDiseaseAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'BUN normal: 10–20 mg/dL, 50 mg/dL → dysfunction',
            subtitle: 'Creatinine: Male 0.8–1.3 mg/dL, Female 0.6–1 mg/dL',
            additionalInfo: 'Creatinine clearance: Mild 40–60, Moderate 25–40, Severe <25 mL/min\nBUN/Creatinine ratio: Normal 10–15:1\nRenal failure: Hb 6–8 g/dL, avoid K⁺/glucose fluids\nSafe agents: propofol, etomidate, remifentanil, atracurium/cisatracurium',
          ),
        ],
      ),
    ];
  }
}
