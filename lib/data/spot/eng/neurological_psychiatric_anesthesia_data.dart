import 'package:flutter/material.dart';

class NeurologicalPsychiatricAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeurologicalPsychiatricAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeurologicalPsychiatricAnesthesiaCategory {
  final String categoryName;
  final List<NeurologicalPsychiatricAnesthesiaItem> items;

  NeurologicalPsychiatricAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeurologicalPsychiatricAnesthesiaData {
  static List<NeurologicalPsychiatricAnesthesiaCategory> getNeurologicalPsychiatricAnesthesiaData(BuildContext context) {
    return [
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Cerebrovascular Disease',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'TIA',
            description: '→ ↑ perioperative stroke risk',
            subtitle: 'Patients with TIA history → elective surgery not performed without Doppler + medical evaluation',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Carotid Stenosis',
            description: '>60% → endarterectomy or stent',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Cervical Bruit',
            description: '40 years → 4% cervical bruit',
            subtitle: 'Asymptomatic bruit → may not ↑ stroke risk, but absence is not safe either',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Risk Factors',
            description: 'Advanced age, CVS disease, known cerebrovascular disease, cardiac surgery',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Pulse Pressure',
            description: '>80 mmHg → endothelial injury risk',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Regional Blood Flow Disorder',
            description: 'Recovery begins at 21 weeks',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'BBB Disruption',
            description: 'Recovery ≥4 weeks',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Pre-op',
            description: 'Stroke type and deficit extent must be evaluated',
            subtitle: 'Thrombotic strokes: elderly + CVS + renal issues common',
            additionalInfo: 'Non-hemorrhagic → long-term warfarin/antiplatelets',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Intra-op',
            description: 'Acute embolism → source-directed management',
            subtitle: 'Occlusive carotid disease → endarterectomy/stent',
            additionalInfo: 'Goal: maintain adequate cerebral perfusion\nAfter thrombotic/hemorrhagic stroke → penumbra must be preserved\nHigh ICP → decompression surgery\nInvasive monitoring recommended for BP control',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Seizure Disorders (Epilepsy)',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Epilepsy',
            description: 'Paroxysmal seizure activity, partial/generalized',
            subtitle: 'Adults → most often structural brain lesion/metabolic disorder',
            additionalInfo: 'Children → may be idiopathic',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Grand Mal',
            description: 'Most risky (aspiration, hypoxia, muscle injury)',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Intra-op Triggers',
            description: 'Low-dose ketamine, methohexital → may trigger seizures',
            subtitle: 'Atracurium, cisatracurium, meperidine metabolites → seizure activity',
            additionalInfo: 'Chronic therapy → hepatic enzyme induction → ↑ IV anesthetic + NMB dose requirement',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Degenerative & Demyelinating Diseases',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Parkinson\'s Disease - Age',
            description: '50–70',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Parkinson\'s Disease - Symptoms',
            description: 'Bradykinesia, rigidity, tremor, postural instability',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Parkinson\'s Disease - Pathophysiology',
            description: 'Dopamine loss + ↑ GABA',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Parkinson\'s Disease - Treatment',
            description: 'Levodopa/dopamine agonists',
            subtitle: 'MAO inhibitors: selegiline, rasagiline',
            additionalInfo: 'Anticholinergics: trihexyphenidyl, benztropine\nAmantadine',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Parkinson\'s Disease - Side Effects',
            description: 'Nausea, dyskinesia, orthostatic hypotension, sudden sleep attacks',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Parkinson\'s Disease - Anesthesia',
            description: 'Levodopa should be given on the morning of surgery',
            subtitle: 'Abrupt withdrawal → rigidity',
            additionalInfo: 'Phenothiazines, butyrophenones, metoclopramide worsen symptoms\nDiphenhydramine may be used as premedication\nLong-term levodopa → severe bradycardia/hypotension at induction\nHypotension treatment → direct-acting agent (phenylephrine)',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Alzheimer\'s Disease - Prevalence',
            description: '20% at age 80',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Alzheimer\'s Disease - Clinical',
            description: 'Memory loss → aphasia/apraxia',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Alzheimer\'s Disease - Pathology',
            description: 'β-amyloid + tau → neurofibrillary tangles',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Alzheimer\'s Disease - Pre-op',
            description: 'Evaluation difficult (disorientation)',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Alzheimer\'s Disease - Post-op',
            description: 'New cognitive dysfunction frequent, may last 1–3 days',
            subtitle: 'Premedication usually avoided; if used, central atropine/scopolamine not given',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Multiple Sclerosis (MS)',
            description: 'Female, 20–40 years, post-viral, progressive',
            subtitle: 'Symptoms: sensory loss, visual problems, motor weakness',
            additionalInfo: 'Treatment: spasticity → diazepam/baclofen; relapse → steroids\nElective surgery avoided during relapse\nSpinal anesthesia may ↑ relapse risk\nSuccinylcholine contraindicated (risk of hyperkalemia)\nFever may trigger relapse\nEpidural considered safe',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'ALS (Amyotrophic Lateral Sclerosis)',
            description: 'Onset: 50–60 years, bulbar + skeletal muscle involvement in 2–3 years',
            subtitle: 'Succinylcholine contraindicated',
            additionalInfo: 'Weaning from mechanical ventilation may be difficult',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Guillain–Barré Syndrome (GBS)',
            description: 'Clinical: ascending paralysis, areflexia, paresthesia',
            subtitle: 'Acute inflammatory demyelinating polyneuropathy',
            additionalInfo: 'Succinylcholine contraindicated\nImmunological (post-viral, lymphoma-related)\nHypo/hypertensive responses exaggerated\nNeuraxial block → caution (double injury risk)',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Autonomic Dysfunction',
            description: 'Clinical: orthostatic hypotension, GI/bladder dysfunction, anhidrosis',
            subtitle: 'Major risk: severe hypotension',
            additionalInfo: 'Often hypovolemic\nMonitor: invasive arterial BP\nVasopressor: direct-acting agents\nAnhidrosis → beware of hyperpyrexia',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Syringomyelia',
            description: 'Spinal cord cavitation; often with Arnold–Chiari',
            subtitle: 'Pulmonary complications should be assessed',
            additionalInfo: 'If ↑ ICP present → neuraxial block contraindicated\nCases with epidural analgesia for labor have been reported',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Spinal Cord Injury',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Above C3–5',
            description: '→ respiratory support required',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Above T1',
            description: '→ quadriplegia',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Above L4',
            description: '→ paraplegia',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Common Sites',
            description: 'C5–6, T12–L1',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'After Acute Transection',
            description: 'Spinal shock 1–3 weeks (flaccid paralysis, reflex loss)',
            subtitle: 'Reflexes return weeks later → muscle spasm, ↑ sympathetic activity',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Acute Transection - Management',
            description: 'High-dose steroids in first 24 h',
            subtitle: 'Succinylcholine safe in first 24 h; later → hyperkalemia risk',
            additionalInfo: 'Invasive BP monitoring essential',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Chronic Transection',
            description: 'Above T6 → hyperreflexia',
            subtitle: 'GA/regional prevents hyperreflexia',
            additionalInfo: 'Direct-acting vasodilators should be ready\nAbove T1 → hypothermia risk; monitor temperature',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Psychiatric Disorders',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Depression - Tricyclic Antidepressants (TCA)',
            description: 'Block catecholamine/serotonin reuptake',
            subtitle: 'Continued perioperatively',
            additionalInfo: 'Deep anesthesia may be required\nExaggerated response to indirect vasopressors + sympathetic stimulation\nAvoid: pancuronium, ketamine, meperidine, epinephrine-containing LA',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Depression - MAO Inhibitors',
            description: 'MAO-A: serotonin, DA, NE (depression)',
            subtitle: 'MAO-B: DA, phenylethylamine (Parkinson\'s)',
            additionalInfo: 'Previously discontinued 2 weeks before; now not mandatory\nMeperidine + MAOI → hyperthermia, seizures, coma\nVasopressor: direct-acting agent',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Depression - SSRIs/Atypical Antidepressants',
            description: 'Minimal anticholinergic side effects',
            subtitle: 'Serotonin syndrome: agitation, HT, hyperthermia, tremor, acidosis, autonomic instability → especially with drug combinations',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Bipolar Disorder - Lithium',
            description: 'Therapeutic range 0.8–1 mEq/L',
            subtitle: 'Side effects: EKG T-wave changes, DI, hypothyroidism',
            additionalInfo: 'High dose: confusion, tremor, AV block, hypotension, seizures\nLithium → ↓ MAC, ↑ NMB duration\nHyponatremia → ↓ lithium clearance → toxicity',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Schizophrenia',
            description: 'Old antipsychotics → strong D₂ antagonists → extrapyramidal side effects',
            subtitle: 'Side effects: orthostatic hypotension, dystonia, tardive dyskinesia',
            additionalInfo: 'Clozapine → agranulocytosis risk\nTherapy should be continued',
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'Neuroleptic Malignant Syndrome (NMS)',
            description: 'Occurs hours–weeks after antipsychotics',
            subtitle: 'Triggers: meperidine, metoclopramide',
            additionalInfo: 'Clinical: rigidity, hyperthermia, rhabdomyolysis, autonomic instability, altered consciousness\nCK ↑\nMortality: 30–40%\nTreatment: dantrolene + bromocriptine',
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Quick Reference – Critical Numbers',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Carotid stenosis >60% → surgery/endovascular',
            subtitle: 'Pulse pressure >80 mmHg → risky',
            additionalInfo: 'Regional circulation recovery: 21 weeks\nBBB recovery: ≥4 weeks\nParkinson\'s: age 50–70\nAlzheimer\'s: 20% at >80 years\nMS: women 20–40 years, Sch contraindicated\nALS/GBS: Sch contraindicated\nLithium therapeutic range: 0.8–1 mEq/L\nNMS mortality: 30–40%',
          ),
        ],
      ),
    ];
  }
}
