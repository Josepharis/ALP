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
  static List<NeuromuscularDiseaseAnesthesiaCategory>
      getNeuromuscularDiseaseAnesthesiaData(BuildContext context) {
    return [
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Myasthenia Gravis (MG)',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: "MG INCIDENCE AND DEMOGRAPHIC CHARACTERISTICS",
            description: "Myasthenia Gravis is a chronic disease presenting with autoantibodies developed against nicotinic acetylcholine receptors (AChR) at the neuromuscular junction.",
            subtitle: "It peaks in women usually in their 20s (3rd decade), and in men between 30-60 years old (3-6th decade)",
            additionalInfo: "The pathophysiology of the disease is characterized by progressive weakness in muscles as a result of the destruction of ACh receptors.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "MG CLINICAL TYPES AND INVOLVEMENT RATES",
            description: "While the vast majority of MG patients (85-90%) follow the general type, a part remains limited only to eye muscles (50-70% ocular).",
            additionalInfo: "A part of patients with ocular MG can turn into the general MG form over time.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "THYMIC DISEASE AND THYMOMA RELATIONSHIP",
            description: "Thymic hyperplasia is detected in 70% of MG patients, and thymoma (thymus tumor) in 10-15%.",
            additionalInfo: "Surgical removal of the thymus (thymectomy) holds an important place in the surgical treatment of the disease by lowering antibody levels.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "MUSCLE GROUP INVOLVEMENT AND CLINICAL SYMPTOMS",
            description: "Although symptoms vary according to the involved muscle group; ptosis, diplopia, and difficulty chewing are the most common initial symptoms.",
            additionalInfo: "As involvement progresses, weakness in extremities and respiratory muscle failure, which is the most dangerous, can develop.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "PYRIDOSTIGMINE TREATMENT AND DURATION OF EFFECT",
            description: "The oral effect of pyridostigmine, an anticholinesterase used in the basic medical treatment of MG, lasts 2–4 hours.",
            subtitle: "Increasing the drug dose more than necessary can lead to 'cholinergic crisis' picture",
            additionalInfo: "Adjustment of doses aims to maximize muscle strength while keeping side effects at minimum.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "EDROPHONIUM (TENSILON) TEST AND CRISIS DIFFERENTIATION",
            description: "The ultra short-acting edrophonium test is used to differentiate between myasthenic crisis and cholinergic crisis.",
            subtitle: "If muscle weakness increases after edrophonium, it is a cholinergic crisis and indicates excess drug dose",
            additionalInfo: "Seeing improvement in muscle strength during the test confirms myasthenic crisis (drug inadequacy).",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "PREOPERATIVE PREPARATION AND PLASMAPHERESIS NEED",
            description: "Patients with MG must absolutely be in optimum clinical condition before surgery, and their respiratory capacities must be clarified.",
            subtitle: "Preparation with IV Ig or plasmapheresis may be required in patients with severe respiratory or oropharyngeal muscle weakness",
            additionalInfo: "The goal is to minimize postoperative mechanical ventilation need.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "IV DOSAGE IN CHOLINESTERASE INHIBITORS",
            description: "In patients whose oral intake is stopped before surgery, 1/30 of the current dose can be maintained via intravenous (IV) route.",
            additionalInfo: "The patient's response should be closely monitored clinically while the dose conversion is made.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "ESTER TYPE LOCAL ANESTHETICS AND SCH EFFECT",
            description: "Cholinesterase inhibitors significantly prolong the half-life of ester type local anesthetics and succinylcholine (Sch) by also suppressing plasma cholinesterase.",
            additionalInfo: "In this case, clinical effect of Sch can last much longer; neuromuscular monitoring is a must.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "BARBITURATE AND OPIOID USE",
            description: "Even barbiturates and opioids in moderate doses can lead to respiratory depression by deepening muscle weakness in MG patients.",
            additionalInfo: "Very careful dose adjustment should be made while these agents are used and the patient should be closely followed for respiration.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "GENERAL ANESTHESIA PREFERENCE WITH VOLATILE ANESTHETICS",
            description: "In MG cases, general anesthesia maintained with volatile anesthetic agents is usually the preferred method as it minimizes the use of muscle relaxants.",
            additionalInfo: "Volatile agents themselves provide some degree of neuromuscular blockade, which can offer adequate relaxation for intubation.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "POSTOPERATIVE MECHANICAL VENTILATION CRITERIA (MG >6 YEARS)",
            description: "It can be difficult to wean patients with a duration of myasthenia gravis longer than 6 years from the ventilator after surgery.",
            subtitle: "In case of accompanying lung disease, the risk doubles",
            additionalInfo: "Peak inspiratory pressure being below 25 cmH2O is also a criterion showing difficulty in weaning.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "RESPIRATORY VENTILATION CRITERIA (VC <4 ML/KG)",
            description: "The patient's vital capacity (VC) being below 4 mL/kg or daily pyridostigmine requirement exceeding 750 mg increases ventilation need.",
            additionalInfo: "These parameters are helpful in determining how long the patient should stay in intensive care after surgery.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "PREGNANCY AND NEONATAL MYASTHENIA GRAVIS",
            description: "Late trimester and postpartum (after birth) phases are the periods where clinical worsening is most commonly seen in pregnant women with MG.",
            subtitle: "Epidural anesthesia can be safely preferred for pain control and stress minimization",
            additionalInfo: "Due to antibodies passing from mothers, transient 'neonatal MG' picture lasting the first 1–3 weeks can develop in 12-20% of born babies.",
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Paraneoplastic Neuromuscular Syndromes',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: "LAMBERT-EATON MYASTHENIC SYNDROME (LEMS)",
            description: "In this syndrome, usually associated with Small Cell Lung Cancer, the main finding is proximal muscle (especially lower extremity) weakness.",
            subtitle: "In pathophysiology, antibody development against voltage-gated Calcium channels is in question",
            additionalInfo: "Inadequacy of ACh release creates a typical presynaptic disorder.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "LEMS CLINICAL FEATURES AND TREATMENT RESPONSE",
            description: "Unlike MG, muscle strength tends to improve, even if temporarily, with effort and activity in LEMS patients.",
            subtitle: "The effect of anticholinesterases (pyridostigmine) is very limited in these patients",
            additionalInfo: "Agents increase ACh release like 3–4 diaminopyridine give more effective results in treatment.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "LIMBIC ENCEPHALITIS AND PARANEOPLASTIC RELATIONSHIP",
            description: "60% of this picture presenting with hallucinations, seizures, autonomic dysfunction, and dementia is of paraneoplastic origin.",
            subtitle: "It is frequently associated with small cell lung cancer (SCLC)",
            additionalInfo: "Asymmetric sensory loss can be an important additional diagnostic finding.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "NEUROMYOTONIA (BAG OF WORMS) SYMPTOMS",
            description: "It is a condition characterized by continuous and involuntary muscle movements in 'bag of worms' appearance and cramps.",
            subtitle: "Hyperhidrosis (excessive sweating) and muscle hypertrophy are important accompanying clinical indicators",
            additionalInfo: "Plasmapheresis, IV Ig, and anticonvulsant drugs (phenytoin, carbamazepine) are used in its treatment.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "STIFF PERSON SYNDROME AND RIGIDITY",
            description: "It is a rare syndrome resulting in spinal deformities and frequent falls due to excessive rigidity developing in trunk and proximal extremity muscles.",
            additionalInfo: "Particularly rigidity of paraspinal muscles causes the back to be hard as a board.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "POLYMYOSITIS AND ASPIRATION RISK",
            description: "It is an inflammatory muscle disease presenting with muscle weakness and easy fatigability more prominent in upper extremities.",
            subtitle: "The risk of aspiration pneumonia is significantly high due to the involvement of swallowing muscles",
            additionalInfo: "General exhaustion and muscle pains accompany the clinical picture in patients.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "ANESTHESIA APPROACH IN PARANEOPLASTIC SYNDROMES",
            description: "All patients in this group are extremely sensitive to neuromuscular blockers (NMB); attention should be paid to the dose.",
            subtitle: "The muscle relaxant effect of volatile anesthetics can be used to facilitate intubation",
            additionalInfo: "One should be alert against respiratory failure that can deepen during the use of benzodiazepines, opioids, and other sedatives.",
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Muscular Dystrophies',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: "DUCHENNE MUSCULAR DYSTROPHY (DMD) AND ONSET",
            description: "DMD, which is X-linked recessive, emerges between 3-5 years of age in approximately 1-3 out of every 10,000 male children.",
            subtitle: "Symmetric proximal muscle weakness and pseudohypertrophy (false swelling particularly in calves) are characteristic",
            additionalInfo: "The disease progresses rapidly and children usually become wheelchair-dependent by age 12.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "DUCHENNE LABORATORY FINDINGS (CK INCREASE)",
            description: "Creatine Kinase (CK) levels, the clearest indicator of muscle damage in DMD patients, can rise up to 10–100 times normal.",
            additionalInfo: "These high levels indicate that the disease is in a very active and destructive phase.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "DUCHENNE PULMONARY COMPLICATIONS",
            description: "Recurrent pneumonias as a result of loss of coughing reflex and accumulation of secretions are the most dangerous respiratory crises.",
            additionalInfo: "Weakening of respiratory muscles over time makes mechanical ventilation need inevitable.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "DUCHENNE CARDIAC INVOLVEMENT AND HCMP",
            description: "Hypertrophic Cardiomyopathy (HCMP) and arrhythmias such as atrial fibrillation (AF) are observed in a large part of patients with DMD.",
            additionalInfo: "Cardiac failure is one of the main factors determining life expectancy in these patients.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "BECKER MUSCULAR DYSTROPHY",
            description: "While exhibiting a Duchenne-like picture, it starts at a later age and its clinical course is slower.",
            subtitle: "Cause of death is frequently respiratory complications",
            additionalInfo: "It is a more benign picture compared to DMD thanks to partial production of dystrophin protein.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "MYOTONIC DYSTROPHY AND MULTISYSTEMIC INVOLVEMENT",
            description: "In this autosomal dominant disease, very slow relaxation after muscle contraction is characteristic.",
            subtitle: "It is a multisystemic disease affecting not only muscles but also the endocrine system, GI movements, and the heart",
            additionalInfo: "It is one of the most commonly seen muscular dystrophy types and leads to multiendocrinopathies.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "MYOTONIC DYSTROPHY LABORATORY FOLLOW-UP",
            description: "Plasma CK levels are usually normal or show a very slight increase in patients with myotonic dystrophy.",
            additionalInfo: "This situation can help in differentiation from destructive dystrophies like DMD/Becker.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "FACIOSCAPULOHUMERAL DYSTROPHY",
            description: "It is an autosomal dominant disease affecting facial and shoulder muscles, usually starting in the 2nd or 3rd decade.",
            subtitle: "Women can frequently be asymptomatic carriers; CK level is usually normal",
            additionalInfo: "Loss of facial expressions (mask face) and shoulder girdle weakness is typical physical finding.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "LIMB-GIRDLE DYSTROPHY",
            description: "It is an autosomal recessive disease starting in childhood; affects shoulder and hip girdle muscles primarily.",
            subtitle: "Hypoventilation and recurrent pneumonia attacks are an important part of clinical course",
            additionalInfo: "Normal CK level in the laboratory is distinctive in diagnosis.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "ANESTHESIA RISKS IN DUCHENNE/BECKER PATIENTS",
            description: "Risk of Malignant Hyperthermia (MH) and sudden fatal hyperkalemia after Succinylcholine is extremely high in these patients.",
            subtitle: "They are also prone to extreme sensitivity to NMB and deep cardiopulmonary complications",
            additionalInfo: "Anesthesia plan should be conducted very meticulously as if there is suspicion of MH.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "ANESTHESIA AND REVERSAL AGENTS IN MYOTONIC DYSTROPHY",
            description: "Patients should be monitored very closely to avoid shivering or myotonic spasms in the postoperative period.",
            subtitle: "Reversal agents (neostigmine etc.) reversing NMB can paradoxically trigger myotonic contractions",
            additionalInfo: "Heavy premedication should be avoided due to respiratory depression risk.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "ANESTHESIA RESPONSE IN OTHER DYSTROPHIES",
            description: "Response to anesthesia in Facioscapulohumeral and Limb-girdle dystrophies is usually close to the normal population.",
            additionalInfo: "Nevertheless, patients' pre-operative pulmonary reserves should be clarified.",
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Myotonias',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: "CONGENITA AND PARAMYOTONIA CHARACTERISTICS",
            description: "Although muscle weakness is minimal, it is characterized by myotonic attacks triggered by cold and effort.",
            subtitle: "Serum potassium levels can rise during attacks (hyperkalemic type)",
            additionalInfo: "Autosomal dominant or recessive types exist; results from ion channel defects.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "NMB RESPONSE AND MYOTONIC EXACERBATION",
            description: "Use of Succinylcholine can lead to abnormal and severe myotonic responses in these patients.",
            subtitle: "Non-depolarizing relaxants can sometimes trigger spasm; myotonia can suddenly exacerbate during operation",
            additionalInfo: "Keeping warm and calcium blockers can help in myotonic crisis management.",
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Periodic Paralyses',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: "PERIODIC PARALYSIS GENERAL CHARACTERISTICS",
            description: "These are ion channel diseases presenting with sudden emerging muscle weakness and paralysis attacks.",
            subtitle: "Hypothermia and excessive carbohydrate consumption can severely trigger attacks",
            additionalInfo: "Outside of attacks, patients' potassium values are usually within normal limits.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "MAIN GOAL OF ANESTHESIA: PREVENTING ATTACKS",
            description: "The biggest goal in perioperative management is to prevent the patient from entering a paralysis attack with operation stress or heat loss.",
            additionalInfo: "The electrolyte balance (K+, Ca++, Na+) of patients should be perfected before surgery.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "INTRAOPERATIVE K+ AND ECG MONITORING",
            description: "Frequent blood gas and ECG follow-up is a must to catch fluctuations in potassium levels (hypokalemia/hyperkalemia).",
            additionalInfo: "Neuromuscular monitoring also occupies a critical role for relaxant need.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "FLUID MANAGEMENT AND GLUCOSE LIMITATION",
            description: "In the hypokalemic type, glucose-containing fluids increase insulin release, driving potassium into the cell and triggering the attack; therefore should be avoided.",
            additionalInfo: "Ideal is use of sodium lactate or plain 0.9% NaCl.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "NMB SENSITIVITY IN PERIODIC PARALYSIS",
            description: "Extreme sensitivity to neuromuscular blockers is in question, particularly in the hypokalemic type; Succinylcholine is CERTAINLY contraindicated.",
            additionalInfo: "Relaxant doses should be kept minimal and every dose effect should be monitored.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "HEAT CONTROL AND AVOIDING HYPOTHERMIA",
            description: "The patient's temperature should be kept constant around 36.5°C throughout the operation; heat loss is the strongest trigger of attacks.",
            additionalInfo: "Heated blankets and fluid warmers should be used routinely.",
          ),
        ],
      ),
      NeuromuscularDiseaseAnesthesiaCategory(
        categoryName: 'Critical Points / Quick Reminder',
        items: [
          NeuromuscularDiseaseAnesthesiaItem(
            title: "MG CRITICAL VENTILATION PARAMETERS",
            description: "Post-op ventilation risks: MG > 6 years, VC < 4 mL/kg, Pyridostigmine > 750 mg/day, and Peak Inspiratory Pressure < 25 cmH2O.",
            additionalInfo: "If these values exist, intensive care preparation of the patient should be made beforehand.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "LEMS AND EFFORT RELATIONSHIP",
            description: "Muscle strength improves with effort in Lambert-Eaton patients, and response to anticholinesterase treatment is quite limited.",
            additionalInfo: "It is clinically differentiated from classic MG with this feature.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "DUCHENNE AND CK LEVELS",
            description: "CK levels rise 10-100 times normal in DMD; these patients typically become wheelchair-dependent around age 12.",
            additionalInfo: "Creatine kinase follow-up is an activity marker of the disease.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "MYOTONIC DYSTROPHY AND PREMEDICATION",
            description: "One should avoid premedication in these patients, and should not forget that reversal agents can increase contractions.",
            additionalInfo: "Respiratory depression risk is very delicate.",
          ),
          NeuromuscularDiseaseAnesthesiaItem(
            title: "PERIODIC PARALYSIS AND POTASSIUM MONITORING",
            description: "Hypothermia triggers attacks, Succinylcholine is contraindicated, and frequent potassium follow-up is vital.",
            additionalInfo: "Body temperature must be maintained.",
          ),
        ],
      ),
    ];
  }
}
