import 'package:flutter/material.dart';

class NeuromuscularDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeuromuscularDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeuromuscularDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<NeuromuscularDiseaseAnesthesiaItem> items;

  NeuromuscularDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeuromuscularDiseaseAnesthesiaData {
  static List<NeuromuscularDiseaseAnesthesiaCategory> getNeuromuscularDiseaseAnesthesiaData(BuildContext context) {
    return [
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Myasthenia Gravis (MG)',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Incidence',
            description: '5–200/1,000,000',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Age/Female–Male',
            description: 'Women 3rd decade, Men 3rd–6th decade',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Pathophysiology',
            description: 'IgG antibodies against nicotinic AChR',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Generalized MG',
            description: '85–90%',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Ocular MG',
            description: '50–70%',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Thymic Disease',
            description: 'Thymoma 10–15%, thymic hyperplasia 70%',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Symptoms',
            description: 'Vary depending on involved muscle group',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Treatment - Pyridostigmine',
            description: 'Anticholinesterase',
            subtitle: 'Oral effect: 2–4 h',
            additionalInfo: 'Overdose → cholinergic crisis',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Edrophonium Test',
            description: 'Worsened weakness → cholinergic crisis',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Anesthesia - Pre-op',
            description: 'Patient must be optimized pre-op',
            subtitle: 'If respiratory/oropharyngeal weakness → IV Ig or plasmapheresis',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Anesthesia - Anticholinesterase Inhibitors',
            description: 'IV dose = 1/30 of oral dose',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Anesthesia - Drug Effects',
            description: 'Ester local anesthetics & Sch → prolonged half-life',
            subtitle: 'Barbiturates/opioids → moderate weakness at usual dose',
            additionalInfo: 'Volatile anesthetic–based GA preferred',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Post-op Ventilation Criteria',
            description: 'MG > 6 years',
            subtitle: 'Pulmonary disease present',
            additionalInfo: 'Peak inspiratory pressure <25 cmH₂O\nVital capacity <4 mL/kg\nPyridostigmine >750 mg/day',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Pregnancy',
            description: 'Worsening in late trimester/postpartum',
            subtitle: 'Epidural may be preferred',
            additionalInfo: 'Maternal MG → neonatal transient MG for 1–3 weeks',
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Paraneoplastic Neuromuscular Syndromes',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Lambert-Eaton Myasthenic Syndrome (LEMS)',
            description: 'Proximal muscle weakness, usually lower limbs',
            subtitle: 'Associated with small cell lung carcinoma',
            additionalInfo: 'Antibodies against voltage-gated Ca channels\nStrength improves with exercise\n3,4-diaminopyridine effective\nLimited effect of anticholinesterase agents',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Limbic Encephalitis',
            description: 'Hallucinations, seizures, autonomic dysfunction, dementia, asymmetric sensory loss',
            subtitle: '60% paraneoplastic (commonly SCLC-related)',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Neuromyotonia',
            description: '"Bag of worms" movements, cramps, hyperhidrosis, hypertrophy',
            subtitle: 'Treatment: plasmapheresis, Ig, anticonvulsants',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Stiff Person Syndrome',
            description: 'Axial + proximal rigidity, paraspinal rigidity → spinal deformity, falls',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Polymyositis',
            description: 'Upper limb weakness, easy fatigability',
            subtitle: '↑ Aspiration/pneumonia risk',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Anesthesia for Paraneoplastic Syndromes',
            description: 'These disorders → ↑ sensitivity to NMBs',
            subtitle: 'Volatile anesthetics facilitate intubation',
            additionalInfo: 'Benzodiazepines, opioids, sedatives → use cautiously',
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Muscular Dystrophies',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Duchenne MD',
            description: 'X-linked recessive, 1–3/10,000, onset 3–5 years',
            subtitle: 'Symmetric proximal weakness, pseudohypertrophy',
            additionalInfo: 'Wheelchair by age 12\nCK ↑ 10–100×\nPulmonary: cough reflex loss, secretions, pneumonia\nCardiac: cardiomyopathy, AF',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Becker MD',
            description: 'Similar to Duchenne but later onset',
            subtitle: 'Respiratory complications → common cause of death',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Myotonic Dystrophy',
            description: 'Autosomal dominant',
            subtitle: 'Slow relaxation after contraction',
            additionalInfo: 'Multisystem: endocrine, GI ↓, cardiac involvement\nPlasma CK: normal/mild ↑',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Facioscapulohumeral MD',
            description: 'Autosomal dominant, asymptomatic in women, onset 2nd–3rd decade',
            subtitle: 'Affects facial + shoulder muscles',
            additionalInfo: 'CK normal',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Limb-Girdle MD',
            description: 'Autosomal recessive, childhood onset',
            subtitle: 'CK normal',
            additionalInfo: 'Frequent hypoventilation + recurrent pneumonia',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Anesthesia - Duchenne/Becker',
            description: 'MH risk, hyperkalemia, ↑ sensitivity to NMBs, cardiac/respiratory complications',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Anesthesia - Myotonic',
            description: 'Post-op shivering/myotonia, avoid premedication',
            subtitle: 'Non-depolarizing NMBs usually normal, reversal agents may worsen contractures',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Anesthesia - Facioscapulohumeral & Limb-Girdle',
            description: 'Usually normal anesthetic response',
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Myotonias',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Congenital/Paramyotonia',
            description: 'AD & AR types',
            subtitle: 'Minimal weakness',
            additionalInfo: 'Serum K⁺ may ↑\nSch → abnormal response; non-depolarizers → spasm\nMyotonia may be triggered intra-op',
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Periodic Paralyses',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Clinical',
            description: 'Attacks of weakness/paralysis',
            subtitle: 'Hypothermia → ↑ frequency of attacks',
            additionalInfo: 'Potassium variable, usually normal',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Anesthesia - Goal',
            description: 'Prevent attacks',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Anesthesia - Monitoring',
            description: 'Frequent plasma K⁺ & ECG monitoring',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Anesthesia - Hypokalemic Form',
            description: 'Glucose-containing fluids dangerous',
            subtitle: '↑ Sensitivity to NMBs',
            additionalInfo: 'Sch contraindicated',
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'Anesthesia - General',
            description: 'Neuromuscular monitoring required',
            subtitle: 'Maintain normothermia, avoid hypothermia',
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Quick Reference – Critical Points',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'MG: Edrophonium test, post-op ventilation criteria (Peak inspiratory <25, VC <4 mL/kg, Pyridostigmine >750 mg/day)',
            subtitle: 'LEMS: strength improves with exercise, limited anticholinesterase effect',
            additionalInfo: 'Duchenne: CK 10–100×, wheelchair by 12\nMyotonic: avoid premedication, NMBs/reversal agents may worsen contractures\nPeriodic paralysis: Sch contraindicated, monitor hypokalemia',
          ),
        ],
      ),
    ];
  }
}
