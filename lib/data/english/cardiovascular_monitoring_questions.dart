import '../../models/question.dart';

List<Question> cardiovascularMonitoringQuestions = [
  Question(
    id: 'cv_monitoring_001',
    question: 'Which of the following cannot be directly measured with a pulmonary artery catheter (PAC)?',
    options: [
      'Pulmonary artery pressure',
      'Cardiac output',
      'Pulmonary capillary wedge pressure',
      'Left ventricular filling pressure',
      'Left ventricular ejection fraction'
    ],
    correctAnswerIndex: 4,
    explanation: 'Left ventricular ejection fraction is measured by imaging methods such as echocardiography, not directly with PAC.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_002',
    question: 'Low central venous pressure (CVP) would not be expected in which condition?',
    options: [
      'Hypovolemia',
      'Sepsis',
      'Dehydration',
      'Tension pneumothorax',
      'Hemorrhage'
    ],
    correctAnswerIndex: 3,
    explanation: 'Tension pneumothorax increases intrathoracic pressure, reduces venous return, and increases CVP.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_003',
    question: 'Which of the following is false regarding pulse oximetry?',
    options: [
      'Can display pulse waveforms',
      'Non-invasive method',
      'Can differentiate carboxyhemoglobin from oxyhemoglobin',
      'Measurement can be taken from finger and earlobe',
      'Continuously monitors oxygen saturation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Pulse oximeters cannot differentiate carboxyhemoglobin from oxyhemoglobin due to similar absorption spectra, leading to falsely high readings.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_004',
    question: 'During thermodilution measurement of cardiac output, the cold injectate is delivered into which structure?',
    options: [
      'Right atrium',
      'Left atrium',
      'Right ventricle',
      'Pulmonary artery',
      'Superior vena cava'
    ],
    correctAnswerIndex: 0,
    explanation: 'In thermodilution, cold saline is injected into the right atrium, and temperature change is measured in the pulmonary artery to calculate cardiac output.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_005',
    question: 'Which of the following best reflects left ventricular filling pressure?',
    options: [
      'Central venous pressure',
      'Pulmonary artery pressure',
      'Left atrial pressure',
      'Pulmonary capillary wedge pressure (PCWP)',
      'Systemic vascular resistance'
    ],
    correctAnswerIndex: 3,
    explanation: 'PCWP reflects left atrial pressure and thus indirectly represents left ventricular filling pressure.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_006',
    question: 'In non-invasive blood pressure measurement, the sounds heard by the auscultatory method are called:',
    options: [
      'Vesicular sounds',
      'Korotkoff sounds',
      'Murmur sounds',
      'Fremitus',
      'Gallop rhythm'
    ],
    correctAnswerIndex: 1,
    explanation: 'Korotkoff sounds are the characteristic sounds heard with a stethoscope during cuff deflation, used in blood pressure measurement.',
    category: 'Cardiovascular Monitoring',
    difficulty: 1
  ),
  Question(
    id: 'cv_monitoring_007',
    question: 'Central venous pressure (CVP) elevation is expected in which condition?',
    options: [
      'Hemorrhage',
      'Anesthetic induction',
      'Cardiac tamponade',
      'Sepsis',
      'Hypovolemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Cardiac tamponade restricts ventricular filling, leading to elevated CVP.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_008',
    question: 'On the CVP waveform, what does the "a wave" represent?',
    options: [
      'Tricuspid valve opening',
      'Right ventricular contraction',
      'Right atrial contraction',
      'Pulmonary valve opening',
      'Left atrial relaxation'
    ],
    correctAnswerIndex: 2,
    explanation: 'The "a wave" corresponds to right atrial contraction.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_009',
    question: 'What is the normal range of pulmonary capillary wedge pressure (PCWP)?',
    options: [
      '2–5 mmHg',
      '4–8 mmHg',
      '6–12 mmHg',
      '12–20 mmHg',
      '15–25 mmHg'
    ],
    correctAnswerIndex: 2,
    explanation: 'Normal PCWP is approximately 6–12 mmHg.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_010',
    question: 'In oscillometric blood pressure measurement, which parameter is measured first and directly?',
    options: [
      'Arithmetic mean',
      'Geometric mean',
      'Mean arterial pressure (MAP)',
      'Comprehensive ECG analysis',
      'Only systolic pressure'
    ],
    correctAnswerIndex: 2,
    explanation: 'Oscillometric devices measure MAP first, then calculate systolic and diastolic values.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_011',
    question: 'Low cardiac output would not be expected in which condition?',
    options: [
      'Hemorrhagic shock',
      'Cardiogenic shock',
      'Hypovolemia',
      'Hypothyroidism',
      'Septic shock (early phase)'
    ],
    correctAnswerIndex: 4,
    explanation: 'In early septic shock, cardiac output is often elevated due to peripheral vasodilation.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_012',
    question: 'Which of the following cannot be measured directly with a pulmonary artery catheter (PAC)?',
    options: [
      'Pulmonary artery pressure',
      'Cardiac output',
      'Pulmonary capillary wedge pressure',
      'Central venous pressure',
      'Right atrial pressure'
    ],
    correctAnswerIndex: 3,
    explanation: 'CVP is measured with a central venous catheter, not directly by PAC.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_013',
    question: 'Which of the following parameters defines afterload?',
    options: [
      'Left atrial pressure',
      'Left ventricular filling volume',
      'Aortic outflow resistance',
      'Cardiac output',
      'Pulmonary venous pressure'
    ],
    correctAnswerIndex: 2,
    explanation: 'Afterload is the resistance the left ventricle must overcome to eject blood, determined largely by aortic outflow resistance.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_014',
    question: 'Prolongation of the QT interval on ECG is most commonly associated with which electrolyte disorder?',
    options: [
      'Hypokalemia',
      'Hypocalcemia',
      'Hypermagnesemia',
      'Hypernatremia',
      'Hypochloremia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hypocalcemia is the classic cause of QT interval prolongation.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_015',
    question: 'In arterial cannulation, damping of the arterial waveform is most often caused by:',
    options: [
      'Heart rate',
      'Catheter diameter',
      'Stiffness of the tubing',
      'Air bubbles',
      'Blood pressure'
    ],
    correctAnswerIndex: 3,
    explanation: 'Air bubbles in the tubing cause overdamping of the waveform.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_016',
    question: 'In cardiac output measurement with a Swan-Ganz catheter, which factor has the greatest effect on accuracy?',
    options: [
      'Injection volume',
      'Respiratory rate',
      'Heart rhythm',
      'Body temperature',
      'Tidal volume'
    ],
    correctAnswerIndex: 0,
    explanation: 'The volume and temperature of the injectate critically affect thermodilution accuracy.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_017',
    question: 'Which lead is most commonly used in intraoperative ECG monitoring?',
    options: [
      'V1',
      'aVL',
      'II',
      'aVF',
      'III'
    ],
    correctAnswerIndex: 2,
    explanation: 'Lead II is best for detecting P waves and arrhythmias, making it the most commonly used intraoperatively.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_018',
    question: 'What happens to cardiac output in hyperdynamic circulation?',
    options: [
      'No change',
      'Decreases',
      'Increases',
      'Atrial fibrillation develops',
      'Cardiac output becomes immeasurable'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hyperdynamic states (e.g., early sepsis) are characterized by increased cardiac output.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_019',
    question: 'Persistently elevated pulmonary capillary wedge pressure (PCWP) measured by a Swan-Ganz catheter suggests:',
    options: [
      'Hypovolemia',
      'Left heart failure',
      'Pulmonary embolism',
      'Hypothermia',
      'Depth of anesthesia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Elevated PCWP reflects increased left atrial/ventricular filling pressures, typically seen in left heart failure.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_020',
    question: 'On the CVP waveform, what does the "v wave" represent?',
    options: [
      'Atrial contraction',
      'Tricuspid valve closure',
      'Ventricular systole',
      'Venous filling of the atrium',
      'Atrial relaxation'
    ],
    correctAnswerIndex: 3,
    explanation: 'The "v wave" represents atrial filling during venous return.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_021',
    question: 'Which of the following is calculated, not directly measured, with a pulmonary artery catheter?',
    options: [
      'Cardiac output',
      'Pulmonary artery pressure',
      'Systemic vascular resistance (SVR)',
      'Right atrial pressure',
      'PCWP'
    ],
    correctAnswerIndex: 2,
    explanation: 'SVR is calculated using MAP, CVP, and cardiac output; it is not directly measured.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_022',
    question: 'In suspected intraoperative hypovolemia, what is the fastest and most effective initial assessment method?',
    options: [
      'Urine output evaluation',
      'Transthoracic echocardiography',
      'CVP measurement',
      'Pulse pressure variation (PPV)',
      'Reduction in anesthetic dose'
    ],
    correctAnswerIndex: 3,
    explanation: 'Pulse pressure variation is a dynamic and reliable indicator of fluid responsiveness and hypovolemia.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_023',
    question: 'Systemic vascular resistance (SVR) is most influenced by:',
    options: [
      'Preload',
      'Heart rate',
      'Vascular tone',
      'Pulmonary pressure',
      'Inotropic agents'
    ],
    correctAnswerIndex: 2,
    explanation: 'SVR is primarily determined by arteriolar tone.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_024',
    question: 'A steep and rapidly rising systolic upstroke in the arterial pressure waveform usually indicates:',
    options: [
      'Aortic stenosis',
      'Hypotension',
      'Volume overload',
      'Hyperdynamic circulation',
      'Shock state'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hyperdynamic circulation produces strong left ventricular contraction, leading to sharp systolic waveforms.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_025',
    question: 'Which physiological condition can elevate CVP?',
    options: [
      'Deep inspiration',
      'Expiration',
      'Positive pressure ventilation',
      'Hypovolemia',
      'Dehydration'
    ],
    correctAnswerIndex: 2,
    explanation: 'Positive pressure ventilation raises intrathoracic pressure, increasing CVP.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_026',
    question: 'In a spontaneously breathing patient, when is the best time to measure CVP?',
    options: [
      'Beginning of inspiration',
      'End-expiration',
      'Maximum inspiration',
      'Beginning of expiration',
      'Any time'
    ],
    correctAnswerIndex: 1,
    explanation: 'End-expiration is the most stable intrathoracic pressure point, making it the most accurate time for CVP measurement.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_027',
    question: 'Which of the following methods is an example of minimally invasive cardiac output measurement?',
    options: [
      'Thermodilution with PAC',
      'Transthoracic echocardiography',
      'Arterial waveform analysis',
      'ECG',
      'Capnography'
    ],
    correctAnswerIndex: 2,
    explanation: 'Arterial waveform analysis allows estimation of cardiac output from an arterial line without a PAC.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_028',
    question: 'Which monitoring method best reflects tissue perfusion?',
    options: [
      'Arterial blood pressure',
      'Lactate level',
      'CVP',
      'Heart rate',
      'SpO₂'
    ],
    correctAnswerIndex: 1,
    explanation: 'Lactate is a biochemical marker of tissue hypoxia and is the best indicator of perfusion adequacy.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_029',
    question: 'Pulmonary wedge pressure (PAWP) best reflects which parameter?',
    options: [
      'Right atrial pressure',
      'Left ventricular end-diastolic pressure',
      'Pulmonary arterial resistance',
      'Cardiac output',
      'Central venous pressure'
    ],
    correctAnswerIndex: 1,
    explanation: 'PAWP reflects left ventricular filling pressure and is used to assess left heart function.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_030',
    question: 'The Fick principle for cardiac output calculation requires which parameter?',
    options: [
      'Pulse pressure',
      'Oxygen consumption',
      'Pulmonary wedge pressure',
      'Arterial blood pH',
      'Heart rate'
    ],
    correctAnswerIndex: 1,
    explanation: 'The Fick method uses oxygen consumption and the arterial–venous O₂ content difference to calculate CO.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_031',
    question: 'What is required to calculate cardiac index?',
    options: [
      'Heart rate',
      'Height and weight',
      'Cardiac output and body surface area',
      'MAP and CVP',
      'Pulmonary wedge pressure'
    ],
    correctAnswerIndex: 2,
    explanation: 'Cardiac index = Cardiac output ÷ Body surface area.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_032',
    question: 'Which monitor provides information about both ventilation and circulation?',
    options: [
      'ECG',
      'Pulse oximeter',
      'Capnography',
      'Thermometer',
      'Flowmeter'
    ],
    correctAnswerIndex: 2,
    explanation: 'Capnography (ETCO₂) reflects ventilation and indirectly reflects circulation.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_033',
    question: 'The most commonly used non-invasive blood pressure measurement method is:',
    options: [
      'Oscillometric method',
      'Palpation method',
      'Riva-Rocci method',
      'Stethoscope method',
      'Korotkoff method'
    ],
    correctAnswerIndex: 0,
    explanation: 'Automatic BP devices work with the oscillometric method.',
    category: 'Cardiovascular Monitoring',
    difficulty: 1
  ),
  Question(
    id: 'cv_monitoring_034',
    question: 'What is the normal CVP value?',
    options: [
      '1–3 mmHg',
      '2–6 mmHg',
      '4–10 mmHg',
      '8–12 mmHg',
      '10–15 mmHg'
    ],
    correctAnswerIndex: 1,
    explanation: 'Normal CVP is 2–6 mmHg.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_035',
    question: 'In a patient with heart failure, which monitoring parameter is the most significant?',
    options: [
      'ETCO₂',
      'CVP',
      'PAWP',
      'Heart rate',
      'SaO₂'
    ],
    correctAnswerIndex: 2,
    explanation: 'PAWP best reflects left heart filling pressure.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_036',
    question: 'Which of the following cannot be measured with a pulmonary artery catheter?',
    options: [
      'Pulmonary artery pressure',
      'Pulmonary wedge pressure',
      'Central venous pressure',
      'Cardiac output',
      'Left ventricular ejection fraction'
    ],
    correctAnswerIndex: 4,
    explanation: 'Ejection fraction requires echocardiography.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_037',
    question: 'Low systemic vascular resistance (SVR) is not seen in which condition?',
    options: [
      'Sepsis',
      'Anaphylaxis',
      'Neurogenic shock',
      'Hypovolemia',
      'Hypercapnia'
    ],
    correctAnswerIndex: 3,
    explanation: 'In hypovolemia, SVR increases as a compensatory mechanism.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_038',
    question: 'Which of the following is not done when advancing to wedge position with a PAC?',
    options: [
      'Inflate the balloon',
      'Advance the catheter',
      'Observe the waveform',
      'Wait 30 minutes',
      'Withdraw slightly after wedge'
    ],
    correctAnswerIndex: 3,
    explanation: 'Wedge position is temporary and not maintained for long periods.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_039',
    question: 'In arterial pressure waveform monitoring, a steep rising anacrotic limb represents:',
    options: [
      'Beginning of diastole',
      'Aortic valve opening',
      'Left ventricular diastole',
      'Tricuspid valve closure',
      'Aortic regurgitation'
    ],
    correctAnswerIndex: 1,
    explanation: 'The anacrotic limb represents the rapid upstroke after aortic valve opening.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_040',
    question: 'Which monitoring method best evaluates ventricular volume?',
    options: [
      'ECG',
      'Transthoracic echocardiography',
      'Pulse oximetry',
      'Capnography',
      'CVP'
    ],
    correctAnswerIndex: 1,
    explanation: 'Echocardiography directly visualizes chamber size, wall motion, and ejection fraction.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_041',
    question: 'Pulmonary artery pressure rises most in which condition?',
    options: [
      'Hypovolemia',
      'Left heart failure',
      'Hyperthermia',
      'Metabolic acidosis',
      'Diabetes'
    ],
    correctAnswerIndex: 1,
    explanation: 'Left heart failure increases pulmonary venous pressure, leading to elevated pulmonary artery pressure.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_042',
    question: 'Non-invasive blood pressure monitors operate on which principle?',
    options: [
      'Piezoelectric effect',
      'Radiofrequency',
      'Oscillometric method',
      'Doppler measurement',
      'Thermal detection'
    ],
    correctAnswerIndex: 2,
    explanation: 'Automatic BP devices analyze cuff oscillations to determine pressures.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_043',
    question: 'High cardiac output with tissue hypoperfusion is most likely due to:',
    options: [
      'Cardiogenic shock',
      'Distributive shock',
      'Hypovolemia',
      'Complete heart block',
      'Pulmonary embolism'
    ],
    correctAnswerIndex: 1,
    explanation: 'Distributive shock (e.g., sepsis) can present with high CO but impaired tissue perfusion.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_044',
    question: 'At what anatomical reference point should the transducer be placed for CVP measurement?',
    options: [
      'Earlobe',
      'Substernal area',
      '5th intercostal space',
      'Mid-axillary line at the 4th intercostal level (Foramen of Monro)',
      'Clavicle level'
    ],
    correctAnswerIndex: 3,
    explanation: 'Accurate CVP requires the transducer at heart level — the mid-axillary line, 4th intercostal space.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_045',
    question: 'Which parameter cannot be measured with a Swan-Ganz catheter?',
    options: [
      'Pulmonary artery pressure',
      'Pulmonary wedge pressure',
      'Cardiac output',
      'CVP',
      'Left atrial volume'
    ],
    correctAnswerIndex: 4,
    explanation: 'Left atrial volume cannot be measured; only pressure parameters are available.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_046',
    question: 'In pulmonary artery catheterization, wedge pressure reflects the pressure of which chamber?',
    options: [
      'Left atrium',
      'Left ventricle',
      'Pulmonary artery',
      'Right atrium',
      'Aorta'
    ],
    correctAnswerIndex: 0,
    explanation: 'PCWP approximates left atrial pressure.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_047',
    question: 'Which parameter cannot be measured with pulse contour analysis?',
    options: [
      'Cardiac output',
      'Stroke volume variation (SVV)',
      'Systemic vascular resistance',
      'Ventricular ejection fraction',
      'Pulse pressure variation'
    ],
    correctAnswerIndex: 3,
    explanation: 'EF requires echocardiography.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_048',
    question: 'What bispectral index (BIS) range indicates adequate general anesthesia?',
    options: [
      '85–100',
      '65–85',
      '40–65',
      '20–40',
      '0–20'
    ],
    correctAnswerIndex: 2,
    explanation: 'A BIS value of 40–65 corresponds to surgical anesthesia.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_049',
    question: 'Which of the following is not a method for measuring cardiac output?',
    options: [
      'Thermodilution',
      'Fick principle',
      'Pulse contour analysis',
      'Electrocardiography',
      'Bioimpedance'
    ],
    correctAnswerIndex: 3,
    explanation: 'ECG does not measure CO.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_050',
    question: 'Stroke volume variation (SVV) becomes unreliable in which condition?',
    options: [
      'Open chest',
      'Atrial fibrillation',
      'Mechanical ventilation',
      'PEEP 10 cmH₂O',
      'ARDS'
    ],
    correctAnswerIndex: 1,
    explanation: 'In AF, irregular filling makes SVV unreliable.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_051',
    question: 'Which of the following is not a complication of pulmonary artery catheterization?',
    options: [
      'Pulmonary artery rupture',
      'Complete heart block',
      'Air embolism',
      'Metabolic alkalosis',
      'Endocarditis'
    ],
    correctAnswerIndex: 3,
    explanation: 'Metabolic alkalosis is not related to PAC use.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_052',
    question: 'In cardiac output measurement by the Fick method, which parameter is not required?',
    options: [
      'Oxygen consumption',
      'Arterial O₂ content',
      'Venous O₂ content',
      'Arterial CO₂',
      'Lung compliance'
    ],
    correctAnswerIndex: 4,
    explanation: 'Fick equation: CO = VO₂ ÷ (CaO₂ – CvO₂).',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_053',
    question: 'Which of the following is a non-invasive cardiac output measurement method?',
    options: [
      'Swan-Ganz catheter',
      'Bioimpedance cardiography',
      'Arterial catheter',
      'Central venous catheter',
      'TEE'
    ],
    correctAnswerIndex: 1,
    explanation: 'Thoracic bioimpedance is non-invasive.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_054',
    question: 'Loss of the dicrotic notch on the arterial pressure waveform is seen in:',
    options: [
      'Aortic regurgitation',
      'Aortic stenosis',
      'Hypertension',
      'Vasodilation',
      'Hypovolemia'
    ],
    correctAnswerIndex: 0,
    explanation: 'In aortic regurgitation, the dicrotic notch disappears.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_055',
    question: 'Thermodilution cardiac output measurement is based on which physical law?',
    options: [
      'Bernoulli',
      'Fick',
      'Poiseuille',
      'Stewart-Hamilton',
      'Laplace'
    ],
    correctAnswerIndex: 3,
    explanation: 'Thermodilution uses the Stewart-Hamilton equation.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_056',
    question: 'Which factor most affects pulse oximeter accuracy?',
    options: [
      'Hyperbilirubinemia',
      'Carboxyhemoglobin',
      'Hypoglycemia',
      'Hypernatremia',
      'Hypocalcemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Carboxyhemoglobin causes falsely high SpO₂ readings.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_057',
    question: 'Which is a typical pulmonary artery catheter finding in massive pulmonary embolism?',
    options: [
      'Elevated PCWP',
      'Normal right atrial pressure',
      'Low pulmonary artery pressure',
      'Increased cardiac output',
      'Elevated right ventricular pressure'
    ],
    correctAnswerIndex: 4,
    explanation: 'RV afterload increases, raising RV pressures.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_058',
    question: 'Which CVP waveform change is seen in cardiac tamponade?',
    options: [
      'Loss of Y descent',
      'Prominent X descent',
      'Loss of A wave',
      'Deepened Y descent',
      'Prominent V wave'
    ],
    correctAnswerIndex: 0,
    explanation: 'In tamponade, Y descent is blunted or absent.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_059',
    question: 'Intraoperative TEE is absolutely contraindicated in which condition?',
    options: [
      'Esophageal varices',
      'Aortic stenosis',
      'Mitral regurgitation',
      'Coronary artery disease',
      'Atrial septal defect'
    ],
    correctAnswerIndex: 0,
    explanation: 'Esophageal varices carry a rupture risk; absolute contraindication.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_060',
    question: 'What pulse pressure variation (PPV) value suggests volume responsiveness?',
    options: [
      '>5%',
      '>10%',
      '>15%',
      '>20%',
      '>25%'
    ],
    correctAnswerIndex: 2,
    explanation: 'PPV >13–15% indicates fluid responsiveness.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_061',
    question: 'PAC findings in cardiogenic shock include:',
    options: [
      'High PCWP, low CO',
      'Low PCWP, high CO',
      'Normal PCWP, high CO',
      'High PCWP, high CO',
      'Low PCWP, low CO'
    ],
    correctAnswerIndex: 0,
    explanation: 'Cardiogenic shock: PCWP >18 mmHg, CO <2.2 L/min/m².',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_062',
    question: 'The LiDCO method for cardiac output measurement is based on:',
    options: [
      'Thermodilution',
      'Lithium dilution',
      'Bioimpedance',
      'Fick principle',
      'Doppler'
    ],
    correctAnswerIndex: 1,
    explanation: 'LiDCO uses lithium indicator dilution.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_063',
    question: 'In arterial pressure monitoring, which artifact indicates overdamping?',
    options: [
      'Sudden rise in systolic pressure',
      'Fall in diastolic pressure',
      'Loss of the dicrotic notch',
      'Unchanged mean pressure',
      'Shortened wave amplitude'
    ],
    correctAnswerIndex: 2,
    explanation: 'Loss of the dicrotic notch is characteristic of overdamping.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_064',
    question: 'Near-infrared spectroscopy (NIRS) measures oxygenation in which tissue?',
    options: [
      'Cerebral',
      'Myocardial',
      'Renal',
      'Hepatic',
      'Pulmonary'
    ],
    correctAnswerIndex: 0,
    explanation: 'NIRS measures regional cerebral oxygen saturation (rSO₂).',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_065',
    question: 'During PAC placement, which ECG change indicates right ventricular irritation?',
    options: [
      'ST elevation',
      'Ventricular extrasystoles',
      'PR prolongation',
      'QT prolongation',
      'U waves'
    ],
    correctAnswerIndex: 1,
    explanation: 'Frequent PVCs may appear during passage through the RV.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
  Question(
    id: 'cv_monitoring_066',
    question: 'Intraoperative TEE is most valuable in assessing which valve lesion?',
    options: [
      'Aortic stenosis',
      'Mitral regurgitation',
      'Pulmonary stenosis',
      'Tricuspid stenosis',
      'Aortic regurgitation'
    ],
    correctAnswerIndex: 1,
    explanation: 'TEE is excellent for evaluating regurgitant jets in mitral regurgitation.',
    category: 'Cardiovascular Monitoring',
    difficulty: 2
  ),
];
