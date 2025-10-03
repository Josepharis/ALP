import 'package:flutter/material.dart';

class OphthalmicSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OphthalmicSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OphthalmicSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<OphthalmicSurgeryAnesthesiaItem> items;

  OphthalmicSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class OphthalmicSurgeryAnesthesiaData {
  static List<OphthalmicSurgeryAnesthesiaCategory> getOphthalmicSurgeryAnesthesiaData(BuildContext context) {
    return [
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Intraocular Pressure (IOP) Dynamics',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Normal IOP',
            description: '12–20 mmHg',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Blinking Effect',
            description: '+5 mmHg',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Squinting Effect',
            description: 'Up to +50 mmHg',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Volatile Agents',
            description: '↓ IOP (lower BP + extraocular muscle relaxation)',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'IV Agents',
            description: 'Except ketamine → ↓ IOP',
            subtitle: 'Ketamine → ↑ IOP (use with caution)',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Succinylcholine',
            description: '+5–10 mmHg for 5–10 min',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Non-depolarizing NMBs',
            description: 'No effect on IOP',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Topical Anticholinergics',
            description: 'Atropine drops → mydriasis → may trigger angle-closure glaucoma',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Systemic Anticholinergics',
            description: 'Atropine/glycopyrrolate → not associated with ↑ IOP',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Oculocardiac Reflex (OCR)',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Mechanism',
            description: 'Trigeminal (V1) afferent → vagal efferent',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Most Common In',
            description: 'Pediatric strabismus surgery',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Clinical Manifestations',
            description: 'Bradycardia, AV block, asystole, arrhythmias',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Prevention',
            description: 'Anticholinergic premedication (atropine/glycopyrrolate), deep anesthesia, retrobulbar block',
            subtitle: 'Retrobulbar block itself may trigger OCR',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Management Steps',
            description: 'Stop surgical manipulation',
            subtitle: 'Ensure ventilation + oxygenation',
            additionalInfo: 'Atropine 10 mcg/kg IV\nResistant cases → local anesthetic injection into rectus muscle',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Intraocular Gas Expansion',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Use',
            description: 'Retinal/vitreous surgery',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Mechanism',
            description: 'N₂O diffuses into bubble → expansion → ↑ IOP',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Volume Expansion',
            description: 'With 70% N₂O → bubble volume triples within 30 min',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Timing',
            description: 'N₂O must be stopped ≥15 min before air injection',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Post-op Considerations',
            description: 'Contraindicated postop until gas is absorbed',
            subtitle: 'Risk of retinal detachment → caution',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Systemic Effects of Ophthalmic Drugs',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Phenylephrine (2.5%)',
            description: 'HT, tachycardia, arrhythmia in children/elderly',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Echothiophate',
            description: 'Irreversible cholinesterase inhibitor → prolongs succinylcholine t½ (3–7 weeks)',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Epinephrine Drops',
            description: 'HT, tachycardia, dysrhythmia (systemic absorption)',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Timolol',
            description: '↓ IOP but systemic absorption → bradycardia, AV block',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'General Anesthesia for Ophthalmic Surgery',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Premedication',
            description: 'Consider age + comorbidities',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Induction',
            description: 'Deep anesthesia during intubation → prevents IOP rise',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Succinylcholine in Open-globe Surgery',
            description: 'Controversial; vitreous loss not proven',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Monitoring',
            description: 'ECG (for OCR)',
            subtitle: 'End-tidal CO₂ (differentiate from MH)',
            additionalInfo: 'Temperature',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Maintenance',
            description: 'Volatile agents, opioids, sufficient NMB to prevent eye movement',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'PONV Prophylaxis',
            description: 'Ondansetron/granisetron (5-HT3 antagonists) ± dexamethasone (8–10 mg)',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Extubation',
            description: 'At intermediate depth → avoids coughing/straining',
            subtitle: 'Lidocaine 1.5 mg/kg IV 1–2 min before extubation may help',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Regional Anesthesia for Ophthalmic Surgery',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Retrobulbar Block - Technique',
            description: 'Lower eyelid, lateral 1/3 → 25G needle 3.5 cm → 2–5 mL LA',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Retrobulbar Block - LA',
            description: '2% lidocaine, 0.75% bupivacaine',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Retrobulbar Block - Success',
            description: 'Akinesia + OCR abolished',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Retrobulbar Block - Complications',
            description: 'Nerve injury, seizures, intravascular injection, apnea (onset 20 min, recovery ~1 h)',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Retrobulbar Block - Contraindications',
            description: 'Coagulopathy, high myopia, open-globe injury',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Peribulbar Block',
            description: 'Safer (↓ risk of optic nerve/artery injury)',
            subtitle: 'Disadvantage: slower onset',
            additionalInfo: 'Applied along lateral canthus–limbus line',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Sub-Tenon (Episcleral) Block',
            description: 'LA into sub-Tenon space',
            subtitle: 'Lower complication risk',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Facial Nerve Block',
            description: 'Prevents eyelid movement',
            subtitle: 'Nadbath technique: may block glossopharyngeal + vagus → airway risk',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'Topical Anesthesia',
            description: 'For superficial procedures (e.g., cataract)',
          ),
          OphthalmicSurgeryAnesthesiaItem(
            title: 'IV Sedation',
            description: 'Deep sedation not recommended',
            subtitle: 'Light sedation: midazolam 1–2 mg + low-dose opioid ± propofol/etomidate',
          ),
        ],
      ),
      OphthalmicSurgeryAnesthesiaCategory(
        categoryName: 'Key Exam Spots',
        items: [
          OphthalmicSurgeryAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Normal IOP: 12–20 mmHg',
            subtitle: 'Succinylcholine → +5–10 mmHg for 5–10 min',
            additionalInfo: 'OCR: Trigeminal (V1) afferent → vagal efferent\nN₂O with 70% → bubble volume triples within 30 min\nEchothiophate → prolongs succinylcholine t½ (3–7 weeks)\nRetrobulbar block: 25G needle 3.5 cm → 2–5 mL LA',
          ),
        ],
      ),
    ];
  }
}
