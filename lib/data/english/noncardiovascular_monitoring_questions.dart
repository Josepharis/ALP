import '../../models/question.dart';

List<Question> noncardiovascularMonitoringQuestions = [
  Question(
    id: 'noncv_monitoring_001',
    question: 'By which principle does the pulse oximeter measure oxygen saturation?',
    options: [
      'Electromagnetic field',
      'Thermal changes',
      'Absorption spectrophotometry',
      'Ultrasound reflection',
      'Electrochemical reaction'
    ],
    correctAnswerIndex: 2,
    explanation: 'The pulse oximeter emits red and infrared light, and oxygen saturation is calculated based on the differential absorption of hemoglobin.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_002',
    question: 'What is the most important limiting factor of pulse oximetry?',
    options: [
      'High temperature',
      'Elevated pCO₂',
      'Low ambient light',
      'Hypoperfusion',
      'Presence of anemia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Pulse oximeters depend on pulsatile blood flow. In hypoperfusion, accuracy is impaired.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_003',
    question: 'In patients with high carboxyhemoglobin levels, what does the pulse oximeter show?',
    options: [
      'Low SpO₂',
      'True saturation',
      'Lower-than-normal values',
      'Falsely high values',
      'Unable to measure'
    ],
    correctAnswerIndex: 3,
    explanation: 'Carboxyhemoglobin is detected as oxyhemoglobin, leading to falsely elevated saturation readings.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_004',
    question: 'Which parameter is most closely reflected by SpO₂ measured with a pulse oximeter?',
    options: [
      'PaCO₂',
      'pH',
      'SaO₂',
      'HCO₃⁻',
      'O₂ concentration'
    ],
    correctAnswerIndex: 2,
    explanation: 'SpO₂ correlates closely with SaO₂ measured by arterial blood gas analysis.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_005',
    question: 'A decrease in end-tidal CO₂ (EtCO₂) usually indicates:',
    options: [
      'Hypoventilation',
      'Increased metabolic rate',
      'Pulmonary embolism',
      'High cardiac output',
      'Alveolar hypoventilation'
    ],
    correctAnswerIndex: 2,
    explanation: 'In conditions such as pulmonary embolism, perfusion decreases → CO₂ elimination falls → EtCO₂ drops.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_006',
    question: 'Which curve best describes the relationship between SpO₂ and PaO₂?',
    options: [
      'Frank-Starling curve',
      'Dissociation curve',
      'Haldane effect',
      'Oxyhemoglobin dissociation curve',
      'Respiratory compensation curve'
    ],
    correctAnswerIndex: 3,
    explanation: 'The oxyhemoglobin dissociation curve shows the SpO₂–PaO₂ relationship and its physiological shifts.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_007',
    question: 'Which condition shifts the oxyhemoglobin dissociation curve to the left?',
    options: [
      'Hyperthermia',
      'Acidosis',
      'High 2,3-DPG',
      'Hypocarbia',
      'Anemia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hypocarbia, alkalosis, and hypothermia shift the curve left → hemoglobin holds onto O₂ more tightly.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_008',
    question: 'Which parameter indirectly reflects peripheral tissue perfusion?',
    options: [
      'PaO₂',
      'SpO₂',
      'Lactate level',
      'SaO₂',
      'Hemoglobin concentration'
    ],
    correctAnswerIndex: 2,
    explanation: 'Elevated lactate indicates anaerobic metabolism due to tissue hypoperfusion.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_009',
    question: 'At which range does the accuracy of pulse oximetry decrease most significantly?',
    options: [
      '>100%',
      '95–100%',
      '90–95%',
      '80–90%',
      '<80%'
    ],
    correctAnswerIndex: 4,
    explanation: 'Below 80% saturation, pulse oximeter accuracy declines sharply.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_010',
    question: 'Which causes a falsely high SpO₂ reading on pulse oximetry?',
    options: [
      'Hypotension',
      'Hypoxia',
      'Carboxyhemoglobin',
      'Metabolic acidosis',
      'Hypothermia'
    ],
    correctAnswerIndex: 2,
    explanation: 'COHb is read as oxyhemoglobin → falsely high SpO₂.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_011',
    question: 'What causes a discrepancy between SpO₂ and SaO₂?',
    options: [
      'Lactate production',
      'Cellular hypoxia',
      'Wavelength shifts',
      'Lack of pulsatile flow',
      'Low 2,3-DPG'
    ],
    correctAnswerIndex: 3,
    explanation: 'Pulse oximeters require pulsatile flow. In low-flow states, readings may be inaccurate.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_012',
    question: 'Which factor does not affect pulse oximeter accuracy?',
    options: [
      'Methemoglobinemia',
      'Ambient light interference',
      'Vernix (in newborns)',
      'Anemia',
      'Hypercapnia'
    ],
    correctAnswerIndex: 4,
    explanation: 'CO₂ levels do not interfere with oximetry.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_013',
    question: 'In methemoglobinemia, pulse oximetry typically shows a fixed saturation of:',
    options: [
      '85%',
      '75%',
      '95%',
      '65%',
      '100%'
    ],
    correctAnswerIndex: 0,
    explanation: 'MetHb typically causes SpO₂ to plateau around 85%.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_014',
    question: 'Which condition does not increase EtCO₂?',
    options: [
      'Hypoventilation',
      'Increased metabolic rate',
      'High cardiac output',
      'Tension pneumothorax',
      'Fever'
    ],
    correctAnswerIndex: 3,
    explanation: 'Tension pneumothorax decreases ventilation → EtCO₂ falls.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_015',
    question: 'Placement of a pulse oximeter sensor on which site shows the slowest response?',
    options: [
      'Earlobe',
      'Forehead',
      'Tongue',
      'Finger',
      'Nose tip'
    ],
    correctAnswerIndex: 3,
    explanation: 'Finger sites are most affected by peripheral perfusion → delayed response.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_016',
    question: 'Which condition shifts the oxyhemoglobin dissociation curve to the right?',
    options: [
      'Hypothermia',
      'Hypocarbia',
      'Alkalosis',
      'High 2,3-DPG',
      'Low pCO₂'
    ],
    correctAnswerIndex: 3,
    explanation: 'Acidosis, hypercarbia, and increased 2,3-DPG shift the curve right → easier O₂ release.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_017',
    question: 'In capnography, Phase II corresponds to:',
    options: [
      'Anatomical dead space',
      'Alveolar gas mixing',
      'CO₂-free exhaled gas',
      'Residual volume',
      'Minimum CO₂ level'
    ],
    correctAnswerIndex: 1,
    explanation: 'Phase II represents the transition as alveolar gas mixes with dead space gas.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_018',
    question: 'An increased slope in Phase III (plateau) of capnography suggests:',
    options: [
      'Rapid ventilation',
      'Bronchospasm',
      'Hypothermia',
      'Increased tidal volume',
      'Fever'
    ],
    correctAnswerIndex: 1,
    explanation: 'Uneven alveolar emptying (e.g., bronchospasm) causes a steeper Phase III slope.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_019',
    question: 'What is the essential requirement for pulse oximetry to function?',
    options: [
      'High oxygen partial pressure',
      'Pulsatile blood flow',
      'High hemoglobin concentration',
      'Normal temperature',
      'Low pH'
    ],
    correctAnswerIndex: 1,
    explanation: 'Pulse oximeters require pulsatile arterial flow.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_020',
    question: 'In true hypoxemia, pulse oximetry is most inaccurate under which condition?',
    options: [
      'Normothermia',
      'High hemoglobin',
      'Bright ambient light',
      'Low perfusion',
      'Hypercapnia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Low perfusion reduces signal strength and reliability.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_021',
    question: 'Which causes falsely low SpO₂ readings?',
    options: [
      'Carboxyhemoglobin',
      'Hyperventilation',
      'Nail polish',
      'Anxiety',
      'Fever'
    ],
    correctAnswerIndex: 2,
    explanation: 'Dark nail polish blocks light transmission → falsely low values.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_022',
    question: 'Which wavelength is used instead of blue light in pulse oximetry?',
    options: [
      '400 nm',
      '600 nm',
      '660 nm',
      '760 nm',
      '940 nm'
    ],
    correctAnswerIndex: 2,
    explanation: 'Pulse oximeters use red (660 nm) and infrared (940 nm).',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_023',
    question: 'Pulse oximeter shows 100% SpO₂, but the patient is hypoxic. The most likely cause is:',
    options: [
      'Device malfunction',
      'Methemoglobinemia',
      'Hypothermia',
      'Hypovolemia',
      'Arrhythmia'
    ],
    correctAnswerIndex: 1,
    explanation: 'MetHb may mask true hypoxia by displaying falsely high SpO₂.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_024',
    question: 'In capnography, the absence of CO₂ at the beginning of Phase I indicates:',
    options: [
      'Apnea',
      'Dead space gas',
      'Bronchospasm',
      'Hyperventilation',
      'CO₂ retention'
    ],
    correctAnswerIndex: 1,
    explanation: 'Phase I represents dead space ventilation, containing no CO₂.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_025',
    question: 'Prolonged Phase III in capnography is most often seen in:',
    options: [
      'Hypothermia',
      'Rapid intubation',
      'Increased tidal volume',
      'Airway obstruction',
      'Hyperthermia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Airway obstruction delays alveolar emptying, prolonging Phase III.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_026',
    question: 'Which components are essential for pulse oximetry function?',
    options: [
      'Electrodes and electrochemical sensor',
      'Sound waves and piezo sensor',
      'LED and photodetector',
      'Heat sensor and voltage source',
      'Magnetic resonance detector'
    ],
    correctAnswerIndex: 2,
    explanation: 'LEDs and photodetectors measure differential light absorption.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_027',
    question: 'What is the normal difference between EtCO₂ and PaCO₂?',
    options: [
      '0 mmHg',
      '2–5 mmHg',
      '10–15 mmHg',
      '15–20 mmHg',
      '5–10 mmHg'
    ],
    correctAnswerIndex: 1,
    explanation: 'EtCO₂ is normally 2–5 mmHg lower than PaCO₂.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_028',
    question: 'The plethysmographic waveform seen on pulse oximetry is related to:',
    options: [
      'Heart rate',
      'Lung expansion',
      'Inspiratory pressure',
      'Systolic pressure wave',
      'Airway resistance'
    ],
    correctAnswerIndex: 3,
    explanation: 'Pleth waveform reflects arterial pulsations → systolic blood pressure changes.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_029',
    question: 'If the pulse oximeter signal is weak but the patient is not hypoxic, the most likely cause is:',
    options: [
      'Hypoxemia',
      'Arrhythmia',
      'Methemoglobinemia',
      'Peripheral vasoconstriction',
      'Hyperthermia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Vasoconstriction (cold, shock) reduces signal despite adequate oxygenation.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_030',
    question: 'If no signal is obtained on the finger, the best alternative site for pulse oximetry is:',
    options: [
      'Chest',
      'Abdomen',
      'Tongue',
      'Sole of the foot',
      'Shoulder'
    ],
    correctAnswerIndex: 2,
    explanation: 'The tongue is highly perfused and a reliable alternative site.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_031',
    question: 'If EtCO₂ is low but PaCO₂ is high, what does this indicate?',
    options: [
      'Hypothermia',
      'Arrhythmia',
      'Increased dead space ventilation',
      'Decreased CO₂ production',
      'Respiratory alkalosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Increased dead space reduces alveolar CO₂ delivery, so EtCO₂ falls while PaCO₂ remains high.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_032',
    question: 'A rapidly falling Phase III (plateau) on capnography suggests:',
    options: [
      'Bronchospasm',
      'Air leak',
      'Dead space gas',
      'Respiratory arrest',
      'Poor intubation'
    ],
    correctAnswerIndex: 1,
    explanation: 'In air leaks, the plateau cannot be maintained → sudden fall in CO₂ trace.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_033',
    question: 'Which factor most affects light transmission in pulse oximetry?',
    options: [
      'Skin thickness',
      'Nail length',
      'Blood color',
      'Motion artifact',
      'Ambient temperature'
    ],
    correctAnswerIndex: 3,
    explanation: 'Motion artifacts most disrupt LED light passage and detector signal.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_034',
    question: 'What is the role of the photodetector in pulse oximetry?',
    options: [
      'Measure heat',
      'Detect pulse',
      'Adjust wavelength',
      'Detect non-absorbed light',
      'Measure pressure differences'
    ],
    correctAnswerIndex: 3,
    explanation: 'The photodetector captures light not absorbed by hemoglobin and sends it for signal processing.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_035',
    question: 'Variations in the pleth waveform on pulse oximetry usually indicate:',
    options: [
      'Hypoxemia',
      'Oxygen consumption',
      'Volume status (preload)',
      'Pulse irregularity',
      'Temperature changes'
    ],
    correctAnswerIndex: 2,
    explanation: 'Pleth variability reflects preload and is useful for volume responsiveness assessment.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_036',
    question: 'Which EEG waves are 8–13 Hz?',
    options: [
      'Delta',
      'Beta',
      'Alpha',
      'Theta',
      'Gamma'
    ],
    correctAnswerIndex: 2,
    explanation: 'Alpha waves (8–13 Hz) are dominant at rest with eyes closed.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_037',
    question: 'Cerebral oximetry (NIRS) is based on which principle?',
    options: [
      'Thermistor resistance change',
      'Pulse wave velocity',
      'Lambert–Beer law',
      'Piezoelectric crystal changes',
      'Biochemical O₂ measurement'
    ],
    correctAnswerIndex: 2,
    explanation: 'NIRS relies on the absorption differences of oxy- vs deoxyhemoglobin at different wavelengths.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_038',
    question: 'What does Phase III (plateau) in capnography represent?',
    options: [
      'Dead space gas',
      'Bronchial closing volume',
      'Alveolar emptying',
      'Inspiration',
      'Systemic CO₂ production'
    ],
    correctAnswerIndex: 2,
    explanation: 'The plateau corresponds to alveolar gas exhalation; EtCO₂ is measured at its end.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_039',
    question: 'Which statement is true about BIS monitoring?',
    options: [
      'Measures neuromuscular block depth',
      'Defines deep sleep',
      'Indicates intubation readiness',
      'Objectively assesses anesthesia depth',
      'Shows brainstem activity'
    ],
    correctAnswerIndex: 3,
    explanation: 'BIS (0–100 scale) quantifies anesthesia depth; <60 typically reflects surgical anesthesia.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_040',
    question: 'Most reliable method for body temperature monitoring?',
    options: [
      'Axillary',
      'Rectal',
      'Skin surface',
      'Pulmonary artery thermistor',
      'Oral'
    ],
    correctAnswerIndex: 3,
    explanation: 'Pulmonary artery measurement best reflects true core temperature.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_041',
    question: 'Which condition produces a "shark-fin" capnography trace?',
    options: [
      'Esophageal intubation',
      'Atelectasis',
      'Bronchospasm',
      'Hyperventilation',
      'Apnea'
    ],
    correctAnswerIndex: 2,
    explanation: 'Bronchospasm prolongs exhalation, creating a shark-fin appearance.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_042',
    question: 'TOF stimulation with only 1 twitch response indicates:',
    options: [
      'Mild block',
      'Moderate block',
      'Deep block',
      'No block',
      'Phase block'
    ],
    correctAnswerIndex: 2,
    explanation: 'One twitch means ~90–95% receptor blockade → deep block.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_043',
    question: 'NIRS reflects oxygen saturation of which blood compartment most?',
    options: [
      'Arterial',
      'Capillary',
      'Venous',
      'CSF',
      'Cerebrospinal fluid'
    ],
    correctAnswerIndex: 2,
    explanation: '~70% of the NIRS signal derives from venous oxygenation.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_044',
    question: 'Safest pulse oximeter sensor for MRI?',
    options: [
      'Fiber optic sensor',
      'Metal clip',
      'Magnetic ring',
      'Wired silicone probe',
      'Mercury-containing probe'
    ],
    correctAnswerIndex: 0,
    explanation: 'Fiber optic sensors are MRI-compatible, unaffected by magnetic fields.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_045',
    question: 'Expected EEG finding under isoflurane anesthesia?',
    options: [
      'Increased alpha activity',
      'High-voltage delta waves',
      'Reduced spindle activity',
      'Increased gamma waves',
      'Continuous beta activity'
    ],
    correctAnswerIndex: 1,
    explanation: 'Volatile agents often increase delta activity, indicating deep anesthesia.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_046',
    question: 'Which cannot be directly measured by infrared anesthetic gas analyzers?',
    options: [
      'Halothane',
      'Sevoflurane',
      'N₂O',
      'CO₂',
      'O₂'
    ],
    correctAnswerIndex: 4,
    explanation: 'Oxygen does not absorb IR light → measured by paramagnetic/electrochemical sensors instead.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_047',
    question: 'Preoperative normothermia is important because it:',
    options: [
      'Accelerates thrombocytopenia',
      'Increases postoperative pain',
      'Enhances immune response',
      'Reduces blood loss',
      'Reduces renal blood flow'
    ],
    correctAnswerIndex: 3,
    explanation: 'Normothermia preserves coagulation and immune function, reducing blood loss.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_048',
    question: 'Most reliable clinical test for recovery from neuromuscular block?',
    options: [
      'Eye blinking',
      'Hand grip',
      'Sustaining head lift for 5 sec',
      'Toe movement',
      'Tongue protrusion'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sustained head lift indicates adequate muscle strength and readiness for extubation.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_049',
    question: 'Best method for monitoring cerebral oxygenation?',
    options: [
      'Pulse oximetry',
      'EtCO₂',
      'NIRS',
      'ECG',
      'TOF'
    ],
    correctAnswerIndex: 2,
    explanation: 'NIRS allows non-invasive continuous cerebral oxygen monitoring.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_050',
    question: 'A patient with TOF ratio >90% should be interpreted as:',
    options: [
      'Block not fully resolved',
      'Cannot breathe spontaneously',
      'Not ready for extubation',
      'Should be combined with clinical tests',
      'Deep block persists'
    ],
    correctAnswerIndex: 3,
    explanation: 'Even if TOF >90%, extubation must be confirmed with clinical strength tests.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_051',
    question: 'A slowly rising plateau on capnography suggests:',
    options: [
      'Esophageal intubation',
      'Hypothermia',
      'Bronchospasm',
      'Hypercarbia',
      'Hyperventilation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Bronchospasm causes delayed emptying → slow rise ("shark-fin").',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_052',
    question: 'SpO₂ = 92% corresponds to approximate PaO₂ of:',
    options: [
      '60 mmHg',
      '80 mmHg',
      '100 mmHg',
      '120 mmHg',
      '40 mmHg'
    ],
    correctAnswerIndex: 0,
    explanation: 'Oxyhemoglobin curve: SpO₂ 92% ≈ PaO₂ 60 mmHg.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_053',
    question: 'Most common cause of intraoperative thermoregulation loss?',
    options: [
      'Shivering',
      'Hypovolemia',
      'Inhalational agents',
      'Anesthesia-induced vasodilation',
      'Hypercapnia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Anesthetics cause peripheral vasodilation → increased heat loss.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_054',
    question: 'NIRS technology is based on:',
    options: [
      'Electromagnetic field & resistance',
      'Light absorption & tissue penetration',
      'Electrolyte changes & voltage difference',
      'Thermal changes & reflectance',
      'Ultrasound echo & speed'
    ],
    correctAnswerIndex: 1,
    explanation: 'NIRS measures differences in near-infrared light absorption through tissues.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_055',
    question: 'Which most interferes with pulse oximetry accuracy?',
    options: [
      'Hypotension',
      'Anemia',
      'Hypercapnia',
      'N₂O use',
      'Hyperglycemia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Hypotension reduces perfusion → unreliable SpO₂ readings.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_056',
    question: 'What does cerebral oximetry (NIRS) measure?',
    options: [
      'Intracranial pressure',
      'Oxy-/deoxyhemoglobin ratio',
      'Intracranial blood flow',
      'CSF volume',
      'Carotid artery pressure'
    ],
    correctAnswerIndex: 1,
    explanation: 'NIRS calculates the balance between oxy- and deoxyhemoglobin.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_057',
    question: 'Basic principle of anesthetic gas analyzers?',
    options: [
      'Thermal conductivity',
      'Electromagnetic resonance',
      'Infrared absorption',
      'Ultrasonic reflection',
      'Electrochemical oxidation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Halogenated agents absorb IR light → detected by analyzers.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_058',
    question: 'Patient with TOF ratio 100% but weakness most likely has:',
    options: [
      'Residual block',
      'Device error',
      'Myasthenia gravis',
      'Inadequate relaxant dose',
      'Isoflurane effect'
    ],
    correctAnswerIndex: 0,
    explanation: 'Residual weakness may persist despite TOF 100%. Clinical confirmation required.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_059',
    question: 'Which capnography phase represents inspiration?',
    options: [
      'Phase 0',
      'Phase I',
      'Phase II',
      'Phase III',
      'Phase IV'
    ],
    correctAnswerIndex: 0,
    explanation: 'Phase 0 = inspiration, CO₂ rapidly returns to baseline (zero).',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_060',
    question: 'A >20% fall in cerebral oxygen saturation on NIRS suggests:',
    options: [
      'Normal variation',
      'Technical error',
      'Severe cerebral hypoperfusion',
      'Increased O₂ diffusion',
      'Venous stasis artifact'
    ],
    correctAnswerIndex: 2,
    explanation: '≥20% fall indicates critical cerebral oxygenation compromise.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'noncv_monitoring_061',
    question: 'Elevated baseline on capnography indicates:',
    options: [
      'Hyperventilation',
      'Calibration error',
      'Circuit leak',
      'Rebreathing',
      'Oxygen supplementation'
    ],
    correctAnswerIndex: 3,
    explanation: 'In rebreathing, CO₂ is not fully eliminated → baseline does not return to zero.',
    category: 'Noncardiovascular Monitoring',
    difficulty: 2
  ),
];
