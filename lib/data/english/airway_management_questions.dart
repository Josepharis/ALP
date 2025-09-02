import '../../models/question.dart';

List<Question> airwayManagementQuestions = [
  Question(
    id: 'airway_management_001',
    question: 'Which is the most commonly used clinical classification for predicting difficult intubation?',
    options: [
      'ASA classification',
      'Apgar score',
      'Mallampati classification',
      'Cormack-Lehane score',
      'Thyromental distance'
    ],
    correctAnswerIndex: 2,
    explanation: 'The Mallampati score evaluates visible oropharyngeal structures when the patient opens their mouth, widely used for predicting difficult intubation.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_002',
    question: 'In the Cormack-Lehane classification, when the glottis is not visible at all, which class is this?',
    options: [
      'Class I',
      'Class II',
      'Class III',
      'Class IV',
      'Class 0'
    ],
    correctAnswerIndex: 3,
    explanation: 'Class IV means even the epiglottis is not visible during laryngoscopy, making intubation extremely difficult.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_003',
    question: 'At what value does thyromental distance indicate difficult intubation risk?',
    options: [
      '<4 cm',
      '<5 cm',
      '<6 cm',
      '<7 cm',
      '<8 cm'
    ],
    correctAnswerIndex: 2,
    explanation: 'A thyromental distance <6 cm is associated with difficult intubation.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_004',
    question: 'Which is one of the basic maneuvers used to maintain airway patency?',
    options: [
      'Valsalva maneuver',
      'Trendelenburg position',
      'Jaw-thrust maneuver',
      'Heimlich maneuver',
      'Murphy\'s sign'
    ],
    correctAnswerIndex: 2,
    explanation: 'The jaw-thrust maneuver advances the mandible forward, increasing airway patency, especially useful in unconscious patients.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_005',
    question: 'Which position best aligns the airway axes before intubation?',
    options: [
      'Trendelenburg',
      'Reverse Trendelenburg',
      'Sniffing position',
      'Lateral decubitus',
      'Fetal position'
    ],
    correctAnswerIndex: 2,
    explanation: 'The sniffing position (neck flexion + head extension) aligns oral, pharyngeal, and laryngeal axes, facilitating intubation.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_006',
    question: 'Which of the following is used as a scoring system in airway difficulty assessment?',
    options: [
      'Apgar score',
      'Glasgow Coma Score',
      'LEMON score',
      'BIS score',
      'ALARA score'
    ],
    correctAnswerIndex: 2,
    explanation: 'LEMON score = Look, Evaluate, Mallampati, Obstruction, Neck mobility.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_007',
    question: 'Which airway device is suitable for short-term airway control but does not protect against aspiration?',
    options: [
      'Endotracheal tube',
      'Laryngeal mask airway (LMA)',
      'Tracheostomy tube',
      'Nasopharyngeal airway',
      'Subglottic ventilation tube'
    ],
    correctAnswerIndex: 3,
    explanation: 'Nasopharyngeal airway maintains patency but does not protect against aspiration; suitable for short-term use.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_008',
    question: 'Which method is most suitable for maintaining airway patency in a conscious patient?',
    options: [
      'Cricothyrotomy',
      'Endotracheal intubation',
      'Nasopharyngeal airway',
      'Laryngeal mask',
      'Orotracheal intubation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Nasopharyngeal airway is better tolerated in conscious patients with intact reflexes.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_009',
    question: 'Which is the strongest predictor of difficult intubation?',
    options: [
      'BMI >30',
      'Mallampati Class IV',
      'Neck circumference >35 cm',
      'Presence of dentures',
      'Age >65'
    ],
    correctAnswerIndex: 1,
    explanation: 'Mallampati Class IV, where oropharyngeal structures are not visible, is a strong predictor of difficult intubation.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_010',
    question: 'In which scenario is endotracheal intubation performed without ventilation?',
    options: [
      'Planned intubation',
      'Difficult intubation',
      'Rapid sequence induction (RSI)',
      'Coma',
      'ICU monitoring'
    ],
    correctAnswerIndex: 2,
    explanation: 'RSI avoids mask ventilation to reduce regurgitation/aspiration risk, moving directly to intubation.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_011',
    question: 'What is the purpose of the BURP maneuver in airway management?',
    options: [
      'Calm the patient',
      'Improve glottic view',
      'Confirm tube placement',
      'Prevent aspiration',
      'Increase neck flexion'
    ],
    correctAnswerIndex: 1,
    explanation: 'BURP = Backward, Upward, Rightward Pressure on cricoid cartilage → improves laryngoscopic view.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_012',
    question: 'Which is NOT part of the RSI protocol?',
    options: [
      'Preoxygenation',
      'Cricoid pressure',
      'Neuromuscular blockade',
      'Mask ventilation',
      'Rapid intubation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Mask ventilation is avoided in RSI because it increases aspiration risk.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_013',
    question: 'Which airway maneuver is most difficult to tolerate in a conscious patient?',
    options: [
      'Chin lift',
      'Jaw thrust',
      'Nasopharyngeal airway',
      'Nasal cannula',
      'Nasal suction'
    ],
    correctAnswerIndex: 1,
    explanation: 'Jaw thrust is painful and poorly tolerated in conscious patients.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_014',
    question: 'What is the most likely mechanism of hypertensive crisis during laryngoscopy?',
    options: [
      'Cardiac ischemia',
      'Baroreceptor inhibition',
      'Sympathetic activation',
      'Parasympathetic suppression',
      'Respiratory depression'
    ],
    correctAnswerIndex: 2,
    explanation: 'Laryngoscopy stimulates sympathetic activity → hypertension and tachycardia.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_015',
    question: 'Best treatment for laryngeal edema after intubation?',
    options: [
      'Antibiotics',
      'Corticosteroids',
      'Antihistamines',
      'Anticoagulants',
      'Saline nebulization'
    ],
    correctAnswerIndex: 1,
    explanation: 'Laryngeal edema is inflammatory; corticosteroids are most effective.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_016',
    question: 'After ideal LMA placement, where does the tip rest?',
    options: [
      'Epiglottis',
      'Pharynx',
      'Cricoid cartilage',
      'Hypopharynx',
      'Upper esophageal sphincter'
    ],
    correctAnswerIndex: 4,
    explanation: 'The distal end of LMA rests against the upper esophageal sphincter.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_017',
    question: 'In a predicted difficult airway, what is the safest first approach?',
    options: [
      'RSI',
      'Induction and intubation',
      'Awake fiberoptic intubation',
      'LMA',
      'Surgical airway'
    ],
    correctAnswerIndex: 2,
    explanation: 'Awake fiberoptic intubation is safest, maintaining spontaneous ventilation and airway.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_018',
    question: 'In which case is high-flow nasal oxygen (HFNO) indicated?',
    options: [
      'Severe nasal obstruction',
      'Laryngospasm',
      'Awake fiberoptic intubation',
      'Tracheostomy patient',
      'Subglottic stenosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'HFNO provides apneic oxygenation during awake fiberoptic intubation.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_019',
    question: 'Which position reduces aspiration risk during RSI?',
    options: [
      'Trendelenburg',
      'Reverse Trendelenburg',
      'Lateral decubitus',
      'Head-up position',
      'Fetal position'
    ],
    correctAnswerIndex: 3,
    explanation: 'Head-up position reduces passive regurgitation and aspiration risk.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_020',
    question: 'What is the purpose of cricoid pressure (Sellick maneuver)?',
    options: [
      'Open hypopharynx',
      'Improve laryngeal view',
      'Facilitate esophageal entry',
      'Prevent aspiration',
      'Ease tube placement'
    ],
    correctAnswerIndex: 3,
    explanation: 'Cricoid pressure compresses the esophagus to reduce regurgitation/aspiration.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_021',
    question: 'Which is suitable for airway visualization in a conscious, cooperative patient?',
    options: [
      'Direct laryngoscopy',
      'Cricothyrotomy',
      'Awake fiberoptic intubation',
      'Nasal airway',
      'Bronchoscopy after intubation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Awake fiberoptic intubation allows safe visualization while maintaining airway in cooperative patients.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_022',
    question: 'If glottic view is poor during intubation, what is the first corrective step?',
    options: [
      'Abort intubation',
      'Nasal intubation',
      'Correct sniffing position',
      'Cricothyrotomy',
      'Increase anesthetic dose'
    ],
    correctAnswerIndex: 2,
    explanation: 'Optimize patient position first → sniffing improves visualization.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_023',
    question: 'Which finding suggests bronchospasm immediately after intubation?',
    options: [
      'Increased end-tidal CO₂',
      'Low airway pressure',
      'Increased oscillation sounds',
      'Bilateral wheezing',
      'High tidal volume'
    ],
    correctAnswerIndex: 3,
    explanation: 'Bronchospasm → bilateral wheezing due to airway narrowing.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_024',
    question: 'When is fiberoptic bronchoscope intubation most appropriate?',
    options: [
      'Sudden airway obstruction',
      'Cervical spine instability',
      'Facial trauma',
      '"Can\'t ventilate" emergency',
      'Bleeding oropharyngeal tumor'
    ],
    correctAnswerIndex: 1,
    explanation: 'Fiberoptic intubation minimizes neck movement → safest in cervical spine instability.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_025',
    question: 'In Cormack-Lehane Class IIb, which structure is partially visible?',
    options: [
      'Full glottis',
      'Arytenoids',
      'Epiglottis',
      'Cricoid cartilage',
      'Tracheal rings'
    ],
    correctAnswerIndex: 1,
    explanation: 'Class IIb = arytenoids or posterior glottis visible, but not full glottic opening.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_026',
    question: 'Which laryngoscope blade is more successful in patients with anterior glottis?',
    options: [
      'Macintosh',
      'Miller',
      'Yankauer suction',
      'Wisconsin blade',
      'Malleable blade'
    ],
    correctAnswerIndex: 1,
    explanation: 'Miller blade directly lifts the epiglottis → useful in anterior glottis.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_027',
    question: 'Final step in "can\'t intubate, can\'t ventilate" difficult airway algorithm?',
    options: [
      'Video laryngoscopy',
      'Fiberoptic intubation',
      'Cricothyrotomy',
      'LMA',
      'Nasal cannula'
    ],
    correctAnswerIndex: 2,
    explanation: 'Surgical airway (cricothyrotomy) is last resort in failed airway.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_028',
    question: 'Which complication is specific to cricothyrotomy?',
    options: [
      'Laryngospasm',
      'Tracheal stenosis',
      'Aspiration',
      'Hypercapnia',
      'Subcutaneous emphysema'
    ],
    correctAnswerIndex: 4,
    explanation: 'Cricothyrotomy may cause subcutaneous emphysema due to tissue dissection.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_029',
    question: 'What most obscures vision during fiberoptic intubation?',
    options: [
      'Reflex cough',
      'Glottic edema',
      'Excess secretions and bleeding',
      'Sniffing position',
      'Nasal resistance'
    ],
    correctAnswerIndex: 2,
    explanation: 'Secretions and blood block the camera view → main reason for failure.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_030',
    question: 'Which can cause bradycardia during intubation?',
    options: [
      'Hypoxia',
      'Hyperventilation',
      'Vagal stimulation',
      'Preoxygenation',
      'LMA placement'
    ],
    correctAnswerIndex: 2,
    explanation: 'Vagal stimulation (especially in children) during laryngoscopy may cause bradycardia.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_031',
    question: 'First step in treating laryngospasm?',
    options: [
      'Give muscle relaxant',
      'Apply positive-pressure ventilation',
      'Cricothyrotomy',
      'Give atropine',
      'Give corticosteroid'
    ],
    correctAnswerIndex: 1,
    explanation: 'First step is positive pressure ventilation; if unresolved, give muscle relaxant (succinylcholine).',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_032',
    question: 'In children, which is the first drug for bradycardia due to vagal reflex during intubation?',
    options: [
      'Epinephrine',
      'Atropine',
      'Esmolol',
      'Lidocaine',
      'Fentanyl'
    ],
    correctAnswerIndex: 1,
    explanation: 'Atropine is first-line for vagally mediated bradycardia during pediatric intubation.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_033',
    question: 'When is laryngeal edema risk highest?',
    options: [
      'Short LMA use',
      'Deep anesthesia intubation',
      'Multiple intubation attempts',
      'Nasal intubation',
      'Fiberoptic intubation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Repeated attempts cause mucosal trauma → risk of laryngeal edema increases.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_034',
    question: 'Best topical anesthetic before fiberoptic intubation?',
    options: [
      'Lidocaine',
      'Procaine',
      'Benzocaine',
      'Cocaine',
      'Tetracaine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Lidocaine is safe and effective for topical anesthesia in airway procedures.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_035',
    question: 'Which principle describes "if plan A fails, go to plan B" in airway management?',
    options: [
      'ASA classification',
      'LEMON score',
      'Difficult airway algorithm',
      'Sellick maneuver',
      'Apgar score'
    ],
    correctAnswerIndex: 2,
    explanation: 'Difficult airway algorithms emphasize systematic backup planning.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_036',
    question: 'What does the Mallampati classification measure?',
    options: [
      'Mouth opening',
      'Neck mobility',
      'Oropharyngeal visibility',
      'Tongue volume',
      'Nasal patency'
    ],
    correctAnswerIndex: 2,
    explanation: 'Mallampati assesses oropharyngeal visibility (soft palate, uvula) to predict airway difficulty.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_037',
    question: 'What is the purpose of the BURP maneuver?',
    options: [
      'Prevent aspiration',
      'Improve laryngeal view',
      'Increase respiratory rate',
      'Increase CO₂ elimination',
      'Open vocal cords'
    ],
    correctAnswerIndex: 1,
    explanation: 'BURP = Backward, Upward, Rightward Pressure improves glottic view during laryngoscopy.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_038',
    question: 'Correct laryngoscopy position during endotracheal intubation?',
    options: [
      'Sniffing position',
      'Trendelenburg',
      'Lithotomy',
      'Lateral decubitus',
      'Supine neutral'
    ],
    correctAnswerIndex: 0,
    explanation: 'Sniffing = neck flexion + head extension, aligns airway axes.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_039',
    question: 'Most common classification for glottic view during laryngoscopy?',
    options: [
      'ASA classification',
      'Cormack-Lehane',
      'Apgar score',
      'Mallampati',
      'Wilson score'
    ],
    correctAnswerIndex: 1,
    explanation: 'Cormack-Lehane grades laryngeal view on direct laryngoscopy.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_040',
    question: 'What does Cormack-Lehane Class IV indicate?',
    options: [
      'Full glottis visible',
      'Posterior commissure visible',
      'Epiglottis visible, glottis not visible',
      'No structures visible',
      'Only arytenoids visible'
    ],
    correctAnswerIndex: 3,
    explanation: 'Class IV = no glottic structures visible → very difficult intubation.',
    category: 'Airway Management',
    difficulty: 2
  ),
];
