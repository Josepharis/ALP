import '../../models/question.dart';

List<Question> localAnestheticsQuestions = [
  Question(
    id: 'local_anesthetics_001',
    question: 'What is the primary mechanism of action of local anesthetics?',
    options: [
      'Inhibit calcium channels',
      'Increase glutamate release',
      'Block sodium channels',
      'Activate GABA receptors',
      'Block NMDA receptors'
    ],
    correctAnswerIndex: 2,
    explanation: 'Local anesthetics block voltage-gated sodium channels in nerve cells, preventing action potentials and halting conduction.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_002',
    question: 'Which of the following local anesthetics is ester-type?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Prilocaine',
      'Procaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Procaine is an ester-type local anesthetic. Esters are metabolized by plasma cholinesterase and are short-acting.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_003',
    question: 'Which of the following is an amide-type local anesthetic?',
    options: [
      'Tetracaine',
      'Chloroprocaine',
      'Benzocaine',
      'Lidocaine',
      'Cocaine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Lidocaine is an amide local anesthetic, metabolized in the liver, with an intermediate duration of action.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_004',
    question: 'Regarding the effect of local anesthetics on nerve fibers, which is correct?',
    options: [
      'Motor fibers are blocked first',
      'Large fibers are blocked first',
      'Sympathetic fibers are blocked before pain fibers',
      'Heat-sensitive fibers are blocked first',
      'Block spreads proximally'
    ],
    correctAnswerIndex: 2,
    explanation: 'Local anesthetics block small fibers first: sympathetic > pain > temperature > touch > motor.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_005',
    question: 'Which property most affects the potency of a local anesthetic?',
    options: [
      'pKa value',
      'Lipid solubility',
      'Protein binding',
      'Molecular weight',
      'Plasma half-life'
    ],
    correctAnswerIndex: 1,
    explanation: 'Higher lipid solubility increases membrane penetration → higher potency.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_006',
    question: 'What is the most important factor determining the duration of action of a local anesthetic?',
    options: [
      'pKa',
      'Protein binding',
      'Molecular size',
      'Plasma level',
      'Lipophilicity'
    ],
    correctAnswerIndex: 1,
    explanation: 'Protein binding prolongs tissue retention and effect duration.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_007',
    question: 'Which property most affects the onset of action of a local anesthetic?',
    options: [
      'Lipophilicity',
      'Protein binding',
      'pKa value',
      'Molecular size',
      'Water solubility'
    ],
    correctAnswerIndex: 2,
    explanation: 'The closer the pKa to physiologic pH, the more non-ionized form exists → faster onset.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_008',
    question: 'Which local anesthetic has the highest risk of cardiotoxicity?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Procaine',
      'Ropivacaine',
      'Prilocaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Bupivacaine is highly cardiotoxic, risking ventricular arrhythmias and cardiac arrest.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_009',
    question: 'Which local anesthetic most often causes methemoglobinemia?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Prilocaine',
      'Mepivacaine',
      'Procaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Prilocaine metabolism produces o-toluidine, which induces methemoglobinemia.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_010',
    question: 'What is the toxic dose threshold of lidocaine (when combined with epinephrine)?',
    options: [
      '3 mg/kg',
      '5 mg/kg',
      '7 mg/kg',
      '9 mg/kg',
      '10 mg/kg'
    ],
    correctAnswerIndex: 2,
    explanation: 'With epinephrine, lidocaine\'s safe limit increases to ~7 mg/kg.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_011',
    question: 'Which local anesthetic is most commonly used for epidural anesthesia?',
    options: [
      'Procaine',
      'Prilocaine',
      'Bupivacaine',
      'Benzocaine',
      'Chloroprocaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Bupivacaine is long-acting and provides sensory block with minimal motor block → preferred in epidurals.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_012',
    question: 'Which adjuvant prolongs the effect of local anesthetics?',
    options: [
      'Antihistamines',
      'Epinephrine',
      'Antibiotics',
      'Corticosteroids',
      'Diazepam'
    ],
    correctAnswerIndex: 1,
    explanation: 'Epinephrine causes vasoconstriction → reduces absorption → prolongs duration and lowers toxicity.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_013',
    question: 'Which enzyme metabolizes ester-type local anesthetics?',
    options: [
      'Cytochrome P450',
      'Cholinesterase',
      'MAO',
      'Catechol-O-methyltransferase',
      'Glucuronyl transferase'
    ],
    correctAnswerIndex: 1,
    explanation: 'Ester anesthetics are rapidly broken down by plasma pseudocholinesterase.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_014',
    question: 'Which local anesthetic has marked topical effect?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Prilocaine',
      'Chloroprocaine',
      'Ropivacaine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Lidocaine works both via injection and topically (skin, airway).',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_015',
    question: 'Which is an early symptom of local anesthetic toxicity?',
    options: [
      'Bradycardia',
      'Convulsions',
      'Perioral numbness',
      'Respiratory arrest',
      'Hypotension'
    ],
    correctAnswerIndex: 2,
    explanation: 'Early CNS signs: perioral paresthesia, tinnitus, dizziness.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_016',
    question: 'Which local anesthetic has the fastest onset of action?',
    options: [
      'Bupivacaine',
      'Prilocaine',
      'Ropivacaine',
      'Lidocaine',
      'Procaine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Lidocaine\'s lower pKa gives rapid onset → suitable for emergencies.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_017',
    question: 'Which local anesthetic may cause systemic toxicity requiring lipid emulsion therapy?',
    options: [
      'Procaine',
      'Bupivacaine',
      'Chloroprocaine',
      'Benzocaine',
      'Tetracaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Bupivacaine is strongly cardiotoxic → lipid rescue therapy may be lifesaving.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_018',
    question: 'In addition to local anesthesia, which effect is prominent with cocaine?',
    options: [
      'Antibacterial effect',
      'NMDA antagonism',
      'MAO inhibition',
      'Vasoconstriction',
      'Antihistamine effect'
    ],
    correctAnswerIndex: 3,
    explanation: 'Cocaine inhibits norepinephrine reuptake → vasoconstriction.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_019',
    question: 'Which has the lowest toxicity and is safe for obstetric epidural use?',
    options: [
      'Lidocaine',
      'Prilocaine',
      'Bupivacaine',
      'Ropivacaine',
      'Benzocaine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ropivacaine is less cardiotoxic than bupivacaine and causes less motor block → ideal in obstetrics.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_020',
    question: 'What is the first-line treatment for methemoglobinemia?',
    options: [
      'Lactate infusion',
      'Phenylephrine',
      'Methylene blue',
      'Epinephrine',
      'Glucose infusion'
    ],
    correctAnswerIndex: 2,
    explanation: 'Methylene blue reduces methemoglobin to hemoglobin → treatment of choice.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_021',
    question: 'Which nerve fibers are blocked first by local anesthetics?',
    options: [
      'A-beta',
      'A-alpha',
      'B fibers (sympathetic)',
      'C fibers (pain)',
      'A-delta'
    ],
    correctAnswerIndex: 2,
    explanation: 'Thin, unmyelinated sympathetic B fibers are most sensitive.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_022',
    question: 'Which local anesthetic is used only topically?',
    options: [
      'Procaine',
      'Bupivacaine',
      'Benzocaine',
      'Ropivacaine',
      'Lidocaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Benzocaine is an ester used only topically, especially on mucosal surfaces.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_023',
    question: 'Which cardiovascular finding is associated with systemic local anesthetic toxicity?',
    options: [
      'Hypertension',
      'Tachycardia',
      'Ventricular arrhythmia',
      'Myoclonus',
      'Perioral paresthesia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Bupivacaine toxicity can cause ventricular arrhythmias and arrest.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_024',
    question: 'In epidural anesthesia, absorption of local anesthetics is fastest at which level?',
    options: [
      'Cervical',
      'Thoracic',
      'Lumbar',
      'Sacral',
      'Caudal'
    ],
    correctAnswerIndex: 1,
    explanation: 'Thoracic epidural space has highest blood flow → fastest absorption → higher systemic toxicity risk.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_025',
    question: 'In which condition should local anesthetic doses be reduced?',
    options: [
      'Hypertension',
      'Diabetes mellitus',
      'Elderly patients',
      'Obesity',
      'Smoking'
    ],
    correctAnswerIndex: 2,
    explanation: 'In elderly, reduced liver/kidney clearance prolongs drug action → lower doses are required.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_026',
    question: 'Which statement about ropivacaine is correct?',
    options: [
      'Only ester type',
      'Produces strongest motor block',
      'Has lower cardiotoxicity',
      'Short-acting agent',
      'Causes methemoglobinemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ropivacaine is safer than bupivacaine → lower cardiotoxicity, less motor block.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_027',
    question: 'Lidocaine\'s duration of action can be prolonged by which method?',
    options: [
      'Combined with metamizole',
      'High dose administration',
      'Combination with epinephrine',
      'Slow injection',
      'Intramuscular application'
    ],
    correctAnswerIndex: 2,
    explanation: 'Epinephrine decreases systemic absorption → prolongs duration.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_028',
    question: 'Which local anesthetic has the highest pKa?',
    options: [
      'Lidocaine',
      'Prilocaine',
      'Procaine',
      'Chloroprocaine',
      'Ropivacaine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Chloroprocaine has the highest pKa value.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_029',
    question: 'Which method increases absorption and risk of toxicity of local anesthetics?',
    options: [
      'Intravascular injection',
      'Combination with epinephrine',
      'Intrathecal administration',
      'Spinal injection',
      'Low dose administration'
    ],
    correctAnswerIndex: 0,
    explanation: 'Intravenous injection rapidly delivers drug systemically → markedly raises toxicity risk.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_030',
    question: 'Which local anesthetic produces minimal motor block, making it suitable for labor analgesia?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Procaine',
      'Ropivacaine',
      'Tetracaine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ropivacaine has weaker motor block than bupivacaine → preferred in obstetrics.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_031',
    question: 'Which has high neurotoxicity risk when used intrathecally?',
    options: [
      'Chloroprocaine',
      'Prilocaine',
      'Lidocaine',
      'Ropivacaine',
      'Procaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Lidocaine at high concentration intrathecally can cause cauda equina syndrome and persistent neurologic damage.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_032',
    question: 'Which is a late sign of local anesthetic systemic toxicity (LAST)?',
    options: [
      'Perioral numbness',
      'Tinnitus',
      'Tonic-clonic seizure',
      'Hypotension and cardiac arrest',
      'Dizziness'
    ],
    correctAnswerIndex: 3,
    explanation: 'Late findings include cardiovascular collapse → hypotension, asystole.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_033',
    question: 'Which local anesthetic does not cause vasodilation but instead vasoconstriction?',
    options: [
      'Lidocaine',
      'Procaine',
      'Cocaine',
      'Bupivacaine',
      'Ropivacaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Cocaine inhibits norepinephrine reuptake → vasoconstriction. Other local anesthetics usually dilate vessels.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_034',
    question: 'Which is not a site for topical application of local anesthetics?',
    options: [
      'Mucosa',
      'Eye',
      'Skin',
      'Intramuscular',
      'Laryngeal region'
    ],
    correctAnswerIndex: 3,
    explanation: 'They are not used intramuscularly; effective topically on mucosa, skin, airway.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_035',
    question: 'Which of the following is not an ion channel affected by local anesthetics?',
    options: [
      'Sodium',
      'Potassium',
      'Calcium',
      'Chloride',
      'Hydrogen'
    ],
    correctAnswerIndex: 4,
    explanation: 'Local anesthetics primarily block sodium channels; hydrogen channels do not exist.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_036',
    question: 'Which method measures methemoglobin levels?',
    options: [
      'Arterial blood gas',
      'Co-oximetry',
      'Pulse oximetry',
      'Blood glucose measurement',
      'Electrolyte analysis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Co-oximeter directly measures methemoglobin; pulse oximetry may be misleading.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_037',
    question: 'Which local anesthetic has rapid onset and intermediate duration?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Procaine',
      'Tetracaine',
      'Prilocaine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Lidocaine has rapid onset and intermediate duration → widely used.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_038',
    question: 'Which local anesthetic is used topically in eye surgeries?',
    options: [
      'Procaine',
      'Prilocaine',
      'Tetracaine',
      'Bupivacaine',
      'Ropivacaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Tetracaine is often used topically in ophthalmology.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_039',
    question: 'Which local anesthetic undergoes the fastest plasma metabolism?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Chloroprocaine',
      'Ropivacaine',
      'Prilocaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Chloroprocaine, an ester, is rapidly broken down by plasma cholinesterases.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_040',
    question: 'Which statement about spinal anesthesia is correct?',
    options: [
      'Order: motor > touch > pain',
      'Motor block occurs first',
      'Effect is permanent',
      'Sympathetic block precedes motor block',
      'All spinal nerves are equally affected'
    ],
    correctAnswerIndex: 3,
    explanation: 'Order of block: sympathetic > pain > temperature > touch > motor.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_041',
    question: 'What is the maximum safe dose of lidocaine (without epinephrine)?',
    options: [
      '3 mg/kg',
      '4 mg/kg',
      '5 mg/kg',
      '6 mg/kg',
      '7 mg/kg'
    ],
    correctAnswerIndex: 2,
    explanation: 'Lidocaine maximum safe dose without epinephrine is ~5 mg/kg.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_042',
    question: 'Which local anesthetic is commonly used topically in ENT procedures?',
    options: [
      'Bupivacaine',
      'Benzocaine',
      'Chloroprocaine',
      'Ropivacaine',
      'Prilocaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Benzocaine is widely used on mucosal surfaces in ENT practice.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_043',
    question: 'What is the first-line drug for treating convulsions due to local anesthetic toxicity?',
    options: [
      'Ketamine',
      'Fentanyl',
      'Midazolam',
      'Epinephrine',
      'Propofol'
    ],
    correctAnswerIndex: 2,
    explanation: 'Benzodiazepines (e.g., midazolam) are first-line for LA-induced seizures.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_044',
    question: 'Which combination is optimal for peripheral nerve blocks considering duration and motor block intensity?',
    options: [
      'Short duration, deep motor block: Lidocaine',
      'Long duration, mild motor block: Ropivacaine',
      'Intermediate duration, intense motor block: Prilocaine',
      'Long duration, intense motor block: Procaine',
      'Short duration, superficial sensory block: Tetracaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Ropivacaine has long duration with mild motor block → useful in ambulatory blocks.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_045',
    question: 'Which is not a factor affecting the pharmacokinetics of local anesthetics?',
    options: [
      'Vascularity of injection site',
      'Adjuvants used',
      'pKa value',
      'Lipophilicity',
      'Liver function'
    ],
    correctAnswerIndex: 2,
    explanation: 'pKa affects onset of action, not distribution, metabolism, or elimination (pharmacokinetics).',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_046',
    question: 'Which is not a benefit of adding epinephrine to local anesthetics?',
    options: [
      'Prolongs duration',
      'Reduces systemic toxicity',
      'Increases tissue penetration',
      'Provides hemostasis',
      'Reduces absorption'
    ],
    correctAnswerIndex: 2,
    explanation: 'Epinephrine reduces absorption and prolongs effect, but does not improve penetration.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_047',
    question: 'The non-ionized form of local anesthetics is most important for which step?',
    options: [
      'Receptor binding',
      'Channel opening',
      'Membrane penetration',
      'Action potential formation',
      'Enzyme inhibition'
    ],
    correctAnswerIndex: 2,
    explanation: 'Non-ionized (lipid-soluble) form crosses the cell membrane; ionized form blocks the sodium channel.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_048',
    question: 'Which may be the earliest sign of systemic local anesthetic toxicity?',
    options: [
      'Convulsions',
      'Bradycardia',
      'Tinnitus and dizziness',
      'Respiratory depression',
      'Hypotension'
    ],
    correctAnswerIndex: 2,
    explanation: 'Early CNS toxicity signs include tinnitus, dizziness, metallic taste.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_049',
    question: 'Which of the following does not prolong the duration of action of local anesthetics?',
    options: [
      'High protein binding',
      'Addition of vasoconstrictor',
      'Low pKa value',
      'High lipophilicity',
      'Low tissue perfusion'
    ],
    correctAnswerIndex: 2,
    explanation: 'pKa affects onset, not duration. Duration is influenced by lipophilicity, protein binding, vasoconstriction, and tissue perfusion.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_050',
    question: 'Which of the following is not a mechanism of intralipid therapy in local anesthetic toxicity?',
    options: [
      '"Lipid sink" effect',
      'Providing energy substrate to cardiac cells',
      'Antagonizing ion channel blockade',
      'Increasing myocardial contractility',
      'Strengthening drug–protein binding'
    ],
    correctAnswerIndex: 4,
    explanation: 'Lipid emulsion acts as a lipid sink, provides cardiac energy, improves contractility, but does not enhance protein binding.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_051',
    question: 'What is the order of effect of local anesthetics on motor nerve fibers?',
    options: [
      'Blocked first',
      'Moderately affected',
      'Blocked last',
      'Equally affected',
      'Not affected'
    ],
    correctAnswerIndex: 2,
    explanation: 'Large, myelinated motor fibers are most resistant → affected last.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_052',
    question: 'Which local anesthetic has the poorest natural tissue penetration?',
    options: [
      'Lidocaine',
      'Procaine',
      'Bupivacaine',
      'Ropivacaine',
      'Tetracaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Procaine has low lipophilicity and protein binding → weak penetration and low potency.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_053',
    question: 'Which drug is first choice for seizures due to local anesthetic toxicity?',
    options: [
      'Flumazenil',
      'Propofol',
      'Phenytoin',
      'Midazolam',
      'Atropine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Benzodiazepines (esp. midazolam) are first-line. Propofol may also be used but is not the initial choice.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_054',
    question: 'Which anesthetic provides the weakest motor block?',
    options: [
      'Bupivacaine',
      'Lidocaine',
      'Ropivacaine',
      'Mepivacaine',
      'Procaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ropivacaine causes less motor block than bupivacaine → advantage in labor analgesia.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_055',
    question: 'What is the role of the ionized form of local anesthetics?',
    options: [
      'Enables cell entry',
      'Produces energy in neurons',
      'Binds to sodium channels and blocks them',
      'Facilitates membrane passage',
      'Lowers pH'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ionized form binds sodium channels inside the cell → blocks action potentials.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_056',
    question: 'Which is a finding of methemoglobinemia?',
    options: [
      'Hypotension',
      'Cyanosis with SpO₂ fixed at ~85%',
      'Bradycardia',
      'Fever',
      'Seizures'
    ],
    correctAnswerIndex: 1,
    explanation: 'Methemoglobinemia shows cyanosis and pulse oximetry stuck at ~85%, esp. after prilocaine.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_057',
    question: 'Which local anesthetic is most commonly used for topical anesthesia?',
    options: [
      'Bupivacaine',
      'Ropivacaine',
      'Lidocaine',
      'Mepivacaine',
      'Prilocaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Lidocaine is widely used both by injection and topically (safe on mucosa).',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_058',
    question: 'What is the most common complication after spinal anesthesia?',
    options: [
      'Bradycardia',
      'Hypotension',
      'Urinary retention',
      'Intracranial hemorrhage',
      'Headache'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sympathetic block → venodilation → hypotension is most common.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_059',
    question: 'Which local anesthetic crosses the blood–brain barrier fastest?',
    options: [
      'Procaine',
      'Prilocaine',
      'Bupivacaine',
      'Lidocaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Lidocaine has high lipophilicity and low pKa → rapid CNS entry → toxicity risk.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_060',
    question: 'Which agents are contained in EMLA cream (used in children for topical anesthesia)?',
    options: [
      'Lidocaine + Procaine',
      'Lidocaine + Prilocaine',
      'Bupivacaine + Lidocaine',
      'Mepivacaine + Lidocaine',
      'Prilocaine + Tetracaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'EMLA = Eutectic Mixture of Local Anesthetics → contains lidocaine + prilocaine.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_061',
    question: 'What is the most effective treatment for post–dural puncture headache?',
    options: [
      'High-dose steroids',
      'Oral hydration',
      'Epidural blood patch',
      'Paracetamol',
      'Caffeinated drinks'
    ],
    correctAnswerIndex: 2,
    explanation: 'Epidural blood patch seals CSF leak → most effective treatment.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_062',
    question: 'Which property most affects the onset of action of a local anesthetic?',
    options: [
      'Protein binding',
      'Lipophilicity',
      'pKa value',
      'Molecular weight',
      'Metabolic pathway'
    ],
    correctAnswerIndex: 2,
    explanation: 'pKa determines ionized/unionized ratio at physiologic pH → affects onset.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_063',
    question: 'At what level is caudal block performed?',
    options: [
      'L3–L4',
      'T12–L1',
      'Sacral hiatus',
      'Foramen magnum',
      'C7–T1'
    ],
    correctAnswerIndex: 2,
    explanation: 'Caudal block is through the sacral hiatus, esp. in pediatric analgesia.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_064',
    question: 'Which local anesthetic has the highest systemic toxicity risk with topical use?',
    options: [
      'Lidocaine',
      'Tetracaine',
      'Bupivacaine',
      'Procaine',
      'Ropivacaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Tetracaine has strong topical potency but high systemic toxicity risk.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_065',
    question: 'Which local anesthetic is most commonly used for infiltration anesthesia?',
    options: [
      'Ropivacaine',
      'Lidocaine',
      'Tetracaine',
      'Bupivacaine',
      'Prilocaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Lidocaine is safe, fast, and reliable → most used for infiltration.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_066',
    question: 'Why is systemic toxicity risk high in intercostal blocks?',
    options: [
      'Nerves are unmyelinated',
      'Technical difficulty',
      'High vascularity',
      'Block failure',
      'Superficial nerve location'
    ],
    correctAnswerIndex: 2,
    explanation: 'Intercostal area is highly vascular → rapid absorption → higher toxicity risk.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_067',
    question: 'Which local anesthetic has the shortest duration of action?',
    options: [
      'Lidocaine',
      'Procaine',
      'Bupivacaine',
      'Ropivacaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Procaine has low lipophilicity → short-acting.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_068',
    question: 'Which local anesthetic is most advantageous for differential block (sensory > motor)?',
    options: [
      'Prilocaine',
      'Ropivacaine',
      'Lidocaine',
      'Bupivacaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Ropivacaine produces sensory block > motor block → useful in obstetrics/orthopedics.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_069',
    question: 'Why is sensitivity to local anesthetics increased in pregnancy?',
    options: [
      'Reduced plasma volume',
      'Increased pKa',
      'Progesterone stabilizes neurons',
      'Epidural venous engorgement',
      'Accelerated metabolism'
    ],
    correctAnswerIndex: 3,
    explanation: 'Epidural venous congestion narrows epidural space → higher spread at same dose → reduce dosage.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_070',
    question: 'What is the recommended dose of lipid emulsion therapy?',
    options: [
      '0.5 mg/kg/min infusion',
      '1 mL/kg bolus + 0.25 mL/kg/min infusion',
      '1.5 mL/kg bolus + 0.25 mL/kg/min infusion',
      '20 mL bolus + 10 mL/min infusion',
      '100 mL bolus + 1 mL/kg/hr'
    ],
    correctAnswerIndex: 2,
    explanation: 'Intralipid: 1.5 mL/kg IV bolus, then 0.25 mL/kg/min infusion → used for cardiotoxicity.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_071',
    question: 'What is the treatment for prilocaine-induced methemoglobinemia?',
    options: [
      'Dexamethasone',
      'IV fluids',
      'Flumazenil',
      'Methylene blue',
      'Atropine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Methylene blue reduces methemoglobin back to hemoglobin.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_072',
    question: 'Which local anesthetic has the fastest CNS toxic effects?',
    options: [
      'Prilocaine',
      'Bupivacaine',
      'Lidocaine',
      'Ropivacaine',
      'Tetracaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Lidocaine rapidly penetrates CNS → early symptoms: tinnitus, metallic taste, dizziness.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_073',
    question: 'Which factor does not increase local anesthetic toxicity?',
    options: [
      'Hypovolemia',
      'Liver failure',
      'Old age',
      'Hypoproteinemia',
      'Hypertension'
    ],
    correctAnswerIndex: 4,
    explanation: 'Hypertension does not increase toxicity. The others reduce metabolism or binding capacity.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_074',
    question: 'Which local anesthetic is contraindicated in spinal anesthesia?',
    options: [
      'Bupivacaine',
      'Lidocaine',
      'Ropivacaine',
      'Prilocaine',
      'Tetracaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Lidocaine spinal use is avoided due to risk of Transient Neurologic Symptoms (TNS).',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_075',
    question: 'Which local anesthetic has the highest lipophilicity?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Prilocaine',
      'Ropivacaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Bupivacaine has highest lipophilicity → strong, long-lasting effect.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_076',
    question: 'Which local anesthetic causes the least vasodilation?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Prilocaine',
      'Ropivacaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 4,
    explanation: 'Mepivacaine causes minimal vasodilation → less need for epinephrine.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_077',
    question: 'Which local anesthetic has the lowest pKa value?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Prilocaine',
      'Ropivacaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Lidocaine\'s pKa is 7.7 → lowest → rapid onset.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_078',
    question: 'Which local anesthetic can be used at the highest maximum dose?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Prilocaine',
      'Ropivacaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Prilocaine max dose ~600 mg, higher than lidocaine (~500 mg).',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_079',
    question: 'Which local anesthetic has the least placental transfer?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Prilocaine',
      'Ropivacaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Ropivacaine\'s high protein binding and lower lipophilicity → least placental transfer.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_080',
    question: 'Which local anesthetic produces the strongest motor block?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Prilocaine',
      'Ropivacaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Bupivacaine → strongest motor block. Ropivacaine → more sensory than motor.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_081',
    question: 'Which of the following does not prolong local anesthetic duration?',
    options: [
      'Epinephrine',
      'Bicarbonate',
      'Clonidine',
      'Dexmedetomidine',
      'Heparin'
    ],
    correctAnswerIndex: 4,
    explanation: 'Heparin has no effect. Epinephrine (vasoconstriction), bicarbonate (pH shift), clonidine, and dexmedetomidine prolong effect.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_082',
    question: 'Which local anesthetic most often causes allergic reactions?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Procaine',
      'Ropivacaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ester anesthetics (e.g., procaine) metabolize to PABA → more allergies.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_083',
    question: 'Which local anesthetic causes the greatest vasodilation?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Prilocaine',
      'Ropivacaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Lidocaine produces significant vasodilation → often combined with epinephrine.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_084',
    question: 'Which local anesthetic has the lowest protein binding?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Prilocaine',
      'Ropivacaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Prilocaine binds ~55% → lowest.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_085',
    question: 'Which local anesthetic has the lowest lipophilicity?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Prilocaine',
      'Ropivacaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Prilocaine has lowest lipophilicity → shorter duration.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'local_anesthetics_086',
    question: 'Which local anesthetic most often causes TNS (Transient Neurologic Symptoms)?',
    options: [
      'Lidocaine',
      'Bupivacaine',
      'Prilocaine',
      'Ropivacaine',
      'Mepivacaine'
    ],
    correctAnswerIndex: 0,
    explanation: '5% lidocaine spinal use → highest risk of TNS.',
    category: 'Local Anesthetics',
    difficulty: 2
  ),
];
