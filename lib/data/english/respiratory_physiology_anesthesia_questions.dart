import '../../models/question.dart';

List<Question> respiratoryPhysiologyAnesthesiaQuestions = [
  Question(
    id: 'respiratory_physiology_anesthesia_001',
    question: 'Which of the following increases alveolar ventilation?',
    options: [
      'Increased dead space',
      'Increased tidal volume',
      'Decreased respiratory rate',
      'Hypoventilation',
      'Anemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Alveolar ventilation = (Tidal volume – dead space) × respiratory rate. If tidal volume increases, more air reaches the alveoli.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_002',
    question: 'Which of the following characterizes a pulmonary shunt?',
    options: [
      'Non-ventilated but perfused areas',
      'Both ventilated and perfused areas',
      'Neither ventilated nor perfused areas',
      'Dead space ventilation',
      'Hyperbaric oxygen administration'
    ],
    correctAnswerIndex: 0,
    explanation: 'A shunt is when blood passes through the lungs without oxygenation → alveoli are not ventilated but still perfused.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_003',
    question: 'What is the earliest indicator of hypoventilation during anesthesia?',
    options: [
      'Drop in SpO₂',
      'Increased heart rate',
      'Increased ETCO₂',
      'Decreased blood pressure',
      'Decreased body temperature'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypoventilation causes CO₂ retention → the earliest sign is a rise in ETCO₂.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_004',
    question: 'Which of the following decreases functional residual capacity (FRC) during anesthesia?',
    options: [
      'Supine position',
      'Increased inspired oxygen',
      'Increased respiratory rate',
      'Neuromuscular blockade',
      'Increased CO₂ levels'
    ],
    correctAnswerIndex: 3,
    explanation: 'Neuromuscular blockade paralyzes respiratory muscles → reduces lung recoil and FRC.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_005',
    question: 'Which condition represents a V/Q ratio of 0?',
    options: [
      'Asthma',
      'Pulmonary embolism',
      'Atelectasis',
      'Emphysema',
      'Fibrosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'In atelectasis, alveoli collapse (no ventilation) but perfusion continues → V/Q = 0 (shunt).',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_006',
    question: 'Which change can increase PaO₂ without reducing oxygen saturation?',
    options: [
      'Increasing FiO₂',
      'Decreasing PEEP',
      'Increasing V/Q mismatch',
      'Hyperventilation',
      'Increasing inspired CO₂'
    ],
    correctAnswerIndex: 0,
    explanation: 'Increasing FiO₂ raises alveolar oxygen and thus PaO₂. SpO₂ remains unchanged if already at plateau (95–100%).',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_007',
    question: 'Which factor shifts the oxygen dissociation curve to the right?',
    options: [
      'Increased pH',
      'Decreased CO₂',
      'Hypothermia',
      'Increased 2,3-BPG',
      'Carbon monoxide poisoning'
    ],
    correctAnswerIndex: 3,
    explanation: 'Increased 2,3-BPG reduces hemoglobin\'s oxygen affinity → oxygen is released more easily → right shift.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_008',
    question: 'Which is NOT an effect of PEEP?',
    options: [
      'Prevention of alveolar collapse',
      'Increased FRC',
      'Improved oxygenation',
      'Decreased pulmonary vascular resistance',
      'Improved V/Q ratio'
    ],
    correctAnswerIndex: 3,
    explanation: 'PEEP increases intrathoracic pressure, which may raise pulmonary vascular resistance instead of lowering it.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_009',
    question: 'Which anesthetic intervention increases FRC?',
    options: [
      'Supine position',
      'Deep sedation',
      'PEEP application',
      'Neuromuscular blockade',
      'High FiO₂'
    ],
    correctAnswerIndex: 2,
    explanation: 'PEEP keeps alveoli open → increases functional residual capacity (FRC).',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_010',
    question: 'Which is NOT a result of hypercapnia?',
    options: [
      'Vasodilation',
      'Increased cerebral blood flow',
      'Respiratory alkalosis',
      'Respiratory stimulation',
      'Increased intracranial pressure'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypercapnia causes respiratory acidosis, not alkalosis.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_011',
    question: 'What is considered the best indicator of ventilation during anesthesia?',
    options: [
      'PaO₂',
      'SpO₂',
      'ETCO₂',
      'Respiratory rate',
      'Tidal volume'
    ],
    correctAnswerIndex: 2,
    explanation: 'ETCO₂ reflects exhaled CO₂ and is the most reliable indicator of ventilation effectiveness.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_012',
    question: 'What is the name of atelectasis caused by 100% oxygen replacing nitrogen?',
    options: [
      'Absorption atelectasis',
      'Compression atelectasis',
      'Traction atelectasis',
      'Obstructive atelectasis',
      'Immobilization atelectasis'
    ],
    correctAnswerIndex: 0,
    explanation: 'With 100% FiO₂, nitrogen is washed out and oxygen is rapidly absorbed → alveoli collapse.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_013',
    question: 'Why does CO₂ diffuse freely between alveoli and capillaries?',
    options: [
      'Its effect on pH',
      'Competition with oxygen',
      'High solubility in water',
      'Its ability to bind hemoglobin',
      'Stable PaO₂'
    ],
    correctAnswerIndex: 2,
    explanation: 'CO₂ is ~20 times more soluble in water than O₂ → diffusion capacity is high.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_014',
    question: 'Bohr\'s formula is used to calculate which value?',
    options: [
      'Arterial oxygen pressure',
      'Alveolar oxygen pressure',
      'Dead space volume',
      'Tidal volume',
      'V/Q ratio'
    ],
    correctAnswerIndex: 2,
    explanation: 'Bohr equation calculates dead space volume, based on PaCO₂ and ETCO₂ difference.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_015',
    question: 'Which develops more easily due to decreased FRC during anesthesia?',
    options: [
      'Hyperventilation',
      'Atelectasis',
      'Respiratory alkalosis',
      'Metabolic acidosis',
      'Hypothermia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Reduced FRC increases alveolar collapse risk → atelectasis.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_016',
    question: 'Which shifts the oxygen dissociation curve to the left?',
    options: [
      'Increased pCO₂',
      'Low pH',
      'Increased 2,3-BPG',
      'Hypothermia',
      'Exercise'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hypothermia increases hemoglobin\'s oxygen affinity → harder to release oxygen → left shift.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_017',
    question: 'Which is directly associated with alveolar hypoventilation?',
    options: [
      'Increased PaO₂',
      'Low PaCO₂',
      'Respiratory alkalosis',
      'Increased ETCO₂',
      'Hyperventilation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hypoventilation → CO₂ retention → ETCO₂ rises.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_018',
    question: 'What does a V/Q ratio of infinity indicate?',
    options: [
      'Ventilation without perfusion',
      'Perfusion without ventilation',
      'Neither ventilation nor perfusion',
      'Both ventilation and perfusion',
      'V/Q ≈ 1'
    ],
    correctAnswerIndex: 0,
    explanation: 'In pulmonary embolism, alveoli are ventilated but not perfused → V/Q = ∞.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_019',
    question: 'Which parameter best represents alveolar gas exchange during anesthesia?',
    options: [
      'SpO₂',
      'PaCO₂',
      'PaO₂',
      'ETCO₂',
      'FRC'
    ],
    correctAnswerIndex: 1,
    explanation: 'PaCO₂ directly reflects alveolar ventilation and gas exchange.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_020',
    question: 'Which condition causes hypoxemia due to diffusion defect?',
    options: [
      'Pulmonary embolism',
      'Pneumonia',
      'Interstitial lung disease',
      'Atelectasis',
      'Upper airway obstruction'
    ],
    correctAnswerIndex: 2,
    explanation: 'In interstitial fibrosis, thickened alveolar-capillary membrane impairs diffusion.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_021',
    question: 'Which is a risk of high-flow oxygen therapy?',
    options: [
      'Hypocapnia',
      'Hypothermia',
      'Absorption atelectasis',
      'Metabolic acidosis',
      'Hyponatremia'
    ],
    correctAnswerIndex: 2,
    explanation: '100% O₂ washes out nitrogen → alveolar collapse from rapid oxygen absorption.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_022',
    question: 'Which factor does NOT affect oxygen diffusion into alveoli?',
    options: [
      'Alveolar-capillary membrane thickness',
      'Diffusion surface area',
      'Hemoglobin level',
      'Partial pressure gradient',
      'Respiratory rate'
    ],
    correctAnswerIndex: 4,
    explanation: 'Diffusion depends on membrane characteristics and gradients, not directly on respiratory rate.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_023',
    question: 'Which explains why SpO₂ may remain stable despite falling PaO₂?',
    options: [
      'Metabolic alkalosis',
      'Increased PaCO₂',
      'Hemoglobin saturation plateau phase',
      'Hypervolemia',
      'Hyperkalemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'In the plateau region of the oxygen dissociation curve, SpO₂ remains stable even if PaO₂ declines.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_024',
    question: 'Why is oxygen therapy less effective in shunt-type hypoxemia?',
    options: [
      'Increased perfusion',
      'Increased ventilation',
      'Shunted blood bypasses oxygenated alveoli',
      'Increased hemoglobin saturation',
      'Increased pH'
    ],
    correctAnswerIndex: 2,
    explanation: 'In a shunt, blood bypasses alveoli → oxygen cannot reach shunted blood.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_025',
    question: 'Which stimulates peripheral chemoreceptors to increase respiration?',
    options: [
      'Hyperkalemia',
      'Hyperthermia',
      'Hypoxemia',
      'Hypoglycemia',
      'High hematocrit'
    ],
    correctAnswerIndex: 2,
    explanation: 'Peripheral chemoreceptors are strongly activated when PaO₂ <60 mmHg.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_026',
    question: 'What does the term "compliance" describe in respiratory physiology?',
    options: [
      'Respiratory muscle strength',
      'Tidal volume–elastance relationship',
      'Airway diameter',
      'Volume/pressure ratio',
      'V/Q ratio'
    ],
    correctAnswerIndex: 3,
    explanation: 'Compliance = ΔVolume / ΔPressure → describes lung expandability.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_027',
    question: 'Which position most reduces FRC under anesthesia?',
    options: [
      'Supine',
      'Trendelenburg',
      'Prone',
      'Lithotomy',
      'Lateral'
    ],
    correctAnswerIndex: 1,
    explanation: 'In Trendelenburg, diaphragm is displaced upward → FRC drops significantly.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_028',
    question: 'What is the main driving force for oxygen diffusion from alveoli to blood?',
    options: [
      'Respiratory muscle contraction',
      'pH difference',
      'Partial pressure gradient (PaO₂ – PvO₂)',
      'CO₂ diffusion rate',
      'Hemoglobin saturation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Gases diffuse along pressure gradients; oxygen diffusion depends on alveolar–capillary O₂ gradient.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_029',
    question: 'Which condition increases alveolar dead space?',
    options: [
      'Atelectasis',
      'Pneumonia',
      'Pulmonary embolism',
      'Hypoventilation',
      'Pneumothorax'
    ],
    correctAnswerIndex: 2,
    explanation: 'In PE, ventilation persists but perfusion stops → alveolar dead space rises.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_030',
    question: 'Oxygen transport capacity mainly depends on which factor?',
    options: [
      'Respiratory rate',
      'PaO₂',
      'Tidal volume',
      'Hemoglobin level',
      'Heart rate'
    ],
    correctAnswerIndex: 3,
    explanation: 'O₂ transport capacity is primarily determined by hemoglobin-bound oxygen.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_031',
    question: 'What is the main reason ventilatory response to hypoxia is blunted during anesthesia?',
    options: [
      'Hypothermia',
      'Opioid effect',
      'High oxygen administration',
      'Alcohol intake',
      'Hypoglycemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Opioids suppress brainstem respiratory centers → reduced ventilatory response to hypoxia.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_032',
    question: 'Which condition increases the PaCO₂–ETCO₂ gradient?',
    options: [
      'Increased tidal volume',
      'Decreased dead space',
      'Pulmonary embolism',
      'High FRC',
      'Increased hemoglobin'
    ],
    correctAnswerIndex: 2,
    explanation: 'PE increases alveolar dead space → widens PaCO₂–ETCO₂ difference.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_033',
    question: 'Which factor enhances hypoxic pulmonary vasoconstriction (HPV)?',
    options: [
      'Alveolar hypoxia',
      'Hyperventilation',
      'Anemia',
      'Hypocapnia',
      'Sedation'
    ],
    correctAnswerIndex: 0,
    explanation: 'HPV diverts blood away from poorly ventilated alveoli to better ventilated ones.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_034',
    question: 'Which condition increases the V/Q ratio?',
    options: [
      'Atelectasis',
      'Pulmonary embolism',
      'ARDS',
      'Respiratory acidosis',
      'Hypercapnia'
    ],
    correctAnswerIndex: 1,
    explanation: 'In PE, ventilation continues but perfusion is absent → V/Q rises (toward ∞).',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_035',
    question: 'In which condition can SpO₂ remain normal despite hypoxia?',
    options: [
      'Carbon monoxide poisoning',
      'Anemia',
      'Hypothermia',
      'Hypocapnia',
      'Polycythemia'
    ],
    correctAnswerIndex: 0,
    explanation: 'CO binds hemoglobin, preventing O₂ transport, but pulse oximetry cannot differentiate → SpO₂ appears falsely normal.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_036',
    question: 'Which finding suggests the presence of an intrapulmonary shunt?',
    options: [
      'Good response to oxygen therapy',
      'High PaCO₂',
      'No increase in PaO₂ despite increased FiO₂',
      'Decreased ventilation',
      'High tidal volume'
    ],
    correctAnswerIndex: 2,
    explanation: 'In shunt physiology, oxygen cannot enter the circulation in affected areas → increasing FiO₂ does not raise PaO₂.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_037',
    question: 'Which is one of the most important parameters affecting the relationship between PaO₂ and SpO₂?',
    options: [
      'pH',
      'HbA1c',
      'Serum creatinine',
      'Respiratory rate',
      'CO₂ production'
    ],
    correctAnswerIndex: 0,
    explanation: 'pH alters hemoglobin\'s oxygen affinity (Bohr effect) → shifts the curve right or left → changes the PaO₂–SpO₂ relationship.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_038',
    question: 'Why does functional residual capacity (FRC) decrease under anesthesia?',
    options: [
      'Increased tidal volume',
      'Decreased compliance',
      'Bronchodilation',
      'Increased respiratory rate',
      'Low V/Q ratio'
    ],
    correctAnswerIndex: 1,
    explanation: 'During anesthesia, muscle tone decreases and the diaphragm shifts upward → compliance decreases → FRC falls.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_039',
    question: 'Which condition exemplifies shunt physiology?',
    options: [
      'Pulmonary embolism',
      'Emphysema',
      'Atelectasis',
      'Asthma',
      'Hyperventilation'
    ],
    correctAnswerIndex: 2,
    explanation: 'In atelectasis, areas are perfused but not ventilated → intrapulmonary shunt occurs.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_040',
    question: 'What is the most important determinant of alveolar ventilation?',
    options: [
      'PaO₂',
      'Dead space',
      'Tidal volume',
      'Respiratory rate',
      'PaCO₂'
    ],
    correctAnswerIndex: 4,
    explanation: 'PaCO₂ level is the most sensitive indicator of alveolar ventilation.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_041',
    question: 'During anesthesia, in which position is ventilation–perfusion (V/Q) mismatch most common?',
    options: [
      'Supine',
      'Trendelenburg',
      'Prone',
      'Lateral decubitus',
      'Upright'
    ],
    correctAnswerIndex: 0,
    explanation: 'In supine position, dorsal lung regions are perfused but not ventilated → V/Q mismatch develops.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_042',
    question: 'Which of the following is NOT a component of total lung capacity (TLC)?',
    options: [
      'Tidal volume',
      'Expiratory reserve volume',
      'Inspiratory capacity',
      'Functional residual capacity',
      'Dead space volume'
    ],
    correctAnswerIndex: 4,
    explanation: 'Dead space is not included in TLC; TLC consists of ventilatory lung volumes.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_043',
    question: 'Best strategy to prevent atelectasis during anesthesia?',
    options: [
      'Hyperventilation',
      'Suppression of spontaneous breathing',
      'Reduced inspiratory volume',
      'Periodic recruitment maneuvers',
      'Lowering PaCO₂'
    ],
    correctAnswerIndex: 3,
    explanation: 'Recruitment maneuvers reopen collapsed alveoli → prevent atelectasis.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_044',
    question: 'During anesthesia, CO₂ elimination mainly depends on which parameter?',
    options: [
      'PaO₂',
      'Respiratory rate',
      'Dead space',
      'Alveolar ventilation',
      'Heart rate'
    ],
    correctAnswerIndex: 3,
    explanation: 'Alveolar ventilation is the key determinant of CO₂ elimination.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_045',
    question: 'What does increased residual volume during anesthesia cause?',
    options: [
      'Hypoventilation',
      'Hyperinflation',
      'Atelectasis',
      'Pulmonary embolism',
      'Increased V/Q ratio'
    ],
    correctAnswerIndex: 2,
    explanation: 'Increased residual volume reduces effective ventilation → alveolar collapse (atelectasis).',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_046',
    question: 'What is the most common respiratory physiology abnormality during anesthesia?',
    options: [
      'Shunt',
      'Increased dead space',
      'Diffusion defect',
      'V/Q mismatch',
      'Restrictive pattern'
    ],
    correctAnswerIndex: 3,
    explanation: 'V/Q mismatch is the most frequent abnormality under anesthesia.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_047',
    question: 'In a patient with CO₂ retention under anesthesia, what is the earliest clinical finding?',
    options: [
      'Bradycardia',
      'Seizures',
      'Somnolence',
      'Delirium',
      'Hypothermia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypercapnia causes cerebral vasodilation → altered consciousness, somnolence.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_048',
    question: 'What happens if FiO₂ is set to 100%?',
    options: [
      'PaCO₂ decreases',
      'Absorption atelectasis develops',
      'V/Q ratio rises',
      'PaO₂ remains unchanged',
      'Increased need for PEEP'
    ],
    correctAnswerIndex: 1,
    explanation: 'High FiO₂ removes nitrogen from alveoli → rapid O₂ absorption → alveolar collapse.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_049',
    question: 'Which represents the highest pressure measured at the end of inspiration?',
    options: [
      'PEEP',
      'Mean airway pressure',
      'Plateau pressure',
      'Peak inspiratory pressure',
      'Transpulmonary pressure'
    ],
    correctAnswerIndex: 3,
    explanation: 'Peak inspiratory pressure = maximum pressure during inspiration.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_050',
    question: 'Which finding indicates alveolar hypoventilation?',
    options: [
      'PaCO₂ <35 mmHg',
      'PaO₂ >100 mmHg',
      'PaCO₂ >45 mmHg',
      'SpO₂ = 100%',
      'Increased HCO₃'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypoventilation → CO₂ retention → PaCO₂ rises above 45 mmHg.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_051',
    question: 'If FRC decreases during anesthesia, what develops most commonly?',
    options: [
      'Increased O₂ consumption',
      'Decreased PaCO₂',
      'Alveolar collapse',
      'Increased hematocrit',
      'Increased cardiac output'
    ],
    correctAnswerIndex: 2,
    explanation: 'Reduced FRC → alveolar collapse → atelectasis.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_052',
    question: 'Most common cause of atelectasis during anesthesia?',
    options: [
      'Bronchospasm',
      'Hypothermia',
      'Reduced FRC',
      'Increased respiratory rate',
      'Increased V/Q ratio'
    ],
    correctAnswerIndex: 2,
    explanation: 'Low FRC → alveolar collapse.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_053',
    question: 'An increased A–a gradient (alveolar–arterial O₂ difference) indicates which condition?',
    options: [
      'High ventilation',
      'Normal diffusion',
      'V/Q mismatch or shunt',
      'Hypervolemia',
      'Increased tidal volume'
    ],
    correctAnswerIndex: 2,
    explanation: 'A widened A–a gradient suggests impaired oxygen transfer (V/Q mismatch or shunt).',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_054',
    question: 'Which condition increases alveolar dead space?',
    options: [
      'Atelectasis',
      'Pulmonary embolism',
      'Bronchospasm',
      'Interstitial fibrosis',
      'Pulmonary edema'
    ],
    correctAnswerIndex: 1,
    explanation: 'Pulmonary embolism → ventilation persists but perfusion is absent → dead space increases.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_055',
    question: 'When is inspiratory reserve volume most reduced?',
    options: [
      'During anesthetic induction',
      'During heavy exercise',
      'In pulmonary embolism',
      'In laparotomy position',
      'Supine position while awake'
    ],
    correctAnswerIndex: 0,
    explanation: 'Anesthesia reduces chest wall/diaphragm movement → IRV decreases.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_056',
    question: 'If SpO₂ = 90%, what is the estimated PaO₂?',
    options: [
      '30 mmHg',
      '45 mmHg',
      '60 mmHg',
      '75 mmHg',
      '90 mmHg'
    ],
    correctAnswerIndex: 2,
    explanation: 'On the oxyhemoglobin dissociation curve, SpO₂ 90% corresponds to PaO₂ ≈ 60 mmHg.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_057',
    question: 'Which can cause respiratory arrest?',
    options: [
      'Hypercapnia',
      'Hypoxia',
      'Hyperoxia',
      'Respiratory alkalosis',
      'High tidal volume'
    ],
    correctAnswerIndex: 1,
    explanation: 'Severe hypoxia depresses brainstem centers → apnea.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_058',
    question: 'Most common cause of increased airway resistance during anesthesia?',
    options: [
      'Tracheal stenosis',
      'Bronchospasm',
      'Atelectasis',
      'Pulmonary embolism',
      'Hypoxemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Bronchospasm narrows airway lumen → resistance rises.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_059',
    question: 'What develops if negative pleural pressure is lost during anesthesia?',
    options: [
      'Bronchospasm',
      'Pneumothorax',
      'Atelectasis',
      'Hyperventilation',
      'Respiratory alkalosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Loss of pleural negative pressure → lung collapse = pneumothorax.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_060',
    question: 'What happens if pulmonary shunt increases?',
    options: [
      'Hyperoxia',
      'Hyperventilation',
      'Hypoxemia',
      'Hypocapnia',
      'Respiratory alkalosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Blood bypasses ventilated alveoli → hypoxemia.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_061',
    question: 'Best treatment for hypoxemia due to V/Q mismatch?',
    options: [
      'Bronchodilator',
      'Diuretic',
      'High FiO₂',
      'PEEP',
      'Corticosteroid'
    ],
    correctAnswerIndex: 3,
    explanation: 'PEEP reopens collapsed alveoli → improves V/Q mismatch.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_062',
    question: 'A "shark-fin" pattern on capnography during anesthesia suggests which condition?',
    options: [
      'Atelectasis',
      'Bronchospasm',
      'Pulmonary embolism',
      'Respiratory arrest',
      'Hypothermia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Expiratory flow limitation → shark-fin waveform → bronchospasm.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_063',
    question: 'How is CO₂ elimination increased if respiratory rate is fixed?',
    options: [
      'Increasing FiO₂',
      'Increasing tidal volume',
      'Decreasing PEEP',
      'Increasing dead space',
      'Reducing depth of breathing'
    ],
    correctAnswerIndex: 1,
    explanation: 'Larger tidal volume = greater alveolar ventilation → more CO₂ elimination.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_064',
    question: 'In COPD patients, which factor most increases perioperative respiratory complications?',
    options: [
      'FEV₁ <50%',
      'Smoking history <10 pack-years',
      'Mild exercise tolerance',
      'Obesity',
      'Controlled hypertension'
    ],
    correctAnswerIndex: 0,
    explanation: 'FEV₁/FVC <70 and FEV₁ <50% predicted = high risk. Smoking cessation 6–8 weeks before surgery is advised.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_065',
    question: 'Which induction agent increases bronchospasm risk in asthmatic patients?',
    options: [
      'Thiopental',
      'Propofol',
      'Ketamine',
      'Sevoflurane',
      'Ropivacaine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Thiopental → histamine release → bronchospasm. Propofol & ketamine are bronchodilators.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_066',
    question: 'In restrictive lung disease, which ventilator setting is most appropriate?',
    options: [
      'Low tidal volume (6–8 mL/kg)',
      'High PEEP (10–15 cmH₂O)',
      'Rapid respiratory rate (>20/min)',
      'Inspiratory pressure >30 cmH₂O',
      'I:E ratio 1:1'
    ],
    correctAnswerIndex: 0,
    explanation: 'Restrictive disease → avoid high pressure/volumes. Use protective ventilation (low TV, moderate PEEP 5–10 cmH₂O).',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_067',
    question: 'In obstructive sleep apnea (OSA), what is the most important postoperative risk?',
    options: [
      'Opioid-induced respiratory depression',
      'Hypertension',
      'Hyperglycemia',
      'Fever',
      'Nausea–vomiting'
    ],
    correctAnswerIndex: 0,
    explanation: 'OSA patients are highly sensitive to opioids → non-opioid or regional techniques preferred.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_068',
    question: 'Which anesthetic technique is contraindicated in acute pulmonary edema?',
    options: [
      'Spinal anesthesia',
      'General anesthesia',
      'Epidural anesthesia',
      'Regional block',
      'Sedation'
    ],
    correctAnswerIndex: 0,
    explanation: 'Sudden sympathetic block from spinal anesthesia reduces cardiac output dangerously. Epidural (gradual) is safer.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_069',
    question: 'After pneumonectomy, the strongest predictor of postoperative respiratory failure is:',
    options: [
      'Pre-op FEV₁ <2 L',
      'Young age',
      'Female sex',
      'Normal PaCO₂',
      'ASA I'
    ],
    correctAnswerIndex: 0,
    explanation: 'Post-pneumonectomy risk rises when FEV₁ <800 mL or DLCO <40%. DLCO is highly predictive.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_070',
    question: 'Which muscle relaxant can trigger bronchospasm in an asthmatic patient?',
    options: [
      'Succinylcholine',
      'Rocuronium',
      'Atracurium',
      'Cisatracurium',
      'Mivacurium'
    ],
    correctAnswerIndex: 0,
    explanation: 'Depolarizing agents that cause histamine release should be avoided. Atracurium and cisatracurium are safer alternatives.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_071',
    question: 'Which anesthetic agent is contraindicated in a patient with pulmonary hypertension?',
    options: [
      'Ketamine',
      'Propofol',
      'Etomidate',
      'Sevoflurane',
      'Remifentanil'
    ],
    correctAnswerIndex: 0,
    explanation: 'Ketamine increases sympathetic activity → raises pulmonary artery pressure. Propofol and opioids are preferred.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_072',
    question: 'Which intervention is most effective in reducing postoperative pulmonary complications (PPCs)?',
    options: [
      'Deep inspiration exercises',
      'High-dose opioids',
      'Early intubation',
      'Frequent position changes',
      'Antihypertensive therapy'
    ],
    correctAnswerIndex: 0,
    explanation: 'Pre-op pulmonary rehabilitation, incentive spirometry (IS), and early mobilization can reduce PPCs by ~50%.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_073',
    question: 'Which anesthetic technique is preferred in a patient with suspected pulmonary embolism?',
    options: [
      'Regional anesthesia',
      'General anesthesia',
      'High-dose opioids',
      'Inhalational anesthesia',
      'Total intravenous anesthesia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Spinal/epidural is contraindicated if anticoagulated, but regional techniques are generally safer. If GA is needed, anticoagulation must be managed carefully.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_074',
    question: 'Which of the following is NOT a sign of intraoperative bronchospasm?',
    options: [
      'Sudden rise in ETCO₂',
      'Wheezing',
      'Increased inspiratory pressure',
      'Impaired oxygenation',
      'Increased plateau pressure'
    ],
    correctAnswerIndex: 0,
    explanation: 'Bronchospasm causes expiratory obstruction → ETCO₂ often decreases, while other findings are typical.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_075',
    question: 'Which test best predicts postoperative lung function after lung resection?',
    options: [
      'Ventilation/perfusion (V/Q) scan',
      'Chest X-ray',
      'Pulmonary function test',
      'Arterial blood gas',
      'Chest CT'
    ],
    correctAnswerIndex: 0,
    explanation: 'Identifies the functional contribution of the resected lobe → allows calculation of predicted postoperative FEV₁.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_076',
    question: 'Which is NOT used in the treatment of pulmonary hypertension?',
    options: [
      'Beta-blockers',
      'Oxygen',
      'PDE-5 inhibitors (sildenafil)',
      'Prostacyclin analogues (epoprostenol)',
      'Endothelin receptor antagonists (bosentan)'
    ],
    correctAnswerIndex: 0,
    explanation: 'PH is treated with pulmonary vasodilators. Beta-blockers worsen RV function.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_077',
    question: 'Which is NOT a complication of one-lung ventilation (OLV) in thoracic surgery?',
    options: [
      'Hyperglycemia',
      'Hypoxemia',
      'Re-expansion pulmonary edema',
      'Hemodynamic instability',
      'Ventilator-induced lung injury'
    ],
    correctAnswerIndex: 0,
    explanation: 'Typical OLV complications include hypoxemia (10–15%), barotrauma, and airway injury.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_078',
    question: 'Which is a risk factor for postoperative atelectasis?',
    options: [
      'Upper abdominal surgery',
      'Young age',
      'Non-smoker',
      'Normal BMI',
      'Epidural analgesia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Diaphragmatic dysfunction + pain → shallow breathing → atelectasis. IS and early mobilization prevent it.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_079',
    question: 'Priority in anesthetic management of a patient with pulmonary hypertension?',
    options: [
      'Reduce RV afterload',
      'Increase systemic vascular resistance',
      'Induce hypercapnia',
      'Volume loading',
      'Positive inotrope use'
    ],
    correctAnswerIndex: 0,
    explanation: 'Oxygen, NO, prostacyclins used for pulmonary vasodilation. Avoid excessive volume.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_080',
    question: 'Which is NOT a risk factor for postoperative pneumonia?',
    options: [
      'Young age',
      'COPD',
      'Prolonged mechanical ventilation',
      'Aspiration',
      'Malnutrition'
    ],
    correctAnswerIndex: 0,
    explanation: 'Older age, smoking, immunosuppression, and upper abdominal surgery increase pneumonia risk.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_081',
    question: 'Which ventilatory strategy is used in ARDS?',
    options: [
      'Low tidal volume (6 mL/kg)',
      'High PEEP (>15 cmH₂O)',
      'Rapid respiratory rate (>25/min)',
      'Inspiratory pressure >35 cmH₂O',
      'I:E ratio 1:1'
    ],
    correctAnswerIndex: 0,
    explanation: 'ARDSNet protocol: TV 6 mL/kg, plateau pressure <30 cmH₂O, titrated PEEP/FiO₂.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_082',
    question: 'Which is NOT an ECG finding of pulmonary hypertension?',
    options: [
      'Left ventricular hypertrophy',
      'Right axis deviation',
      'P pulmonale',
      'Right ventricular hypertrophy',
      'S1Q3T3 pattern'
    ],
    correctAnswerIndex: 0,
    explanation: 'PH shows RV strain patterns: R/S >1 in V1, deep S waves.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_083',
    question: 'Which is NOT used in the treatment of bronchospasm?',
    options: [
      'Lidocaine (IV)',
      'Salbutamol (inhaled)',
      'Adrenaline (IV/IM)',
      'Hydrocortisone (IV)',
      'Magnesium sulfate (IV)'
    ],
    correctAnswerIndex: 0,
    explanation: 'IV lidocaine may worsen bronchospasm. Inhaled lidocaine suppresses cough reflex.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_084',
    question: 'Gold standard for pulmonary embolism diagnosis?',
    options: [
      'CT pulmonary angiography',
      'D-dimer',
      'Chest X-ray',
      'V/Q scan',
      'ECG'
    ],
    correctAnswerIndex: 0,
    explanation: 'High sensitivity and specificity. D-dimer is screening only.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_085',
    question: 'Which is NOT a risk factor for postoperative respiratory failure?',
    options: [
      'Young age',
      'ASA ≥3',
      'Upper abdominal surgery',
      'Chronic alcohol use',
      'COPD'
    ],
    correctAnswerIndex: 0,
    explanation: 'Advanced age, obesity, neuromuscular disease, and prolonged surgery ↑ risk.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_086',
    question: 'Which factor most affects mortality after lung transplantation?',
    options: [
      'Bronchial anastomotic dehiscence',
      'Hypertension',
      'Diabetes mellitus',
      'Obesity',
      'Minimally invasive surgery'
    ],
    correctAnswerIndex: 0,
    explanation: 'Early mortality is linked to infection/airway complications; long-term = chronic allograft dysfunction.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_087',
    question: 'Normal ventilation/perfusion (V/Q) ratio in lungs?',
    options: [
      '0.8',
      '1.0',
      '1.2',
      '0.5',
      '1.5'
    ],
    correctAnswerIndex: 0,
    explanation: 'VA = 4 L/min, Q = 5 L/min → V/Q = 4/5 = 0.8. Apex >3, base <0.6.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_088',
    question: 'In which situation does FRC decrease?',
    options: [
      'General anesthesia induction',
      'Standing',
      'Male sex',
      'Tall height',
      'Asthma'
    ],
    correctAnswerIndex: 0,
    explanation: 'Anesthesia reduces FRC by ~20% → atelectasis risk.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_089',
    question: 'Most common form of CO₂ transport in blood?',
    options: [
      'Bicarbonate (HCO₃⁻)',
      'Carbaminohemoglobin',
      'Dissolved gas',
      'Carbonic acid',
      'Carboxyhemoglobin'
    ],
    correctAnswerIndex: 0,
    explanation: '~70% as HCO₃⁻, 23% bound to Hb, 7% dissolved.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_090',
    question: 'At what PaO₂ does hypoxic pulmonary vasoconstriction (HPV) begin?',
    options: [
      '<60 mmHg',
      '<80 mmHg',
      '<100 mmHg',
      '<40 mmHg',
      '<20 mmHg'
    ],
    correctAnswerIndex: 0,
    explanation: 'Alveolar hypoxia → vasoconstriction → improves V/Q matching.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_091',
    question: 'Main determinant of tissue oxygen delivery (DO₂)?',
    options: [
      'Cardiac output',
      'Hemoglobin concentration',
      'PaO₂',
      'Arterial oxygen saturation',
      '2,3-DPG'
    ],
    correctAnswerIndex: 0,
    explanation: 'DO₂ = CO × (Hb × 1.34 × SaO₂ + 0.003 × PaO₂).',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_092',
    question: 'Which increases pulmonary vascular resistance (PVR)?',
    options: [
      'Hypoxia',
      'Acetylcholine',
      'Nitric oxide',
      'Prostacyclin',
      'Alkalosis'
    ],
    correctAnswerIndex: 0,
    explanation: 'HPV increases PVR. NO, prostacyclin, ACh cause vasodilation.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_093',
    question: 'Which does NOT increase dead space (VD/VT)?',
    options: [
      'High tidal volume ventilation',
      'Pulmonary embolism',
      'Hypovolemia',
      'PEEP application',
      'COPD'
    ],
    correctAnswerIndex: 0,
    explanation: 'Dead space increases with embolism, hypovolemia, COPD, PEEP (↓ perfusion).',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_094',
    question: 'Most common cause of intraoperative hypoxemia?',
    options: [
      'Atelectasis',
      'Bronchospasm',
      'Pneumothorax',
      'Pulmonary edema',
      'Air embolism'
    ],
    correctAnswerIndex: 0,
    explanation: 'Occurs in ~90% of anesthetized patients, mostly in dependent lung regions.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_095',
    question: 'Formula for shunt fraction (Qs/Qt)?',
    options: [
      '(CcO₂ – CaO₂) / (CcO₂ – CvO₂)',
      '(CaO₂ – CvO₂) / CcO₂',
      '(PaO₂ – PvO₂) / FiO₂',
      '(SaO₂ – SvO₂) / PaO₂',
      '(ETCO₂ – PaCO₂) / PaCO₂'
    ],
    correctAnswerIndex: 0,
    explanation: 'Normal Qs/Qt <5%.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_096',
    question: 'Which increases diffusion capacity (DLCO)?',
    options: [
      'Exercise',
      'Anemia',
      'Lung resection',
      'Pulmonary fibrosis',
      'CO exposure'
    ],
    correctAnswerIndex: 0,
    explanation: 'Increases pulmonary capillary recruitment and surface area.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_097',
    question: 'Which does NOT increase work of breathing?',
    options: [
      'High PEEP',
      'Airway obstruction',
      'Restrictive lung disease',
      'Increased respiratory rate',
      'Fever'
    ],
    correctAnswerIndex: 0,
    explanation: 'PEEP may actually reduce work by preventing atelectasis.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_098',
    question: 'Which condition increases P50?',
    options: [
      'Acidosis',
      'Alkalosis',
      'Hypothermia',
      'Fetal hemoglobin',
      'CO poisoning'
    ],
    correctAnswerIndex: 0,
    explanation: 'P50 = PaO₂ at 50% Hb saturation (normally 27 mmHg). Acidosis, hyperthermia, ↑2,3-DPG → ↑P50 (↓ affinity).',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_099',
    question: 'Which cannot be measured by pulmonary artery catheterization?',
    options: [
      'Alveolar pressure',
      'Pulmonary artery pressure',
      'Pulmonary capillary wedge pressure',
      'Cardiac output',
      'Mixed venous O₂ saturation'
    ],
    correctAnswerIndex: 0,
    explanation: 'Measured on ventilator, not via PAC.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_100',
    question: 'Which is NOT a respiratory muscle?',
    options: [
      'Biceps brachii',
      'Diaphragm',
      'External intercostals',
      'Scalenes',
      'Sternocleidomastoid'
    ],
    correctAnswerIndex: 0,
    explanation: 'Main inspiratory muscle = diaphragm.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_101',
    question: 'Location of chemoreceptors controlling respiration?',
    options: [
      'Medulla oblongata & aortic/carotid bodies',
      'Pons',
      'Cerebral cortex',
      'Hypothalamus',
      'Spinal cord'
    ],
    correctAnswerIndex: 0,
    explanation: 'Central (medulla) → CO₂/pH; Peripheral (aortic/carotid bodies) → PaO₂.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_102',
    question: 'Which cannot be detected by intraoperative pulse oximetry?',
    options: [
      'Methemoglobinemia',
      'Hypoxemia',
      'Poor perfusion',
      'Tachycardia',
      'Limb ischemia'
    ],
    correctAnswerIndex: 0,
    explanation: 'SpO₂ stays ~85% in metHb. COHb gives falsely high readings.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_103',
    question: 'Which factor affects alveolar gas diffusion?',
    options: [
      'Membrane thickness',
      'Hemoglobin level',
      'Blood pressure',
      'Heart rate',
      'Plasma viscosity'
    ],
    correctAnswerIndex: 0,
    explanation: 'Fick\'s law: Diffusion ∝ (Area × ΔP × Solubility) / (Thickness × √MW).',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_104',
    question: 'Which arterial blood gas change is expected during exercise?',
    options: [
      'Decreased PaCO₂',
      'Decreased pH',
      'Increased PaO₂',
      'Increased HCO₃⁻',
      'Decreased lactate'
    ],
    correctAnswerIndex: 0,
    explanation: 'Exercise ↑ alveolar ventilation → ↓ PaCO₂. Heavy exercise → lactic acidosis.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_105',
    question: 'Which condition enhances transmission of breath sounds?',
    options: [
      'Pneumothorax',
      'Pleural effusion',
      'Atelectasis',
      'Pulmonary edema',
      'COPD'
    ],
    correctAnswerIndex: 0,
    explanation: 'Solid tissue transmits sounds well (bronchial breathing). Pleural effusion ↓ transmission.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'respiratory_physiology_anesthesia_106',
    question: 'Which meets the definition of respiratory failure?',
    options: [
      'PaO₂ <60 mmHg and/or PaCO₂ >50 mmHg',
      'PaO₂ <80 mmHg',
      'PaCO₂ >35 mmHg',
      'SaO₂ <90%',
      'RR >20/min'
    ],
    correctAnswerIndex: 0,
    explanation: 'Type 1 = hypoxemic, Type 2 = hypercapnic respiratory failure. Acute if pH <7.25.',
    category: 'Respiratory Physiology & Anesthesia',
    difficulty: 2
  ),
];
