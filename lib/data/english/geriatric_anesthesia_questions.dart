import '../../models/question.dart';

List<Question> geriatricAnesthesiaQuestions = [
  Question(
    id: 'geriatric_anesthesia_001',
    question: 'Which factor best explains the increased sensitivity to anesthetic agents in elderly patients?',
    options: [
      'Decreased brain mass',
      'Increased CNS permeability',
      'Reduced neurotransmitter levels',
      'Increased muscle–fat ratio',
      'Increased blood volume'
    ],
    correctAnswerIndex: 2,
    explanation: 'Decline in neurotransmitters (e.g., GABA) increases sensitivity to anesthetics → drug requirement decreases with age.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_002',
    question: 'Which statement about MAC (Minimum Alveolar Concentration) in elderly patients is correct?',
    options: [
      'MAC increases with age',
      'Increases 6% per decade after 40',
      'Increases 30% with age',
      'Decreases 6% per decade after 40',
      'Not affected by age'
    ],
    correctAnswerIndex: 3,
    explanation: 'After 40, MAC decreases ~6% per decade. Less inhaled anesthetic is required in elderly patients.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_003',
    question: 'Major factor increasing risk of hypotension after spinal anesthesia in the elderly?',
    options: [
      'Decreased fat tissue',
      'Increased CSF pressure',
      'Reduced baroreceptor sensitivity',
      'Increased intravascular volume',
      'Reduced sensitivity to local anesthetics'
    ],
    correctAnswerIndex: 2,
    explanation: 'Impaired baroreceptor reflexes slow compensatory response → higher risk of hypotension after spinal anesthesia.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_004',
    question: 'Which is FALSE about postoperative cognitive dysfunction (POCD) in the elderly?',
    options: [
      'Usually temporary and reversible',
      'Risk increases with age',
      'Intraoperative hypotension increases risk',
      'Neurodegenerative diseases predispose',
      'Sevoflurane is definitively protective'
    ],
    correctAnswerIndex: 4,
    explanation: 'Sevoflurane has no proven protective effect against POCD. All volatile agents can contribute to risk.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_005',
    question: 'Which renal change is most relevant in the elderly?',
    options: [
      'Increased GFR',
      'Creatinine always elevated',
      'Normal serum creatinine despite reduced GFR',
      'Increased renal perfusion',
      'Increased tubular function'
    ],
    correctAnswerIndex: 2,
    explanation: 'Reduced muscle mass → serum creatinine may appear normal, but GFR is decreased → eGFR calculation essential.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_006',
    question: 'Key concern with inhalation anesthesia in elderly patients?',
    options: [
      'Increased ventilation requirement',
      'Increased MAC need',
      'Rapid elimination',
      'Cumulative cardiodepressive effect',
      'Reduced pulmonary absorption'
    ],
    correctAnswerIndex: 3,
    explanation: 'Volatile agents accumulate, enhancing cardiodepressive effects in the elderly → use lower doses carefully.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_007',
    question: 'Why does the effect of neuromuscular blockers last longer in elderly patients?',
    options: [
      'Increased muscle mass',
      'Increased plasma esterase activity',
      'Reduced hepatic and renal clearance',
      'Increased plasma protein binding',
      'Increased neuromuscular sensitivity'
    ],
    correctAnswerIndex: 2,
    explanation: 'Slower hepatic/renal clearance prolongs neuromuscular blocker effects.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_008',
    question: 'Why should spinal anesthetic dose be reduced in the elderly?',
    options: [
      'Increased CSF pressure',
      'Enlarged subarachnoid space',
      'Reduced dural permeability',
      'Vertebral sclerosis',
      'Reduced subarachnoid space volume'
    ],
    correctAnswerIndex: 4,
    explanation: 'Decreased CSF volume → same dose spreads more extensively → risk of higher block → dose reduction required.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_009',
    question: 'Which approach reduces postoperative delirium risk in elderly patients?',
    options: [
      'Deep anesthesia',
      'Pre-op benzodiazepines',
      'Rapid extubation',
      'Caffeine loading',
      'Adequate pain control'
    ],
    correctAnswerIndex: 4,
    explanation: 'Uncontrolled pain triggers delirium. Multimodal analgesia lowers risk.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_010',
    question: 'Consequence of impaired cerebral autoregulation in elderly patients?',
    options: [
      'Increased renal perfusion',
      'Cognitive changes and cerebral ischemia',
      'Better compensation to hypotension',
      'Increased arterial tone',
      'Increased intraocular pressure'
    ],
    correctAnswerIndex: 1,
    explanation: 'Loss of autoregulation → sudden BP drops reduce cerebral perfusion → ischemia/confusion.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_011',
    question: 'Key factor in TIVA (Total Intravenous Anesthesia) dose adjustment in elderly patients?',
    options: [
      'Plasma pH',
      'Blood–fat partition coefficient',
      'Central distribution volume',
      'Cardiac output',
      'Nephron number'
    ],
    correctAnswerIndex: 3,
    explanation: 'Reduced cardiac output delays CNS drug delivery/distribution → administer more slowly and at lower doses.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_012',
    question: 'Which factor increases risk of bupivacaine toxicity in elderly?',
    options: [
      'Increased hepatic enzyme activity',
      'Thicker myelin sheath',
      'Reduced protein binding',
      'Lower CSF pH',
      'Increased blood volume'
    ],
    correctAnswerIndex: 2,
    explanation: 'Lower plasma proteins → higher free drug fraction → increased toxicity risk.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_013',
    question: 'Elderly patient with confusion, disorientation, hallucinations (no fever) after anesthesia likely has?',
    options: [
      'Sepsis',
      'Post-dural puncture headache',
      'Postoperative delirium',
      'Metabolic encephalopathy',
      'Parkinsonian crisis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Delirium is common, acute, fluctuating, often afebrile.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_014',
    question: 'Why is inhaled anesthetic duration prolonged in elderly?',
    options: [
      'Increased lung compliance',
      'High FRC',
      'Reduced alveolar ventilation',
      'Increased diffusion capacity',
      'Increased respiratory rate'
    ],
    correctAnswerIndex: 2,
    explanation: 'Lower alveolar ventilation slows elimination → prolonged effect.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_015',
    question: 'Why are elderly prone to hypothermia?',
    options: [
      'Increased peripheral blood flow',
      'Reduced muscle mass',
      'Increased metabolic rate',
      'Increased TSH',
      'Increased subcutaneous fat'
    ],
    correctAnswerIndex: 1,
    explanation: 'Less muscle → less heat production & retention.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_016',
    question: 'Key factor to assess preoperatively in elderly?',
    options: [
      'O₂ saturation',
      'Muscle strength',
      'Activities of Daily Living (ADL)',
      'BMI',
      'Skin turgor'
    ],
    correctAnswerIndex: 2,
    explanation: 'Functional capacity strongly predicts perioperative risk.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_017',
    question: 'Which is a pharmacodynamic change in elderly patients?',
    options: [
      'Increased GI absorption',
      'Increased receptor sensitivity',
      'Increased hepatic enzyme activity',
      'Decreased lipophilic drug distribution',
      'Increased protein binding'
    ],
    correctAnswerIndex: 1,
    explanation: 'Receptor sensitivity (e.g., GABA, opioids) increases → lower drug requirement.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_018',
    question: 'Which drug has the highest risk of causing delirium in elderly patients?',
    options: [
      'Fentanyl',
      'Paracetamol',
      'Dexamethasone',
      'Midazolam',
      'Ondansetron'
    ],
    correctAnswerIndex: 3,
    explanation: 'Benzodiazepines increase delirium risk → avoid when possible.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_019',
    question: 'Which factor alters drug distribution volume in elderly?',
    options: [
      'Reduced plasma volume',
      'Increased body water',
      'Increased muscle mass',
      'Reduced fat tissue',
      'Increased plasma protein'
    ],
    correctAnswerIndex: 0,
    explanation: 'Plasma volume ↓, fat tissue ↑ → lipophilic drugs accumulate, hydrophilic drugs distribute less.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_020',
    question: 'Main risk of opioids in elderly patients?',
    options: [
      'Longer duration',
      'Hyperkalemia',
      'Rebound pain',
      'Nephrotoxicity',
      'Respiratory depression'
    ],
    correctAnswerIndex: 4,
    explanation: 'Lower respiratory reserve → dose-dependent respiratory depression risk.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_021',
    question: 'Which anesthetic is preferred in elderly for lower cardiodepressive effect?',
    options: [
      'Propofol',
      'Ketamine',
      'Sevoflurane',
      'Halothane',
      'Etomidate'
    ],
    correctAnswerIndex: 4,
    explanation: 'Etomidate maintains hemodynamic stability → safe in elderly with cardiac risk.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_022',
    question: 'Why do elderly recover cerebral function more slowly after anesthesia?',
    options: [
      'Increased CSF circulation',
      'Increased neuronal plasticity',
      'Reduced brain mass and metabolism',
      'Greater hypoglycemia tolerance',
      'Increased GABA receptor number'
    ],
    correctAnswerIndex: 2,
    explanation: 'Brain size and metabolic activity decline with age → slower recovery.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_023',
    question: 'Postoperative urinary retention in elderly is most linked to?',
    options: [
      'Intraoperative hypothermia',
      'Epidural analgesia',
      'Low ADH',
      'Increased creatinine clearance',
      'Hypoalbuminemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Epidural/spinal anesthesia inhibits parasympathetic tone → detrusor suppression → retention.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_024',
    question: 'Which parameter does NOT increase significantly with aging?',
    options: [
      'Fat tissue',
      'Lipophilic drug distribution',
      'Total body water',
      'Drug half-life',
      'Receptor sensitivity'
    ],
    correctAnswerIndex: 2,
    explanation: 'Total body water decreases with age; others may increase or change.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_025',
    question: 'Which anatomical change complicates epidural placement in elderly?',
    options: [
      'Thickened ligamentum flavum',
      'Increased disc height',
      'Increased spinal blood flow',
      'Vertebral osteophytes & degenerative changes',
      'Increased lumbar lordosis'
    ],
    correctAnswerIndex: 3,
    explanation: 'Osteophytes/degeneration narrow spaces → epidural placement more difficult.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_026',
    question: 'Which factor increases risk of high block after spinal anesthesia in elderly?',
    options: [
      'Epidural hematoma',
      'Lumbar disc herniation',
      'Reduced CSF volume',
      'Multiple sclerosis',
      'Hyperhydration'
    ],
    correctAnswerIndex: 2,
    explanation: 'Less CSF → local anesthetic spreads higher.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_027',
    question: 'Which pharmacodynamic change explains increased anesthetic sensitivity in elderly?',
    options: [
      'Reduced CNS permeability',
      'Increased blood volume',
      'Reduced receptor number',
      'Reduced receptor regulation',
      'Increased receptor response'
    ],
    correctAnswerIndex: 4,
    explanation: 'Elderly often have exaggerated receptor-level responses → higher sensitivity.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_028',
    question: 'First step if hypotension develops after epidural anesthesia in elderly?',
    options: [
      'Dopamine infusion',
      'Trendelenburg position',
      'IV fluid loading',
      'Adrenaline bolus',
      'Dexamethasone'
    ],
    correctAnswerIndex: 2,
    explanation: 'Vasodilation reduces preload → fluids first-line.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_029',
    question: 'Which factor impairs alveolar gas exchange during inhalation anesthesia in elderly?',
    options: [
      'Increased tidal volume',
      'Reduced dead space',
      'Increased alveolar–arterial O₂ gradient',
      'Increased vital capacity',
      'Increased lung elasticity'
    ],
    correctAnswerIndex: 2,
    explanation: 'A–a gradient widens with age → impaired oxygen transfer.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_030',
    question: 'Best predictor of postoperative complications in elderly?',
    options: [
      'Blood type',
      'Age',
      'Daily activities (ADL) & frailty',
      'BMI',
      'Surgery duration'
    ],
    correctAnswerIndex: 2,
    explanation: 'Frailty and functional status best reflect perioperative risk.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_031',
    question: 'Cardiovascular change with aging?',
    options: [
      'Increased β-adrenergic response',
      'Increased ejection fraction',
      'Increased arterial elasticity',
      'Diastolic dysfunction',
      'Increased HR'
    ],
    correctAnswerIndex: 3,
    explanation: 'Impaired myocardial relaxation → diastolic dysfunction. Systolic function usually preserved.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_032',
    question: 'How is baroreceptor response affected in elderly?',
    options: [
      'Increased',
      'Unchanged',
      'Decreased',
      'Reduces hypotension risk',
      'No HR effect'
    ],
    correctAnswerIndex: 2,
    explanation: 'Reduced baroreflex sensitivity → higher orthostatic hypotension & hemodynamic instability risk.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_033',
    question: 'Which respiratory change occurs with aging?',
    options: [
      'Increased vital capacity',
      'Reduced FRC',
      'Better anesthetic tolerance',
      'Increased lung compliance',
      'Increased O₂ diffusion'
    ],
    correctAnswerIndex: 3,
    explanation: 'Lung elasticity ↓, compliance ↑, but gas exchange worsens → hypoxemia risk ↑.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_034',
    question: 'Why are elderly more sensitive to opioids?',
    options: [
      'Higher protein binding',
      'Increased renal clearance',
      'Reduced hepatic metabolism',
      'Increased GABA activity',
      'Increased muscle mass'
    ],
    correctAnswerIndex: 2,
    explanation: 'Reduced hepatic metabolism prolongs opioid half-life → increased sensitivity.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_035',
    question: 'Cause of increased hypothermia risk in elderly?',
    options: [
      'Increased thermoregulation sensitivity',
      'Increased subcutaneous fat',
      'Reduced peripheral vasoconstriction response',
      'Increased thyroxine',
      'Hypermetabolism'
    ],
    correctAnswerIndex: 2,
    explanation: 'Vasoconstriction response weakens → heat loss ↑ → hypothermia risk ↑.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_036',
    question: 'Which is true for benzodiazepines like midazolam in elderly?',
    options: [
      'Faster elimination',
      'Rapid tolerance',
      'Shorter duration',
      'Increased sedative sensitivity',
      'Higher dose required'
    ],
    correctAnswerIndex: 3,
    explanation: 'Elderly more sensitive to sedatives → reduce dose.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_037',
    question: 'Which is true for FRC in elderly?',
    options: [
      'Decreases',
      'Increases',
      'Unchanged',
      'Inversely related to vital capacity',
      'Decreases with age but increases with effort'
    ],
    correctAnswerIndex: 1,
    explanation: 'Loss of elasticity increases FRC, but worsens gas exchange.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_038',
    question: 'Reduced muscle mass in elderly leads to?',
    options: [
      'Higher muscle relaxant requirement',
      'Increased metabolism',
      'Lower plasma drug concentration',
      'Reduced distribution of water-soluble drugs',
      'Increased creatinine production'
    ],
    correctAnswerIndex: 3,
    explanation: 'Less muscle → smaller Vd for hydrophilic drugs → higher plasma levels.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_039',
    question: 'Why is neuraxial block more extensive in elderly?',
    options: [
      'Increased nerve resistance',
      'Increased fat tissue',
      'Reduced CSF volume',
      'Narrower epidural space',
      'Reduced epidural venous filling'
    ],
    correctAnswerIndex: 2,
    explanation: 'Smaller CSF volume allows wider spread of local anesthetics.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_040',
    question: 'Why is hypotension more likely after spinal anesthesia in elderly?',
    options: [
      'Increased sympathetic tone',
      'Parasympathetic dominance',
      'Weakened baroreflexes',
      'Reduced systolic function',
      'Overactive sinus node'
    ],
    correctAnswerIndex: 2,
    explanation: 'Baroreflex impairment reduces compensation → hypotension risk ↑.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_041',
    question: 'Which factor increases the risk of anesthesia-related bradycardia in elderly patients?',
    options: [
      'Increased sympathetic response',
      'Decreased cholinergic receptors',
      'Increased parasympathetic activity',
      'Decreased vagal tone',
      'Increased atrial receptors'
    ],
    correctAnswerIndex: 2,
    explanation: 'With aging, parasympathetic predominance may increase, predisposing to bradycardia. Reflex changes contribute to this effect.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_042',
    question: 'First step in managing anesthesia-related delirium in elderly patients?',
    options: [
      'Start antipsychotics',
      'Provide deep sedation',
      'Correct underlying causes',
      'Switch to spinal anesthesia',
      'Give a GABA agonist'
    ],
    correctAnswerIndex: 2,
    explanation: 'Delirium is often multifactorial. Hypoxia, hypoglycemia, electrolyte imbalance, infection must be ruled out and treated first.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_043',
    question: 'Most common postoperative respiratory complication in elderly patients?',
    options: [
      'Pulmonary embolism',
      'Bronchospasm',
      'Atelectasis',
      'Laryngospasm',
      'Hyperventilation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Atelectasis is most frequent due to reduced respiratory reserve and weaker cough reflex in the elderly.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_044',
    question: 'Most common side effect of systemic opioid use in elderly?',
    options: [
      'Diarrhea',
      'Hypothermia',
      'Respiratory depression',
      'Muscle rigidity',
      'Polydipsia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Opioids cause more pronounced respiratory depression in elderly patients → careful titration required.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_045',
    question: 'Why are intramuscular injections not preferred in elderly?',
    options: [
      'Increased muscle mass',
      'Risk of hypothermia post-injection',
      'Slow and unpredictable absorption',
      'Higher risk of allergic reaction',
      'Risk of inadvertent IV injection'
    ],
    correctAnswerIndex: 2,
    explanation: 'Reduced muscle mass and blood flow in elderly → slower and less reliable absorption.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_046',
    question: 'Which anatomical change makes intubation more difficult in elderly patients?',
    options: [
      'Higher hyoid bone position',
      'Increased neck flexibility',
      'Edentulism (lack of teeth)',
      'Reduced neck mobility',
      'Anterior tracheal displacement'
    ],
    correctAnswerIndex: 3,
    explanation: 'Cervical spine flexibility decreases with age → limits extension and intubation positioning.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_047',
    question: 'Which drug increases delirium risk in elderly?',
    options: [
      'Paracetamol',
      'Morphine',
      'Sevoflurane',
      'Anticholinergics',
      'Lidocaine'
    ],
    correctAnswerIndex: 3,
    explanation: 'Anticholinergics inhibit acetylcholine → precipitate delirium, especially in elderly with cognitive decline.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_048',
    question: 'Which physiologic parameter changes least with aging?',
    options: [
      'Renal function',
      'Cerebral blood flow',
      'Hepatic blood flow',
      'Plasma protein level',
      'MAC value'
    ],
    correctAnswerIndex: 3,
    explanation: 'Plasma protein (especially albumin) changes minimally with age. Other parameters generally decline.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_049',
    question: 'Sevoflurane in elderly is most associated with?',
    options: [
      'Higher MAC requirement',
      'Renal toxicity',
      'Prolonged agitation',
      'Faster recovery',
      'Postoperative tremor'
    ],
    correctAnswerIndex: 3,
    explanation: 'Low solubility → faster emergence, advantageous in elderly.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_050',
    question: 'Which postoperative complication is most strongly linked with mortality in elderly?',
    options: [
      'Delirium',
      'Respiratory depression',
      'Pulmonary embolism',
      'Postoperative cognitive dysfunction',
      'Sepsis'
    ],
    correctAnswerIndex: 0,
    explanation: 'Postoperative delirium strongly correlates with both short- and long-term mortality → early recognition crucial.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_051',
    question: 'Which respiratory parameter shows the most prominent change with aging?',
    options: [
      'PaO₂',
      'FEV₁',
      'FVC',
      'FRC',
      'Respiratory rate'
    ],
    correctAnswerIndex: 0,
    explanation: 'PaO₂ declines with age (formula: PaO₂ ≈ 100 − age/3). Other parameters change more gradually.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_052',
    question: 'Most common perioperative cardiac complication in elderly patients?',
    options: [
      'Ventricular tachycardia',
      'Atrial fibrillation',
      'Complete heart block',
      'Myocardial infarction',
      'Cardiac tamponade'
    ],
    correctAnswerIndex: 1,
    explanation: 'Postoperative AF occurs in 10–20% of elderly surgical patients → most common arrhythmia.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_053',
    question: 'Which is FALSE regarding opioid use in elderly?',
    options: [
      'Start dose should be reduced by 50%',
      'Dose titration is required',
      'Fentanyl preferred over morphine',
      'Renal clearance must be monitored',
      'Oral administration should be avoided'
    ],
    correctAnswerIndex: 4,
    explanation: 'Oral opioids can be safely used with dose adjustment.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_054',
    question: 'Which parameter is NOT included in the frailty index?',
    options: [
      'Walking speed',
      'Muscle strength',
      'Blood pressure',
      'Physical activity',
      'Fatigue'
    ],
    correctAnswerIndex: 2,
    explanation: 'Frailty criteria assess mobility, strength, activity, and fatigue — BP not included.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_055',
    question: 'Most common electrolyte disorder in elderly?',
    options: [
      'Hypernatremia',
      'Hyponatremia',
      'Hyperkalemia',
      'Hypocalcemia',
      'Hypermagnesemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hyponatremia occurs in 15–30% of elderly.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_056',
    question: 'Strongest predictor of postoperative mortality in elderly?',
    options: [
      'ASA physical status',
      'Surgery duration',
      'Anesthesia technique',
      'Preoperative albumin level',
      'Length of hospital stay'
    ],
    correctAnswerIndex: 0,
    explanation: 'ASA III–IV patients have up to 10× higher mortality.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_057',
    question: 'Which is true regarding inhalation anesthetics in elderly?',
    options: [
      'MAC increases',
      'Cardiac depression decreases',
      'Induction time is prolonged',
      'Bronchodilation effect lost',
      'No neurotoxicity risk'
    ],
    correctAnswerIndex: 2,
    explanation: 'Reduced alveolar ventilation prolongs induction.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_058',
    question: 'Most common renal dysfunction in elderly?',
    options: [
      'Acute tubular necrosis',
      'Prerenal azotemia',
      'Glomerulonephritis',
      'Nephrotic syndrome',
      'Renal artery stenosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hypovolemia and drug toxicity → common cause of prerenal failure.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_059',
    question: 'Which is FALSE about propofol in elderly?',
    options: [
      'Induction dose reduced 30–50%',
      'Can cause cardiac depression',
      'Injection pain is more severe than in young patients',
      'Reduces PONV',
      'Accumulates in fat tissue'
    ],
    correctAnswerIndex: 2,
    explanation: 'Elderly report less injection pain than younger patients.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_060',
    question: 'Most common endocrinopathy in elderly?',
    options: [
      'Diabetes mellitus',
      'Hyperthyroidism',
      'Addison\'s disease',
      'Cushing\'s syndrome',
      'Pheochromocytoma'
    ],
    correctAnswerIndex: 0,
    explanation: 'DM prevalence is 20–30% in patients >65 years.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_061',
    question: 'Which is contraindicated in postoperative pain management for elderly?',
    options: [
      'Acetaminophen',
      'NSAIDs',
      'Opioids',
      'Regional techniques',
      'Gabapentinoids'
    ],
    correctAnswerIndex: 1,
    explanation: 'NSAIDs carry renal & GI risks in elderly.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_062',
    question: 'Which monitoring can be used for anesthesia depth in elderly?',
    options: [
      'BIS',
      'Entropy',
      'SPI',
      'Narcotrend',
      'All'
    ],
    correctAnswerIndex: 4,
    explanation: 'All methods applicable in elderly.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_063',
    question: 'Best practice for fluid therapy in elderly?',
    options: [
      'Aggressive volume loading',
      'Only colloids',
      'Titrate based on dynamic parameters',
      'Fluid restriction',
      'Prefer hypertonic solutions'
    ],
    correctAnswerIndex: 2,
    explanation: 'Use SVV, PPV for individualized fluid management.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_064',
    question: 'Preferred opioid in elderly?',
    options: [
      'Morphine',
      'Fentanyl',
      'Remifentanil',
      'Meperidine',
      'Codeine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Fentanyl is short-acting and hemodynamically stable.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_065',
    question: 'Most common GI complication in elderly postoperatively?',
    options: [
      'Peptic ulcer',
      'Acute cholecystitis',
      'PONV',
      'Ileus',
      'Pancreatitis'
    ],
    correctAnswerIndex: 3,
    explanation: 'Postoperative ileus occurs in 10–30%.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_066',
    question: 'Surgery type with highest postoperative mortality in elderly?',
    options: [
      'Cataract surgery',
      'Hip arthroplasty',
      'Abdominal aortic aneurysm repair',
      'TURP',
      'Breast surgery'
    ],
    correctAnswerIndex: 2,
    explanation: 'Major vascular surgeries carry 5–10× higher mortality.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_067',
    question: 'Premedication in elderly should be?',
    options: [
      'Midazolam',
      'Diazepam',
      'Lorazepam',
      'Dexmedetomidine',
      'Avoid premedication'
    ],
    correctAnswerIndex: 4,
    explanation: 'Benzodiazepines increase delirium risk → best avoided.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'geriatric_anesthesia_068',
    question: 'Most common postoperative complication in elderly?',
    options: [
      'Cardiac arrest',
      'Pulmonary embolism',
      'Infection',
      'Delirium',
      'Wound healing problems'
    ],
    correctAnswerIndex: 3,
    explanation: 'Postoperative delirium occurs in 15–50% → most frequent complication.',
    category: 'Geriatric Anesthesia',
    difficulty: 2
  ),
];
