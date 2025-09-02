import '../../models/question.dart';

List<Question> intravenousAnestheticsQuestions = [
  Question(
    id: 'intravenous_anesthetics_001',
    question: 'Which of the following is a common feature of intravenous induction agents?',
    options: [
      'Slow brain penetration',
      'Lipophilicity',
      'Avoidance of hepatic metabolism',
      'Renal elimination',
      'Long duration of action'
    ],
    correctAnswerIndex: 1,
    explanation: 'IV anesthetics are generally lipophilic, which allows rapid penetration into the brain → fast onset of action.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_002',
    question: 'Which intravenous anesthetic has the fastest onset of action?',
    options: [
      'Ketamine',
      'Midazolam',
      'Propofol',
      'Etomidate',
      'Diazepam'
    ],
    correctAnswerIndex: 2,
    explanation: 'Propofol has a very fast onset (~30 seconds) and is widely used for induction.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_003',
    question: 'Which statement about propofol is correct?',
    options: [
      'Increases blood pressure',
      'Stimulates respiration',
      'Supplied in a lipid emulsion',
      'Long-acting agent',
      'Ketone derivative'
    ],
    correctAnswerIndex: 2,
    explanation: 'Propofol is prepared in a soybean oil emulsion → contamination risk → requires strict aseptic handling.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_004',
    question: 'Which agent causes the least cardiovascular depression?',
    options: [
      'Propofol',
      'Midazolam',
      'Thiopental',
      'Etomidate',
      'Diazepam'
    ],
    correctAnswerIndex: 3,
    explanation: 'Etomidate is known for cardiovascular stability and is the safest IV induction agent in hemodynamically unstable patients.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_005',
    question: 'Which agent can cause adrenocortical suppression?',
    options: [
      'Ketamine',
      'Etomidate',
      'Propofol',
      'Midazolam',
      'Fentanyl'
    ],
    correctAnswerIndex: 1,
    explanation: 'Even a single dose of etomidate may suppress cortisol synthesis for up to 24 hours → use with caution in critically ill patients.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_006',
    question: 'What is the main reason for the short duration of thiopental\'s effect?',
    options: [
      'Rapid metabolism',
      'High renal clearance',
      'Rapid redistribution',
      'Weak plasma protein binding',
      'Low lipophilicity'
    ],
    correctAnswerIndex: 2,
    explanation: 'Thiopental is ultra-short-acting due to redistribution from brain to muscle/fat, not due to metabolism.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_007',
    question: 'The most typical finding of propofol infusion syndrome is:',
    options: [
      'Hyponatremia',
      'Hypoglycemia',
      'Metabolic acidosis',
      'Hypothermia',
      'Thrombocytopenia'
    ],
    correctAnswerIndex: 2,
    explanation: 'PRIS is characterized by metabolic acidosis, rhabdomyolysis, and cardiovascular collapse.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_008',
    question: 'Which agent is least preferred in children for induction?',
    options: [
      'Ketamine',
      'Etomidate',
      'Propofol',
      'Midazolam',
      'Sevoflurane'
    ],
    correctAnswerIndex: 1,
    explanation: 'Etomidate is avoided in pediatrics due to adrenal suppression and myoclonus.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_009',
    question: 'Which is correct about midazolam?',
    options: [
      'Non-GABAergic effect',
      'Short-acting benzodiazepine',
      'Has analgesic effect',
      'Poor lipid solubility',
      'NMDA blockade'
    ],
    correctAnswerIndex: 1,
    explanation: 'Midazolam is a short-acting benzodiazepine acting via GABA-A, but it has no analgesic properties.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_010',
    question: 'Which is correct about thiopental?',
    options: [
      'Stimulates respiration',
      'Provides analgesia',
      'Safe in porphyria',
      'GABA-A agonist',
      'Synergistic with ketamine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Thiopental is a GABA-A agonist barbiturate. It is contraindicated in porphyria.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_011',
    question: 'The most frequent adverse effect of propofol is:',
    options: [
      'Bradycardia',
      'Hypotension',
      'Hyperthermia',
      'Muscle spasm',
      'Laryngospasm'
    ],
    correctAnswerIndex: 1,
    explanation: 'Propofol is a strong vasodilator → ↓ systemic vascular resistance → hypotension is common.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_012',
    question: 'Respiratory effect of ketamine:',
    options: [
      'Marked depression',
      'Bronchoconstriction',
      'Apnea',
      'Minimal depression + bronchodilation',
      'Laryngospasm'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ketamine causes minimal respiratory depression and has bronchodilator properties.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_013',
    question: 'Main neurological advantage of etomidate:',
    options: [
      'Causes epileptiform EEG activity',
      'Increases cerebral blood flow',
      'Reduces cerebral metabolism & ICP',
      'Increases nerve conduction',
      'Lowers seizure threshold'
    ],
    correctAnswerIndex: 2,
    explanation: 'Etomidate decreases CMRO₂ and ICP → useful in neuroanesthesia.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_014',
    question: 'Rapid awakening after propofol induction is mainly due to:',
    options: [
      'High lipophilicity',
      'Rapid hepatic metabolism',
      'High protein binding',
      'Rapid renal clearance',
      'Enzyme induction'
    ],
    correctAnswerIndex: 1,
    explanation: 'Propofol undergoes fast hepatic metabolism → rapid recovery.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_015',
    question: 'Which property makes midazolam water-soluble?',
    options: [
      'Lipophilic side chain',
      'pH-sensitive imidazole ring',
      'High protein binding',
      'GABA agonism',
      'NMDA blockade'
    ],
    correctAnswerIndex: 1,
    explanation: 'Midazolam contains an imidazole ring → water-soluble at low pH, lipophilic at physiological pH.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_016',
    question: 'Which best suppresses ketamine\'s psychomimetic effects?',
    options: [
      'Atropine',
      'Morphine',
      'Propofol',
      'Midazolam',
      'Dexmedetomidine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Benzodiazepines (midazolam) reduce hallucinations/delirium caused by ketamine.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_017',
    question: 'Cause of transient myoclonic movements with etomidate:',
    options: [
      'Glutamate activation',
      'Cortisol suppression',
      'Imbalance in GABA activation',
      'NMDA stimulation',
      'Increased cerebral perfusion'
    ],
    correctAnswerIndex: 2,
    explanation: 'Etomidate suppresses inhibitory GABA circuits unevenly → transient myoclonus.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_018',
    question: 'Which is false about thiopental?',
    options: [
      'GABA-A agonist',
      'Reduces cerebral metabolism',
      'Can trigger porphyria',
      'Water-soluble',
      'Anesthetic + anticonvulsant'
    ],
    correctAnswerIndex: 3,
    explanation: 'Thiopental is lipophilic, not water-soluble; prepared in alkaline solution.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_019',
    question: 'Which is NOT a clinical use of propofol?',
    options: [
      'Induction of general anesthesia',
      'Sedation',
      'Antiemetic effect',
      'Analgesia',
      'Conscious sedation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Propofol is anesthetic + sedative but has no analgesic effect.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_020',
    question: 'Antagonist of midazolam:',
    options: [
      'Flumazenil',
      'Naloxone',
      'Dantrolene',
      'Atropine',
      'Sugammadex'
    ],
    correctAnswerIndex: 0,
    explanation: 'Flumazenil reverses benzodiazepine effects.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_021',
    question: 'Main risk factor for propofol infusion syndrome:',
    options: [
      'Low-dose short use',
      'Adult age',
      'High dose + prolonged infusion',
      'Concomitant opioids',
      'Muscle relaxants'
    ],
    correctAnswerIndex: 2,
    explanation: 'Long-term (>48h), high-dose (>4 mg/kg/h) propofol infusion → PRIS risk.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_022',
    question: 'What does ketamine\'s "dissociative anesthesia" mean?',
    options: [
      'Muscle relaxation + unconsciousness',
      'Consciousness with motor loss',
      'Separation of consciousness, sensory & motor responses',
      'Light anesthesia',
      'CNS depression'
    ],
    correctAnswerIndex: 2,
    explanation: 'Dissociative anesthesia = altered consciousness + analgesia with detachment from environment.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_023',
    question: 'Why does thiopental\'s effect wear off quickly after induction?',
    options: [
      'Fast hepatic metabolism',
      'Rapid renal elimination',
      'Redistribution out of brain',
      'NMDA antagonism',
      'Protein binding'
    ],
    correctAnswerIndex: 2,
    explanation: 'Effect ends due to redistribution from brain to muscle/fat.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_024',
    question: 'Which mechanism contributes to propofol\'s antiemetic effect?',
    options: [
      'GABA-A inhibition',
      'Dopamine antagonism',
      'Serotonin inhibition',
      'Histamine blockade',
      'Glucocorticoid effect'
    ],
    correctAnswerIndex: 2,
    explanation: 'Propofol inhibits serotonin (5-HT₃) receptors → antiemetic effect.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_025',
    question: 'Midazolam\'s duration may be prolonged by:',
    options: [
      'Increased hepatic metabolism',
      'Decreased protein binding',
      'Increased renal clearance',
      'Low oral bioavailability',
      'Water solubility'
    ],
    correctAnswerIndex: 1,
    explanation: 'Less protein binding → more free drug → longer action.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_026',
    question: 'Thiopental is contraindicated in:',
    options: [
      'Epilepsy',
      'Myocardial infarction',
      'Porphyria',
      'Glaucoma',
      'Ischemic stroke'
    ],
    correctAnswerIndex: 2,
    explanation: 'Thiopental can precipitate porphyria crises.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_027',
    question: 'Etomidate suppresses cortisol synthesis by inhibiting:',
    options: [
      'Aromatase',
      '11-β-hydroxylase',
      'CYP3A4',
      'Renin',
      '5-α-reductase'
    ],
    correctAnswerIndex: 1,
    explanation: 'Etomidate inhibits 11-β-hydroxylase → ↓ cortisol & aldosterone.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_028',
    question: 'Which is NOT a property of benzodiazepines?',
    options: [
      'Anxiolysis',
      'Amnesia',
      'Anticonvulsant',
      'Analgesia',
      'Sedation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Benzodiazepines lack analgesic properties.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_029',
    question: 'Main receptor target of propofol:',
    options: [
      'NMDA antagonism',
      'Dopamine agonism',
      'GABA-A agonism',
      'Serotonin blockade',
      'AMPA inhibition'
    ],
    correctAnswerIndex: 2,
    explanation: 'Propofol enhances GABA-A activity → sedation/anesthesia.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_030',
    question: 'Which is NOT a feature of propofol infusion syndrome?',
    options: [
      'Metabolic acidosis',
      'Rhabdomyolysis',
      'Hyperkalemia',
      'Bradycardia',
      'Leukocytosis'
    ],
    correctAnswerIndex: 4,
    explanation: 'PRIS includes acidosis, rhabdomyolysis, cardiovascular collapse; leukocytosis is not typical.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_031',
    question: 'Mechanism of midazolam\'s amnestic effect:',
    options: [
      'NMDA blockade',
      'Increased dopamine',
      '↓ Cerebral blood flow',
      'GABA-A effect in hippocampus',
      'Beta-blockade'
    ],
    correctAnswerIndex: 3,
    explanation: 'Midazolam acts on hippocampal GABA-A → anterograde amnesia.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_032',
    question: 'Why is propofol prone to contamination?',
    options: [
      'Low pH',
      'Contains sugar',
      'Lipid emulsion formulation',
      'Colorless solution',
      'Water-soluble'
    ],
    correctAnswerIndex: 2,
    explanation: 'Propofol\'s lipid emulsion supports bacterial growth → must be aseptically handled.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_033',
    question: 'When is etomidate-induced cortisol suppression most critical?',
    options: [
      'Elective surgery',
      'Short procedures',
      'Critically ill septic patients',
      'Healthy individuals',
      'ICU sedation'
    ],
    correctAnswerIndex: 2,
    explanation: 'In critical illness, cortisol is essential; suppression can worsen outcomes.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_034',
    question: 'Most severe outcome of propofol infusion syndrome:',
    options: [
      'Antiemesis',
      'Rhabdomyolysis',
      'Seizures',
      'Cardiovascular collapse',
      'Hyperglycemia'
    ],
    correctAnswerIndex: 3,
    explanation: 'PRIS may cause fatal cardiovascular collapse.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_035',
    question: 'Which is NOT an advantage of ketamine?',
    options: [
      'Analgesia',
      'Preserves spontaneous respiration',
      'Bronchodilation',
      'Minimal cerebral effects',
      'Cardiovascular stimulation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ketamine increases CBF & ICP → not minimal cerebral effect.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_036',
    question: 'Most common adverse effect of thiopental:',
    options: [
      'Hypertension',
      'Laryngospasm',
      'Hypothermia',
      'Hypoglycemia',
      'Nephrotoxicity'
    ],
    correctAnswerIndex: 1,
    explanation: 'Thiopental often causes laryngospasm, especially in children.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_037',
    question: 'Which pharmacokinetic property applies to midazolam?',
    options: [
      'Slow onset',
      'Long duration',
      'Water-soluble',
      'Low metabolism',
      'No renal clearance'
    ],
    correctAnswerIndex: 2,
    explanation: 'Midazolam is water-soluble (imidazole ring), suitable for IV use.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_038',
    question: 'Which of the following agents is most commonly used for intravenous induction?',
    options: [
      'Etomidate',
      'Propofol',
      'Ketamine',
      'Midazolam',
      'Thiopental'
    ],
    correctAnswerIndex: 1,
    explanation: 'Propofol is the most frequently used IV agent for induction due to its rapid onset, quick recovery, and antiemetic properties.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_039',
    question: 'What is the primary mechanism of hypotension caused by propofol?',
    options: [
      'Renal vasodilation',
      'Vagal activation',
      'Myocardial depression and systemic vasodilation',
      'Increased sympathetic activity',
      'Baroreflex stimulation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Propofol decreases cardiac output (negative inotropy) and reduces systemic vascular resistance → hypotension.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_040',
    question: 'In which of the following conditions is ketamine not preferred?',
    options: [
      'Asthma',
      'Hypovolemic shock',
      'Pediatric patient',
      'Ischemic heart disease',
      'Burn patient'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ketamine increases sympathetic activity → elevates heart rate and oxygen consumption → undesirable in ischemic heart disease.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_041',
    question: 'What is the most prominent advantage of etomidate?',
    options: [
      'Antiemetic effect',
      'Increases sympathetic activity',
      'Provides hemodynamic stability',
      'Causes amnesia',
      'Provides analgesia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Etomidate has minimal cardiovascular effects and provides hemodynamic stability → preferred in patients with cardiac risk.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_042',
    question: 'What is the advantageous feature of barbiturates (thiopental) in neuroanesthesia?',
    options: [
      'Increases CMRO₂',
      'Increases cerebral blood flow',
      'Lowers seizure threshold',
      'Provides neuroprotection',
      'Increases intracranial pressure'
    ],
    correctAnswerIndex: 3,
    explanation: 'Barbiturates reduce CMRO₂ and cerebral blood flow → protect the brain in hypoxic/ischemic conditions (neuroprotection).',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_043',
    question: 'What is the main mechanism of action of dexmedetomidine?',
    options: [
      'GABA-A agonism',
      'NMDA antagonism',
      'Alpha-2 agonism',
      'Muscarinic receptor blockade',
      'Beta-1 selectivity'
    ],
    correctAnswerIndex: 2,
    explanation: 'Dexmedetomidine is a selective alpha-2 agonist → produces sedation + analgesia without respiratory depression.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_044',
    question: 'What is the main complication of propofol infusion syndrome (PRIS)?',
    options: [
      'Hypokalemia',
      'Metabolic alkalosis',
      'Bradyarrhythmia and rhabdomyolysis',
      'Hypothermia',
      'Hypoglycemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'PRIS is associated with bradycardia, rhabdomyolysis, lactic acidosis, and cardiac arrest → particularly with prolonged high-dose use.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_045',
    question: 'Which of the following is an advantageous feature of midazolam?',
    options: [
      'Analgesic effect',
      'Long duration of action',
      'Anticonvulsant effect',
      'Cardiac stimulation',
      'Increases spontaneous respiration'
    ],
    correctAnswerIndex: 2,
    explanation: 'Midazolam is a GABA-A agonist with sedative, amnestic, and anticonvulsant effects. It does not provide analgesia.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_046',
    question: 'Which IV anesthetic has antiemetic effects?',
    options: [
      'Ketamine',
      'Etomidate',
      'Propofol',
      'Thiopental',
      'Midazolam'
    ],
    correctAnswerIndex: 2,
    explanation: 'Propofol reduces postoperative nausea and vomiting → also preferred in TIVA for this reason.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_047',
    question: 'What is the most common transient motor side effect of etomidate?',
    options: [
      'Tremor',
      'Tonic-clonic seizure',
      'Myoclonic jerks',
      'Fasciculations',
      'Spasticity'
    ],
    correctAnswerIndex: 2,
    explanation: 'Etomidate frequently causes myoclonic jerks → involuntary, transient muscle contractions.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_048',
    question: 'What is the main hemodynamic effect of dexmedetomidine?',
    options: [
      'Tachycardia',
      'Hypertension',
      'Bradycardia',
      'Atrial fibrillation',
      'Pulmonary hypertension'
    ],
    correctAnswerIndex: 2,
    explanation: 'As an alpha-2 agonist, it reduces sympathetic activity → bradycardia and hypotension are common.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_049',
    question: 'What is the most common psychotropic side effect after ketamine anesthesia?',
    options: [
      'Delirium',
      'Sedation',
      'Anterograde amnesia',
      'Bradyarrhythmia',
      'Increased appetite'
    ],
    correctAnswerIndex: 0,
    explanation: 'Ketamine can cause hallucinations, agitation, and delirium during recovery → reduced by benzodiazepines.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_050',
    question: 'Which of the following agents is most suitable for total intravenous anesthesia (TIVA)?',
    options: [
      'Ketamine',
      'Thiopental',
      'Propofol',
      'Midazolam',
      'Dexmedetomidine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Propofol is the preferred agent in TIVA due to rapid recovery, antiemetic effects, and easy titration.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_051',
    question: 'Which agent provides analgesia and sedation at the spinal cord level without respiratory depression?',
    options: [
      'Ketamine',
      'Propofol',
      'Dexmedetomidine',
      'Etomidate',
      'Fentanyl'
    ],
    correctAnswerIndex: 2,
    explanation: 'Dexmedetomidine acts on alpha-2 receptors in the locus coeruleus and spinal cord → sedation + analgesia without respiratory depression.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_052',
    question: 'What is the main risk associated with the lipid emulsion in propofol formulations?',
    options: [
      'Hepatotoxicity',
      'Anaphylactic reaction',
      'Hypoglycemia',
      'Hyponatremia',
      'Hypervolemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Propofol contains soybean oil and egg phospholipids → risk of anaphylaxis in allergic patients.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_053',
    question: 'Which agent is known for minimal cardiodepressant effects?',
    options: [
      'Propofol',
      'Midazolam',
      'Etomidate',
      'Ketamine',
      'Fentanyl'
    ],
    correctAnswerIndex: 2,
    explanation: 'Etomidate has minimal cardiovascular effects → the most hemodynamically stable IV induction agent.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_054',
    question: 'Which statement about midazolam is correct?',
    options: [
      'Has slow onset',
      'Cannot be administered orally',
      'Metabolized by CYP3A4',
      'Blocks NMDA receptors',
      'Has no reversal agent'
    ],
    correctAnswerIndex: 2,
    explanation: 'Midazolam is metabolized by CYP3A4 → subject to drug interactions.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_055',
    question: 'In which patients is propofol-induced respiratory depression most pronounced?',
    options: [
      'Asthma',
      'Hypovolemic shock',
      'Elderly patients',
      'Obese patients',
      'Hypothyroidism'
    ],
    correctAnswerIndex: 2,
    explanation: 'Elderly patients are more sensitive to drugs → propofol causes more marked apnea and bradycardia → requires dose titration.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_056',
    question: 'Which of the following is a feature of thiopental?',
    options: [
      'Provides analgesia',
      'May cause bronchospasm',
      'Blocks GABA-A receptors',
      'Increases CMRO₂',
      'Slow onset'
    ],
    correctAnswerIndex: 1,
    explanation: 'Thiopental may trigger histamine release → bronchospasm risk → caution in asthma patients.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_057',
    question: 'In which condition is ketamine use particularly advantageous?',
    options: [
      'Hypertensive crisis',
      'Epileptic seizure',
      'Bronchospastic attack',
      'Severe coronary artery disease',
      'Hypertrophic cardiomyopathy'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ketamine is a potent bronchodilator → useful in asthma and bronchospasm.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_058',
    question: 'In which condition is thiopental absolutely contraindicated?',
    options: [
      'Pregnancy',
      'Epilepsy',
      'Porphyria',
      'Asthma',
      'Hypotension'
    ],
    correctAnswerIndex: 2,
    explanation: 'Thiopental induces porphyrin synthesis → can trigger acute porphyria attacks → absolute contraindication.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_059',
    question: 'Which of the following IV anesthetics does NOT have anticonvulsant effects (or has weak effect)?',
    options: [
      'Midazolam',
      'Propofol',
      'Thiopental',
      'Etomidate',
      'Diazepam'
    ],
    correctAnswerIndex: 3,
    explanation: 'Etomidate may trigger myoclonic activity in some patients → weak anticonvulsant effect.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_060',
    question: 'Which lab parameter may increase with prolonged propofol infusion due to its lipid content?',
    options: [
      'Creatinine',
      'Lactate',
      'Triglycerides',
      'AST',
      'Bilirubin'
    ],
    correctAnswerIndex: 2,
    explanation: 'Long-term propofol infusion may increase triglyceride levels → should be monitored.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_061',
    question: 'Which of the following does the sedation profile of dexmedetomidine most closely resemble?',
    options: [
      'That produced by propofol',
      'Natural sleep',
      'That produced by ketamine',
      'Deep hypnosis',
      'GABA agonists'
    ],
    correctAnswerIndex: 1,
    explanation: 'Dexmedetomidine acts via the locus coeruleus → producing sedation similar to natural sleep. The patient can be easily aroused.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_062',
    question: 'Which of the following is NOT a feature of propofol infusion syndrome (PRIS)?',
    options: [
      'Metabolic acidosis',
      'Bradycardia',
      'Rhabdomyolysis',
      'Hypothermia',
      'Heart failure'
    ],
    correctAnswerIndex: 3,
    explanation: 'PRIS is characterized by metabolic acidosis, bradycardia, rhabdomyolysis, hyperkalemia, and heart failure. Hypothermia is not typical.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_063',
    question: 'What is the most common transient movement seen during induction with etomidate?',
    options: [
      'Shivering',
      'Fasciculations',
      'Nystagmus',
      'Myoclonus',
      'Hiccups'
    ],
    correctAnswerIndex: 3,
    explanation: 'Etomidate commonly causes myoclonic jerks, which are brief and transient.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_064',
    question: 'What should be done in the case of paradoxical agitation after midazolam use?',
    options: [
      'Administer naloxone',
      'Continue with ketamine',
      'Administer flumazenil',
      'Start propofol',
      'Give dexamethasone'
    ],
    correctAnswerIndex: 2,
    explanation: 'In cases of benzodiazepine-induced agitation or oversedation, flumazenil is the antidote.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_065',
    question: 'Which intravenous anesthetic has the fastest onset of action?',
    options: [
      'Propofol',
      'Thiopental',
      'Etomidate',
      'Ketamine',
      'Midazolam'
    ],
    correctAnswerIndex: 1,
    explanation: 'Thiopental acts within one brain circulation time (10–15 seconds) due to its high lipophilicity.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_066',
    question: 'Which agent is used as an antagonist of benzodiazepines?',
    options: [
      'Naloxone',
      'Flumazenil',
      'Neostigmine',
      'Sugammadex',
      'Atropine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Flumazenil reverses benzodiazepine effects by competitive antagonism at GABA-A receptors.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_067',
    question: 'Which IV anesthetic most effectively prevents intraoperative awareness?',
    options: [
      'Propofol',
      'Thiopental',
      'Etomidate',
      'Ketamine',
      'Dexmedetomidine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Propofol reliably lowers the Bispectral Index (BIS), reducing the risk of awareness.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_068',
    question: 'Which IV anesthetic has the most prominent "brain-protective" effect?',
    options: [
      'Propofol',
      'Thiopental',
      'Etomidate',
      'Ketamine',
      'Midazolam'
    ],
    correctAnswerIndex: 1,
    explanation: 'Thiopental reduces CMRO₂ by 50–60%, providing strong neuroprotection.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_069',
    question: 'Which of the following is NOT a feature of dexmedetomidine?',
    options: [
      'Alpha-2 adrenergic agonist',
      'Does not cause respiratory depression',
      'Provides analgesia',
      'Causes hypotension',
      'Anxiolytic effect'
    ],
    correctAnswerIndex: 3,
    explanation: 'Dexmedetomidine may cause bradycardia, but hypotension is not typical due to its alpha-2 selectivity.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_070',
    question: 'Which of the following is NOT an elimination pathway for IV anesthetics?',
    options: [
      'Hepatic metabolism',
      'Renal excretion',
      'Extrahepatic ester hydrolysis',
      'Exhalation via lungs',
      'Plasma esterases'
    ],
    correctAnswerIndex: 3,
    explanation: 'IV anesthetics are not excreted by the lungs. Some (like remifentanil) are metabolized by plasma esterases.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_071',
    question: 'Which of the following is NOT a feature of remifentanil?',
    options: [
      'Ultra-short duration of action',
      'Metabolized by esterases',
      'Context-insensitive half-life',
      'Provides postoperative analgesia',
      'Hemodynamic stability'
    ],
    correctAnswerIndex: 3,
    explanation: 'Remifentanil is rapidly metabolized → it does not provide postoperative analgesia, so additional analgesics are required.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_072',
    question: 'Which IV anesthetic causes the most cardiovascular depression?',
    options: [
      'Ketamine',
      'Propofol',
      'Etomidate',
      'Midazolam',
      'Dexmedetomidine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Propofol markedly decreases systemic vascular resistance and cardiac output → strongest cardiovascular depressant.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_073',
    question: 'Which of the following is NOT a feature of propofol infusion syndrome (PRIS)?',
    options: [
      'Metabolic acidosis',
      'Rhabdomyolysis',
      'Hyperkalemia',
      'Hepatic failure',
      'Cardiac dysrhythmia'
    ],
    correctAnswerIndex: 3,
    explanation: 'PRIS is not associated with hepatic failure, though hepatomegaly may occur.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_074',
    question: 'Which IV anesthetic produces bronchodilation?',
    options: [
      'Propofol',
      'Thiopental',
      'Ketamine',
      'Etomidate',
      'Midazolam'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ketamine activates the sympathetic nervous system → bronchodilation.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_075',
    question: 'Which IV anesthetic most significantly lowers intracranial pressure?',
    options: [
      'Ketamine',
      'Propofol',
      'Etomidate',
      'Thiopental',
      'Midazolam'
    ],
    correctAnswerIndex: 3,
    explanation: 'Thiopental strongly reduces cerebral metabolism → markedly lowers ICP.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_076',
    question: 'Which of the following is an alpha-2 adrenergic agonist?',
    options: [
      'Propofol',
      'Ketamine',
      'Etomidate',
      'Dexmedetomidine',
      'Midazolam'
    ],
    correctAnswerIndex: 3,
    explanation: 'Dexmedetomidine is a selective alpha-2 adrenergic agonist.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_077',
    question: 'Which IV anesthetic causes the least histamine release?',
    options: [
      'Morphine',
      'Thiopental',
      'Propofol',
      'Ketamine',
      'Etomidate'
    ],
    correctAnswerIndex: 4,
    explanation: 'Etomidate causes minimal histamine release compared to others.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_078',
    question: 'Which IV anesthetic causes the most injection pain?',
    options: [
      'Propofol',
      'Thiopental',
      'Etomidate',
      'Ketamine',
      'Midazolam'
    ],
    correctAnswerIndex: 0,
    explanation: 'Propofol is notorious for causing pain on injection.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_079',
    question: 'Which IV anesthetic is most likely to cause nausea and vomiting?',
    options: [
      'Propofol',
      'Thiopental',
      'Etomidate',
      'Ketamine',
      'Midazolam'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ketamine increases the incidence of postoperative nausea and vomiting.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_080',
    question: 'Which of the following is NOT a pharmacokinetic feature of thiopental?',
    options: [
      'High protein binding',
      'Rapid brain penetration',
      'Accumulation in fat tissue',
      'Renal elimination',
      'Redistribution'
    ],
    correctAnswerIndex: 3,
    explanation: 'Thiopental is metabolized in the liver, not excreted directly by the kidneys.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_081',
    question: 'Which IV anesthetic causes the most hypotension?',
    options: [
      'Propofol',
      'Thiopental',
      'Etomidate',
      'Ketamine',
      'Midazolam'
    ],
    correctAnswerIndex: 0,
    explanation: 'Propofol produces the most significant hypotension by reducing systemic vascular resistance.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_082',
    question: 'Which IV anesthetic binds least to plasma proteins?',
    options: [
      'Propofol',
      'Thiopental',
      'Etomidate',
      'Ketamine',
      'Midazolam'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ketamine has the lowest protein binding (20–30%).',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_083',
    question: 'Which of the following is NOT a pharmacokinetic property of propofol?',
    options: [
      'Rapid onset',
      'Short duration',
      'Hepatic metabolism',
      'Extrahepatic elimination',
      'Active metabolite'
    ],
    correctAnswerIndex: 4,
    explanation: 'Propofol has no active metabolites.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_084',
    question: 'Which IV anesthetic has the strongest neuroprotective effect?',
    options: [
      'Propofol',
      'Thiopental',
      'Etomidate',
      'Ketamine',
      'Midazolam'
    ],
    correctAnswerIndex: 1,
    explanation: 'Thiopental markedly reduces cerebral metabolism → strong neuroprotection.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'intravenous_anesthetics_085',
    question: 'Which of the following is NOT seen in benzodiazepine overdose?',
    options: [
      'Respiratory depression',
      'Hypotension',
      'Hypertension',
      'Coma',
      'Convulsions'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypertension is not seen; hypotension may occur in benzodiazepine overdose.',
    category: 'Intravenous Anesthetics',
    difficulty: 2
  ),
];
