import '../../models/question.dart';

List<Question> operatingRoomEnvironmentQuestions = [
  Question(
    id: 'or_env_001',
    question: 'Which of the following best estimates the remaining oxygen volume in an E-type oxygen cylinder when the pressure gauge reads approximately 1000 psig?',
    options: [
      '100 L',
      '200 L',
      '330 L',
      '500 L',
      '660 L'
    ],
    correctAnswerIndex: 2,
    explanation: 'A pressure of 1000 psig indicates that the E cylinder is about half full, containing approximately 330 L of oxygen.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_002',
    question: 'For which of the following gases is it not possible to determine the remaining amount accurately using the pressure gauge?',
    options: [
      'Oxygen',
      'Air',
      'Carbon dioxide',
      'Nitrous oxide',
      'Helium'
    ],
    correctAnswerIndex: 3,
    explanation: 'Since nitrous oxide exists in liquid phase, the pressure remains constant; the remaining volume can only be determined by weighing the cylinder.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_003',
    question: 'Which safety system is used in cylinder connections to prevent incorrect gas attachment?',
    options: [
      'Diameter Index Safety System',
      'Pin Index Safety System',
      'Color Coding',
      'Schrader Valve',
      'Pressure Relief Valve'
    ],
    correctAnswerIndex: 1,
    explanation: 'The Pin Index Safety System (PISS) prevents incorrect cylinder connections by using a specific pin configuration.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_004',
    question: 'What is the primary purpose of positive-pressure ventilation in operating rooms?',
    options: [
      'Energy saving',
      'Preventing the transmission of microorganisms',
      'Stabilizing oxygen levels',
      'Increasing carbon dioxide elimination',
      'Enhancing the spread of anesthetic gases'
    ],
    correctAnswerIndex: 1,
    explanation: 'Positive-pressure ventilation prevents contamination from entering the operating room from outside.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_005',
    question: 'Which system is used in anesthesia machines to prevent oxygen from being depleted before other gases?',
    options: [
      'Oxygen Flush Valve',
      'Oxygen Priority System',
      'Oxygen Pressure Sensor',
      'Narcotic Alarm System',
      'Oxygen Ratio Monitor Controller (ORMC)'
    ],
    correctAnswerIndex: 4,
    explanation: 'The ORMC restricts the flow of other gases when oxygen levels decrease, ensuring patient safety.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_006',
    question: 'Which of the following is correct regarding the oxygen flush valve?',
    options: [
      'Provides 5 L/min of oxygen',
      'Active only during inspiration',
      'Provides 35–75 L/min of oxygen',
      'Mixes with nitrous oxide',
      'Reduces oxygen concentration'
    ],
    correctAnswerIndex: 2,
    explanation: 'The oxygen flush valve delivers high flow oxygen (35–75 L/min); therefore, it must be used cautiously.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_007',
    question: 'What is the primary reason a special vaporizer is required for desflurane?',
    options: [
      'It is colorless',
      'It is flammable',
      'It has a very high vapor pressure',
      'Its odor is irritating',
      'It has a very large molecular structure'
    ],
    correctAnswerIndex: 2,
    explanation: 'Desflurane has a high vapor pressure (669 mmHg); therefore, a special heated vaporizer is required.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_008',
    question: 'Which of the following statements regarding the use of nitrogen in the operating room is correct?',
    options: [
      'It is mandatory in all operating rooms',
      'It is used only in delivery rooms',
      'It is required for aspiration',
      'It is used to power surgical instruments',
      'It is frequently used in local anesthesia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Compressed nitrogen is commonly used to operate surgical hand instruments.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_009',
    question: 'What is the recommended frequency of air exchanges in operating rooms to maintain optimal air quality?',
    options: [
      '2–4 times per hour',
      '5–10 times per hour',
      '15–25 times per hour',
      '25–30 times per hour',
      '40–50 times per hour'
    ],
    correctAnswerIndex: 2,
    explanation: 'For infection control and air quality, operating rooms should have 15–25 air changes per hour.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_010',
    question: 'According to color coding used in operating rooms, which gas is represented by a green cylinder?',
    options: [
      'Oxygen',
      'Nitrous oxide (N₂O)',
      'Air',
      'Carbon dioxide',
      'Helium'
    ],
    correctAnswerIndex: 0,
    explanation: 'Oxygen cylinders are typically coded green (in the U.S.) or white (internationally).',
    category: 'Operating Room Environment',
    difficulty: 1
  ),
  Question(
    id: 'or_env_011',
    question: 'What is the function of the interlock system in an anesthesia machine?',
    options: [
      'Prevents simultaneous use of multiple vaporizers',
      'Shuts down the machine in case of power failure',
      'Ensures continuous oxygen delivery',
      'Reduces anesthetic gas consumption',
      'Increases CO₂ absorption'
    ],
    correctAnswerIndex: 0,
    explanation: 'The interlock system prevents the activation of more than one vaporizer at a time, ensuring safety.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_012',
    question: 'Which type of lighting is ideal for ceiling-mounted illumination in operating rooms?',
    options: [
      'Fluorescent light',
      'Halogen light',
      'Laser lighting',
      'LED light',
      'Xenon light'
    ],
    correctAnswerIndex: 3,
    explanation: 'LED lights are preferred for surgical illumination due to their long lifespan and low heat output.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_013',
    question: 'In which of the following situations could the use of the oxygen flush valve be dangerous?',
    options: [
      'When the patient is hypoxic',
      'In case of mechanical ventilator malfunction',
      'In a spontaneously breathing patient',
      'During anesthesia induction',
      'During a leak test'
    ],
    correctAnswerIndex: 2,
    explanation: 'In spontaneously breathing patients, the sudden high flow from the flush valve may cause barotrauma.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_014',
    question: 'Which of the following is the most important factor in sterilization in the operating room?',
    options: [
      'High temperature',
      'Use of chemical agents',
      'High oxygen level',
      'Correct drug dosing',
      'Only the surgeon\'s training'
    ],
    correctAnswerIndex: 0,
    explanation: 'The most important factor in sterilization is the use of high temperature, which is essential for killing microorganisms. Chemical agents may also be used, but temperature is generally the primary method.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_015',
    question: 'What is the main purpose of "laminar airflow" in operating rooms?',
    options: [
      'To increase patient comfort',
      'To reduce the number of particles',
      'To distribute anesthetic gases',
      'To prevent heat loss of the surgical team',
      'To adjust light intensity'
    ],
    correctAnswerIndex: 1,
    explanation: 'Laminar airflow removes particles to reduce the risk of infection.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_016',
    question: 'Which of the following is the recommended range for operating room temperature?',
    options: [
      '18–20°C',
      '20–24°C',
      '25–28°C',
      '29–32°C',
      '33–36°C'
    ],
    correctAnswerIndex: 1,
    explanation: 'A range of 20–24°C is ideal for both patient and staff comfort.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_017',
    question: 'Which patient group requires a higher "thermoneutral zone"?',
    options: [
      'Adults',
      'Pediatric patients',
      'Obese patients',
      'Pregnant women',
      'Elderly patients'
    ],
    correctAnswerIndex: 1,
    explanation: 'Newborns require a higher thermoneutral zone (26–32°C).',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_018',
    question: 'Which of the following is NOT a component of the operating room fire triangle?',
    options: [
      'Oxygen',
      'Fuel source',
      'Ignition source',
      'High humidity',
      'Spark'
    ],
    correctAnswerIndex: 3,
    explanation: 'Humidity is not part of the fire triangle.',
    category: 'Operating Room Environment',
    difficulty: 1
  ),
  Question(
    id: 'or_env_019',
    question: 'Which precaution should be taken when using an electrosurgical device (Bovie)?',
    options: [
      'Ensure patient contact with metal surfaces',
      'Place the dispersive electrode on a moist area',
      'Increase oxygen flow',
      'Use low power in monopolar mode',
      'Continue using volatile agents (e.g., Flolan)'
    ],
    correctAnswerIndex: 1,
    explanation: 'The dispersive electrode should be placed on a dry, hairless area of the body.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_020',
    question: 'Which is the most common type of electrical accident in the operating room?',
    options: [
      'Microshock',
      'Macroshock',
      'Ventricular fibrillation',
      'Burn',
      'Muscle contraction'
    ],
    correctAnswerIndex: 0,
    explanation: 'Microshock poses a high risk in direct conduction pathways such as cardiac catheters.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_021',
    question: 'Which of the following is ineffective in reducing "anesthetic gas exposure" in the operating room?',
    options: [
      'Scavenging system',
      'Low-flow anesthesia',
      'Checking vaporizer seals',
      'Frequently opening operating room doors',
      'Increasing air exchange rate'
    ],
    correctAnswerIndex: 3,
    explanation: 'Frequent door opening disrupts airflow and increases contamination.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_022',
    question: 'Which of the following is NOT a feature of operating room ventilation systems?',
    options: [
      'Use of HEPA filters',
      'Positive-pressure environment',
      'No external air intake',
      'Laminar airflow',
      'Particle counting'
    ],
    correctAnswerIndex: 2,
    explanation: 'External air intake is required for proper ventilation.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_023',
    question: 'Which particle size does the HEPA filter in operating rooms capture?',
    options: [
      '>10 µm',
      '5–10 µm',
      '0.3–0.5 µm',
      '<0.1 µm',
      'Only bacteria'
    ],
    correctAnswerIndex: 2,
    explanation: 'HEPA filters capture particles ≥0.3 µm with 99.97% efficiency.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_024',
    question: 'Which feature provides "shadowless lighting" in operating rooms?',
    options: [
      'Point light source',
      'Multiple LED arrays',
      'Fluorescent lamps',
      'Halogen spotlights',
      'Use of red light'
    ],
    correctAnswerIndex: 1,
    explanation: 'Multiple LEDs minimize shadows during surgery.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_025',
    question: 'Which of the following is NOT required for operating room flooring?',
    options: [
      'Antistatic properties',
      'Liquid impermeability',
      'High friction coefficient',
      'Resistance to disinfectants',
      'Thermal insulation'
    ],
    correctAnswerIndex: 4,
    explanation: 'Thermal insulation is not mandatory for operating room flooring.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_026',
    question: 'Which statement about "airflow in the operating room" is correct?',
    options: [
      'It should flow from the head to the feet of the patient',
      'It should flow from the surgeon\'s back toward the patient',
      'It should flow vertically from ceiling to floor',
      'It should flow from windows toward the corridor',
      'It may flow randomly in all directions'
    ],
    correctAnswerIndex: 2,
    explanation: 'Vertical laminar airflow from ceiling to floor is ideal.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
  Question(
    id: 'or_env_027',
    question: 'What is the OSHA limit for "anesthetic gas exposure" (N₂O) in the operating room?',
    options: [
      '5 ppm',
      '25 ppm',
      '50 ppm',
      '100 ppm',
      '500 ppm'
    ],
    correctAnswerIndex: 1,
    explanation: 'The permissible exposure limit for N₂O is 25 ppm over 8 hours.',
    category: 'Operating Room Environment',
    difficulty: 2
  ),
];
