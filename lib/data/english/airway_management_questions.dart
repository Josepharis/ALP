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
  Question(
    id: 'airway_management_041',
    question: 'What is the most appropriate intubation method in patients at high risk of aspiration?',
    options: [
      'Awake intubation',
      'Cricothyrotomy',
      'Rapid sequence intubation (RSI)',
      'Tracheostomy',
      'Nasal intubation'
    ],
    correctAnswerIndex: 2,
    explanation: 'RSI reduces aspiration of gastric contents in high-risk patients.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_042',
    question: 'Between which structures is the cricothyroid membrane located?',
    options: [
      'Thyroid cartilage and hyoid bone',
      'Cricoid cartilage and trachea',
      'Thyroid and cricoid cartilages',
      'Epiglottis and vocal cords',
      'Cricoid and hyoid bone'
    ],
    correctAnswerIndex: 2,
    explanation: 'The cricothyroid membrane lies between the thyroid and cricoid cartilages; it is a target in emergency airway access.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_043',
    question: 'Which of the following is one of the strongest predictors of difficult intubation?',
    options: [
      'Body mass index <25',
      'Mallampati class I',
      'Mouth opening <3 cm',
      'Tall stature',
      'Presence of hypotension'
    ],
    correctAnswerIndex: 2,
    explanation: 'A mouth opening under 3 cm makes intubation technically difficult.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_044',
    question: 'According to the Difficult Airway Society algorithm, what should be done first if intubation fails?',
    options: [
      'Create a surgical airway',
      'Attempt intubation again',
      'Insert a laryngeal mask airway (LMA)',
      'Wake the patient',
      'Transtracheal jet ventilation'
    ],
    correctAnswerIndex: 2,
    explanation: 'If intubation fails and mask ventilation is possible, a supraglottic device (LMA) is recommended.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_045',
    question: 'In which patients is an oropharyngeal airway contraindicated?',
    options: [
      'Awake patients',
      'Unconscious patients',
      'Those with traumatic brain injury',
      'Intubated patients',
      'Patients under anesthesia'
    ],
    correctAnswerIndex: 0,
    explanation: 'In conscious patients it can cause gagging, vomiting, and laryngospasm.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_046',
    question: 'In difficult airway prediction, a thyromental distance below how many centimeters is risky?',
    options: [
      '8 cm',
      '7 cm',
      '6.5 cm',
      '6 cm',
      '5 cm'
    ],
    correctAnswerIndex: 3,
    explanation: 'When thyromental distance is <6 cm, the risk of difficult intubation increases.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_047',
    question: 'What is the most common cardiac arrhythmia during intubation?',
    options: [
      'Bradycardia',
      'Tachycardia',
      'Ventricular fibrillation',
      'AV block',
      'Asystole'
    ],
    correctAnswerIndex: 0,
    explanation: 'Especially in children, vagal stimulation may lead to bradycardia.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_048',
    question: 'Which statement about the nasopharyngeal airway is correct in airway management?',
    options: [
      'Used only in children',
      'Inserted through the nose; can be tolerated by conscious patients',
      'Increases aspiration risk',
      'Used only as an alternative to tracheostomy',
      'Used in patients with full mouth opening'
    ],
    correctAnswerIndex: 1,
    explanation: 'A nasopharyngeal airway is generally better tolerated by awake patients.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_049',
    question: 'Which is the most commonly used videolaryngoscope?',
    options: [
      'GlideScope',
      'Bonfils',
      'Airtraq',
      'McGrath',
      'C-MAC'
    ],
    correctAnswerIndex: 0,
    explanation: 'GlideScope is among the most widely used videolaryngoscopes.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_050',
    question: 'In the difficult airway algorithm, if the patient cannot be intubated and cannot be ventilated with a mask, what should be done first?',
    options: [
      'Insert an LMA',
      'Perform videolaryngoscopy',
      'Create a surgical airway',
      'Wake the patient',
      'Insert a nasopharyngeal airway'
    ],
    correctAnswerIndex: 2,
    explanation: 'In a "can\'t intubate, can\'t ventilate" situation, a surgical airway (cricothyrotomy) is indicated.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_051',
    question: 'Which situation is a contraindication for cricothyrotomy?',
    options: [
      'Laryngeal trauma',
      'Facial trauma',
      'Children (<10 years)',
      'Hypoxia',
      'Dysphagia'
    ],
    correctAnswerIndex: 2,
    explanation: 'The cricothyroid membrane is narrow in children; transtracheal jet ventilation is preferred.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_052',
    question: 'What should be done if glottic structures are not visible?',
    options: [
      'Re-adjust the position',
      'Force the tube forward',
      'Abandon intubation',
      'Hyperventilate',
      'Increase sedation'
    ],
    correctAnswerIndex: 0,
    explanation: 'If the view is poor, reposition and try the BURP maneuver.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_053',
    question: 'Which device allows intubation while preserving spontaneous respiration?',
    options: [
      'Fiberoptic bronchoscope',
      'Laryngoscope',
      'Cricothyrotomy tube',
      'Nasopharyngeal airway',
      'Orotracheal tube'
    ],
    correctAnswerIndex: 0,
    explanation: 'Fiberoptic intubation can be performed safely in an awake patient with spontaneous breathing.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_054',
    question: 'What is the most common mistake in airway management?',
    options: [
      'Failure to assess aspiration risk',
      'Assessing mouth opening',
      'Preoxygenation before intubation',
      'Performing videolaryngoscopy',
      'Applying the Sellick maneuver'
    ],
    correctAnswerIndex: 0,
    explanation: 'Sedation or intubation without assessing aspiration risk can cause serious complications.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_055',
    question: 'What is the approximate success rate of the LMA in securing the airway?',
    options: [
      '40%',
      '60%',
      '80%',
      '90%',
      '100%'
    ],
    correctAnswerIndex: 3,
    explanation: 'LMA insertion has a success rate around 90%.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_056',
    question: 'Which of the following is one of the most important complications in emergency intubation?',
    options: [
      'Hyperkalemia',
      'Hypoglycemia',
      'Aspiration',
      'Bradycardia',
      'Hypocapnia'
    ],
    correctAnswerIndex: 2,
    explanation: 'In emergencies the stomach may be full, increasing the aspiration risk.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_057',
    question: 'What is the most reliable predictive test for difficult intubation?',
    options: [
      'Mallampati classification',
      'Thyromental distance measurement',
      'Neck circumference measurement',
      'Sternomental distance',
      'Mouth-opening assessment'
    ],
    correctAnswerIndex: 0,
    explanation: 'Mallampati classification (Classes III–IV, where the tongue base obscures the view, increase the risk of difficult intubation).',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_058',
    question: 'Which fits the definition of a "difficult airway"?',
    options: [
      'More than 3 laryngoscopy attempts or >10 minutes of intubation attempts by an experienced anesthetist',
      'Failure to intubate on the first attempt',
      'Partial visualization of the cords during laryngoscopy',
      'Difficult mask ventilation',
      'A short neck'
    ],
    correctAnswerIndex: 0,
    explanation: 'Per ASA criteria.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_059',
    question: 'Which is not a supraglottic airway device?',
    options: [
      'Endotracheal tube',
      'Laryngeal mask airway (LMA)',
      'i-gel',
      'ProSeal LMA',
      'Laryngeal tube'
    ],
    correctAnswerIndex: 0,
    explanation: 'Endotracheal tube (It is an infraglottic airway; the others are supraglottic devices).',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_060',
    question: 'Which is an indication for cricothyrotomy?',
    options: [
      '"Can\'t intubate, can\'t ventilate" (CICO) situation',
      'Elective tonsillectomy',
      'Need for nasal intubation',
      'Need for bronchoscopy',
      'Tracheal stenosis'
    ],
    correctAnswerIndex: 0,
    explanation: 'Emergency surgical airway in a non-ventilatable, non-intubatable patient.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_061',
    question: 'What is the most common complication after intubation?',
    options: [
      'Sore throat',
      'Pneumothorax',
      'Dental injury',
      'Esophageal perforation',
      'Nerve injury'
    ],
    correctAnswerIndex: 0,
    explanation: 'Sore throat (Seen in ~30–50%; usually resolves within 24–48 h).',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_062',
    question: 'What is the first step in treating laryngospasm?',
    options: [
      '100% O₂ with positive-pressure ventilation + cricoid pressure',
      'Immediate tracheotomy',
      'Intravenous lidocaine',
      'Immediate extubation',
      'High-dose opioid'
    ],
    correctAnswerIndex: 0,
    explanation: 'Apply positive-pressure O₂ and the Larson maneuver to break glottic closure.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_063',
    question: 'Which is not an anatomical difference of the pediatric airway?',
    options: [
      'Longer trachea',
      'Larger tongue',
      'Higher larynx',
      'Funnel-shaped cricoid',
      'Narrow subglottic area'
    ],
    correctAnswerIndex: 0,
    explanation: 'Children have a shorter trachea; correct tube placement is critical.',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_064',
    question: 'Which condition is a contraindication to intubation?',
    options: [
      'Laryngeal edema',
      'Asthma',
      'COPD',
      'Obesity',
      'Pregnancy'
    ],
    correctAnswerIndex: 0,
    explanation: 'Laryngeal edema (Intubation is difficult and risky; tracheostomy may be required).',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_065',
    question: 'Which of the following is not a laryngoscope blade type used during intubation?',
    options: [
      'Guedel',
      'Macintosh',
      'Miller',
      'McCoy',
      'Wisconsin'
    ],
    correctAnswerIndex: 0,
    explanation: 'Guedel (Guedel is an oropharyngeal airway; the others are blade types).',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_066',
    question: 'What is the appropriate endotracheal tube cuff pressure during intubation?',
    options: [
      '20–30 cmH₂O',
      '10–15 cmH₂O',
      '40–50 cmH₂O',
      '60–70 cmH₂O',
      '80–90 cmH₂O'
    ],
    correctAnswerIndex: 0,
    explanation: '20–30 cmH₂O (Higher pressures can cause tracheal ischemia and necrosis).',
    category: 'Airway Management',
    difficulty: 2
  ),
  Question(
    id: 'airway_management_067',
    question: 'What is the appropriate endotracheal tube cuff inflation volume during intubation?',
    options: [
      '5–10 mL of air',
      '1–2 mL of air',
      '15–20 mL of air',
      '25–30 mL of air',
      '35–40 mL of air'
    ],
    correctAnswerIndex: 1,
    explanation: '1–2 mL of air (Volume is adjusted to tube size; excessive volume is traumatic).',
    category: 'Airway Management',
    difficulty: 2
  ),
];
