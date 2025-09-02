import '../../models/question.dart';

List<Question> inhalationAnestheticsQuestions = [
  Question(
    id: 'inhalation_anesthetics_001',
    question: 'The efficacy of inhalation anesthetics is compared by which measurement?',
    options: [
      'Volume of distribution',
      'EC50',
      'Minimum alveolar concentration (MAC)',
      'Half-life',
      'Plasma level'
    ],
    correctAnswerIndex: 2,
    explanation: 'MAC is the standard measure of anesthetic potency. It is the alveolar concentration preventing movement in 50% of patients in response to surgical stimulus.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_002',
    question: 'Which agent has the lowest MAC value?',
    options: [
      'Desflurane',
      'Sevoflurane',
      'Halothane',
      'Isoflurane',
      'Nitrous oxide'
    ],
    correctAnswerIndex: 2,
    explanation: 'Halothane has the lowest MAC (~0.75%), making it the most potent volatile agent.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_003',
    question: 'Which inhalation anesthetic provides rapid induction and emergence?',
    options: [
      'Halothane',
      'Sevoflurane',
      'Isoflurane',
      'Methoxyflurane',
      'Nitrous oxide'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sevoflurane has a low blood/gas partition coefficient and pleasant odor → fast induction and recovery.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_004',
    question: 'Which inhalation anesthetic has the greatest hepatotoxic potential?',
    options: [
      'Desflurane',
      'Sevoflurane',
      'Halothane',
      'Nitrous oxide',
      'Isoflurane'
    ],
    correctAnswerIndex: 2,
    explanation: 'Halothane hepatitis is a rare but severe immune-mediated complication.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_005',
    question: 'Which agent provides rapid recovery due to low blood/gas solubility?',
    options: [
      'Halothane',
      'Isoflurane',
      'Sevoflurane',
      'Methoxyflurane',
      'Desflurane'
    ],
    correctAnswerIndex: 4,
    explanation: 'Desflurane (blood/gas coefficient ~0.42) allows very rapid elimination and recovery.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_006',
    question: 'What is the main disadvantage of nitrous oxide?',
    options: [
      'Renal toxicity',
      'Muscle relaxation',
      'Low potency (MAC ~105%)',
      'Slow induction',
      'Hepatotoxicity'
    ],
    correctAnswerIndex: 2,
    explanation: 'N₂O has MAC >100%, so it cannot produce surgical anesthesia alone.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_007',
    question: 'The "second gas effect" is associated with which agent?',
    options: [
      'Halothane',
      'Nitrous oxide',
      'Sevoflurane',
      'Isoflurane',
      'Desflurane'
    ],
    correctAnswerIndex: 1,
    explanation: 'Rapid uptake of N₂O increases alveolar concentration of other anesthetics → potentiates their effect.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_008',
    question: 'Which does NOT increase MAC?',
    options: [
      'Hyperthermia',
      'Chronic alcohol use',
      'Hypercapnia',
      'Amphetamine use',
      'Young age'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypercapnia, hypoxia, and hypothermia decrease MAC. Hyperthermia, youth, and chronic alcohol use increase MAC.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_009',
    question: 'Which inhalation agent is most associated with epileptiform EEG changes?',
    options: [
      'Isoflurane',
      'Desflurane',
      'Halothane',
      'Sevoflurane',
      'Nitrous oxide'
    ],
    correctAnswerIndex: 3,
    explanation: 'Sevoflurane may induce epileptiform EEG activity, especially in children at high doses.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_010',
    question: 'Which theory explains the central mechanism of inhalation anesthetics?',
    options: [
      'Pharmacodynamic model',
      'Meyer–Overton rule',
      'GABA antagonism',
      'Presynaptic blockade',
      'Tissue solubility theory'
    ],
    correctAnswerIndex: 1,
    explanation: 'The Meyer–Overton hypothesis links anesthetic potency to lipid solubility.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_011',
    question: 'Which toxic compound is produced when sevoflurane reacts with soda lime?',
    options: [
      'Trifluoroacetic acid',
      'Free radicals',
      'Compound A',
      'Carbon monoxide',
      'Phosgene'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sevoflurane + dry CO₂ absorbers → Compound A (nephrotoxic).',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_012',
    question: 'Which agent produces the most carbon monoxide with CO₂ absorbers?',
    options: [
      'Halothane',
      'Sevoflurane',
      'Isoflurane',
      'Desflurane',
      'Nitrous oxide'
    ],
    correctAnswerIndex: 3,
    explanation: 'Desflurane reacts with dry soda lime → highest risk of CO formation.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_013',
    question: 'Which is a disadvantage of enflurane?',
    options: [
      'Increases blood pressure',
      'Causes epileptiform EEG activity',
      'Slow induction',
      'Very low MAC',
      'Causes hyperkalemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'High-dose enflurane can provoke epileptiform EEG changes.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_014',
    question: 'Which inhalation agent has the highest vapor pressure?',
    options: [
      'Halothane',
      'Sevoflurane',
      'Isoflurane',
      'Desflurane',
      'Enflurane'
    ],
    correctAnswerIndex: 3,
    explanation: 'Desflurane vapor pressure ~664 mmHg → requires special heated vaporizer.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_015',
    question: 'Which inhalation anesthetic is non-pungent and suitable for pediatric induction?',
    options: [
      'Isoflurane',
      'Desflurane',
      'Halothane',
      'Sevoflurane',
      'Enflurane'
    ],
    correctAnswerIndex: 3,
    explanation: 'Sevoflurane is odorless, non-irritating → ideal for mask induction in children.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_016',
    question: 'Which factor increases speed of inhalation anesthetic induction?',
    options: [
      'High blood/gas solubility',
      'Low alveolar ventilation',
      'High cardiac output',
      'Low inspired concentration',
      'Low blood/gas solubility'
    ],
    correctAnswerIndex: 4,
    explanation: 'Low solubility → less uptake into blood → faster rise in brain concentration → quicker induction.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_017',
    question: 'What is the main difference between enflurane and isoflurane?',
    options: [
      'Both predispose to seizures',
      'Isoflurane is metabolized faster',
      'Isoflurane increases CBF less',
      'Enflurane has higher vapor pressure',
      'Isoflurane produces Compound A'
    ],
    correctAnswerIndex: 2,
    explanation: 'Isoflurane causes less cerebral vasodilation compared to enflurane → better cerebral stability.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_018',
    question: 'What is the pharmacokinetic property of nitrous oxide?',
    options: [
      'Metabolized',
      'Binds plasma proteins',
      'Exhaled unchanged',
      'Conjugated in the liver',
      'Renal excretion'
    ],
    correctAnswerIndex: 2,
    explanation: 'N₂O is inert and exhaled unchanged via lungs.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_019',
    question: 'Which inhalation agent undergoes the least metabolism?',
    options: [
      'Halothane',
      'Sevoflurane',
      'Desflurane',
      'Enflurane',
      'Isoflurane'
    ],
    correctAnswerIndex: 2,
    explanation: 'Desflurane is metabolized minimally (~0.02%).',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_020',
    question: 'Which inhalation anesthetic does NOT trigger malignant hyperthermia?',
    options: [
      'Halothane',
      'Sevoflurane',
      'Isoflurane',
      'Desflurane',
      'Nitrous oxide'
    ],
    correctAnswerIndex: 4,
    explanation: 'N₂O does not cause malignant hyperthermia.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_021',
    question: 'Which is a cerebral effect of volatile anesthetics?',
    options: [
      'Decrease cerebral blood flow',
      'Increase cerebral metabolism',
      'May increase intracranial pressure',
      'Excite EEG activity',
      'Do not lower seizure threshold'
    ],
    correctAnswerIndex: 2,
    explanation: 'Volatile agents → cerebral vasodilation → increased ICP.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_022',
    question: 'Why is isoflurane preferred?',
    options: [
      'Hepatotoxic',
      'High metabolism rate',
      'Stable cardiovascular effects',
      'Provokes seizures',
      'Pungent odor'
    ],
    correctAnswerIndex: 2,
    explanation: 'Isoflurane lowers systemic vascular resistance but causes minimal myocardial depression → stable hemodynamics.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_023',
    question: 'Nitrous oxide interferes with metabolism of which vitamin?',
    options: [
      'Vitamin B12',
      'Vitamin D',
      'Vitamin C',
      'Vitamin E',
      'Vitamin A'
    ],
    correctAnswerIndex: 0,
    explanation: 'N₂O inhibits methionine synthase → impairs vitamin B12 metabolism → risk of megaloblastic anemia & neuropathy.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_024',
    question: 'Which factor accelerates "wash-in" (alveolar uptake) of inhaled anesthetics?',
    options: [
      'Low inspired concentration',
      'Low ventilation',
      'High cardiac output',
      'Low blood/gas solubility',
      'High dead space'
    ],
    correctAnswerIndex: 3,
    explanation: 'Low solubility → faster alveolar rise → quicker brain uptake.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_025',
    question: 'What endocrine effect may desflurane cause?',
    options: [
      'Increase cortisol',
      'Increase TSH',
      'Increase glucose',
      'Increase prolactin',
      'Increase insulin secretion'
    ],
    correctAnswerIndex: 2,
    explanation: 'Desflurane may increase blood glucose by catecholamine stimulation.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_026',
    question: 'What is the primary elimination route of volatile anesthetics?',
    options: [
      'Renal excretion',
      'Hepatic conjugation',
      'Exhalation unchanged via lungs',
      'Biliary excretion',
      'Saliva excretion'
    ],
    correctAnswerIndex: 2,
    explanation: 'Most volatile agents are eliminated unchanged by exhalation.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_027',
    question: 'Which agent is "non-irritant" and commonly used for pediatric induction?',
    options: [
      'Desflurane',
      'Isoflurane',
      'Sevoflurane',
      'Halothane',
      'Enflurane'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sevoflurane is non-irritant and suitable for inhalational induction in children.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_028',
    question: 'Which agent has the highest carbon monoxide production risk with CO₂ absorbers?',
    options: [
      'Sevoflurane',
      'Isoflurane',
      'Halothane',
      'Desflurane',
      'Nitrous oxide'
    ],
    correctAnswerIndex: 3,
    explanation: 'Desflurane reacts with dry soda lime → highest CO production risk.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_029',
    question: 'Typical cardiovascular effect of volatile anesthetics?',
    options: [
      'Increase cardiac output',
      'Increase contractility',
      'Decrease systemic vascular resistance',
      'Slow heart rate',
      'Increase systolic pressure'
    ],
    correctAnswerIndex: 2,
    explanation: 'Volatile agents → vasodilation → ↓ SVR → hypotension.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_030',
    question: 'Which agent is preferred during "wake-up test"?',
    options: [
      'Halothane',
      'Isoflurane',
      'Desflurane',
      'Sevoflurane',
      'Enflurane'
    ],
    correctAnswerIndex: 2,
    explanation: 'Desflurane has very low solubility → rapid awakening → used in scoliosis surgeries for wake-up test.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_031',
    question: 'Which statement is correct about sevoflurane?',
    options: [
      'Very high vapor pressure',
      'Produces most CO',
      'Potential for Compound A formation',
      'Causes slow induction',
      'Strong neurostimulant effect'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sevoflurane + dry soda lime → Compound A (nephrotoxic).',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_032',
    question: 'Which volatile anesthetic causes the least cerebral vasodilation (preferred in neurosurgery)?',
    options: [
      'Isoflurane',
      'Sevoflurane',
      'Halothane',
      'Desflurane',
      'Enflurane'
    ],
    correctAnswerIndex: 0,
    explanation: 'Isoflurane is favored in neurosurgery because it minimally increases CBF compared to others.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_033',
    question: 'The blood/gas partition coefficient of volatile anesthetics determines:',
    options: [
      'Toxic dose range',
      'Respiratory depression',
      'Speed of transfer to brain',
      'Potency',
      'Vapor pressure'
    ],
    correctAnswerIndex: 2,
    explanation: 'Lower coefficient → faster alveolar-to-brain equilibration → faster induction & recovery.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_034',
    question: 'How can nephrotoxicity risk with sevoflurane be reduced?',
    options: [
      'Avoid dry CO₂ absorbent',
      'Keep low fresh gas flow',
      'Use high oxygen concentration',
      'Administer nitrates',
      'Prolong anesthesia duration'
    ],
    correctAnswerIndex: 0,
    explanation: 'Dry soda lime + sevoflurane → Compound A (nephrotoxic). Absorber should be moist.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_035',
    question: 'Type of halothane hepatotoxicity?',
    options: [
      'Dose-dependent, mild toxicity',
      'Dose-independent, immune-mediated hepatitis',
      'Cholestatic hepatopathy',
      'Direct bile duct damage',
      'Periportal fibrosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Halothane hepatitis usually occurs after repeat exposure; it is immune-mediated, not dose-dependent.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_036',
    question: 'Which of the following is a cardiovascular effect of isoflurane?',
    options: [
      'Increases myocardial oxygen consumption',
      'Significantly decreases heart rate',
      'Decreases systemic vascular resistance',
      'Increases cardiac output',
      'Prolongs QT interval'
    ],
    correctAnswerIndex: 2,
    explanation: 'Isoflurane causes systemic vasodilation and decreases SVR, which may lead to mild hypotension.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_037',
    question: 'Which physiological change is commonly caused by volatile agents?',
    options: [
      'Hyperglycemia',
      'Hyperkalemia',
      'Hypothermia',
      'Hyponatremia',
      'Hypomagnesemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Volatile agents impair thermoregulation, cause vasodilation, and increase heat loss → leading to hypothermia.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_038',
    question: 'Why should low-flow anesthesia with sevoflurane be avoided?',
    options: [
      'Risk of slow induction',
      'Development of hypotension',
      'Increased Compound A production',
      'Excessive volatile loss',
      'Decreased cardiac output'
    ],
    correctAnswerIndex: 2,
    explanation: 'Low fresh gas flow prolongs contact of sevoflurane with soda lime → increases production of nephrotoxic Compound A.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_039',
    question: 'Which agent has the lowest blood/gas partition coefficient?',
    options: [
      'Halothane',
      'Isoflurane',
      'Sevoflurane',
      'Desflurane',
      'Enflurane'
    ],
    correctAnswerIndex: 3,
    explanation: 'Desflurane has the lowest blood/gas solubility (~0.42) after xenon → produces very rapid induction and recovery.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_040',
    question: 'Which inhalation agent has the highest MAC value?',
    options: [
      'Halothane',
      'Isoflurane',
      'Sevoflurane',
      'Desflurane',
      'N₂O'
    ],
    correctAnswerIndex: 4,
    explanation: 'MAC reflects anesthetic potency. N₂O has MAC ~105%, making it the least potent.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_041',
    question: 'When 1% halothane is delivered, the alveolar rise depends most on:',
    options: [
      'Lipid solubility',
      'Cardiac output',
      'Respiratory rate',
      'Blood/gas partition coefficient',
      'Tidal volume'
    ],
    correctAnswerIndex: 3,
    explanation: 'Lower blood/gas solubility → faster alveolar concentration rise → quicker induction.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_042',
    question: 'Which agent provides the fastest induction and recovery?',
    options: [
      'Halothane',
      'Sevoflurane',
      'Isoflurane',
      'Desflurane',
      'Enflurane'
    ],
    correctAnswerIndex: 3,
    explanation: 'Desflurane\'s very low blood/gas coefficient (~0.42) → rapid onset and emergence.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_043',
    question: 'What is the main clinical issue with desflurane use?',
    options: [
      'Hepatic necrosis',
      'Nephrotoxicity',
      'Airway irritation',
      'Heart block',
      'Hypoglycemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Desflurane is pungent and irritating → risk of coughing, laryngospasm, airway reactivity.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_044',
    question: 'Which agent is most associated with malignant hyperthermia?',
    options: [
      'N₂O',
      'Sevoflurane',
      'Halothane',
      'Isoflurane',
      'Desflurane'
    ],
    correctAnswerIndex: 2,
    explanation: 'All volatile agents (except N₂O, xenon) may trigger MH. Halothane is the classic trigger.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_045',
    question: 'Which inhalation agent causes the least cardiac depression?',
    options: [
      'Halothane',
      'Isoflurane',
      'Desflurane',
      'Enflurane',
      'Sevoflurane'
    ],
    correctAnswerIndex: 4,
    explanation: 'Sevoflurane is hemodynamically stable, minimal myocardial depression, often used in pediatrics.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_046',
    question: 'Which agent has faster onset in low cardiac output states?',
    options: [
      'Halothane',
      'Isoflurane',
      'Sevoflurane',
      'Desflurane',
      'N₂O'
    ],
    correctAnswerIndex: 3,
    explanation: 'Low CO → less uptake into blood → alveolar concentration rises faster → faster effect, especially for low-solubility agents like desflurane.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_047',
    question: 'Which is NOT a typical property of inhalation agents?',
    options: [
      'Increase pulmonary artery pressure',
      'Increase cerebral blood flow',
      'Provide muscle relaxation',
      'Cause respiratory depression',
      'Age-related changes in MAC'
    ],
    correctAnswerIndex: 0,
    explanation: 'Most volatiles cause systemic vasodilation; they do not significantly raise pulmonary pressures (exception: N₂O slightly can).',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_048',
    question: 'What is the relationship between MAC and age?',
    options: [
      'MAC increases with age',
      'MAC is unaffected by age',
      'MAC decreases with age',
      'Only sevoflurane is age-dependent',
      'Effect duration shortens with age'
    ],
    correctAnswerIndex: 2,
    explanation: 'MAC decreases ~6–7% per decade with aging.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_049',
    question: 'Which statement about CNS effects of volatiles is FALSE?',
    options: [
      'CMRO₂ decreases',
      'CBF may increase',
      'EEG slows',
      'Lowers intracranial pressure',
      'Deep anesthesia → isoelectric EEG'
    ],
    correctAnswerIndex: 3,
    explanation: 'Despite lowering CMRO₂, volatiles cause cerebral vasodilation → ↑ICP.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_050',
    question: 'Sevoflurane metabolism may increase which ion?',
    options: [
      'K⁺',
      'Na⁺',
      'Ca²⁺',
      'Cl⁻',
      'F⁻'
    ],
    correctAnswerIndex: 4,
    explanation: 'Sevoflurane metabolism releases fluoride ions → risk of nephrotoxicity.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_051',
    question: 'Long-term N₂O use leads to which deficiency?',
    options: [
      'Vitamin A',
      'Vitamin D',
      'Vitamin K',
      'Vitamin B₁₂',
      'Folic acid'
    ],
    correctAnswerIndex: 3,
    explanation: 'N₂O inactivates B₁₂ → methionine synthase inhibition → megaloblastic anemia & neuropathy.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_052',
    question: 'Which factor shortens induction time?',
    options: [
      'High blood/gas solubility',
      'Increased cardiac output',
      'High tidal volume',
      'High fat solubility',
      'Low alveolar ventilation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Larger tidal volume increases delivery to alveoli → faster rise in alveolar concentration.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_053',
    question: 'Which CNS effect of volatile agents is correct?',
    options: [
      'Increase EEG activity',
      'Increase CMRO₂',
      'Lower seizure threshold',
      'Decrease CMRO₂',
      'Cause neuronal hyperactivity'
    ],
    correctAnswerIndex: 3,
    explanation: 'Volatiles (except N₂O) reduce cerebral metabolic rate → neuroprotective effect.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_054',
    question: 'Which is associated with high fresh gas flow in sevoflurane use?',
    options: [
      'Methemoglobinemia',
      'Hepatic necrosis',
      'Reduced Compound A formation',
      'Increased ICP',
      'Increased renal toxicity'
    ],
    correctAnswerIndex: 2,
    explanation: 'High fresh gas flow reduces sevoflurane interaction with soda lime → lowers Compound A risk.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_055',
    question: 'Which agent has the strongest bronchodilator effect?',
    options: [
      'Halothane',
      'Isoflurane',
      'Sevoflurane',
      'Desflurane',
      'N₂O'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sevoflurane is non-irritant and effective bronchodilator → preferred in asthma patients.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_056',
    question: 'MAC increases in which condition?',
    options: [
      'Elderly',
      'Hypothermia',
      'Pregnancy',
      'Hypernatremia',
      'Sedative use'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hypernatremia stabilizes neurons → increases anesthetic requirement.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_057',
    question: 'Which agent undergoes the least metabolism?',
    options: [
      'Halothane',
      'Sevoflurane',
      'Isoflurane',
      'Desflurane',
      'N₂O'
    ],
    correctAnswerIndex: 4,
    explanation: 'N₂O is almost entirely exhaled unchanged (~0.004% metabolized).',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_058',
    question: 'Relationship of cerebral blood flow (CBF) to cerebral metabolic rate (CMRO₂) with volatiles:',
    options: [
      'Both increase',
      'Both decrease',
      'CBF increases, CMRO₂ decreases',
      'CBF decreases, CMRO₂ increases',
      'No relation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Volatiles reduce CMRO₂ but cause cerebral vasodilation → CBF rises → possible ICP increase.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_059',
    question: 'Which agent is associated with slow recovery due to high solubility?',
    options: [
      'Halothane',
      'Sevoflurane',
      'Desflurane',
      'N₂O',
      'Ketamine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Halothane\'s high blood/gas coefficient (~2.4) → prolonged emergence.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_060',
    question: 'Which agent is the most volatile at room temperature?',
    options: [
      'Halothane',
      'Sevoflurane',
      'Isoflurane',
      'Desflurane',
      'N₂O'
    ],
    correctAnswerIndex: 3,
    explanation: 'Desflurane has very high vapor pressure (~669 mmHg) → needs heated vaporizer.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_061',
    question: 'Which is NOT a typical hepatic effect of volatiles?',
    options: [
      'Reduced hepatic blood flow',
      'Increased metabolic burden',
      'Direct hepatotoxicity (esp. halothane)',
      'Increased portal venous flow',
      'Immune-mediated hepatitis'
    ],
    correctAnswerIndex: 3,
    explanation: 'Volatiles reduce hepatic perfusion; halothane may cause immune-mediated hepatitis.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_062',
    question: 'Which factor has the least influence on MAC?',
    options: [
      'Age',
      'Hypothermia',
      'Opioid use',
      'Hypovolemia',
      'BMI'
    ],
    correctAnswerIndex: 4,
    explanation: 'MAC varies with age, temp, drugs, electrolytes; BMI has little effect.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_063',
    question: 'Which hemodynamic effect requires caution with desflurane?',
    options: [
      'Increased cardiac output',
      'Baroreceptor suppression',
      'Sympathetic activation → tachycardia',
      'Ventricular tachyarrhythmia',
      'Hypokalemia-induced hypotension'
    ],
    correctAnswerIndex: 2,
    explanation: 'Rapid increases in desflurane → sympathetic surge → tachycardia & hypertension.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_064',
    question: 'Which condition decreases MAC?',
    options: [
      'Fever',
      'Hypernatremia',
      'Chronic alcoholism',
      'Pregnancy',
      'Hyperthermia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Pregnancy (progesterone rise) increases CNS sensitivity → lowers MAC.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_065',
    question: 'Classic sign of malignant hyperthermia from volatiles?',
    options: [
      'Hypothermia',
      'Hypoventilation',
      'Bradycardia',
      'Muscle rigidity',
      'Faster recovery'
    ],
    correctAnswerIndex: 3,
    explanation: 'MH: muscle rigidity, hypercapnia, lactic acidosis, hyperthermia, rhabdomyolysis. Treated with dantrolene.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_066',
    question: 'Which agent does NOT carry MH risk?',
    options: [
      'Sevoflurane',
      'Desflurane',
      'Succinylcholine',
      'N₂O',
      'Isoflurane'
    ],
    correctAnswerIndex: 3,
    explanation: 'N₂O is not linked to MH; all other volatiles and succinylcholine are triggers.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_067',
    question: 'Sudden tachycardia & hypertension with desflurane anesthesia → most likely cause?',
    options: [
      'Hypovolemia',
      'Inadequate anesthetic depth',
      'Metabolic alkalosis',
      'Slow agent increase',
      'Vagal reflex'
    ],
    correctAnswerIndex: 1,
    explanation: 'Rapid rise in desflurane → sympathetic stimulation → tachycardia & hypertension.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_068',
    question: 'High oil/gas solubility of inhalation agents correlates with:',
    options: [
      'Higher CMRO₂',
      'Greater potency',
      'Faster elimination',
      'Higher MAC',
      'Irritant effect'
    ],
    correctAnswerIndex: 1,
    explanation: 'Lipid solubility ↑ → MAC ↓ → potency ↑.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_069',
    question: 'How to prevent diffusion hypoxia after N₂O anesthesia?',
    options: [
      'High-dose fentanyl',
      'Ventilation with 100% O₂ after stopping N₂O',
      'Reduced tidal volume',
      'Continue sevoflurane',
      'Induce hypercapnia'
    ],
    correctAnswerIndex: 1,
    explanation: 'N₂O diffuses rapidly into alveoli, displacing O₂ → risk of hypoxia. Prevented by administering 100% O₂ for several minutes.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_070',
    question: 'Which inhalation agent can suppress leukocyte function and immune response?',
    options: [
      'Sevoflurane',
      'Isoflurane',
      'Halothane',
      'Desflurane',
      'N₂O'
    ],
    correctAnswerIndex: 4,
    explanation: 'N₂O inhibits DNA synthesis in leukocytes and vitamin B₁₂ metabolism → potential immunosuppressive effect.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_071',
    question: 'Which of the following is not an ideal property of an inhalation agent?',
    options: [
      'Low blood/gas partition coefficient',
      'Non-irritant',
      'Hemodynamic stability',
      'No toxic metabolite formation',
      'High oil/gas solubility'
    ],
    correctAnswerIndex: 4,
    explanation: 'High oil/gas solubility increases potency but prolongs recovery. An ideal agent should have low solubility for rapid emergence.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_072',
    question: 'Which of the following is not a correct statement about the general mechanism of action of inhalation anesthetics?',
    options: [
      'Activate GABA-A receptors',
      'Inhibit NMDA receptors',
      'Open potassium channels',
      'Block sodium channels',
      'Alter ion channel conformation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Inhalation anesthetics do not directly block sodium channels. Their effects are mainly via GABA-A agonism, NMDA inhibition, and ion channel modulation.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_073',
    question: 'Which of the following is not a cardiovascular effect of inhalation anesthetics?',
    options: [
      'Decrease systemic vascular resistance',
      'Myocardial depression',
      'Inhibition of baroreceptor reflex',
      'Coronary steal syndrome',
      'Increase in heart rate (in all agents)'
    ],
    correctAnswerIndex: 4,
    explanation: 'Desflurane and isoflurane may cause tachycardia, but sevoflurane usually does not significantly change heart rate.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_074',
    question: 'Which of the following is not an adverse renal effect of inhalation anesthetics?',
    options: [
      'Decreased renal blood flow',
      'Fluoride ion release (sevoflurane)',
      'Increased serum creatinine',
      'Tubular injury (Compound A)',
      'Inhibition of ADH release'
    ],
    correctAnswerIndex: 4,
    explanation: 'Volatile agents do not inhibit ADH. In fact, surgical stress usually increases ADH secretion.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_075',
    question: 'Which inhalation anesthetic carries a risk of carbon monoxide (CO) poisoning?',
    options: [
      'Desflurane',
      'Sevoflurane',
      'Isoflurane',
      'Halothane',
      'All agents with dry CO₂ absorbents'
    ],
    correctAnswerIndex: 0,
    explanation: 'Desflurane can react with dry soda lime/baralyme to form CO. This is why absorber moisture levels are important in anesthesia machines.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_076',
    question: 'Which of the following is not a respiratory effect of inhalation anesthetics?',
    options: [
      'Respiratory depression',
      'Bronchodilation',
      'Inhibition of hypoxic pulmonary vasoconstriction',
      'Increased cough reflex',
      'Ventilation/perfusion (V/Q) mismatch'
    ],
    correctAnswerIndex: 3,
    explanation: 'Inhalation agents suppress the cough reflex; at deep anesthesia levels, laryngospasm risk decreases.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_077',
    question: 'Which agent most significantly decreases cerebral metabolic oxygen consumption (CMRO₂)?',
    options: [
      'Halothane',
      'Isoflurane',
      'Sevoflurane',
      'Desflurane',
      'Nitrous oxide'
    ],
    correctAnswerIndex: 1,
    explanation: 'Isoflurane can reduce CMRO₂ by up to 50%, providing neuroprotection.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_078',
    question: 'Which agent has the least effect on intraoperative neuromonitoring (e.g., SSEP/MEP)?',
    options: [
      'Halothane',
      'Isoflurane',
      'Sevoflurane',
      'Desflurane',
      'Nitrous oxide'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sevoflurane causes less amplitude suppression than other volatile agents, making it more compatible with neuromonitoring.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_079',
    question: 'Which of the following is not an advantage of inhalation anesthetics?',
    options: [
      'Cause bronchodilation',
      'Dose-dependent myocardial depression',
      'Provide muscle relaxation',
      'Predictable recovery times',
      'Reduce postoperative nausea and vomiting (PONV)'
    ],
    correctAnswerIndex: 4,
    explanation: 'Volatile agents (especially nitrous oxide) actually increase PONV risk.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_080',
    question: 'Which inhalation anesthetic can cause bone marrow suppression with prolonged use?',
    options: [
      'Halothane',
      'Nitrous oxide',
      'Isoflurane',
      'Sevoflurane',
      'Desflurane'
    ],
    correctAnswerIndex: 1,
    explanation: 'N₂O inhibits vitamin B₁₂–dependent methionine synthase → megaloblastic anemia with prolonged (>6h) use.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_081',
    question: 'Which factor increases the MAC value of inhalation anesthetics?',
    options: [
      'Hyperthermia',
      'Alcoholism',
      'Opioid use',
      'Advanced age',
      'Anemia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Hyperthermia raises MAC. Age, opioids, pregnancy, alcoholism, and hypothermia decrease MAC.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_082',
    question: 'Which is not a route of elimination for inhalation anesthetics?',
    options: [
      'Lungs',
      'Hepatic metabolism',
      'Renal excretion',
      'Cutaneous diffusion',
      'Biotransformation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Inhalation agents are not excreted by kidneys. Their main route is exhalation via lungs; some (e.g., halothane, sevoflurane) undergo hepatic metabolism.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_083',
    question: 'Which inhalation anesthetic carries the highest risk of laryngospasm during induction?',
    options: [
      'Sevoflurane',
      'Desflurane',
      'Isoflurane',
      'Halothane',
      'Nitrous oxide'
    ],
    correctAnswerIndex: 1,
    explanation: 'Desflurane is highly irritant → triggers airway reflexes → laryngospasm risk during induction.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_084',
    question: 'Which substance, formed during sevoflurane metabolism, may cause renal toxicity?',
    options: [
      'Fluoride ion',
      'Compound A',
      'Carbon monoxide',
      'Metabolic acidosis',
      'Cyanide'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sevoflurane forms Compound A in low-flow anesthesia, which is nephrotoxic.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_085',
    question: 'Which is not a contraindication for nitrous oxide use?',
    options: [
      'Pneumothorax',
      'Middle ear surgery',
      'Pulmonary hypertension',
      'Diabetes mellitus',
      'Increased intracranial pressure'
    ],
    correctAnswerIndex: 3,
    explanation: 'N₂O expands closed spaces (pneumothorax, air embolism, middle ear, ↑ICP). It is not contraindicated in diabetes mellitus.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_anesthetics_086',
    question: 'During which period is the teratogenic effect of inhalation anesthetics most significant?',
    options: [
      '1st trimester',
      '2nd trimester',
      '3rd trimester',
      'Labor',
      'Postpartum'
    ],
    correctAnswerIndex: 0,
    explanation: 'The organogenesis period (first 8 weeks of pregnancy) is the most sensitive time for teratogenicity.',
    category: 'Inhalation Anesthetics',
    difficulty: 2
  ),
];
