import '../../models/question.dart';

List<Question> inhalationTherapyMechanicalVentilationPacuIcuQuestions = [
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_001',
    question: 'In a patient newly started on mechanical ventilation, which is the most commonly preferred initial ventilator mode?',
    options: [
      'Pressure Support Ventilation (PSV)',
      'Controlled Mechanical Ventilation (CMV)',
      'Assist–Control Ventilation (ACV)',
      'T-tube support',
      'SIMV (Synchronized Intermittent Mandatory Ventilation)'
    ],
    correctAnswerIndex: 2,
    explanation: 'ACV provides set-rate ventilation if there is no spontaneous effort and assists breaths if present → it is the most common initial mode.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_002',
    question: 'During mechanical ventilation, which ventilator setting most increases the risk of barotrauma?',
    options: [
      'FiO₂ 50%',
      'PEEP 5 cmH₂O',
      'Tidal volume 10 mL/kg',
      'Plateau pressure >30 cmH₂O',
      'Respiratory rate 12/min'
    ],
    correctAnswerIndex: 3,
    explanation: 'Plateau pressure >30 cmH₂O overdistends alveoli and predisposes to barotrauma.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_003',
    question: 'Which of the following is not a complication of mechanical ventilation?',
    options: [
      'Oxygen toxicity',
      'Volutrauma',
      'Barotrauma',
      'Tracheal stenosis',
      'Hyperkalemia'
    ],
    correctAnswerIndex: 4,
    explanation: 'Hyperkalemia is not related to mechanical ventilation; the others are recognized risks.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_004',
    question: 'In which situation can giving high FiO₂ (>0.6) be harmful?',
    options: [
      'Carbon monoxide poisoning',
      'Acute hemolytic anemia',
      'COPD exacerbation',
      'Pneumothorax',
      'Hypotension'
    ],
    correctAnswerIndex: 2,
    explanation: 'In COPD, high FiO₂ can suppress hypoxic drive → risk of CO₂ retention.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_005',
    question: 'Which of the following is not seen in a patient who develops auto-PEEP during mechanical ventilation?',
    options: [
      'Dynamic hyperinflation',
      'Increased inspiratory pressure',
      'Increased work of breathing',
      'Decreased expiratory time',
      'Increased tidal volume'
    ],
    correctAnswerIndex: 4,
    explanation: 'Auto-PEEP = incomplete exhalation → higher pressures and difficulty ventilating, but tidal volume does not increase.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_006',
    question: 'Which is a pulmonary effect of applying high PEEP?',
    options: [
      'Increased pulmonary edema',
      'Decreased functional residual capacity',
      'Alveolar collapse',
      'Improved oxygenation',
      'Decreased inspiratory reserve volume'
    ],
    correctAnswerIndex: 3,
    explanation: 'PEEP keeps alveoli open, improving oxygenation and preventing atelectasis.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_007',
    question: 'In a mechanically ventilated patient, if plateau pressure is >30 cmH₂O, which complication is most likely?',
    options: [
      'Volutrauma',
      'Pneumopericardium',
      'Barotrauma',
      'Hemothorax',
      'Tracheomalacia'
    ],
    correctAnswerIndex: 2,
    explanation: 'High plateau pressure causes excessive alveolar pressure → barotrauma risk.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_008',
    question: 'What is the most common cause of tracheal stenosis after mechanical ventilation?',
    options: [
      'High FiO₂',
      'Hypoxemia',
      'Prolonged cuff pressure',
      'Alveolar hypoventilation',
      'Inadequate humidification'
    ],
    correctAnswerIndex: 2,
    explanation: 'Prolonged high endotracheal tube cuff pressure causes mucosal ischemia and fibrosis → stenosis.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_009',
    question: 'What is the key feature of Volume Control Ventilation (VCV)?',
    options: [
      'Pressure is fixed',
      'Does not sense patient effort',
      'Delivers a fixed tidal volume',
      'PEEP changes automatically',
      'Same as CPAP'
    ],
    correctAnswerIndex: 2,
    explanation: 'In VCV, each breath delivers a set tidal volume; pressure varies with compliance.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_010',
    question: 'Which situation most commonly leads to auto-PEEP on mechanical ventilation?',
    options: [
      'Inadequate inspiration',
      'High tidal volume',
      'Short expiratory time',
      'Low respiratory rate',
      'Too little PEEP'
    ],
    correctAnswerIndex: 2,
    explanation: 'When expiration is too short, air cannot fully exit → auto-PEEP develops.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_011',
    question: 'What is the most common early complication after extubation?',
    options: [
      'Laryngospasm',
      'Aspiration',
      'Bronchospasm',
      'Hypercapnia',
      'Atelectasis'
    ],
    correctAnswerIndex: 0,
    explanation: 'Laryngospasm often occurs early after extubation and can obstruct the airway → emergency.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_012',
    question: 'Which inhalational agent most suppresses mucociliary clearance?',
    options: [
      'Salbutamol',
      'Sevoflurane',
      'Nitrous oxide',
      'Isoflurane',
      'Halothane'
    ],
    correctAnswerIndex: 4,
    explanation: 'Halothane significantly suppresses mucociliary function, impairing secretion clearance.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_013',
    question: 'In Pressure-Controlled Ventilation (PCV), which parameter is fixed?',
    options: [
      'Volume',
      'Pressure',
      'pH',
      'CO₂ level',
      'FiO₂'
    ],
    correctAnswerIndex: 1,
    explanation: 'PCV applies a set inspiratory pressure; delivered volume varies with compliance.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_014',
    question: 'A ventilated patient\'s need for high inspiratory pressures is most associated with which condition?',
    options: [
      'Hypervolemia',
      'Increased lung compliance',
      'Decreased lung compliance',
      'Reduced FiO₂',
      'Hyperthermia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Low compliance (e.g., ARDS, fibrosis) requires higher pressure to achieve target volumes.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_015',
    question: 'What is the effect of positive-pressure ventilation on the circulatory system?',
    options: [
      'Decreases afterload',
      'Increases preload',
      'Increases venous return',
      'Increases pulmonary edema',
      'Shortens diastolic time'
    ],
    correctAnswerIndex: 0,
    explanation: 'Positive pressure decreases left ventricular afterload, reducing pump work.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_016',
    question: 'Barotrauma risk on mechanical ventilation is most linked to which parameter?',
    options: [
      'High FiO₂',
      'Low PEEP',
      'High tidal volume',
      'Respiratory rate',
      'Target SpO₂'
    ],
    correctAnswerIndex: 2,
    explanation: 'Large VT → excessive stretch → higher barotrauma risk (air leak, pneumothorax).',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_017',
    question: 'When ventilating a tracheostomy patient, which parameter requires the most attention?',
    options: [
      'Oxygen dose',
      'FiO₂',
      'Cuff pressure',
      'pH',
      'HCO₃⁻'
    ],
    correctAnswerIndex: 2,
    explanation: 'Overinflation causes tracheal ischemia; underinflation risks aspiration.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_018',
    question: 'During mechanical ventilation, which most commonly causes patient–ventilator asynchrony from spontaneous efforts?',
    options: [
      'High FiO₂',
      'Deep sedation',
      'Low inspiratory flow',
      'High tidal volume',
      'High PEEP'
    ],
    correctAnswerIndex: 2,
    explanation: 'Low inspiratory flow fails to meet patient demand → asynchrony.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_019',
    question: 'Which of the following is not a feature of high-flow nasal oxygen (HFNO) systems?',
    options: [
      'Provides humidified oxygen',
      'Operates at a low, fixed flow rate',
      'Allows titration of FiO₂',
      'Improves nasal comfort',
      'Can generate expiratory positive pressure'
    ],
    correctAnswerIndex: 1,
    explanation: 'HFNO is a high-flow system (typically 30–60 L/min) → "low fixed flow" is incorrect.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_020',
    question: 'What is the main advantage of Volume Support Ventilation (VSV)?',
    options: [
      'Tidal volume is fixed',
      'Pressure adapts to the patient\'s needs',
      'Provides fixed FiO₂',
      'Works without patient effort',
      'PEEP cannot be used'
    ],
    correctAnswerIndex: 1,
    explanation: 'VSV dynamically adjusts pressure to achieve the target tidal volume.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_021',
    question: 'During weaning from mechanical ventilation, which is among the most reliable tests?',
    options: [
      'PaO₂ measurement',
      'Tidal volume >3 mL/kg',
      'Respiratory rate <30/min',
      'Rapid Shallow Breathing Index (RSBI)',
      'End-tidal CO₂ <30 mmHg'
    ],
    correctAnswerIndex: 3,
    explanation: 'RSBI = f/VT (in liters); a value <105 predicts successful extubation.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_022',
    question: 'CPAP (Continuous Positive Airway Pressure) is most effective in which condition?',
    options: [
      'ARDS',
      'COPD',
      'Cardiogenic pulmonary edema',
      'Asthma attack',
      'Septic shock'
    ],
    correctAnswerIndex: 2,
    explanation: 'CPAP lowers work of breathing and LV afterload, benefiting cardiogenic edema.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_023',
    question: 'Which ventilation parameter is most closely associated with atelectrauma (injury from repetitive alveolar collapse and reopening)?',
    options: [
      'FiO₂',
      'Tidal volume',
      'PEEP',
      'Respiratory rate',
      'I:E ratio'
    ],
    correctAnswerIndex: 2,
    explanation: 'Low PEEP allows repetitive alveolar closure between breaths → atelectrauma.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_024',
    question: 'The toxic effects of oxygen are most prominent in which organ?',
    options: [
      'Liver',
      'Lungs',
      'Kidneys',
      'Brain',
      'Heart'
    ],
    correctAnswerIndex: 1,
    explanation: 'Oxygen toxicity manifests in the lungs with inflammation and fibrosis.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_025',
    question: 'In a postoperative, non-ventilated but hypoxemic patient, which oxygen therapy provides the highest FiO₂?',
    options: [
      'Nasal cannula',
      'Simple face mask',
      'Venturi mask',
      'Rebreather mask',
      'Non-rebreather mask'
    ],
    correctAnswerIndex: 4,
    explanation: 'A non-rebreather mask can deliver up to ~90–100% FiO₂.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_026',
    question: 'In a postoperative ICU patient, keeping the head of bed at 30° is recommended primarily to prevent which complication?',
    options: [
      'Hypothermia',
      'Atelectasis',
      'Oxygen toxicity',
      'Ventilator-associated pneumonia (VAP)',
      'Apnea'
    ],
    correctAnswerIndex: 3,
    explanation: 'Elevating the head reduces aspiration and VAP risk.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_027',
    question: 'What is the purpose of heliox (helium + oxygen) therapy in ventilation?',
    options: [
      'Increase oxygen-carrying capacity',
      'Increase carbon dioxide level',
      'Reduce airway resistance',
      'Increase lung compliance',
      'Prevent pulmonary edema'
    ],
    correctAnswerIndex: 2,
    explanation: 'Heliox has lower density → reduces airway resistance, helpful in obstructive airway disease.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_028',
    question: 'Which inhaled medication formulation has the fastest onset of action?',
    options: [
      'Dry powder inhaler (DPI)',
      'Nebulizer',
      'Intravenous',
      'Metered-dose inhaler (MDI)',
      'Transdermal system'
    ],
    correctAnswerIndex: 3,
    explanation: 'MDIs generate small particles with rapid pulmonary absorption.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_029',
    question: 'In a tracheostomized patient transitioning to spontaneous breathing, which is the best assessment tool?',
    options: [
      'PaO₂ measurement',
      'RSBI',
      'Tidal volume >8 mL/kg',
      'PaCO₂ <45 mmHg',
      'PEEP = 8 cmH₂O'
    ],
    correctAnswerIndex: 1,
    explanation: 'RSBI (f/VT) <105 supports readiness for extubation/decannulation.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_030',
    question: 'What is the priority treatment for upper airway edema after extubation?',
    options: [
      'Leukotriene antagonists',
      'Cold mist therapy',
      'IV salbutamol',
      'Nebulized epinephrine and systemic steroids',
      'Oral antibiotics'
    ],
    correctAnswerIndex: 3,
    explanation: 'First-line for post-extubation stridor/edema: nebulized epinephrine + systemic corticosteroid.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_031',
    question: 'Which finding indicates decreased pulmonary compliance during mechanical ventilation?',
    options: [
      'Decreased peak pressure',
      'Increased tidal volume',
      'Increased plateau pressure',
      'Increased FiO₂ requirement',
      'Increased respiratory rate'
    ],
    correctAnswerIndex: 2,
    explanation: 'Plateau pressure reflects lung elastance; higher values imply lower compliance.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_032',
    question: 'What is the most common side effect during CPAP therapy?',
    options: [
      'Oropharyngeal candidiasis',
      'Sinusitis',
      'Gastric distension',
      'Hypoglycemia',
      'Hyponatremia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Positive pressure can insufflate the stomach → distension.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_033',
    question: 'In a ventilated patient who suddenly develops bradycardia and hypotension, what should be considered first?',
    options: [
      'Volutrauma',
      'Hypoglycemia',
      'Tension pneumothorax',
      'Hyperthermia',
      'Hypokalemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sudden circulatory collapse on the ventilator with chest distension → think tension pneumothorax.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_034',
    question: 'Which ventilator mode provides the least stimuli and allows the most spontaneous breathing?',
    options: [
      'ACV',
      'CMV',
      'PSV',
      'SIMV',
      'BiPAP'
    ],
    correctAnswerIndex: 2,
    explanation: 'PSV supports the patient\'s own efforts and is among the most physiological modes.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_035',
    question: 'Which term best matches lung injury due to high tidal volume and high inspiratory pressure?',
    options: [
      'Atelectasis',
      'Barotrauma',
      'Volutrauma',
      'Biotrauma',
      'Pneumomediastinum'
    ],
    correctAnswerIndex: 2,
    explanation: 'Volutrauma = alveolar stretch injury from excessive tidal volumes (a form of VILI).',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
  Question(
    id: 'inhalation_therapy_mechanical_ventilation_pacu_icu_036',
    question: 'In inhalation therapy, as particle size decreases:',
    options: [
      'Oropharyngeal deposition increases',
      'Probability of reaching bronchi decreases',
      'Probability of reaching alveoli increases',
      'No systemic absorption occurs',
      'Drug effect begins slowly'
    ],
    correctAnswerIndex: 2,
    explanation: 'Particles <5 μm can reach terminal airways and alveoli.',
    category: 'Inhalation Therapy & Mechanical Ventilation in the PACU & ICU',
    difficulty: 2
  ),
];
