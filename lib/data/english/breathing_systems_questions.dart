import '../../models/question.dart';

List<Question> breathingSystemsQuestions = [
  Question(
    id: 'breathing_sys_001',
    question: 'Which of the following is an advantage of double-circuit ventilation systems?',
    options: [
      'Smaller size',
      'Direct contact between patient and ventilator',
      'Active heating of inspiratory gas',
      'High fresh gas consumption',
      'No need for humidification'
    ],
    correctAnswerIndex: 2,
    explanation: 'In double-circuit systems, inspiratory gas is heated and humidified via a heater.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_002',
    question: 'Which of the following gases is classified as an inert gas and is not absorbed by absorbent materials?',
    options: [
      'Carbon dioxide',
      'Oxygen',
      'Nitrous oxide',
      'Nitrogen',
      'Sevoflurane'
    ],
    correctAnswerIndex: 3,
    explanation: 'Nitrogen (N₂) is an inert, non-metabolized gas and is not absorbed by absorbents.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_003',
    question: 'Which of the following mechanisms prevents backflow of gases in the breathing circuit?',
    options: [
      'Vaporizer',
      'Carbon dioxide absorbent',
      'Unidirectional valves',
      'APL valve',
      'Reservoir bag'
    ],
    correctAnswerIndex: 2,
    explanation: 'Unidirectional valves allow gases to flow only in one direction, preventing backflow.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_004',
    question: 'Which absorbent material is most commonly used for carbon dioxide elimination in rebreathing systems?',
    options: [
      'Silica',
      'Sodium chloride',
      'Sodium hydroxide',
      'Soda lime containing calcium hydroxide',
      'Magnesium sulfate'
    ],
    correctAnswerIndex: 3,
    explanation: 'Soda lime is widely used for CO₂ absorption, and its Ca(OH)₂ content is effective.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_005',
    question: 'Which of the following is NOT a primary function of the reservoir bag in breathing systems?',
    options: [
      'Allowing manual ventilation',
      'Observation of tidal volume',
      'Direct analysis of exhaled gases',
      'Acting as a volume reservoir',
      'Providing pressure control when used with the APL valve'
    ],
    correctAnswerIndex: 2,
    explanation: 'The reservoir bag stores gas and enables manual ventilation but is not used for direct gas analysis.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_006',
    question: 'Which is one of the risks to consider when using calcium hydroxide–based absorbents?',
    options: [
      'Air embolism',
      'Increased carboxyhemoglobin',
      'Carbon monoxide production',
      'Acidosis',
      'Bronchospasm'
    ],
    correctAnswerIndex: 2,
    explanation: 'Dry soda lime in contact with agents such as desflurane or isoflurane may produce carbon monoxide.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_007',
    question: 'Which of the following parameters determines the "circulation time" in breathing systems?',
    options: [
      'Patient age',
      'Gas volume inside the circuit',
      'Oxygen saturation',
      'Body temperature',
      'Hematocrit'
    ],
    correctAnswerIndex: 1,
    explanation: 'Circulation time is the duration for gas to circulate in the system, and it depends on circuit volume.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_008',
    question: 'Which of the following components is present in non-rebreathing systems but not in classical circle systems?',
    options: [
      'APL valve',
      'Unidirectional valve',
      'Fresh gas inlet',
      'Reservoir bag',
      'Jackson-Rees modification'
    ],
    correctAnswerIndex: 4,
    explanation: 'The Jackson-Rees modification is a component of the modified Mapleson system, often used in pediatrics, and is typical of non-rebreathing systems.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_009',
    question: 'Which parameter directly indicates whether gas flow within the circuit is sufficient?',
    options: [
      'Capnography',
      'SpO₂',
      'ECG',
      'Body temperature',
      'Arterial blood pressure'
    ],
    correctAnswerIndex: 0,
    explanation: 'Capnography continuously monitors exhaled CO₂ and directly reflects effective gas circulation.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_010',
    question: 'Which of the following occurs when the fresh gas flow rate is increased in anesthesia circuits?',
    options: [
      'Increased CO₂ rebreathing',
      'Longer absorbent lifespan',
      'Increased system temperature',
      'Reduced agent consumption',
      'Reduced oxygen consumption'
    ],
    correctAnswerIndex: 1,
    explanation: 'High fresh gas flow removes CO₂ from the system, reducing absorbent use and prolonging its life.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_011',
    question: 'Which statement is most accurate for the Mapleson A system?',
    options: [
      'Most efficient during spontaneous breathing, least efficient during controlled ventilation',
      'Causes minimal rebreathing during controlled ventilation',
      'Contains a CO₂ absorbent',
      'Increases risk of autopeep',
      'Most commonly used in pediatric patients'
    ],
    correctAnswerIndex: 0,
    explanation: 'Mapleson A is efficient in spontaneous breathing but inefficient in controlled ventilation due to poor CO₂ clearance.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_012',
    question: 'In which system is the risk of CO₂ rebreathing lowest?',
    options: [
      'Mapleson A',
      'Mapleson D',
      'Bain circuit',
      'Circle system (low-flow)',
      'Mapleson B'
    ],
    correctAnswerIndex: 0,
    explanation: 'Mapleson A, when used with adequate fresh gas flow in spontaneous breathing, has the lowest rebreathing risk.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_013',
    question: 'Which is the most reliable indicator that soda lime is "depleted"?',
    options: [
      'Drop in pH',
      'Color change',
      'Heat generation',
      'Bubbling',
      'Reduced gas flow'
    ],
    correctAnswerIndex: 1,
    explanation: 'Color change, caused by pH-sensitive dye, is the most reliable sign of absorbent exhaustion.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_014',
    question: 'Which condition increases carbon monoxide production?',
    options: [
      'Use of new soda lime',
      'High humidity',
      'Low temperature',
      'Dry absorbent',
      'Low fresh gas flow'
    ],
    correctAnswerIndex: 3,
    explanation: 'Dried-out soda lime reacts with agents such as desflurane, producing carbon monoxide.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_015',
    question: 'Which of the following is NOT expected when operating a circle system at low flow?',
    options: [
      'Agent conservation',
      'Heat and humidity preservation',
      'Reduced absorbent consumption',
      'Reduced fresh gas requirement',
      'Increased CO₂ absorption demand'
    ],
    correctAnswerIndex: 2,
    explanation: 'At low flow, more CO₂ remains in the system, increasing absorbent use. Thus, reduced consumption is not expected.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_016',
    question: 'Which system provides the best heat and humidity preservation?',
    options: [
      'Bain circuit',
      'Mapleson A',
      'Circle system',
      'Tube + valve system',
      'Mapleson E'
    ],
    correctAnswerIndex: 2,
    explanation: 'The circle system reuses most of the inhaled gases, minimizing heat and humidity loss.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_017',
    question: 'Which of the following is directly related to "compliance" in the breathing circuit?',
    options: [
      'Tidal volume',
      'Increase in circuit pressure',
      'CO₂ absorption',
      'Oxygen consumption',
      'Circuit volume'
    ],
    correctAnswerIndex: 0,
    explanation: 'Compliance is the change in volume per unit pressure change → directly related to tidal volume.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_018',
    question: 'Which of the following is the most effective method to reduce "dead space" in the breathing system?',
    options: [
      'Increasing fresh gas flow',
      'Changing ventilator mode',
      'Shortening the circuit length',
      'Increasing inspiratory time',
      'Lowering PEEP'
    ],
    correctAnswerIndex: 2,
    explanation: 'Circuit length and connectors increase dead space volume → shortening the circuit reduces dead space.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_019',
    question: 'Which of the following is produced as a result of the reaction of soda lime with CO₂?',
    options: [
      'Nitrous oxide',
      'Carbon monoxide',
      'Calcium carbonate',
      'Helium',
      'Bicarbonate'
    ],
    correctAnswerIndex: 2,
    explanation: 'CO₂ reacts with soda lime to form CaCO₃ (calcium carbonate).',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_020',
    question: 'Which of the following is NOT a typical feature of non-rebreathing systems?',
    options: [
      'Requires high fresh gas flow',
      'Contains no CO₂ absorbent',
      'Contains no unidirectional valve',
      'Has long circulation time',
      'Preferred in short surgeries'
    ],
    correctAnswerIndex: 3,
    explanation: 'In non-rebreathing systems, circulation time is short, as fresh gas flows quickly.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_021',
    question: 'Which of the following methods is used to detect gas leaks in a breathing circuit?',
    options: [
      'SpO₂ measurement',
      'APL valve control',
      'Positive pressure test',
      'Soda lime color',
      'Vaporizer calibration'
    ],
    correctAnswerIndex: 2,
    explanation: 'The positive pressure test is the primary method for checking circuit integrity.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_022',
    question: 'Which of the following is NOT an advantage of HME (heat moisture exchanger) filters?',
    options: [
      'Reduces moisture loss',
      'Prevents heat loss',
      'Absorbs CO₂',
      'Provides microorganism filtration',
      'Cheap and practical'
    ],
    correctAnswerIndex: 2,
    explanation: 'HME filters preserve heat and moisture but do not absorb CO₂ — this is the function of soda lime.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_023',
    question: 'Mapleson circuits are classified according to which criterion?',
    options: [
      'CO₂ absorbent capacity',
      'Position of APL valve and fresh gas inlet',
      'Circuit volume',
      'Type of gas used',
      'Type and length of connectors'
    ],
    correctAnswerIndex: 1,
    explanation: 'Mapleson systems are classified from A to F based on the position of the APL valve and the fresh gas inlet.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_024',
    question: 'Which of the following indicates that ineffective ventilation is occurring due to increased dead space in the breathing system?',
    options: [
      'High tidal volume',
      'Normal EtCO₂, low PaCO₂',
      'Normal PaCO₂, low EtCO₂',
      'Low alveolar ventilation',
      'High PaO₂'
    ],
    correctAnswerIndex: 2,
    explanation: 'A lower EtCO₂ compared to PaCO₂ indicates increased dead space and reduced effective gas exchange.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_025',
    question: 'Which of the following is NOT an advantage of non-rebreathing systems?',
    options: [
      'Provides rapid changes in anesthetic depth',
      'Low cost',
      'No complex valve structures',
      'Suitable for long-term ventilation',
      'Poor preservation of heat and moisture'
    ],
    correctAnswerIndex: 3,
    explanation: 'Non-rebreathing systems are suitable for short-term use; in long-term use, heat and moisture loss become a problem.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_026',
    question: 'What complication may occur if the APL valve is accidentally left closed?',
    options: [
      'Hypocapnia',
      'Volutrauma',
      'Hypoinflation',
      'Hyperoxemia',
      'Hypothermia'
    ],
    correctAnswerIndex: 1,
    explanation: 'If the APL valve is closed, pressure cannot be released, leading to overinflation and volutrauma.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_027',
    question: 'Which of the following is NOT an advantage of the circle system?',
    options: [
      'Agent conservation',
      'Heat and moisture preservation',
      'Rapid depth changes',
      'CO₂ elimination',
      'Suitability for long-term use'
    ],
    correctAnswerIndex: 2,
    explanation: 'Circle systems have slower anesthetic depth changes due to gas recirculation.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_028',
    question: 'Which of the following is a typical result of an anesthesia system operating with high fresh gas flow?',
    options: [
      'Agent conservation',
      'Heat and moisture preservation',
      'Increased rebreathing',
      'Less need for CO₂ absorbent',
      'Closure of the expiratory valve'
    ],
    correctAnswerIndex: 3,
    explanation: 'High fresh gas flow rapidly removes CO₂, reducing the need for absorbent use.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_029',
    question: 'The Jackson-Rees system is considered a modification of which circuit?',
    options: [
      'Mapleson A',
      'Mapleson D',
      'Bain system',
      'Circle system',
      'Mapleson B'
    ],
    correctAnswerIndex: 1,
    explanation: 'Jackson-Rees is a modification of the Mapleson D system, adapted for pediatric use.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_030',
    question: 'What is the distinctive feature of the Mapleson C system?',
    options: [
      'Fresh gas inlet located far from the circuit',
      'Absence of APL valve',
      'Presence of unidirectional valves',
      'Absence of reservoir bag',
      'Very short and compact structure'
    ],
    correctAnswerIndex: 4,
    explanation: 'Mapleson C is short and compact, making it suitable for emergency situations.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_031',
    question: 'Which of the following does NOT increase the risk of toxic byproduct formation in CO₂ absorbents?',
    options: [
      'Drying of soda lime',
      'High temperature',
      'Use of desflurane',
      'Low humidity',
      'High humidity'
    ],
    correctAnswerIndex: 4,
    explanation: 'High humidity helps maintain proper absorbent function and reduces toxic byproduct formation.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_032',
    question: 'Which parameter indicates that the breathing system is effectively delivering tidal volume?',
    options: [
      'Normal PaO₂',
      'Stable end-tidal CO₂',
      'Low FiO₂',
      'High PaCO₂',
      'Decreased body temperature'
    ],
    correctAnswerIndex: 1,
    explanation: 'EtCO₂ reflects ventilation efficiency and tidal volume delivery; stable normal EtCO₂ indicates adequate ventilation.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_033',
    question: 'Where are vaporizers connected in the circuit?',
    options: [
      'Closest point to the patient',
      'Before the flowmeter',
      'Between the fresh gas line and the flowmeter',
      'Between the flowmeter and the fresh gas outlet',
      'At the circuit outlet'
    ],
    correctAnswerIndex: 3,
    explanation: 'Vaporizers are placed after the flowmeter to saturate the gas mixture with volatile agents.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_034',
    question: 'Which of the following systems is most suitable for both spontaneous and controlled ventilation?',
    options: [
      'Mapleson A',
      'Mapleson C',
      'Mapleson D',
      'Bain system',
      'Circle system'
    ],
    correctAnswerIndex: 4,
    explanation: 'The circle system is versatile, suitable for both spontaneous and controlled ventilation, and is widely used.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_035',
    question: 'Which of the following is one of the most important factors determining the amount of rebreathing in breathing circuits?',
    options: [
      'Gas humidity',
      'Patient weight',
      'Fresh gas flow rate',
      'Circuit resistance',
      'Circuit choice according to patient age'
    ],
    correctAnswerIndex: 2,
    explanation: 'Rebreathing (inhalation of exhaled gases) is directly related to fresh gas flow rate. High flow reduces rebreathing, while low flow increases it.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_036',
    question: 'In a spontaneously breathing patient, which Mapleson system provides the best CO₂ elimination with the lowest fresh gas flow?',
    options: [
      'Mapleson A',
      'Mapleson C',
      'Mapleson D',
      'Mapleson E',
      'Mapleson F'
    ],
    correctAnswerIndex: 0,
    explanation: 'The Mapleson A system requires the least fresh gas flow for adequate CO₂ elimination during spontaneous ventilation, making it the most economical.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_037',
    question: 'Which of the following circuits has the potential to increase dead space?',
    options: [
      'Mapleson F',
      'Mapleson A',
      'Circle system',
      'Open circuit',
      'T-piece'
    ],
    correctAnswerIndex: 2,
    explanation: 'In the circle system, valves, long hoses, and the CO₂ absorbent unit can increase dead space. This is particularly important in patients with small tidal volumes (e.g., children).',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_038',
    question: 'In which of the following circuits is CO₂ elimination dependent solely on fresh gas flow?',
    options: [
      'Circle system',
      'Mapleson A',
      'Closed system',
      'Mapleson D',
      'Mapleson F'
    ],
    correctAnswerIndex: 4,
    explanation: 'Mapleson F (Jackson-Rees) contains no CO₂ absorbent. Therefore, CO₂ elimination depends entirely on high fresh gas flow. If fresh gas flow is inadequate, rebreathing and hypercapnia may occur.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_039',
    question: 'Which of the following is a commonly used breathing circuit in children (especially <20 kg)?',
    options: [
      'Mapleson A',
      'Circle system',
      'Mapleson B',
      'Mapleson E/F (Jackson-Rees)',
      'Closed system'
    ],
    correctAnswerIndex: 3,
    explanation: 'Circle systems are not preferred in pediatrics due to their high resistance. The Jackson-Rees system (Mapleson F) is commonly used because of its low resistance and simple CO₂ elimination.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_040',
    question: 'Which of the following explains the superiority of the Mapleson A system in spontaneous ventilation?',
    options: [
      'Contains a CO₂ absorbent',
      'Fresh gas inlet is close to the valve',
      'Expiratory valve is far from the patient',
      'High CO₂ rebreathing',
      'Suitable for controlled ventilation'
    ],
    correctAnswerIndex: 2,
    explanation: 'In the Mapleson A system, the expiratory valve is located away from the patient, allowing exhaled gases to be expelled easily and preventing CO₂ rebreathing.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_041',
    question: 'Which factor most affects resistance in breathing circuits?',
    options: [
      'Gas temperature',
      'Circuit tube diameter',
      'Type of CO₂ absorbent',
      'Fresh gas flow rate',
      'Number of valves used'
    ],
    correctAnswerIndex: 1,
    explanation: 'Resistance is inversely proportional to tube diameter. As diameter decreases, resistance increases. Therefore, wide, short, straight tubes are preferred in pediatric patients.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_042',
    question: 'Which of the following circuits does NOT contain a reservoir bag?',
    options: [
      'Mapleson A',
      'Mapleson D',
      'Mapleson E',
      'Mapleson F',
      'Circle system'
    ],
    correctAnswerIndex: 2,
    explanation: 'The Mapleson E system is one of the simplest breathing circuits and has no reservoir bag at its end. Thus, it is unsuitable for controlled ventilation. The Mapleson F (Jackson-Rees) is essentially Mapleson E with a reservoir bag.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_043',
    question: 'Which of the following is an advantage of the closed system?',
    options: [
      'High oxygen consumption',
      'Increased anesthetic agent loss',
      'Rapid recovery time',
      'Low environmental contamination',
      'No need for CO₂ absorbent'
    ],
    correctAnswerIndex: 3,
    explanation: 'In closed systems, gases remain within the circuit, so the amount of waste gas leaking into the environment is minimal, reducing environmental contamination.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_044',
    question: 'The use of high fresh gas flow is a mandatory requirement to prevent rebreathing in which of the following circuits?',
    options: [
      'Closed system',
      'Mapleson A',
      'Mapleson D',
      'Mapleson F',
      'Circle system'
    ],
    correctAnswerIndex: 3,
    explanation: 'In the Jackson-Rees (Mapleson F) system, there is no CO₂ absorbent. The only way to prevent rebreathing is to set fresh gas flow higher than the patient\'s minute ventilation.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_045',
    question: 'Which of the following is the least effective factor in increasing dead space in breathing circuits?',
    options: [
      'Long circuit tubes',
      'Malfunction of unidirectional valves',
      'Obstruction of the CO₂ absorbent',
      'Gas humidity',
      'Valves positioned close to the patient'
    ],
    correctAnswerIndex: 3,
    explanation: 'Gas humidity does not affect anatomical or physiological dead space. Dead space is influenced by valve placement, tube length, and obstructions within the circuit.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_046',
    question: 'Which of the following statements about CO₂ absorbents is correct?',
    options: [
      'Absorbents do not release heat',
      'They chemically bind CO₂',
      'They are used only in pediatric circuits',
      'They work only with water vapor',
      'Circuits with absorbents contain no valves'
    ],
    correctAnswerIndex: 1,
    explanation: 'CO₂ absorbents (e.g., soda lime) chemically bind carbon dioxide, preventing the patient from re-inhaling it. The reaction is exothermic, releasing heat.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_047',
    question: 'Which of the following Mapleson systems is considered the least economical?',
    options: [
      'Mapleson A',
      'Mapleson B',
      'Mapleson C',
      'Mapleson D',
      'Mapleson F'
    ],
    correctAnswerIndex: 2,
    explanation: 'The Mapleson C system, due to its very short and simple structure, requires high fresh gas flow to prevent rebreathing. This makes it uneconomical and relatively ineffective at CO₂ elimination.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_048',
    question: 'What is expected if unidirectional valves fail in the circle system?',
    options: [
      'Hypoxia',
      'Increased gas consumption',
      'Hypothermia',
      'CO₂ retention',
      'Oxygen toxicity'
    ],
    correctAnswerIndex: 3,
    explanation: 'In the circle system, unidirectional valves guide gas flow. If they fail, the patient re-inhales exhaled CO₂, leading to hypercapnia (CO₂ retention).',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_049',
    question: 'Which of the following statements is correct about the open system (e.g., Schimmelbusch mask)?',
    options: [
      'Contains a CO₂ absorbent',
      'Rebreathing is possible',
      'Fresh gas flow is not required',
      'Simple, economical but inefficient',
      'Ideal for controlled ventilation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Open systems (such as ether-soaked gauze masks) are almost never used today. They do not provide CO₂ elimination, and dosing is difficult. However, due to their simplicity, they are historically important.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_050',
    question: 'Which of the following statements about the circle system is incorrect?',
    options: [
      'Gas flow is directed by valves',
      'It contains a CO₂ absorbent',
      'It is compatible with spontaneous ventilation',
      'Rebreathing is not possible',
      'Heat and humidity are preserved'
    ],
    correctAnswerIndex: 3,
    explanation: 'The purpose of the circle system is to provide controlled rebreathing. CO₂ is removed by the absorbent, but other gases (e.g., halothane, O₂) can be inhaled again. Thus, rebreathing exists in this system, but it is controlled.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_051',
    question: 'In which of the following situations would the Mapleson E system be preferred?',
    options: [
      'Adult patient under spontaneous ventilation',
      'Pediatric patient under deep sedation',
      'Mechanical ventilation in intensive care',
      'Long-duration general anesthesia',
      'Closed system where CO₂ elimination is critical'
    ],
    correctAnswerIndex: 1,
    explanation: 'The Mapleson E (T-piece) circuit is low-resistance and therefore suitable for children and short procedures. It is not suitable for controlled ventilation.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_052',
    question: 'What is the most likely outcome if the inspiratory valve fails in a circle system?',
    options: [
      'Gases escape to the environment',
      'The fresh gas supply fails',
      'The patient re-inhales exhaled gas',
      'The CO₂ absorbent becomes inactive',
      'Circuit pressure drops to zero'
    ],
    correctAnswerIndex: 2,
    explanation: 'Failure of the inspiratory valve allows exhaled CO₂-containing gases to mix into the inspiratory limb, causing rebreathing and an increased risk of hypercapnia.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_053',
    question: 'Which of the following is correct regarding the CO₂ absorbents baralyme and soda lime?',
    options: [
      'Both physically trap CO₂',
      'Soda lime does not work if it is dry',
      'Baralyme does not generate heat',
      'Neither degrades anesthetic gases',
      'Soda lime does not react with water'
    ],
    correctAnswerIndex: 1,
    explanation: 'Soda lime must be moist to be effective. A dried absorbent does not function. In addition, with some inhalation agents (especially older ones), it can react to form toxic by-products (e.g., Compound A).',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_054',
    question: 'Which of the following circuits provides the most flexible use for both spontaneous and controlled ventilation?',
    options: [
      'Mapleson A',
      'Mapleson C',
      'Mapleson D',
      'Mapleson E',
      'Open system'
    ],
    correctAnswerIndex: 2,
    explanation: 'Mapleson D is very effective for controlled ventilation and, with appropriate fresh gas flow, can also be used for spontaneous breathing. This makes it highly versatile.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_055',
    question: 'Which of the following is not an advantage of the closed circuit system?',
    options: [
      'Low fresh gas requirement',
      'Reduced anesthetic gas consumption',
      'Minimal environmental pollution',
      'Rapid changes in anesthetic depth',
      'Preservation of heat and humidity'
    ],
    correctAnswerIndex: 3,
    explanation: 'Closed systems have low gas flow and a large system volume, so changes in gas concentration occur slowly. Open systems are preferred when rapid depth changes are needed.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_056',
    question: 'Which of the following increases rebreathing?',
    options: [
      'Increasing fresh gas flow',
      'Replacing the CO₂ absorbent',
      'Shortening the breathing circuit',
      'Malfunction of the exhalation valve',
      'Using low tidal volume'
    ],
    correctAnswerIndex: 3,
    explanation: 'If the exhalation valve malfunctions, CO₂-containing gas cannot be expelled and mixes with inspiratory gas, leading to rebreathing and risk of hypercapnia.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_057',
    question: 'In which of the following situations is anesthetic gas consumption the lowest?',
    options: [
      'Open system',
      'Semi-open system',
      'Semi-closed system',
      'Closed system',
      'Mapleson D'
    ],
    correctAnswerIndex: 3,
    explanation: 'In a closed system, gases circulate within the circuit, and only the metabolic requirement is replaced by fresh gas. This results in minimal anesthetic consumption.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_058',
    question: 'The alkaline contents of CO₂ absorbents may react with which agent to produce toxic compounds?',
    options: [
      'Halothane',
      'Sevoflurane',
      'Oxygen',
      'Nitrous oxide',
      'Desflurane'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sevoflurane can react with soda lime (alkaline CO₂ absorbents) to produce Compound A, a nephrotoxic by-product. For this reason, it must be used cautiously with low fresh gas flow.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_059',
    question: 'Which of the following is incorrect regarding the comparison of Mapleson systems?',
    options: [
      'Mapleson A is most effective during spontaneous ventilation',
      'Mapleson D is better for controlled ventilation',
      'Mapleson C is used for short procedures',
      'Mapleson F is suitable for pediatric patients',
      'Mapleson B is the most economical system'
    ],
    correctAnswerIndex: 4,
    explanation: 'Mapleson B and C are inefficient for both spontaneous and controlled ventilation, requiring high fresh gas flow and being uneconomical. The most economical system is the closed circle system.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_060',
    question: 'Which Mapleson circuit is most suitable for spontaneous ventilation in pediatric patients?',
    options: [
      'Mapleson A',
      'Mapleson B',
      'Mapleson C',
      'Mapleson D',
      'Mapleson F'
    ],
    correctAnswerIndex: 4,
    explanation: 'The Mapleson F (Jackson-Rees modification) has low resistance and is therefore preferred for spontaneous breathing in children. It contains no valve, making it easy to control.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_061',
    question: 'What is the most effective way to reduce rebreathing in Mapleson systems?',
    options: [
      'Adding a CO₂ absorbent',
      'Increasing the fresh gas flow',
      'Shortening the circuit',
      'Removing the exhalation valve',
      'Reversing the valves'
    ],
    correctAnswerIndex: 1,
    explanation: 'Mapleson systems do not contain CO₂ absorbents, so adequate fresh gas flow is the only way to prevent rebreathing. Insufficient flow leads to re-inhalation of CO₂.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_062',
    question: 'Which of the following is a feature of the open system?',
    options: [
      'Rebreathing occurs',
      'It contains a CO₂ absorbent',
      'Fresh gas is continuously directed to the patient',
      'Controlled ventilation is possible',
      'It contains unidirectional valves'
    ],
    correctAnswerIndex: 2,
    explanation: 'In open systems (e.g., Schimmelbusch mask), anesthetic gases disperse directly into the environment. Fresh gas is supplied continuously, with no rebreathing or valves. They are not used in modern anesthesia.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_063',
    question: 'What is the most common complication in closed systems?',
    options: [
      'Hypoxemia',
      'Hypercapnia',
      'Hypothermia',
      'Anesthetic gas leakage',
      'Atelectasis'
    ],
    correctAnswerIndex: 1,
    explanation: 'In closed systems with low fresh gas flow, CO₂ elimination depends entirely on the absorbent. If the absorbent is exhausted, CO₂ accumulates, leading to hypercapnia.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
  Question(
    id: 'breathing_sys_064',
    question: 'Which of the following systems is the slowest in changing the concentration of the gas mixture?',
    options: [
      'Open system',
      'Mapleson D',
      'Closed circle system',
      'Mapleson F',
      'Semi-open system'
    ],
    correctAnswerIndex: 2,
    explanation: 'In closed systems, the gas volume is large and requires time to change. Thus, changes in concentration occur slowly, and anesthetic depth adjustments are delayed.',
    category: 'Breathing Systems',
    difficulty: 2
  ),
];
