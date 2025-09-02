import '../../models/question.dart';

List<Question> anesthesiaNeuromuscularDiseaseQuestions = [
  Question(
    id: 'anesthesia_neuromuscular_disease_001',
    question: 'Which agent should be avoided in patients with a sensitive neuromuscular blockade response?',
    options: [
      'Rocuronium',
      'Atracurium',
      'Succinylcholine',
      'Vecuronium',
      'Cisatracurium'
    ],
    correctAnswerIndex: 2,
    explanation: 'Succinylcholine increases the risk of hyperkalemia and can cause severe complications in neuromuscular diseases.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_002',
    question: 'Why is succinylcholine contraindicated in a patient with Duchenne Muscular Dystrophy (DMD)?',
    options: [
      'Because it causes hypothermia',
      'Because it causes bradycardia',
      'Because of the risk of hyperkalemia and cardiac arrest',
      'Because it causes severe bronchospasm',
      'Because it causes renal failure'
    ],
    correctAnswerIndex: 2,
    explanation: 'In DMD patients, upregulated acetylcholine receptors can lead to severe hyperkalemia and cardiac arrest after succinylcholine use.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_003',
    question: 'Which muscle relaxants should be used in the lowest dose in patients with Myasthenia Gravis?',
    options: [
      'Rocuronium',
      'Vecuronium',
      'Cisatracurium',
      'Atracurium',
      'All non-depolarizing agents'
    ],
    correctAnswerIndex: 4,
    explanation: 'Myasthenia gravis causes hypersensitivity to non-depolarizing muscle relaxants; therefore, all must be given in very low doses.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_004',
    question: 'In which condition does impaired neuromuscular transmission make anesthesia management more complex?',
    options: [
      'Hyperthyroidism',
      'Parkinson\'s disease',
      'Myasthenia Gravis',
      'Alzheimer\'s disease',
      'Hypoglycemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Myasthenia gravis weakens neuromuscular transmission due to impaired postsynaptic acetylcholine receptors, complicating anesthesia.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_005',
    question: 'Which of the following is true regarding Lambert-Eaton Myasthenic Syndrome (LEMS)?',
    options: [
      'Increased acetylcholine release',
      'Presynaptic calcium channels are affected',
      'Postsynaptic receptors are blocked',
      'Muscle strength is constant',
      'Resistance to anesthetics develops'
    ],
    correctAnswerIndex: 1,
    explanation: 'In LEMS, antibodies target presynaptic calcium channels → acetylcholine release is reduced.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_006',
    question: 'Which complication may occur in neuromuscular diseases when depolarizing muscle relaxants are used?',
    options: [
      'Hypotension',
      'Bradycardia',
      'Hyperkalemia',
      'Hypoglycemia',
      'Excessive sedation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Depolarizing agents (esp. succinylcholine) cause excessive potassium efflux → hyperkalemia and even cardiac arrest.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_007',
    question: 'What is the most common anesthetic complication in myotonic dystrophy?',
    options: [
      'Increased analgesic requirement',
      'Prolonged neuromuscular block',
      'Muscle spasms and laryngospasm',
      'Hypothermia',
      'Increased respiratory rate'
    ],
    correctAnswerIndex: 2,
    explanation: 'Myotonic dystrophy is frequently complicated by muscle spasms, particularly laryngospasm during anesthesia.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_008',
    question: 'What is the most likely cause of convulsion-like spasms during anesthesia in myotonic dystrophy?',
    options: [
      'Hyperventilation',
      'Atracurium use',
      'Cold stimuli',
      'Reduced anesthetic depth',
      'High FiO₂'
    ],
    correctAnswerIndex: 2,
    explanation: 'Cold stimuli (e.g., skin cleaning with alcohol) can trigger myotonic spasms → temperature control is important.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_009',
    question: 'How is the neuromuscular blockade response in Lambert-Eaton Myasthenic Syndrome (LEMS)?',
    options: [
      'Resistant to both depolarizing and non-depolarizing agents',
      'Sensitive only to depolarizing agents',
      'Hypersensitive to non-depolarizing agents',
      'No neuromuscular block occurs',
      'Tolerance develops to all agents'
    ],
    correctAnswerIndex: 2,
    explanation: 'LEMS patients are hypersensitive to non-depolarizing agents → risk of prolonged paralysis. Succinylcholine may sometimes be less effective due to insufficient acetylcholine, though this varies.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_010',
    question: 'In patients with sensitive neuromuscular disease, what must be considered in the differential diagnosis of postoperative weakness?',
    options: [
      'Metabolic alkalosis',
      'Residual neuromuscular block',
      'Inadequate hydration',
      'Hypercalcemia',
      'Oxygen excess'
    ],
    correctAnswerIndex: 1,
    explanation: 'Postoperative weakness is most often due to residual relaxant effect, which is more common in neuromuscular disease.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_011',
    question: 'In which neuromuscular disease must agents like halothane be used with particular caution?',
    options: [
      'Myasthenia Gravis',
      'Lambert-Eaton Syndrome',
      'Duchenne Muscular Dystrophy',
      'Guillain-Barré Syndrome',
      'Myotonic dystrophy'
    ],
    correctAnswerIndex: 2,
    explanation: 'In DMD, volatile agents and succinylcholine may cause malignant hyperthermia–like reactions and rhabdomyolysis.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_012',
    question: 'What is one of the most important complications during anesthesia in children with neuromuscular disease?',
    options: [
      'Laryngospasm',
      'Postoperative nausea',
      'Hyperthermia',
      'Muscle rigidity',
      'Rhabdomyolysis'
    ],
    correctAnswerIndex: 4,
    explanation: 'In Duchenne and Becker dystrophies, rhabdomyolysis is a severe, life-threatening complication.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_013',
    question: 'What is the most concerning anesthetic complication in Guillain-Barré Syndrome?',
    options: [
      'Increased intracranial pressure',
      'Drug allergy',
      'Autonomic instability and arrhythmias',
      'Hypoglycemia',
      'Increased pain threshold'
    ],
    correctAnswerIndex: 2,
    explanation: 'GBS patients often have autonomic dysfunction → sudden bradycardia, arrhythmias, hypotension.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_014',
    question: 'In which condition should pulmonary function tests (PFTs) be performed preoperatively?',
    options: [
      'Hypothyroidism',
      'Mild asthma',
      'Myotonic dystrophy',
      'Left heart failure',
      'Obstructive sleep apnea'
    ],
    correctAnswerIndex: 2,
    explanation: 'Myotonic dystrophy may affect respiratory muscles → PFTs are essential before surgery.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_015',
    question: 'What is the safest reversal agent for neuromuscular blockade in neuromuscular disorders?',
    options: [
      'Neostigmine',
      'Atropine',
      'Edrophonium',
      'Sugammadex',
      'Midazolam'
    ],
    correctAnswerIndex: 3,
    explanation: 'Sugammadex safely reverses steroidal non-depolarizing relaxants (rocuronium, vecuronium) and is preferred in myasthenia.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_016',
    question: 'What is the most serious complication during anesthesia in a child with Duchenne Muscular Dystrophy?',
    options: [
      'Allergic reaction',
      'Respiratory alkalosis',
      'Malignant hyperthermia–like reaction',
      'Bradycardia',
      'Inadequate reversal'
    ],
    correctAnswerIndex: 2,
    explanation: 'In DMD, the most life-threatening complication is a malignant hyperthermia–like crisis.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_017',
    question: 'What is the best method to guide muscle relaxant use in neuromuscular diseases?',
    options: [
      'Monitoring respiratory rate',
      'Electromyography',
      'Train-of-four (TOF) monitoring',
      'BIS monitoring',
      'SpO₂ monitoring'
    ],
    correctAnswerIndex: 2,
    explanation: 'TOF monitoring is the most reliable way to assess relaxant effect.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_018',
    question: 'Which drug may trigger muscle spasms in myotonic dystrophy?',
    options: [
      'Propofol',
      'Neostigmine',
      'Midazolam',
      'Ketamine',
      'Fentanyl'
    ],
    correctAnswerIndex: 1,
    explanation: 'Neostigmine increases acetylcholine levels → triggers myotonic contractions.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_019',
    question: 'In which condition is increased sensitivity to non-depolarizing relaxants expected?',
    options: [
      'Healthy individual',
      'Chronic alcoholism',
      'Myasthenia Gravis',
      'Hypercalcemia',
      'Anxiety disorder'
    ],
    correctAnswerIndex: 2,
    explanation: 'MG patients are highly sensitive to non-depolarizing relaxants → doses must be carefully titrated.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_020',
    question: 'What complication may occur with succinylcholine use in Guillain-Barré Syndrome?',
    options: [
      'Hypothermia',
      'Muscle spasm',
      'Hyperkalemia and arrhythmia',
      'Hypoglycemia',
      'Increased pain threshold'
    ],
    correctAnswerIndex: 2,
    explanation: 'Upregulated acetylcholine receptors in GBS → succinylcholine causes dangerous hyperkalemia and arrhythmias.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_021',
    question: 'Which agent provides anesthesia in neuromuscular disease without suppressing muscle tone?',
    options: [
      'Sevoflurane',
      'Propofol',
      'Ketamine',
      'Rocuronium',
      'Succinylcholine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ketamine provides sedation and analgesia without muscle relaxation → useful in neuromuscular disorders.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_022',
    question: 'Which statement about spinal anesthesia in myotonic dystrophy is correct?',
    options: [
      'Contraindicated because it triggers seizures',
      'Absolutely preferred',
      'May reduce muscle spasms',
      'Increases postoperative pain',
      'Facilitates arrhythmias'
    ],
    correctAnswerIndex: 2,
    explanation: 'Spinal anesthesia may suppress spasms and reduce relaxant requirement.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_023',
    question: 'Why is TIVA (total intravenous anesthesia) often preferred in neuromuscular diseases?',
    options: [
      'To increase spasms',
      'Because of prolonged effect',
      'To increase relaxant requirement',
      'To avoid side effects of volatile agents',
      'To keep the patient awake'
    ],
    correctAnswerIndex: 3,
    explanation: 'Volatile agents may cause malignant hyperthermia–like reactions in DMD → TIVA is safer.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_024',
    question: 'Which is NOT a trigger of intraoperative myotonic spasms?',
    options: [
      'Electrical stimulation',
      'Cold',
      'Neostigmine',
      'Ketamine',
      'Mechanical stimulation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ketamine does not trigger spasms; others may.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_025',
    question: 'Which agent is most suitable for intubation without muscle relaxants in Myasthenia Gravis?',
    options: [
      'Sevoflurane',
      'Midazolam',
      'Etomidate',
      'Propofol',
      'Ketamine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Propofol provides rapid sedation and is most suitable for intubation without relaxants in MG.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_026',
    question: 'What is the most likely cause of prolonged postoperative weakness in neuromuscular disease patients?',
    options: [
      'Deep sedation',
      'Hypoglycemia',
      'Inadequate reversal',
      'Hypercapnia',
      'Propofol infusion'
    ],
    correctAnswerIndex: 2,
    explanation: 'Inadequate antagonism of non-depolarizing relaxants → prolonged weakness, esp. in MG.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_027',
    question: 'Which test predicts risk of respiratory failure before surgery in Myasthenia Gravis?',
    options: [
      'SpO₂',
      'Vital capacity',
      'TOF',
      'ECG',
      'EEG'
    ],
    correctAnswerIndex: 1,
    explanation: 'Vital capacity assesses diaphragm and respiratory muscle reserve → predicts postop ventilation need.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_028',
    question: 'What is the main pharmacological difference between LEMS and Myasthenia Gravis?',
    options: [
      'MG affects presynaptic calcium channels',
      'LEMS blocks postsynaptic receptors',
      'In LEMS, muscle strength improves with exercise',
      'MG shows no neuromuscular block',
      'LEMS is very sensitive to relaxants'
    ],
    correctAnswerIndex: 2,
    explanation: 'In LEMS, exercise increases ACh release → strength improves. In MG, the opposite occurs.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_029',
    question: 'Which should be avoided to reduce intraoperative spasms in myotonic dystrophy?',
    options: [
      'Keeping patient warm',
      'Providing deep anesthesia',
      'Administration of neostigmine',
      'Nasal oxygen support',
      'Reducing muscle stimulation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Neostigmine raises acetylcholine levels → can trigger myotonia.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_030',
    question: 'Which is true about spinal anesthesia in neuromuscular disease?',
    options: [
      'Absolutely contraindicated',
      'Risky but possible',
      'Can be done with low-dose local anesthetics carefully',
      'General anesthesia must always be given first',
      'Sedation only should be used'
    ],
    correctAnswerIndex: 2,
    explanation: 'Spinal anesthesia can be given with low doses, but each patient must be assessed individually.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_031',
    question: 'What airway complication may occur due to spasms in myotonic dystrophy?',
    options: [
      'Stridor',
      'Laryngospasm',
      'Bronchospasm',
      'Tracheomalacia',
      'Subglottic stenosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Myotonic spasms may cause laryngospasm → acute airway obstruction.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_032',
    question: 'Which drug suppresses muscle tone without being a true muscle relaxant in neuromuscular disease?',
    options: [
      'Propofol',
      'Ketamine',
      'Midazolam',
      'Dexmedetomidine',
      'Halothane'
    ],
    correctAnswerIndex: 4,
    explanation: 'Halothane reduces tone via CNS depression, though not a direct neuromuscular blocker.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_033',
    question: 'What is the most important anesthetic complication in Guillain-Barré Syndrome?',
    options: [
      'Bronchospasm',
      'Hypertension',
      'Bradycardia',
      'Hyperkalemia',
      'Laryngospasm'
    ],
    correctAnswerIndex: 3,
    explanation: 'Due to denervation, succinylcholine use causes severe hyperkalemia.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_034',
    question: 'What is the response to non-depolarizing relaxants in Lambert-Eaton Myasthenic Syndrome?',
    options: [
      'Normal',
      'Increased sensitivity',
      'Decreased sensitivity',
      'Complete resistance',
      'Negligible effect'
    ],
    correctAnswerIndex: 1,
    explanation: 'In LEMS, impaired presynaptic ACh release → ↑ sensitivity to non-depolarizers.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_035',
    question: 'How should extubation be decided in Myasthenia Gravis perioperatively?',
    options: [
      'Surgical duration',
      'SpO₂ value',
      'Vital capacity and negative inspiratory pressure',
      'Sedation level',
      'Eye muscle movement'
    ],
    correctAnswerIndex: 2,
    explanation: 'Extubation must be based on objective respiratory function (VC and NIP).',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_036',
    question: 'What is the most useful test to distinguish myasthenic crisis from cholinergic crisis?',
    options: [
      'EMG',
      'Edrophonium (Tensilon) test',
      'Blood gas',
      'Muscle biopsy',
      'Electrolytes'
    ],
    correctAnswerIndex: 1,
    explanation: 'The edrophonium test helps differentiate cholinergic vs myasthenic crisis.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_037',
    question: 'What is the most important consideration when planning anesthesia for a patient with Amyotrophic Lateral Sclerosis (ALS)?',
    options: [
      'Risk of hypovolemia',
      'Antibiotic prophylaxis',
      'Reduced respiratory reserve',
      'Increased bleeding risk',
      'Impaired hepatic metabolism'
    ],
    correctAnswerIndex: 2,
    explanation: 'In ALS, respiratory muscles including the diaphragm may be affected, leading to reduced respiratory reserve.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_038',
    question: 'What happens if acetylcholinesterase inhibitors are discontinued preoperatively in a patient with Myasthenia Gravis?',
    options: [
      'Increased salivation',
      'Postoperative muscle weakness',
      'Hypothermia',
      'Hyperkalemia',
      'Prolonged emergence'
    ],
    correctAnswerIndex: 1,
    explanation: 'Discontinuation of acetylcholinesterase inhibitors can cause significant muscle weakness.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_039',
    question: 'What is the most common cardiac complication during anesthesia in Duchenne Muscular Dystrophy (DMD)?',
    options: [
      'Ventricular tachycardia',
      'Atrial fibrillation',
      'Bradycardia',
      'Heart block',
      'QT shortening'
    ],
    correctAnswerIndex: 0,
    explanation: 'DMD patients are prone to cardiomyopathy, predisposing them to ventricular tachyarrhythmias.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_040',
    question: 'Why is hypothermia risky in patients with myotonic dystrophy?',
    options: [
      'It causes rapid awakening',
      'It increases heart rate',
      'It may trigger myotonic attacks',
      'It causes vasodilation',
      'It leads to hyperkalemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypothermia can trigger involuntary muscle contractions (myotonia).',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_041',
    question: 'Which systemic complication is most common in the preoperative evaluation of a patient with DMD?',
    options: [
      'Hepatic dysfunction',
      'Renal failure',
      'Cardiomyopathy',
      'Neuropathy',
      'Thyroid dysfunction'
    ],
    correctAnswerIndex: 2,
    explanation: 'Cardiac muscle involvement is frequent in Duchenne dystrophy → cardiac assessment is essential.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_042',
    question: 'What is the best approach regarding the choice of muscle relaxants in myotonic dystrophy?',
    options: [
      'Succinylcholine is preferred',
      'Rocuronium is safe',
      'Muscle relaxants should be avoided if possible',
      'Non-depolarizing agents are also contraindicated',
      'Neostigmine causes myotonia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ideally, muscle relaxants should be avoided. If required, they must be carefully titrated and neuromuscular monitoring is essential.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_043',
    question: 'What is the safest muscle relaxant option in ALS?',
    options: [
      'Rocuronium',
      'Atracurium',
      'Succinylcholine',
      'Cisatracurium',
      'Vecuronium'
    ],
    correctAnswerIndex: 3,
    explanation: 'Cisatracurium is safely metabolized via organ-independent Hofmann elimination, making it preferable in ALS.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_044',
    question: 'Which drug may prolong postoperative intubation in a patient with Myasthenia Gravis?',
    options: [
      'Neostigmine',
      'Vecuronium',
      'Propofol',
      'Sevoflurane',
      'Fentanyl'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hypersensitivity to non-depolarizers causes even low doses of vecuronium to have prolonged effects.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_045',
    question: 'What is the most important risk of inhalational anesthetics in Duchenne Muscular Dystrophy?',
    options: [
      'Bradycardia',
      'Difficulty controlling anesthetic depth',
      'Malignant hyperthermia–like reaction',
      'Hyponatremia',
      'Vasodilation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Volatile anesthetics may trigger malignant hyperthermia–like episodes in DMD.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_046',
    question: 'What is the most common complication after general anesthesia in myotonic dystrophy?',
    options: [
      'Bradycardia',
      'Postoperative pain',
      'Muscle rigidity (myotonia)',
      'Seizures',
      'Hyperglycemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Involuntary muscle contractions often persist after surgery.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_047',
    question: 'What is the most common cause of postoperative mortality in ALS patients?',
    options: [
      'Heart failure',
      'Pneumonia',
      'Renal failure',
      'Thromboembolism',
      'Malignancy'
    ],
    correctAnswerIndex: 1,
    explanation: 'Weak respiratory muscles impair secretion clearance, increasing pneumonia risk.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_048',
    question: 'What is the most appropriate premedication for Guillain-Barré patients?',
    options: [
      'Anticholinergic + opioid',
      'Benzodiazepine',
      'Antiemetic',
      'Muscle relaxant',
      'Steroid'
    ],
    correctAnswerIndex: 1,
    explanation: 'Benzodiazepines provide anxiolysis; muscle relaxants and anticholinergics should be avoided.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_049',
    question: 'What is the first drug to be given in malignant hyperthermia (MH) crisis?',
    options: [
      'Dantrolene',
      'Dantrolene sodium',
      'Propranolol',
      'Calcium gluconate',
      'Lidocaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Gold standard: IV dantrolene sodium, 2.5 mg/kg bolus.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_050',
    question: 'Which anesthetic agent has prolonged effect in Lambert-Eaton Myasthenic Syndrome (LEMS)?',
    options: [
      'Aminosteroid muscle relaxants (Rocuronium)',
      'Succinylcholine',
      'Benzodiazepines',
      'Opioids',
      'Inhalation agents'
    ],
    correctAnswerIndex: 0,
    explanation: 'Due to presynaptic Ca²⁺ channel defect, hypersensitivity to non-depolarizers occurs.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_051',
    question: 'Which lab finding is NOT seen in malignant hyperthermia crisis?',
    options: [
      'Hypocalcemia',
      'Hyperkalemia',
      'Metabolic acidosis',
      'Hyperthermia',
      'Elevated CK'
    ],
    correctAnswerIndex: 0,
    explanation: 'Intracellular Ca²⁺ increases → hyperkalemia, acidosis, CK >20,000 IU/L.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_052',
    question: 'Which complication is NOT expected in Myotonic Dystrophy Type 1 (Steinert\'s disease)?',
    options: [
      'Malignant hyperthermia',
      'Cardiac arrhythmia',
      'Prolonged apnea',
      'Aspiration pneumonia',
      'Postoperative respiratory failure'
    ],
    correctAnswerIndex: 0,
    explanation: 'No association with MH; others are frequent.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_053',
    question: 'When should neostigmine be discontinued preoperatively in Myasthenia Gravis?',
    options: [
      'Morning of surgery',
      'One week before',
      'Three days before',
      'Never discontinued',
      'Only evening dose withheld'
    ],
    correctAnswerIndex: 0,
    explanation: 'To avoid drug interaction with relaxants, morning dose is omitted.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_054',
    question: 'Which opioid is safest in neuromuscular diseases?',
    options: [
      'Remifentanil',
      'Morphine',
      'Meperidine',
      'Fentanyl',
      'Codeine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Remifentanil is ultra–short acting, metabolized extrahepatically.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_055',
    question: 'Which is NOT a cardiac complication of Duchenne Muscular Dystrophy?',
    options: [
      'Hypertension',
      'Dilated cardiomyopathy',
      'Mitral regurgitation',
      'QT prolongation',
      'Right ventricular dysfunction'
    ],
    correctAnswerIndex: 0,
    explanation: 'Cardiomyopathy and arrhythmias are common; hypertension is not typical.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_056',
    question: 'In Myasthenia Gravis, which muscle relaxant dose should be reduced by 50%?',
    options: [
      'Rocuronium',
      'Succinylcholine',
      'Atracurium',
      'Cisatracurium',
      'Mivacurium'
    ],
    correctAnswerIndex: 0,
    explanation: 'Due to reduced ACh receptors, sensitivity to rocuronium is high.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_057',
    question: 'Which systemic finding is NOT seen in myotonic dystrophy?',
    options: [
      'Hyperthyroidism',
      'Cardiac conduction defects',
      'Cataracts',
      'Testicular atrophy',
      'Frontal baldness'
    ],
    correctAnswerIndex: 0,
    explanation: 'Endocrine involvement includes diabetes and hypogonadism, not hyperthyroidism.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_058',
    question: 'What is true about the "caffeine-halothane contracture test" for MH diagnosis?',
    options: [
      'Abnormal contraction of biopsy muscle',
      'Serum CK measurement',
      'Genetic RYR1 mutation detection',
      'Urine myoglobin level',
      'EKG QT prolongation'
    ],
    correctAnswerIndex: 0,
    explanation: 'Abnormal contraction in biopsy muscle exposed to caffeine/halothane confirms MH.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_059',
    question: 'What complication is expected after thymectomy in Myasthenia Gravis?',
    options: [
      'Myasthenic crisis',
      'Malignant hyperthermia',
      'Acute renal failure',
      'Hepatic encephalopathy',
      'Pulmonary hypertension'
    ],
    correctAnswerIndex: 0,
    explanation: 'Postop period may include myasthenic or cholinergic crisis.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_060',
    question: 'Which anesthetic approach is contraindicated in neuromuscular disease?',
    options: [
      'High-dose depolarizing relaxant',
      'TIVA',
      'Regional anesthesia',
      'Low-dose non-depolarizing relaxant',
      'Inhalation anesthesia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Succinylcholine should be avoided due to rhabdomyolysis and hyperkalemia.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_061',
    question: 'What is the result of restrictive lung pattern in neuromuscular disease?',
    options: [
      'Reduced vital capacity',
      'Increased FEV1/FVC ratio',
      'Expiratory wheeze',
      'Pulsus paradoxus',
      'Pleural effusion'
    ],
    correctAnswerIndex: 0,
    explanation: 'Respiratory muscle weakness + scoliosis → restrictive pattern with ↓ VC.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_062',
    question: 'What is a complication during anesthesia in myotonic dystrophy?',
    options: [
      'Myotonia (delayed muscle relaxation)',
      'Malignant hyperthermia',
      'Hypertensive crisis',
      'Acute renal failure',
      'Hepatic encephalopathy'
    ],
    correctAnswerIndex: 0,
    explanation: 'Myotonia can be triggered by cold, mechanical stimulus, or depolarizers.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_063',
    question: 'Which factor increases aspiration pneumonia risk in neuromuscular disease?',
    options: [
      'Bulbar muscle involvement',
      'Hypertension',
      'Diabetes mellitus',
      'Obesity',
      'Hyperlipidemia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Dysphagia and weak cough reflex → aspiration risk.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_064',
    question: 'What is a sign of cholinergic crisis in Myasthenia Gravis?',
    options: [
      'Fasciculations and excessive secretions',
      'Hypertension',
      'Fever',
      'Oliguria',
      'Rash'
    ],
    correctAnswerIndex: 0,
    explanation: 'Muscarinic + nicotinic overstimulation causes fasciculations and secretions.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_065',
    question: 'What respiratory complication is seen in Duchenne Muscular Dystrophy?',
    options: [
      'Restrictive lung disease',
      'Asthma',
      'Chronic bronchitis',
      'Emphysema',
      'Pleural effusion'
    ],
    correctAnswerIndex: 0,
    explanation: 'Diaphragm and intercostal involvement → restrictive pattern.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_neuromuscular_disease_066',
    question: 'Which indicates the need for postoperative ventilation in neuromuscular disease?',
    options: [
      'Vital capacity <15 mL/kg',
      'Normal PFTs',
      'ASA 1 status',
      'Short surgery duration',
      'Local anesthesia'
    ],
    correctAnswerIndex: 0,
    explanation: 'VC <15 mL/kg or NIP <−30 cmH₂O predicts postop ventilation need.',
    category: 'Anesthesia for Patients with Neuromuscular Disease',
    difficulty: 2
  ),
];
