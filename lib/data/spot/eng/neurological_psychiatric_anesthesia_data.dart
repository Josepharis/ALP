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
  static List<NeurologicalPsychiatricAnesthesiaCategory>
      getNeurologicalPsychiatricAnesthesiaData(BuildContext context) {
    return [
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Cerebrovascular Disease',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "TIA AND PERIOPERATIVE STROKE RISK",
            description: "Perioperative stroke risk is significantly higher in patients with a history of Transient Ischemic Attack (TIA).",
            subtitle: "Patients with a TIA history should not be taken for elective surgery without Doppler Ultrasound and comprehensive medical evaluation",
            additionalInfo: "These attacks are the most important clinical pre-indicators that the brain's ischemic threshold is low and the vascular structure is fragile.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "CAROTID STENOSIS AND SURGICAL INDICATION",
            description: "In cases where narrowing of more than 60% is detected in the carotid artery, endarterectomy or stenting is surgically prioritized.",
            subtitle: "A cervical bruit can be heard in 4 out of every 100 patients over the age of 40",
            additionalInfo: "While the presence of an asymptomatic bruit does not always increase the risk of stroke, the absence of a bruit does not provide absolute safety; detailed imaging is essential.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "FACTORS INCREASING PERIOPERATIVE STROKE RISK",
            description: "Advanced age, known CVS (Cardiovascular System) diseases, and past cerebrovascular events are the primary risk factors.",
            subtitle: "A pulse pressure above 80 mmHg indicates risk of endothelial damage and increased vascular risk",
            additionalInfo: "Cardiac surgeries and major vascular operations are particularly those where the stroke risk reaches its peak.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "CEREBRAL RECOVERY AND HEALING TIMES",
            description: "Recovery of regional blood flow disorders in brain tissue can take approximately 21 weeks (around 5 months).",
            subtitle: "At least 4 weeks are required for the restoration of Blood-Brain Barrier (BBB) integrity",
            additionalInfo: "These times provide a physiological basis for how long elective operations should be postponed after a past stroke.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "PREOPERATIVE NEUROLOGICAL EVALUATION",
            description: "The stroke type, affected area, and extent of current neurological deficits should be clarified before the operation.",
            subtitle: "In thrombotic strokes, it is common for patients to be elderly and carry renal/heart problems along with it",
            additionalInfo: "It should not be forgotten that patients are usually under long-term warfarin or antiplatelet therapy in non-hemorrhagic strokes.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "INTRAOPERATIVE EMBOLISM AND PERFUSION APPROACH",
            description: "An emergency strategy should be determined for the source of the focus (heart, carotid, etc.) in acute embolisms developing during surgery.",
            subtitle: "Carotid endarterectomy or stenting option is evaluated when occlusive carotid disease is detected",
            additionalInfo: "The primary goal of the anesthesiologist is to provide adequate cerebral perfusion pressure within autoregulation limits.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "STRATEGY AFTER THROMBOTIC AND HEMORRHAGIC STROKE",
            description: "The main goal in the elective surgery plan is the protection of the 'penumbra' (risky tissue) area around the ischemic field.",
            subtitle: "If intracranial pressure (ICP) is high, decompression surgery can be included in the planning",
            additionalInfo: "Intraoperative invasive monitoring is strongly recommended for blood pressure control and delicate management of cerebral perfusion.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Seizure Disorders (Epilepsy)',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "EPILEPSY DEFINITION AND CLINICAL CLASSIFICATION",
            description: "Epilepsy consists of partial or generalized seizures developing as a result of paroxysmal (sudden) excessive activity of neurons in the brain.",
            subtitle: "The most common reason underlying seizures in adults is structural brain lesions or metabolic disorders",
            additionalInfo: "Childhood seizures can frequently be idiopathic (unknown cause) and show a tendency to improve with age.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "GRAND MAL SEIZURE AND VITAL RISKS",
            description: "Generalized tonic-clonic (Grand Mal) seizures are the most risky group due to aspiration, hypoxia, and severe muscle damage.",
            additionalInfo: "Severe contractions that can develop during a seizure can lead to kidney damage due to lactic acidosis and myoglobinuria in the patient.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "SEIZURE TRIGGERING ANESTHETIC AGENTS",
            description: "Some anesthetic drugs and their metabolites can trigger attacks by stimulating seizure foci.",
            subtitle: "Low-dose ketamine and methohexital are risky agents that can activate seizure foci",
            additionalInfo: "Furthermore, 'laudanosine', the metabolite of atracurium and cisatracurium, and meperidine metabolites (normeperidine) can cause seizure activity in high doses.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "ANESTHESIA EFFECT OF CHRONIC EPILEPSY TREATMENT",
            description: "Long-term antiepileptic use increases anesthetic drug requirements by leading to liver enzyme induction.",
            additionalInfo: "In these patients, the durations of effect of intravenous anesthetics and neuromuscular blockers (NMB) are shortened and higher dose needs arise.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Parkinson\'s Disease',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "PARKINSON\'S CLINICAL FINDINGS AND PATHOPHYSIOLOGY",
            description: "Parkinson\'s, usually beginning in the 50–70 age range, is a degenerative disease characterized by dopamine loss and GABA increase.",
            subtitle: "Core symptoms: bradykinesia (slowing), rigidity (stiffness), tremor (shaking), and postural instability",
            additionalInfo: "Dopaminergic neuron loss in the nigrostriatal pathway leads to impairment of movement control.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "PHARMACOLOGICAL TREATMENT AND DRUG GROUPS",
            description: "The main goal in treatment is to maintain the dopamine level in the central nervous system or to support it with agonists.",
            subtitle: "Levodopa and dopamine agonists are the cornerstone of treatment; MAO inhibitors such as Selegiline and Rasagiline are also used",
            additionalInfo: "Agents like anticholinergics (Trihexyphenidyl, Benztropine) and Amantadine also help in alleviating symptoms.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "DOPAMINERGIC TREATMENT SIDE EFFECTS",
            description: "Parkinson drugs can lead to nausea, dyskinesia (involuntary movement), and severe orthostatic hypotension in systemic circulation.",
            additionalInfo: "Sudden sleep attacks and hallucinations that can emerge with the effect of the drugs can complicate perioperative management.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "ANESTHESIA APPROACH AND LEVODOPA MANAGEMENT",
            description: "Parkinson drugs, especially Levodopa, must be given UNINTERRUPTED, including the morning of the operation.",
            subtitle: "Sudden withdrawal of medications can lead to severe skeletal muscle rigidity and respiratory distress",
            additionalInfo: "Phenothiazine group drugs, butyrophenones, and metoclopramide block dopamine receptors and worsen Parkinson symptoms; their use should be avoided.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "THE ROLE OF DIPHENHYDRAMINE IN PREMEDICATION",
            description: "Diphenhydramine can be preferred in premedication to alleviate Parkinson tremor thanks to its central anticholinergic effects.",
            additionalInfo: "Providing both sedation and tremor control increases patient comfort before surgery.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "LONG-TERM LEVODOPA AND HEMODYNAMIC RESPONSES",
            description: "Chronic Levodopa use sets the stage for severe bradycardia and deep hypotension responses during anesthesia induction.",
            subtitle: "Intervention should be made with direct-acting vasopressor agents like phenylephrine when hypotension develops",
            additionalInfo: "Indirect-acting agents (like ephedrine) can give unexpected responses due to imbalance in the dopaminergic system.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Alzheimer\'s Disease',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "AD PREVALENCE AND AGE RELATIONSHIP",
            description: "Alzheimer\'s disease, the most common cause of dementia, is seen at a high rate of 20% in the population over 80 years old.",
            additionalInfo: "With the increase of the elderly surgical population, the role of anesthesiologists in Alzheimer\'s management has become critical.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "ALZHEIMER\'S CLINICAL COURSE AND PATHOLOGY",
            description: "The process starting with memory loss progresses with aphasia (speech disorder) and apraxia (loss of skill).",
            subtitle: "Beta-amyloid accumulation and neurofibrillary tangles caused by tau protein are characteristic in pathology",
            additionalInfo: "Neuronal loss and decrease in acetylcholine levels are responsible for the collapse of cognitive functions.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "PREOPERATIVE EVALUATION DIFFICULTIES",
            description: "Pre-operative history and physical examination are quite difficult due to the patient's disorientation and difficulty in cooperation.",
            additionalInfo: "Detailed information should be obtained from relatives and the patient's basal cognitive level should be clearly documented.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "POSTOPERATIVE COGNITIVE FUNCTIONS AND DELIRIUM",
            description: "Development of new cognitive disorders and delirium after surgery is very common in Alzheimer patients.",
            subtitle: "Premedication is usually not given; if to be given, central-acting anticholinergics (Atropine/Scopolamine) should be avoided",
            additionalInfo: "Postoperative delirium can last 1–3 days and adversely affects the patient's recovery process and hospital stay.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Multiple Sclerosis (MS)',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "MS GENERAL FEATURES AND DEMOGRAPHICS",
            description: "Typically seen in women between 20–40 years old, it is a progressive demyelinating disease affecting the central nervous system.",
            subtitle: "Clinical findings: sensory losses, visual disturbances, and progressive motor weaknesses",
            additionalInfo: "The disease usually follows remission and relapse (attack) periods; viral infections can be triggers.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "ATTACK PERIOD TREATMENT AND SPASTICITY CONTROL",
            description: "While acute attacks are suppressed with high-dose steroids, diazepam or baclofen is used for spasticity control.",
            additionalInfo: "Drug side effects (especially metabolic effects of steroids) should be evaluated before surgery.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "SURGERY TIMING IN MS PATIENTS",
            description: "Elective surgical interventions should not be performed during periods when the disease is in the relapse (attack) phase, except in emergencies.",
            additionalInfo: "Operation and anesthesia stress can pull the patient out of remission and put them into a new attack.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "ANESTHETIC APPROACH AND EXACERBATION RISKS",
            description: "Spinal anesthesia is the method that most increases the risk of MS exacerbation due to direct interaction of drugs with demyelinating areas.",
            subtitle: "Use of Succinylcholine (Sch) is contraindicated as it creates a risk of dangerous hyperkalemia due to denervation",
            additionalInfo: "Normothermia should be maintained as even minimal increases in body temperature (similar to Uhthoff phenomenon) can trigger MS symptoms.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "EPIDURAL ANESTHESIA SAFETY",
            description: "In MS patients, epidural anesthesia is considered safer than spinal and is widely applied.",
            additionalInfo: "Local anesthetic doses and concentrations should be kept at the lowest effective level.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'ALS and Guillain–Barré Syndrome (GBS)',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "AMYOTROPHIC LATERAL SCLEROSIS (ALS) FEATURES",
            description: "Usually starting in the 50–60s, it is a progressive disease that paralyzes bulbar and skeletal muscles within 2–3 years.",
            subtitle: "Use of Succinylcholine is ABSOLUTELY contraindicated due to the risk of severe potassium release",
            additionalInfo: "Weaning from mechanical ventilation can be very difficult due to weakness in respiratory muscles in the postoperative period.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "GUILLAIN–BARRE SYNDROME (GBS) CLINIC AND COURSE",
            description: "Usually characterized by symmetrical paralysis progressing from bottom to top, areflexia, and paresthesia, it is an acute polyneuropathy.",
            subtitle: "In this picture also called acute inflammatory demyelinating polyneuropathy, ascending paralysis is typical",
            additionalInfo: "Respiratory muscles can be involved in 25% of patients, necessitating intensive care support.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "GBS ETIOLOGY AND AUTONOMIC INSTABILITY",
            description: "GBS is an immunological response often developing after a past viral infection or lymphoma.",
            subtitle: "Hypo/hypertensive responses can be very exaggerated and life-threatening as the autonomic nervous system is affected",
            additionalInfo: "Sch use is also contraindicated in GBS. Neuraxial blocks should be applied very carefully and by making a profit-loss calculation due to the 'double crush' theory.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Autonomic Dysfunction (Shy-Drager etc.)',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "AUTONOMIC DYSFUNCTION CLINICAL FINDINGS",
            description: "Orthostatic hypotension, gastrointestinal/bladder problems, and inability to sweat (anhidrosis) are the most typical findings.",
            additionalInfo: "The body's ability to establish autonomic balance against external factors is lost.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "PERIOPERATIVE HYPOTANSION AND HYPOVOLEMIA RISK",
            description: "Hypotension response developing during induction and blood loss in these patients is very serious as it cannot be compensated.",
            subtitle: "Patients are usually in a chronically hypovolemic (dehydrated) state",
            additionalInfo: "It should not be forgotten that even anesthetics in small doses can spike blood pressure without reflex increase in heart rate.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "MONITORING AND VASOPRESSOR SELECTION",
            description: "Intraarterial blood pressure monitoring is a must for instantaneous monitoring of blood pressure.",
            subtitle: "Direct-acting vasopressor agents like phenylephrine should be preferred in hypotension treatment",
            additionalInfo: "Heat control mechanism is broken in cases with anhidrosis; caution should be exercised against the risk of intraoperative hyperpyrexia (overheating).",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Syringomyelia',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "SYRINGOMYELIA DEFINITION AND ACCOMPANYING PATHOLOGIES",
            description: "It is a disease going with cavitation (void) formation within the spinal cord; frequently seen together with Arnold–Chiari malformation.",
            additionalInfo: "Loss of pain and temperature sensation and motor weakness are observed characteristically.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "RESPIRATORY EVALUATION AND COMPLICATIONS",
            description: "Pulmonary risks should be researched in patients with syringomyelia due to bulbar involvement and chest wall deformity.",
            additionalInfo: "Lung infections and respiratory failure after the operation are the most important pictures under risk.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "NEURAXIAL BLOCK AND ICP INTERACTION",
            description: "Neuraxial blocks are contraindicated in the presence of interaction of the cavitation with the brainstem or high intracranial pressure (ICP).",
            subtitle: "However, epidural labor analgesia has been successfully applied in selected cases",
            additionalInfo: "Pressure changes can trigger brainstem herniation; cranio-spinal pressure balance should be maintained.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Spinal Cord Injury',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "LEVEL OF TRANSECTION AND NEED FOR RESPIRATORY SUPPORT",
            description: "In injuries above the C3–5 cervical vertebra level, lifelong respiratory support is absolutely required due to diaphragm paralysis.",
            additionalInfo: "N. Phrenicus damage completely eliminates the effort capacity of respiration.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "PARALYSIS LEVEL CLASSIFICATION (C5-6, T12-L1)",
            description: "Quadriplegia develops in transections above the T1 level, and paraplegia develops in transections above L4.",
            subtitle: "Critical points where spinal injuries are most commonly seen are the C5–6 and T12–L1 vertebra areas",
            additionalInfo: "Injury level is the most fundamental data determining the anesthesiologist's plan, both sensorially and motorically.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "SPINAL SHOCK PHASE AND REFLEX CHANGES",
            description: "The 'spinal shock' phase (flaccid paralysis and loss of all reflexes) is observed in the first 1–3 weeks after acute transection.",
            subtitle: "As reflexes return weeks later, muscle spasms and episodes of excessive sympathetic activity begin",
            additionalInfo: "In this process, the patient's autonomic balance is extremely unstable.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "ACUTE TRANSECTION AND STEROID THERAPY",
            description: "High-dose steroid treatment applied within the first 24 hours of injury is the only evidence-based intervention positively affecting neurological course.",
            subtitle: "Succinylcholine (Sch) can be used within the first 24 hours; but it IS FORBIDDEN after this period due to hyperkalemia risk",
            additionalInfo: "Invasive blood pressure monitoring is a must in the acute period due to loss of vascular tone.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "CHRONIC TRANSECTION AND AUTONOMIC HYPERREFLEXIA",
            description: "Particularly in chronic injuries above the T6 level, uncontrolled sympathetic discharges (hyperreflexia) triggered by painful stimuli develop.",
            subtitle: "General or deep regional anesthesia can prevent these excessive hyperreflexia responses",
            additionalInfo: "Direct-acting vasodilators (Nitroglycerin etc.) should be kept ready to control sudden blood pressure spikes developing during hyperreflexia.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "HYPOTHERMIA TRACKING IN TRANSECTIONS ABOVE T1",
            description: "Thermoregulation (body temperature control) is impaired in injuries above the T1 level; hypothermia risk is very high.",
            additionalInfo: "The patient's body temperature should be continuously monitored from at least one focus during anesthesia.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Depression and Psychiatric Drugs',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "TRICYCLIC ANTIDEPRESSANTS AND REUPTAKE BLOCKADE",
            description: "TCAs keep stores full by blocking the reuptake of catecholamines (especially NE) and serotonin in the synaptic cleft.",
            subtitle: "Depression treatment should be UNINTERRUPTED before surgery",
            additionalInfo: "Anesthetic substance need may increase depending on the medications used and deeper anesthesia may be required during operation.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "VASOPRESSOR RESPONSE SENSITIVITY IN TRICYCLICS",
            description: "An exaggerated and uncontrolled response to indirect-acting vasopressors and sympathetic stimulation can develop in patients using TCAs.",
            additionalInfo: "Because endogenous NE stores are full, every stimulus given can lead to a severe blood pressure spike.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "THINGS TO AVOID IN ANTIDEPRESSANT USE",
            description: "Local anesthetics containing pancuronium, ketamine, meperidine, and epinephrine enter into dangerous interactions with tricyclic antidepressants.",
            additionalInfo: "Particularly the risk of triggering arrhythmias is at the highest level in these combinations.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "MAO INHIBITORS AND SUBTYPE DIFFERENCES",
            description: "While MAO-A is more responsible for NE and Serotonin breakdown, MAO-B controls dopamine breakdown.",
            subtitle: "In psychiatry, MAO-A, and in Parkinson's, MAO-B inhibitors (Selegiline) are used",
            additionalInfo: "Formerly, stopping it 2 weeks before the surgery was a rule, but this condition has disappeared with current anesthetics.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "MAOI AND MEPERIDINE INTERACTION (HYPERTHERMIA/COMA)",
            description: "Meperidine use in a patient receiving MAO inhibitor can lead to fatal results by causing serotonergic storm.",
            subtitle: "This interaction is characterized by severe hyperthermia, seizure, coma, and autonomic collapse",
            additionalInfo: "Direct-acting vasopressors should absolutely be used instead of ephedrine (indirect) in hypotension intervention.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "SSRI GROUP AND SEROTONIN SYNDROME RISK",
            description: "SSRIs are modern antidepressants with minimal anticholinergic side effects but carry Serotonin Syndrome risk.",
            subtitle: "Agitation, hypertension, hyperthermia, tremor, and metabolic acidosis picture is the harbinger of the syndrome",
            additionalInfo: "Risk increases dramatically particularly when combined with MAO inhibitors or triptans.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Bipolar Disorder',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "LITHIUM THERAPEUTIC RANGE AND FOLLOW-UP",
            description: "The safe blood concentration range for lithium is a very narrow window like 0.8–1 mEq/L.",
            additionalInfo: "The last lithium level should absolutely be verified laboratory-wise before the operation.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "SIDE EFFECT PROFILE OF LITHIUM USE",
            description: "Lithium can cause T-wave changes in EKG, Diabetes Insipidus (DI), and hypothyroidism in long-term use.",
            subtitle: "Toxicity symptoms: confusion, severe tremor, AV block, hypotension, and generalized seizures",
            additionalInfo: "Inadequate hydration and lithium overdose can lead to life-threatening crises during surgery.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "INTERACTION OF LITHIUM WITH ANESTHETIC AGENTS",
            description: "In patients using lithium, the MAC value of volatiles decreases and the durations of effect of neuromuscular blockers (NMB) lengthen significantly.",
            subtitle: "Low sodium (hyponatremia) increases toxicity risk by reducing lithium excretion from the kidney",
            additionalInfo: "Maintaining sodium balance in fluid therapy is the primary precaution in protection from lithium toxicity.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Schizophrenia',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "ANTIPSYCHOTICS AND EXTRAPYRAMIDAL SIDE EFFECTS",
            description: "Old-generation antipsychotics lead to side effects that impair movement control by making strong D2 antagonism.",
            subtitle: "Orthostatic hypotension, acute dystonia, and tardive dyskinesia in long-term use are common",
            additionalInfo: "These symptoms can cause difficulty in perioperative positional management.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "CLOZAPINE AND AGRANULOCYTOSIS RISK",
            description: "A risk of serious immune suppression (agranulocytosis) exists in patients under clozapine treatment.",
            subtitle: "Treatment should be continued during the surgery process to maintain psychotic balance",
            additionalInfo: "Full blood count (particularly white cell distribution) must be checked before the operation.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Neuroleptic Malignant Syndrome (NMS)',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "NMS DEFINITION AND TRIGGERING FACTORS",
            description: "It is a life-threatening reaction that can develop within hours or weeks after antipsychotic drug use.",
            subtitle: "Drugs like meperidine and metoclopramide can trigger or exacerbate the NMS picture",
            additionalInfo: "Pharmacologically, it is thought to be associated with sudden blockade of the dopaminergic system.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "NMS CLINICAL PICTURE AND CK ELEVATION",
            description: "Characterized by serious muscle rigidity, hyperthermia, autonomic instability, and clouding of consciousness.",
            subtitle: "Dramatic elevation in CK (Creatine Kinase) values and rhabdomyolysis are observed in laboratory",
            additionalInfo: "It can be confused clinically with malignant hyperthermia but triggering drugs are different.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "NMS MORTALITY AND SPECIFIC TREATMENT",
            description: "The mortality rate of Neuroleptic Malignant Syndrome is around 30–40% if not intervened in time.",
            subtitle: "Dantrolene for muscle relaxation and Bromocriptine for dopaminergic support are used in its treatment",
            additionalInfo: "Aggressive cooling and hydration of patients are essential to prevent kidney damage.",
          ),
        ],
      ),
      NeurologicalPsychiatricAnesthesiaCategory(
        categoryName: 'Quick reminder – Critical Neuro-Psychiatric Data',
        items: [
          NeurologicalPsychiatricAnesthesiaItem(
            title: "CAROTID AND PULSE PRESSURE CRITERIA",
            description: "Surgery if carotid stenosis >60%; endothelial damage risk is high if pulse pressure >80 mmHg.",
            additionalInfo: "These limits are the main determinants of vascular risk in the perioperative period.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "RECOVERY PROCESSES",
            description: "Regional blood flow recovery: 21 weeks; Blood-Brain Barrier recovery: ≥4 weeks.",
            additionalInfo: "Waiting times after stroke are adjusted according to this physiological recovery speed.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "DISEASE AND AGE EPIDEMIOLOGY",
            description: "Parkinson\'s 50–70 years; Alzheimer\'s 20% frequency after 80 years; MS is common in women between 20–40 years old.",
            additionalInfo: "Demographic data gives the first clue in diagnostic differential diagnosis.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "SCH CONTRAINDICATION LIST",
            description: "Succinylcholine is ABSOLUTELY contraindicated in Multiple Sclerosis (MS), ALS, and Guillain-Barré (GBS) patients.",
            additionalInfo: "Receptor increase developing after denervation creates severe hyperkalemia and arrest risk.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "PSYCHIATRIC DRUG THERAPEUTIC LIMITS",
            description: "The safe range for lithium is at the level of 0.8–1 mEq/L.",
            additionalInfo: "Below this limit is ineffective, and above it rapidly creates toxic pictures.",
          ),
          NeurologicalPsychiatricAnesthesiaItem(
            title: "NMS MORTALITY RATE",
            description: "Death risk in Neuroleptic Malignant Syndrome is approximately at the level of 30–40%.",
            additionalInfo: "Early diagnosis and Dantrolen treatment are helpful in reducing this rate.",
          ),
        ],
      ),
    ];
  }
}
