import '../../models/question.dart';

List<Question> anesthesiaWorkstationQuestions = [
  Question(
    id: 'workstation_001',
    question: 'Which of the following is related to the pin index system?',
    options: [
      'Placement of the vaporizer',
      'Measurement of gas pressure',
      'Ensuring correct connection of gas cylinders',
      'Adjustment of flow rate',
      'Calibration of the vaporizer'
    ],
    correctAnswerIndex: 2,
    explanation: 'The pin index safety system is designed to prevent incorrect cylinder connections by using specific pin configurations on cylinder valves.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_002',
    question: 'Which of the following structures is part of the high-pressure system?',
    options: [
      'Flowmeters',
      'Vaporizer',
      'Regulator',
      'Y-valve',
      'Oxygen flush valve'
    ],
    correctAnswerIndex: 2,
    explanation: 'The high-pressure system extends from the cylinder outlet to the regulator. The regulator reduces cylinder pressure to a lower, usable level.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_003',
    question: 'Which of the following is associated with the proportioning system?',
    options: [
      'Keeping vaporizer flow constant',
      'Controlling the administration of N₂O with oxygen',
      'Facilitating CO₂ absorption',
      'Measuring airflow',
      'Calculating lung volume'
    ],
    correctAnswerIndex: 1,
    explanation: 'The proportioning system ensures that the N₂O/O₂ ratio remains within safe limits, preventing delivery of a hypoxic mixture.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_004',
    question: 'Which statement is correct regarding the color-coding system?',
    options: [
      'Oxygen – Blue',
      'Nitrous oxide – Black',
      'Oxygen – Green (USA) / White (Europe)',
      'Air – Yellow (USA) / Red (Europe)',
      'Carbon dioxide – Green'
    ],
    correctAnswerIndex: 2,
    explanation: 'Oxygen cylinders are green in the USA and white in Europe. This international system prevents confusion. (Air = yellow, N₂O = blue, CO₂ = brown).',
    category: 'Anesthesia Workstation',
    difficulty: 1
  ),
  Question(
    id: 'workstation_005',
    question: 'Which of the following is false about vaporizers?',
    options: [
      'Agent-specific design',
      'Must be recalibrated when moved',
      'Operates with reverse flow',
      'May contain refractory glass',
      'Contains temperature-compensation mechanisms'
    ],
    correctAnswerIndex: 2,
    explanation: 'Vaporizers function unidirectionally. Reverse flow would risk contamination and malfunction.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_006',
    question: 'Which of the following belongs to the intermediate pressure system?',
    options: [
      'Oxygen flush valve',
      'Cylinder',
      'Regulator',
      'Vaporizer',
      'CO₂ absorbent'
    ],
    correctAnswerIndex: 0,
    explanation: 'The intermediate pressure system runs from the regulator to the flowmeter. The O₂ flush valve is located here. Cylinders and regulators are part of the high-pressure system.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_007',
    question: 'Which of the following is a mandatory safety system in modern anesthesia machines?',
    options: [
      'Electronic liquid level sensor',
      'N₂O always delivered first',
      'Automatic calibration',
      'Hypoxic mixture prevention system',
      'CO₂ detector'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hypoxic guard/proportioning systems prevent delivery of mixtures with less than ~25% O₂, a standard safety feature.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_008',
    question: 'Which component belongs to the low-pressure system of the anesthesia workstation?',
    options: [
      'Regulator',
      'Vaporizer outlet',
      'Oxygen flush valve',
      'Flowmeter inlet',
      'Cylinder valve'
    ],
    correctAnswerIndex: 1,
    explanation: 'The low-pressure system extends from the flowmeters to the patient breathing circuit. The vaporizer outlet is part of this system.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_009',
    question: 'What is the function of the fail-safe valve in an anesthesia machine?',
    options: [
      'Prevent CO₂ leakage',
      'Stop N₂O flow',
      'Increase vaporization rate',
      'Adjust agent concentration',
      'Mix gases'
    ],
    correctAnswerIndex: 1,
    explanation: 'The fail-safe valve shuts off N₂O if O₂ pressure falls, helping prevent hypoxic mixtures.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_010',
    question: 'If the oxygen supply is completely cut off, which pathway can still deliver O₂ to the patient?',
    options: [
      'Vaporizer bypass line',
      'Electrically supported flow valve',
      'Hand ventilator',
      'Manual reservoir bag',
      'Oxygen flush valve'
    ],
    correctAnswerIndex: 4,
    explanation: 'The O₂ flush delivers high-flow oxygen directly to the circuit, bypassing other systems.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_011',
    question: 'Which of the following is a commonly used chemical in CO₂ absorbents?',
    options: [
      'Calcium sulfate',
      'Sodium bicarbonate',
      'Sodium hydroxide',
      'Soda lime',
      'Magnesium oxide'
    ],
    correctAnswerIndex: 3,
    explanation: 'Soda lime (mainly Ca(OH)₂ + NaOH/KOH) is the standard CO₂ absorbent in anesthesia circuits.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_012',
    question: 'What is the earliest indicator of CO₂ absorbent exhaustion in an anesthesia machine?',
    options: [
      'Decrease in ETCO₂',
      'Increase in pulse oximetry reading',
      'Increased inspiratory CO₂ level',
      'Decreased tidal volume',
      'Stable SpO₂'
    ],
    correctAnswerIndex: 2,
    explanation: 'The earliest sign is elevated inspired CO₂ on the capnograph, indicating absorbent exhaustion.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_013',
    question: 'Which statement about CO₂ absorbent color change is correct?',
    options: [
      'Irreversible change',
      'Indicates wrong agent used',
      'Reflects absorbent saturation',
      'Shows only alkalinity',
      'Colorless state means ready for use'
    ],
    correctAnswerIndex: 2,
    explanation: 'Most absorbents change color once exhausted, alerting users to saturation.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_014',
    question: 'The most common complication of improper oxygen flush valve use is:',
    options: [
      'Hypoxemia',
      'Barotrauma',
      'Hypothermia',
      'Hypercapnia',
      'Methemoglobinemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'The flush valve delivers 35–75 L/min O₂ → high pressures may cause barotrauma during manual ventilation.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_015',
    question: 'Which of the following is the latest sign of CO₂ absorbent exhaustion?',
    options: [
      'Increased inspiratory CO₂',
      'Fatigue',
      'Color change',
      'Rising baseline on capnography',
      'Hypercapnia symptoms'
    ],
    correctAnswerIndex: 2,
    explanation: 'Color change is a delayed visual cue; capnography shows earlier changes.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_016',
    question: 'Which system is used to prevent hypoxic gas mixtures?',
    options: [
      'Check valve',
      'Fail-safe valve',
      'Proportioning system',
      'Flowmeter valve',
      'Solenoid valve'
    ],
    correctAnswerIndex: 2,
    explanation: 'The proportioning system links O₂ and N₂O flows, maintaining safe ratios.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_017',
    question: 'Which of the following is an advantage of the non-rebreathing system?',
    options: [
      'Requires CO₂ absorbent',
      'Preserves heat in the circuit',
      'Low fresh gas flow is sufficient',
      'Allows rapid anesthetic depth changes',
      'Reduces gas consumption'
    ],
    correctAnswerIndex: 3,
    explanation: 'Non-rebreathing systems allow fast changes in inspired agent concentration due to low volume and no absorbent.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_018',
    question: 'What may occur if a unidirectional valve fails in the circle system?',
    options: [
      'Vaporizer stops working',
      'SpO₂ increases',
      'CO₂ retention',
      'FiO₂ rises',
      'Air leak develops'
    ],
    correctAnswerIndex: 2,
    explanation: 'Valve malfunction permits mixing of inspiratory and expiratory gases, leading to rebreathing and CO₂ retention.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_019',
    question: 'What is one of the functions of anesthesia machine check valves?',
    options: [
      'Maintain constant flow',
      'Ensure unidirectional gas movement',
      'Adjust tidal volume',
      'Automatically activate the vaporizer',
      'Keep O₂ pressure stable'
    ],
    correctAnswerIndex: 1,
    explanation: 'Check valves allow gas flow in only one direction, preventing backflow.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_020',
    question: 'What is the most common technical problem in low-flow anesthesia?',
    options: [
      'CO₂ accumulation',
      'Fresh gas wastage',
      'Rapid rise in volatile agent concentration',
      'Airway dryness',
      'Rapid agent concentration changes'
    ],
    correctAnswerIndex: 0,
    explanation: 'With low fresh gas flow, CO₂ removal relies heavily on absorbent efficiency. Ineffective absorbent → risk of hypercapnia.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_021',
    question: 'Which of the following can affect the variability of the agent concentration used in a vaporizer?',
    options: [
      'O₂ pressure',
      'Vaporizer temperature',
      'CO₂ level',
      'Agent color',
      'Flowmeter calibration'
    ],
    correctAnswerIndex: 1,
    explanation: 'The vapor pressure of volatile agents depends on temperature. Vaporizers use temperature-compensation systems to maintain a stable concentration.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_022',
    question: 'Which of the following is not an advantage of the circle system?',
    options: [
      'Reduces humidity loss',
      'Prevents heat loss',
      'Reduces agent consumption',
      'Low resistance',
      'Works effectively with CO₂ absorbent'
    ],
    correctAnswerIndex: 3,
    explanation: 'The circle system has higher resistance due to valves and long circuits, which can be a disadvantage, especially in small children.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_023',
    question: 'Which of the following can continue to function during an electrical failure of the anesthesia workstation?',
    options: [
      'Electronic monitor',
      'Flowmeter',
      'Vaporizer',
      'Oxygen flush valve',
      'CO₂ monitor'
    ],
    correctAnswerIndex: 3,
    explanation: 'The oxygen flush valve is a mechanical system and can deliver high-flow oxygen without electricity, making it life-saving in emergencies.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_024',
    question: 'What is the purpose of the inspiratory and expiratory valves in the circle system?',
    options: [
      'To measure gas volume',
      'To reduce heat loss',
      'To prevent fresh gas from mixing with CO₂',
      'To adjust vaporizer pressure',
      'To increase CO₂ production'
    ],
    correctAnswerIndex: 2,
    explanation: 'These valves ensure unidirectional gas flow and prevent the re-inhalation of CO₂.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_025',
    question: 'What is the purpose of the gas leak test?',
    options: [
      'To measure lung volume',
      'To increase tidal volume',
      'To detect hypoxic mixtures',
      'To detect leaks in the system',
      'To measure vaporization rate'
    ],
    correctAnswerIndex: 3,
    explanation: 'The leak test is used to check whether there are leaks in the system, which is critical for patient safety.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_026',
    question: 'Which of the following is an advantage of high-flow anesthesia?',
    options: [
      'Lower agent consumption',
      'Faster induction',
      'CO₂ retention',
      'Less heat loss',
      'Increased humidity in the circuit'
    ],
    correctAnswerIndex: 1,
    explanation: 'High fresh gas flow delivers agents quickly to the alveoli, enabling faster induction and adjustment of anesthetic depth.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_027',
    question: 'In modern anesthesia workstations, which component is first disabled when oxygen pressure drops to a critical level?',
    options: [
      'Oxygen flush valve',
      'N₂O flow line',
      'Vaporizer',
      'Electronic monitor',
      'CO₂ absorber'
    ],
    correctAnswerIndex: 1,
    explanation: 'When oxygen pressure falls, the safety system shuts off N₂O flow to prevent delivery of a hypoxic mixture.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_028',
    question: 'Which of the following gases carries the highest risk of creating a hypoxic mixture?',
    options: [
      'Sevoflurane',
      'Desflurane',
      'Oxygen',
      'Nitrous oxide',
      'Air'
    ],
    correctAnswerIndex: 3,
    explanation: 'Nitrous oxide, when used alone, decreases the oxygen concentration and increases the risk of delivering a hypoxic mixture.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_029',
    question: 'What is the purpose of the oxygen fail-safe system in an anesthesia workstation?',
    options: [
      'To shut off only N₂O',
      'To give an alarm during power failure',
      'To cut off other gases when oxygen pressure drops',
      'To stabilize CO₂ levels',
      'To activate the oxygen flush system'
    ],
    correctAnswerIndex: 2,
    explanation: 'The fail-safe system automatically shuts off the flow of other gases when oxygen pressure drops below a critical level.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_030',
    question: 'What is the color of the pipeline carrying oxygen from the central system?',
    options: [
      'Blue',
      'Yellow',
      'Green',
      'Red',
      'White'
    ],
    correctAnswerIndex: 2,
    explanation: 'According to international color codes, oxygen pipelines are green.',
    category: 'Anesthesia Workstation',
    difficulty: 1
  ),
  Question(
    id: 'workstation_031',
    question: 'What is the color of nitrous oxide cylinders?',
    options: [
      'Black',
      'Blue',
      'Gray',
      'Red',
      'Green'
    ],
    correctAnswerIndex: 1,
    explanation: 'N₂O cylinders are typically blue, a universally recognized color code.',
    category: 'Anesthesia Workstation',
    difficulty: 1
  ),
  Question(
    id: 'workstation_032',
    question: 'What is the function of the APL (Adjustable Pressure-Limiting) valve in an anesthesia workstation?',
    options: [
      'Provides CO₂ absorption',
      'Regulates PEEP',
      'Controls circuit pressure and releases excess gas',
      'Stabilizes oxygen pressure',
      'Balances gas temperature'
    ],
    correctAnswerIndex: 2,
    explanation: 'The APL valve is used during manual ventilation to adjust system pressure and vent excess gas.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_033',
    question: 'In modern anesthesia workstations, which system regulates gas flows in a linked manner to prevent hypoxic gas mixtures?',
    options: [
      'Flowmeter',
      'Proportional valve',
      'Oxygen fail-safe',
      'N₂O cutoff system',
      'Oxygen-N₂O linkage system (Link-25)'
    ],
    correctAnswerIndex: 4,
    explanation: 'The Link-25 system links oxygen and N₂O flows to prevent hypoxic gas delivery.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_034',
    question: 'What is the most common user error related to anesthesia machines?',
    options: [
      'Incorrect agent filling',
      'Not securing the device',
      'No electrical connection',
      'Filters not attached',
      'APL valve left closed'
    ],
    correctAnswerIndex: 4,
    explanation: 'If the APL valve remains closed, circuit pressure may rise excessively during ventilation, leading to barotrauma.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_035',
    question: 'Which gas is delivered from the cylinder as a liquid-vapor phase transition, especially in cold weather?',
    options: [
      'Oxygen',
      'N₂O',
      'Air',
      'Helium',
      'Nitrogen'
    ],
    correctAnswerIndex: 1,
    explanation: 'Nitrous oxide is stored in liquid form in cylinders and vaporizes upon use.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_036',
    question: 'Which component continues to function in the event of a power failure?',
    options: [
      'Electronic ventilator',
      'Pulse oximeter',
      'Flowmeters',
      'Automatic vaporizer',
      'Infusion pumps'
    ],
    correctAnswerIndex: 2,
    explanation: 'Flowmeters are mechanical devices and work independently of electricity.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_037',
    question: 'What is the name of the heat released during CO₂ absorption?',
    options: [
      'Thermogenesis',
      'Exothermic reaction',
      'Hypothermia',
      'Catalysis',
      'Anabolism'
    ],
    correctAnswerIndex: 1,
    explanation: 'CO₂ absorption is an exothermic process that releases heat.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_038',
    question: 'What happens if a vaporizer filled with agent is turned upside down?',
    options: [
      'Runs out of agent',
      'Agent leaks into the system',
      'Oxygen decreases',
      'CO₂ absorption occurs',
      'Circuit pressure rises'
    ],
    correctAnswerIndex: 1,
    explanation: 'If the vaporizer is inverted, liquid agent may enter the breathing circuit, leading to toxicity and dosing errors.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_039',
    question: 'Which of the following is correct regarding vaporizers?',
    options: [
      'Non-temperature-compensated vaporizers are used for desflurane',
      'More than one volatile anesthetic vaporizer can be on simultaneously',
      'At low flow (<1 L/min), they may not deliver accurate concentrations',
      'They lack an overflow valve',
      'They work independently of gravity'
    ],
    correctAnswerIndex: 2,
    explanation: 'At very low flows, vaporizers may not provide accurate concentrations.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_040',
    question: 'When does the "oxygen failure alarm" activate?',
    options: [
      'When O₂ pressure <30 psi',
      'When N₂O pressure <50 psi',
      'When air pressure <20 psi',
      'When the vaporizer is full',
      'When the breathing circuit is blocked'
    ],
    correctAnswerIndex: 0,
    explanation: 'The alarm activates when oxygen pressure drops below ~30 psi.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_041',
    question: 'Where should the oxygen analyzer be placed?',
    options: [
      'Vaporizer outlet',
      'Patient connection point of the breathing circuit',
      'Oxygen cylinder regulator',
      'APL valve inlet',
      'Flowmeter outlet'
    ],
    correctAnswerIndex: 1,
    explanation: 'The oxygen analyzer should be located at the patient connection site to measure the delivered O₂ concentration.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_042',
    question: 'Which of the following is false about the CO₂ absorption canister?',
    options: [
      'Uses soda lime',
      'Baralyme is toxic',
      'Granule size is 1–2 mm',
      'Should be replaced if ETCO₂ >50 mmHg',
      'Located after the expiratory valve'
    ],
    correctAnswerIndex: 4,
    explanation: 'The canister is located before the expiratory valve, not after.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_043',
    question: 'Which is a feature of flowmeters?',
    options: [
      'Connected to a Bourdon gauge',
      'Part of the high-pressure system',
      'Work on the Thorpe tube principle',
      'Used only for oxygen',
      'Located after the vaporizer'
    ],
    correctAnswerIndex: 2,
    explanation: 'Flowmeters operate on the variable orifice Thorpe tube principle.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
  Question(
    id: 'workstation_044',
    question: 'Within what pressure range is the APL valve typically set?',
    options: [
      '0–10 cmH₂O',
      '10–20 cmH₂O',
      '20–30 cmH₂O',
      '30–40 cmH₂O',
      '40–50 cmH₂O'
    ],
    correctAnswerIndex: 2,
    explanation: 'The APL valve is usually set between 20–30 cmH₂O.',
    category: 'Anesthesia Workstation',
    difficulty: 2
  ),
];

