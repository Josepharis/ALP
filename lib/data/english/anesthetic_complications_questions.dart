import '../../models/question.dart';

List<Question> anestheticComplicationsQuestions = [
  Question(
    id: 'anesthetic_complications_001',
    question: 'Which of the following is one of the most common major complications related to anesthesia?',
    options: [
      'Malignant hyperthermia',
      'Atelectasis',
      'Laryngospasm',
      'Postoperative nausea and vomiting (PONV)',
      'Anesthesia-related death'
    ],
    correctAnswerIndex: 3,
    explanation: 'Postoperative nausea and vomiting (PONV) is one of the most common complications → it affects patient comfort and discharge time.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_002',
    question: 'Intraoperative awareness risk is highest in which patient group?',
    options: [
      'Pediatric patients',
      'ASA I elective surgery patients',
      'Emergency trauma patients',
      'Ophthalmic surgery patients',
      'Obstetric patients'
    ],
    correctAnswerIndex: 2,
    explanation: 'In trauma/emergency cases, low doses of anesthetics may be required → increasing the risk of awareness.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_003',
    question: 'Which patient has the highest risk for postoperative respiratory depression?',
    options: [
      'Non-obese, young patient',
      'Chronic opioid user',
      'Patient with obstructive sleep apnea (OSA)',
      'Asthmatic patient',
      'Controlled hypertensive patient'
    ],
    correctAnswerIndex: 2,
    explanation: 'Patients with OSA are highly sensitive to opioids → greatest risk for postoperative respiratory depression.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_004',
    question: 'Strongest risk factor for postoperative delirium?',
    options: [
      'Prolonged fasting',
      'Intraoperative hypothermia',
      'Geriatric age',
      'Muscle relaxant use',
      'Young age'
    ],
    correctAnswerIndex: 2,
    explanation: 'Elderly patients, especially after major surgery, are at highest risk for delirium.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_005',
    question: 'Most common drug group responsible for perioperative anaphylaxis?',
    options: [
      'Local anesthetics',
      'Opioids',
      'Non-depolarizing muscle relaxants',
      'Benzodiazepines',
      'Antibiotics'
    ],
    correctAnswerIndex: 2,
    explanation: 'Muscle relaxants, especially rocuronium and succinylcholine, are the most frequent cause of intraoperative anaphylaxis.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_006',
    question: 'First step in suspected air embolism?',
    options: [
      'Trendelenburg position',
      'Start anticoagulation',
      'Hyperventilation',
      'Supine positioning',
      'Low FiO₂ administration'
    ],
    correctAnswerIndex: 0,
    explanation: 'Trendelenburg + left lateral position prevents air from entering pulmonary circulation → first intervention.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_007',
    question: 'In which condition is the risk of postoperative agitation lowest?',
    options: [
      'Pediatric patient',
      'Alzheimer\'s disease',
      'Hyperthyroidism',
      'Parkinson\'s disease',
      'Opiate dependence'
    ],
    correctAnswerIndex: 3,
    explanation: 'Parkinson\'s patients usually present with delirium and rigidity, not agitation.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_008',
    question: 'Most likely effect of postoperative hypothermia after GA?',
    options: [
      'Decreased insulin resistance',
      'Increased oxygen consumption',
      'Increased coagulation activity',
      'Increased cardiac output',
      'Reduced mortality'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hypothermia increases oxygen consumption due to thermogenesis, disrupts metabolism, and raises infection/bleeding risk.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_009',
    question: 'Factor with the least role in postoperative cognitive dysfunction (POCD)?',
    options: [
      'Geriatric age',
      'Prolonged surgery',
      'Hypotension',
      'Anxiety level',
      'Low education level'
    ],
    correctAnswerIndex: 3,
    explanation: 'POCD is mainly related to physiological/structural factors → anxiety is not a direct contributor.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_010',
    question: 'Most common cardiac arrhythmia in the postoperative period?',
    options: [
      'Atrial fibrillation',
      'Ventricular tachycardia',
      'Sinus tachycardia',
      'Torsades de pointes',
      'Junctional tachycardia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sinus tachycardia is most frequent → usually due to pain, hypovolemia, anxiety, or hypoxia.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_011',
    question: 'Which systemic factor increases postoperative bleeding risk?',
    options: [
      'Hypocalcemia',
      'Hyperkalemia',
      'Hyponatremia',
      'Hypermagnesemia',
      'Hypoglycemia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Calcium is required for coagulation cascade activation → hypocalcemia increases bleeding risk.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_012',
    question: 'Which anesthetic agent is least likely to increase postoperative delirium risk?',
    options: [
      'Midazolam',
      'Dexmedetomidine',
      'Propofol',
      'Halothane',
      'Sevoflurane'
    ],
    correctAnswerIndex: 1,
    explanation: 'Dexmedetomidine actually reduces delirium risk → maintains arousable sedation with less cognitive impairment.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_013',
    question: 'Surgery most associated with postoperative visual loss (POVL)?',
    options: [
      'Cataract surgery',
      'Spine surgery in prone position',
      'Laparoscopic cholecystectomy',
      'Intrathoracic tumor resection',
      'Cephalohematoma drainage'
    ],
    correctAnswerIndex: 1,
    explanation: 'Prolonged prone spine surgeries may cause ischemic optic neuropathy due to orbital pressure and reduced perfusion.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_014',
    question: 'Which is NOT associated with postoperative hypothermia?',
    options: [
      'Coagulopathy',
      'Increased infection risk',
      'Prolonged neuromuscular blockade',
      'Decreased oxygen consumption',
      'Delayed emergence'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hypothermia increases oxygen consumption, not decreases. Others are established effects.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_015',
    question: 'Which systemic condition increases the risk of local anesthetic systemic toxicity (LAST)?',
    options: [
      'Hyperkalemia',
      'Hypoproteinemia',
      'Hyponatremia',
      'Hyperlipidemia',
      'Hypotension'
    ],
    correctAnswerIndex: 1,
    explanation: 'Local anesthetics bind albumin → low protein means more free drug → toxicity risk increases.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_016',
    question: 'Most associated factor with transient neurologic symptoms (TNS) after spinal anesthesia?',
    options: [
      'Prone positioning',
      'Dose of anesthetic',
      'Lidocaine use',
      'Hypothermia',
      'Elderly age'
    ],
    correctAnswerIndex: 2,
    explanation: 'Spinal lidocaine is most associated with TNS → transient back/leg pain post-procedure.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_017',
    question: 'Nerve most at risk of compression neuropathy during anesthesia positioning?',
    options: [
      'Ulnar nerve',
      'Median nerve',
      'Femoral nerve',
      'Glossopharyngeal nerve',
      'Oculomotor nerve'
    ],
    correctAnswerIndex: 0,
    explanation: 'Ulnar nerve is superficial at the elbow → vulnerable to compression, especially in supine position.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_018',
    question: 'Most common psychological complication after anesthesia?',
    options: [
      'Postoperative cognitive dysfunction (POCD)',
      'Psychosis',
      'Anesthesia phobia',
      'PTSD',
      'Hallucinations'
    ],
    correctAnswerIndex: 0,
    explanation: 'POCD, especially in elderly, manifests as impaired memory, attention, and executive function.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_019',
    question: 'One of the earliest cardiac findings in LAST?',
    options: [
      'Ventricular fibrillation',
      'Widened QRS',
      'Sinus bradycardia',
      'PR prolongation',
      'ST depression'
    ],
    correctAnswerIndex: 1,
    explanation: 'Local anesthetics slow conduction → widened QRS is an early EKG sign.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_020',
    question: 'Nerve most at risk in lithotomy position?',
    options: [
      'Femoral nerve',
      'Peroneal nerve',
      'Ulnar nerve',
      'Median nerve',
      'Tibial nerve'
    ],
    correctAnswerIndex: 1,
    explanation: 'Peroneal nerve runs superficially at fibular head → easily compressed in lithotomy position.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_021',
    question: 'Which is NOT appropriate in suspected air embolism?',
    options: [
      'Prone position',
      'Trendelenburg + left lateral positioning',
      '100% O₂ administration',
      'End-tidal CO₂ monitoring',
      'Considering central venous aspiration'
    ],
    correctAnswerIndex: 0,
    explanation: 'Prone positioning facilitates air embolus entry into the right heart → should be avoided.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_022',
    question: 'Most common intraoperative anesthesia complication?',
    options: [
      'Hypotension',
      'Hyperkalemia',
      'Allergic reaction',
      'Laryngospasm',
      'Pulmonary embolism'
    ],
    correctAnswerIndex: 0,
    explanation: 'Anesthetic agents cause peripheral vasodilation → hypotension is most frequent complication.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_023',
    question: 'Most frequent complication during endotracheal intubation?',
    options: [
      'Bronchospasm',
      'Dental injury',
      'Hypoglycemia',
      'Hypercapnia',
      'Atelectasis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Mechanical trauma during intubation most often leads to dental damage.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_024',
    question: 'Aspiration pneumonia most often occurs in which anesthesia phase?',
    options: [
      'Induction',
      'Maintenance',
      'Emergence',
      'Preoperative',
      'Post-op day 2'
    ],
    correctAnswerIndex: 0,
    explanation: 'Loss of consciousness and reflexes during induction → aspiration risk highest.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_025',
    question: 'Undiagnosed intraoperative air embolism may most often be mistaken for?',
    options: [
      'Anesthetic depth',
      'Pulmonary embolism',
      'Hypovolemia',
      'Hypercapnia',
      'Myocardial infarction'
    ],
    correctAnswerIndex: 1,
    explanation: 'Venous air embolism and pulmonary embolism present similarly (sudden hypoxia, hypotension).',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_026',
    question: 'Earliest clinical sign of local anesthetic systemic toxicity (LAST)?',
    options: [
      'Seizures',
      'Bradycardia',
      'Metallic taste',
      'Respiratory depression',
      'Muscle rigidity'
    ],
    correctAnswerIndex: 2,
    explanation: 'Early neurologic signs include metallic taste, tinnitus, perioral numbness.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_027',
    question: 'Most important complication of nitrous oxide (N₂O) use?',
    options: [
      'Hypotension',
      'Nausea',
      'Increased middle ear pressure',
      'Respiratory depression',
      'Diarrhea'
    ],
    correctAnswerIndex: 2,
    explanation: 'N₂O expands in closed spaces → increases middle ear pressure.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_028',
    question: 'Earliest sign of airway obstruction?',
    options: [
      'Cyanosis',
      'Hypotension',
      'Stridor',
      'Bradycardia',
      'Hypothermia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Stridor (inspiratory noise) is an early indicator of upper airway obstruction.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_029',
    question: 'Paralysis due to anesthesia is most commonly associated with which condition?',
    options: [
      'Hypoglycemia',
      'Local anesthetic toxicity',
      'Spinal cord ischemia',
      'Hypothermia',
      'Hypokalemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Spinal cord ischemia can cause permanent spinal cord damage → leading to neurological deficits.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_030',
    question: 'In a patient with bronchospasm, which finding is most likely heard on auscultation?',
    options: [
      'Rhonchi',
      'Crackles',
      'Wheezing',
      'Friction rub',
      'Silence'
    ],
    correctAnswerIndex: 2,
    explanation: 'The typical auscultation finding of bronchospasm is wheezing.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_031',
    question: 'First-line drug in anesthesia-related anaphylaxis?',
    options: [
      'Antihistamines',
      'Corticosteroids',
      'Epinephrine',
      'Dopamine',
      'Salbutamol'
    ],
    correctAnswerIndex: 2,
    explanation: 'Epinephrine is the life-saving drug in anaphylaxis → α- and β-adrenergic effects provide bronchodilation and vasoconstriction.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_032',
    question: 'Which drug most commonly causes perioperative anaphylaxis?',
    options: [
      'Propofol',
      'Succinylcholine',
      'Lidocaine',
      'Ketamine',
      'Fentanyl'
    ],
    correctAnswerIndex: 1,
    explanation: 'Muscle relaxants, especially succinylcholine and rocuronium, are the leading cause of perioperative anaphylaxis.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_033',
    question: 'Postoperative urinary retention is most associated with?',
    options: [
      'Sevoflurane',
      'Anticholinergic premedication',
      'NSAID use',
      'Local anesthesia',
      'Beta-blockers'
    ],
    correctAnswerIndex: 1,
    explanation: 'Anticholinergics (e.g., atropine, glycopyrrolate) decrease detrusor muscle activity → increasing risk of urinary retention.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_034',
    question: 'Which of the following is used as a narcotic antagonist?',
    options: [
      'Flumazenil',
      'Neostigmine',
      'Naloxone',
      'Atropine',
      'Dantrolene'
    ],
    correctAnswerIndex: 2,
    explanation: 'Naloxone is an opioid antagonist → reverses opioid-induced respiratory depression.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_035',
    question: 'Bradycardia + hypotension + bronchospasm triad is most associated with?',
    options: [
      'Hypovolemia',
      'Anaphylaxis',
      'Total spinal block',
      'Malignant hyperthermia',
      'Hypoglycemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Anaphylaxis → systemic vasodilation, bradycardia, and bronchospasm.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_036',
    question: 'Position with the highest risk of peripheral nerve injury?',
    options: [
      'Lithotomy',
      'Lateral decubitus',
      'Trendelenburg',
      'Supine',
      'Prone'
    ],
    correctAnswerIndex: 0,
    explanation: 'In lithotomy position, peroneal and ulnar nerves are most at risk of injury.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_037',
    question: 'Awake, agitated patient with muscle rigidity and dilated pupils → most likely diagnosis?',
    options: [
      'Hypothermia',
      'Malignant hyperthermia',
      'Awareness under anesthesia',
      'Atelectasis',
      'Bronchospasm'
    ],
    correctAnswerIndex: 2,
    explanation: 'Awareness: the patient is conscious during anesthesia → can cause severe psychological trauma.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_038',
    question: 'Which is NOT an early symptom of hypoxia?',
    options: [
      'Tachycardia',
      'Agitation',
      'Cyanosis',
      'Hypotension',
      'Bradycardia'
    ],
    correctAnswerIndex: 4,
    explanation: 'Bradycardia is a late sign of hypoxia; early signs are tachycardia and agitation.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_039',
    question: 'Fever and chills after transfusion most likely indicate?',
    options: [
      'Hemolytic transfusion reaction',
      'Febrile non-hemolytic reaction',
      'Allergic reaction',
      'GVHD',
      'Hyperkalemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Most common transfusion reaction → fever and chills without hemolysis.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_040',
    question: 'Most typical physical finding in a patient given narcotics?',
    options: [
      'Mydriasis',
      'Bradycardia',
      'Gastric dilation',
      'Dilated pupils',
      'Miosis'
    ],
    correctAnswerIndex: 4,
    explanation: 'Opioids stimulate parasympathetic activity → classic finding is miosis (pinpoint pupils).',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_041',
    question: 'Most likely cause of severe postoperative agitation?',
    options: [
      'Hyperkalemia',
      'Hypoxemia',
      'Hyperglycemia',
      'Hypothermia',
      'Hyponatremia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hypoxemia → brain hypoxia is the most frequent cause of postoperative agitation/mental changes.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_042',
    question: 'Position most associated with aspiration after anesthesia?',
    options: [
      'Supine',
      'Lateral',
      'Trendelenburg',
      'Sims',
      'Sitting'
    ],
    correctAnswerIndex: 0,
    explanation: 'Supine position facilitates regurgitation of gastric contents into trachea → aspiration risk.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_043',
    question: 'Earliest lab finding in malignant hyperthermia crisis?',
    options: [
      'Elevated CK',
      'Hyperkalemia',
      'Metabolic acidosis',
      'Myoglobinuria',
      'Hyperthermia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Metabolic acidosis (pH <7.25) and sudden rise in ETCO₂ (>60 mmHg) appear first. CK and hyperthermia appear later; myoglobinuria much later.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_044',
    question: 'When is laryngospasm most common?',
    options: [
      'During induction',
      'During intubation',
      'After extubation',
      'Under deep anesthesia',
      'During surgical stimulation'
    ],
    correctAnswerIndex: 2,
    explanation: '80% occur after extubation, especially in stage II anesthesia with secretions. Incidence in pediatrics: 17–25%.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_045',
    question: 'First symptom of local anesthetic systemic toxicity (LAST)?',
    options: [
      'Cardiac arrest',
      'Seizures',
      'Loss of consciousness',
      'Perioral paresthesia',
      'Tinnitus'
    ],
    correctAnswerIndex: 4,
    explanation: 'Classic sequence: metallic taste → tinnitus → perioral paresthesia → seizures → cardiac arrest. In bupivacaine, cardiac arrest may precede seizures.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_046',
    question: 'Leading cause of anesthesia-related mortality?',
    options: [
      'Airway obstruction',
      'Aspiration pneumonia',
      'Anaphylactic shock',
      'Malignant hyperthermia',
      'Local anesthetic toxicity'
    ],
    correctAnswerIndex: 0,
    explanation: 'Airway complications, especially unrecognized hypoxia, account for ~60% of anesthesia deaths ("can\'t intubate, can\'t ventilate" scenario).',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_047',
    question: 'Gold standard for neuromuscular block monitoring?',
    options: [
      'Peripheral nerve stimulation',
      'Train-of-Four (TOF)',
      'Post-tetanic count',
      'EMG',
      'Mechanomyography (MMG)'
    ],
    correctAnswerIndex: 4,
    explanation: 'MMG is gold standard, but TOF is used in daily practice. TOF ratio <0.9 = residual paralysis.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_048',
    question: 'Most common cause of postoperative visual loss (POVL)?',
    options: [
      'Corneal abrasion',
      'Ischemic optic neuropathy (ION)',
      'Retinal artery occlusion',
      'Cortical blindness',
      'Glaucoma crisis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Anterior ION (89%) is the leading cause, especially after long prone spine surgeries (>6h). Risk factors: hypotension, anemia.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_049',
    question: 'Strongest risk factor for respiratory depression after postoperative opioid use?',
    options: [
      'OSA (Obstructive Sleep Apnea)',
      'Advanced age',
      'Obesity',
      'Renal failure',
      'All of the above'
    ],
    correctAnswerIndex: 0,
    explanation: 'OSA patients have a 10x higher risk. REM rebound peaks on POD3 → especially dangerous.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_050',
    question: 'Strongest risk factor for postoperative delirium?',
    options: [
      'Dementia history',
      'Age >65',
      'Long anesthesia duration',
      'Anticholinergic drug use',
      'All of the above'
    ],
    correctAnswerIndex: 4,
    explanation: 'Incidence reaches 50% in elderly; benzodiazepines and anticholinergics (scopolamine) triple the risk.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_051',
    question: 'Which surgical position carries the highest risk for brachial plexus injury?',
    options: [
      'Supine',
      'Prone',
      'Lateral decubitus',
      'Trendelenburg',
      'Jackknife'
    ],
    correctAnswerIndex: 3,
    explanation: 'Shoulder braces in Trendelenburg (>2h) may compress brachial plexus. Ulnar nerve injury is most common in supine position.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_052',
    question: 'Which is NOT a factor in Apfel\'s PONV scoring system?',
    options: [
      'Female gender',
      'Non-smoker',
      'Opioid use',
      'General anesthesia >1h',
      'History of PONV'
    ],
    correctAnswerIndex: 3,
    explanation: 'Apfel\'s score: 1) Female, 2) Non-smoker, 3) History of PONV, 4) Opioid use. Risk with 4 factors = 80%.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
  Question(
    id: 'anesthetic_complications_053',
    question: 'Pathognomonic finding of Propofol Infusion Syndrome (PRIS)?',
    options: [
      'Hyperkalemia',
      'Rhabdomyolysis',
      'Metabolic acidosis',
      'Elevated triglycerides',
      'Cardiogenic shock'
    ],
    correctAnswerIndex: 3,
    explanation: 'Serum triglycerides >500 mg/dL → diagnostic. Occurs with >4 mg/kg/hr prolonged infusions.',
    category: 'Anesthetic Complications',
    difficulty: 2
  ),
];
