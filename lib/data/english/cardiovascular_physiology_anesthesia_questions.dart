import '../../models/question.dart';

List<Question> cardiovascularPhysiologyAnesthesiaQuestions = [
  Question(
    id: 'cardiovascular_physiology_anesthesia_001',
    question: 'Cardiac output is obtained by multiplying which of the following parameters?',
    options: [
      'Heart rate × arterial pressure',
      'Preload × afterload',
      'Heart rate × inotropy',
      'Heart rate × stroke volume',
      'Heart rate × systemic vascular resistance'
    ],
    correctAnswerIndex: 3,
    explanation: 'CO = HR × SV. It represents the volume of blood pumped by the heart per minute.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_002',
    question: 'What is the effect of increased afterload on cardiac output?',
    options: [
      'Increases',
      'Keeps constant',
      'Decreases',
      'Increases first then decreases',
      'No effect'
    ],
    correctAnswerIndex: 2,
    explanation: 'Increased afterload makes ventricular ejection harder → stroke volume falls → CO decreases.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_003',
    question: 'How do most anesthetic agents affect myocardial contractility?',
    options: [
      'Increase',
      'No change',
      'Decrease',
      'Intermittently increase',
      'Cause arrhythmia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Most inhalation and IV anesthetics have a negative inotropic effect, decreasing contractility.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_004',
    question: 'Which variable is NOT included in the systemic vascular resistance (SVR) formula?',
    options: [
      'Mean arterial pressure',
      'Central venous pressure',
      'Cardiac output',
      'Heart rate',
      'All included'
    ],
    correctAnswerIndex: 3,
    explanation: 'SVR = (MAP – CVP) / CO × 80. Heart rate is not part of the formula.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_005',
    question: 'Which inhalational anesthetic least affects cardiac output?',
    options: [
      'Halothane',
      'Isoflurane',
      'Sevoflurane',
      'Desflurane',
      'Enflurane'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sevoflurane maintains cardiovascular stability better than other volatile agents.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_006',
    question: 'First step in treating intraoperative hypotension?',
    options: [
      'Dopamine infusion',
      'Epinephrine bolus',
      'Positioning and fluid support',
      'Beta blocker administration',
      'Nitrates'
    ],
    correctAnswerIndex: 2,
    explanation: 'Initial management = assess cause, usually fluid resuscitation and position adjustment.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_007',
    question: 'Which factor primarily determines coronary perfusion pressure (CPP)?',
    options: [
      'Systolic arterial pressure',
      'Left atrial pressure',
      'Aortic diastolic pressure – LVEDP',
      'Cardiac output',
      'Pulmonary artery pressure'
    ],
    correctAnswerIndex: 2,
    explanation: 'CPP = Aortic diastolic pressure – LVEDP.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_008',
    question: 'Most common hemodynamic problem during cardiopulmonary bypass (CPB)?',
    options: [
      'Hypertension',
      'Hypothermia',
      'Hypotension',
      'Acidosis',
      'Arrhythmia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hemodilution + systemic vasodilation during CPB → hypotension.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_009',
    question: 'During induction, what must be most avoided in aortic stenosis?',
    options: [
      'Mild bradycardia',
      'Mild tachycardia',
      'Low systemic vascular resistance',
      'High preload',
      'Stable rhythm'
    ],
    correctAnswerIndex: 2,
    explanation: 'Fixed cardiac output → fall in SVR leads to severe hypotension/ischemia.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_010',
    question: 'In which condition can cardiac output increase while arterial pressure remains normal?',
    options: [
      'Hypovolemia',
      'Sepsis',
      'Cardiogenic shock',
      'Pulmonary embolism',
      'Aortic stenosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sepsis → peripheral vasodilation decreases SVR. CO may rise but MAP remains low/normal.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_011',
    question: 'Which condition shows increased cardiac output with widened pulse pressure?',
    options: [
      'Aortic stenosis',
      'Aortic regurgitation',
      'Mitral stenosis',
      'Hypovolemia',
      'Pulmonary hypertension'
    ],
    correctAnswerIndex: 1,
    explanation: 'Aortic regurgitation → high stroke volume + low diastolic pressure → wide pulse pressure.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_012',
    question: 'Which cardiovascular effect is least pronounced with sevoflurane?',
    options: [
      'Increased HR',
      'Decreased contractility',
      'Decreased SVR',
      'Decreased CO',
      'Decreased BP'
    ],
    correctAnswerIndex: 0,
    explanation: 'Sevoflurane minimally increases HR, making it favorable in pediatrics.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_013',
    question: 'Primary cause of systemic hypotension during CPB?',
    options: [
      'Hyperkalemia',
      'Hypoxia',
      'Vasodilation & hemodilution',
      'Hypothermia',
      'LV dysfunction'
    ],
    correctAnswerIndex: 2,
    explanation: 'CPB pumps → hemodilution + anesthetic vasodilation → hypotension.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_014',
    question: 'Which is a baroreceptor reflex response?',
    options: [
      '↑ BP → bradycardia',
      '↓ BP → bradycardia',
      '↑ HR → ↓ SVR',
      'Hypoxia → parasympathetic activation',
      'Hypercapnia → bradycardia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Baroreceptors sense ↑BP → activate parasympathetics → HR falls.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_015',
    question: 'If CO rises but arterial pressure falls, most likely cause?',
    options: [
      'Increased preload',
      'Increased afterload',
      'Low SVR',
      'High hematocrit',
      'Bradycardia'
    ],
    correctAnswerIndex: 2,
    explanation: 'MAP = CO × SVR. If CO↑ but BP↓, then SVR must be low → e.g., sepsis.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_016',
    question: 'Effect of positive pressure ventilation on hemodynamics?',
    options: [
      'Increases preload',
      'Increases venous return',
      'Decreases preload',
      'Increases arterial pressure',
      'Keeps HR constant'
    ],
    correctAnswerIndex: 2,
    explanation: 'Increased intrathoracic pressure reduces venous return → lower preload.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_017',
    question: 'Which is NOT a major determinant of CO?',
    options: [
      'Preload',
      'Afterload',
      'Contractility',
      'Heart rate',
      'Hematocrit'
    ],
    correctAnswerIndex: 4,
    explanation: 'Major determinants = preload, afterload, contractility, HR. Hematocrit affects indirectly.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_018',
    question: 'Which physiologic state increases CO?',
    options: [
      'Sleep',
      'Hypothermia',
      'Exercise',
      'Bradycardia',
      '↑ Parasympathetic tone'
    ],
    correctAnswerIndex: 2,
    explanation: 'Exercise → ↑ HR and ↑ contractility → ↑ CO.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_019',
    question: 'Which drug has negative inotropic effect?',
    options: [
      'Dopamine',
      'Dobutamine',
      'Ketamine',
      'Propofol',
      'Adrenaline'
    ],
    correctAnswerIndex: 3,
    explanation: 'Propofol depresses myocardial contractility.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_020',
    question: 'Which reduces CO?',
    options: [
      'Anemia',
      'Hypoxia',
      '↑ Afterload',
      'Mild tachycardia',
      '↑ Preload'
    ],
    correctAnswerIndex: 2,
    explanation: 'Increased afterload → harder ejection → lower SV → ↓ CO.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_021',
    question: 'Which is an example of hypotension due to vasodilation?',
    options: [
      'Hypovolemic shock',
      'Cardiogenic shock',
      'Sepsis',
      'Aortic dissection',
      'Pericardial tamponade'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sepsis → systemic vasodilation → ↓ SVR → hypotension.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_022',
    question: 'Which condition most likely shows ST depression?',
    options: [
      'Hyperkalemia',
      'Acute MI',
      'Subendocardial ischemia',
      'Pericarditis',
      'Hypothermia'
    ],
    correctAnswerIndex: 2,
    explanation: 'ST depression = subendocardial ischemia or O₂ supply-demand mismatch.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_023',
    question: 'Frank-Starling mechanism?',
    options: [
      '↑ Preload → ↑ Contractility',
      '↑ Afterload → ↑ SVR',
      '↑ HR → ↓ Diastole',
      '↓ Preload → ↑ SV',
      '↑ SVR → ↑ CO'
    ],
    correctAnswerIndex: 0,
    explanation: 'Greater diastolic filling → stronger systolic contraction → ↑ SV.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_024',
    question: 'Afterload is most closely related to?',
    options: [
      'Preload',
      'LVEDV',
      'Aortic resistance',
      'HR',
      'Pulmonary artery pressure'
    ],
    correctAnswerIndex: 2,
    explanation: 'Afterload = resistance to LV ejection, mainly determined by aortic/SVR.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_025',
    question: 'First-line inotrope for hypotension during anesthesia?',
    options: [
      'Adrenaline',
      'Dopamine (moderate dose)',
      'Noradrenaline',
      'Furosemide',
      'Beta blocker'
    ],
    correctAnswerIndex: 1,
    explanation: 'Dopamine (moderate dose) → β1 effect → ↑ inotropy.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_026',
    question: 'Best monitor for intraoperative myocardial ischemia?',
    options: [
      'SpO₂',
      'NIBP',
      'ST segment monitoring',
      'ETCO₂',
      'Body temperature'
    ],
    correctAnswerIndex: 2,
    explanation: 'ST elevation/depression = earliest ECG sign of ischemia.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_027',
    question: 'Which does NOT affect preload (ventricular filling pressure)?',
    options: [
      'Venous return',
      'Ventricular compliance',
      'HR',
      'Aortic pressure',
      'Intravascular volume'
    ],
    correctAnswerIndex: 3,
    explanation: 'Aortic pressure affects afterload, not preload.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_028',
    question: 'Which can reduce CO during anesthesia?',
    options: [
      'High FiO₂',
      'Deep anesthesia',
      'Tachycardia',
      'Normothermia',
      'Trendelenburg position'
    ],
    correctAnswerIndex: 1,
    explanation: 'Deep anesthesia → negative inotropy + vasodilation → ↓ CO.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_029',
    question: 'Which cannot be directly measured by a Swan-Ganz catheter?',
    options: [
      'Pulmonary artery pressure',
      'CO',
      'PCWP',
      'Left atrial pressure',
      'CVP'
    ],
    correctAnswerIndex: 3,
    explanation: 'LAP is indirect → PCWP approximates it.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_030',
    question: 'Which volatile anesthetic is most associated with catecholamine-induced arrhythmias?',
    options: [
      'Sevoflurane',
      'Isoflurane',
      'Desflurane',
      'Halothane',
      'Enflurane'
    ],
    correctAnswerIndex: 3,
    explanation: 'Halothane sensitizes myocardium to catecholamines → arrhythmias.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_031',
    question: 'Which causes increased afterload?',
    options: [
      'Hypothermia',
      'Hypovolemia',
      'Aortic stenosis',
      'Sepsis',
      'Venodilation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Aortic stenosis increases LV outflow resistance → ↑ afterload.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_032',
    question: 'Which can trigger reflex bradycardia during anesthesia?',
    options: [
      'Hypothermia',
      'Hypoxia',
      'Facial nerve stimulation (oculocardiac reflex)',
      'Sympathetic activation',
      'Anemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Oculocardiac reflex → vagal stimulation → bradycardia.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_033',
    question: 'If pulmonary capillary wedge pressure (PCWP) rises, which condition should be suspected?',
    options: [
      'Hypovolemia',
      'LV failure',
      'RV failure',
      'Peripheral vasodilation',
      'Aortic coarctation'
    ],
    correctAnswerIndex: 1,
    explanation: 'PCWP reflects LA and indirectly LV diastolic pressure; increases in LV failure.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_034',
    question: 'What is the main adverse effect of hemodilution during cardiopulmonary bypass?',
    options: [
      'Hypercoagulation',
      'Hyperkalemia',
      'Decreased oxygen-carrying capacity',
      'Hypervolemia',
      'Increased viscosity'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hemodilution lowers hematocrit → decreases O₂ carrying capacity → may cause tissue hypoxia.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_035',
    question: 'How is cardiac output (CO) calculated?',
    options: [
      'SV × HR',
      'MAP / SVR',
      'EF × EDV',
      'HR / SV',
      'CO / BSA'
    ],
    correctAnswerIndex: 0,
    explanation: 'CO = Stroke volume (SV) × Heart rate (HR).',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_036',
    question: 'Afterload is most closely related to which parameter?',
    options: [
      'Venous return',
      'Heart rate',
      'Systemic vascular resistance (SVR)',
      'Preload',
      'Cardiac output'
    ],
    correctAnswerIndex: 2,
    explanation: 'Afterload is primarily determined by SVR.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_037',
    question: 'During anesthesia, which physiologic parameter most increases CO?',
    options: [
      'Heart rate',
      'SVR',
      'Left atrial pressure',
      'Respiratory rate',
      'Pericardial fluid'
    ],
    correctAnswerIndex: 0,
    explanation: 'CO = SV × HR; heart rate directly influences it.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_038',
    question: 'Most common cause of bradycardia under anesthesia?',
    options: [
      'Blood loss',
      'Hypoxia',
      'Vagal stimulation',
      'Hypervolemia',
      'Hypoglycemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Tracheal manipulation or peritoneal traction can trigger vagal reflex bradycardia.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_039',
    question: 'Best intravascular fluid to increase CO?',
    options: [
      'Dextrose 5%',
      'Isotonic saline',
      'Hypotonic solution',
      'Sodium bicarbonate',
      'Albumin'
    ],
    correctAnswerIndex: 4,
    explanation: 'Colloids (e.g., albumin) remain longer intravascularly, supporting CO.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_040',
    question: 'Best indirect indicator of preload?',
    options: [
      'HR',
      'Central venous pressure (CVP)',
      'Arterial pressure',
      'CO',
      'Respiratory rate'
    ],
    correctAnswerIndex: 1,
    explanation: 'CVP reflects venous return to the right heart = preload indicator.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_041',
    question: 'In a patient with LV ejection fraction 35%, what is expected?',
    options: [
      'Normal systolic function',
      'Systolic dysfunction',
      'Diastolic dysfunction',
      'Pulmonary hypertension',
      'Aortic stenosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'EF <40% indicates systolic dysfunction.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_042',
    question: 'Effect of Valsalva maneuver on venous return?',
    options: [
      'Increases',
      'No change',
      'Decreases',
      'Increases then decreases',
      'Increases peripheral resistance'
    ],
    correctAnswerIndex: 2,
    explanation: 'Increased thoracic pressure reduces venous return.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_043',
    question: 'In a patient with EF 25%, which clinical finding is most likely?',
    options: [
      'Orthostatic hypertension',
      'Confusion and dyspnea',
      'Bradycardia',
      'Tachycardia due to hypervolemia',
      'Tachypnea without hypoxemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Severe systolic dysfunction → poor perfusion (confusion) + pulmonary congestion (dyspnea).',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_044',
    question: 'Effect of hypercapnia (↑PaCO₂) on the heart?',
    options: [
      'Vasoconstriction',
      'Vasodilation and tachycardia',
      'Bradycardia and hypotension',
      'Increased contractility',
      'Autonomic inhibition'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hypercapnia stimulates sympathetic activity → tachycardia + vasodilation.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_045',
    question: 'Most common hypothermia used during CPB?',
    options: [
      'Deep (<20°C)',
      'Mild (34–36°C)',
      'Moderate (28–32°C)',
      'Normothermia',
      'Extreme (<10°C)'
    ],
    correctAnswerIndex: 2,
    explanation: 'Moderate hypothermia protects organs, widely preferred.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_046',
    question: 'Most important determinant of continuous CO?',
    options: [
      'Aortic stenosis',
      'Left atrial pressure',
      'Venous return',
      'Pulmonary vascular resistance',
      'Contractility'
    ],
    correctAnswerIndex: 2,
    explanation: 'Venous return governs ventricular filling, ensuring CO.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_047',
    question: 'First-choice inotrope in cardiogenic shock?',
    options: [
      'Phenylephrine',
      'Norepinephrine',
      'Dopamine',
      'Dobutamine',
      'Adrenaline'
    ],
    correctAnswerIndex: 3,
    explanation: 'Dobutamine (β1 agonist) → ↑ contractility → useful in cardiogenic shock.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_048',
    question: 'Which directly increases myocardial contractility?',
    options: [
      'β1-adrenergic stimulation',
      'Vagus activation',
      'Decreased aortic pressure',
      'Increased preload',
      'Decreased afterload'
    ],
    correctAnswerIndex: 0,
    explanation: 'β1 stimulation (e.g., dobutamine) → positive inotropy.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_049',
    question: 'Which inhalational anesthetic causes the most hypotension?',
    options: [
      'Isoflurane',
      'Halothane',
      'Sevoflurane',
      'Desflurane',
      'N₂O'
    ],
    correctAnswerIndex: 0,
    explanation: 'Isoflurane causes significant vasodilation → hypotension.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_050',
    question: 'Effect of very high HR (>150/min) on CO?',
    options: [
      'Increases',
      'No change',
      'Slightly decreases',
      'Markedly decreases',
      'Increases then decreases'
    ],
    correctAnswerIndex: 3,
    explanation: 'Tachycardia shortens diastolic filling → ↓ SV → ↓ CO.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_051',
    question: 'Most common method for measuring CO?',
    options: [
      'Echocardiography',
      'Swan-Ganz catheter (thermodilution)',
      'Arterial pressure',
      'ECG',
      'Pulse oximetry'
    ],
    correctAnswerIndex: 1,
    explanation: 'Thermodilution with Swan-Ganz catheter is standard.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_052',
    question: 'What happens if baroreceptor reflex is blunted during anesthesia?',
    options: [
      'Faster response to hypertension',
      'Stronger compensation for hypotension',
      'HR decreases',
      'Tachycardic response is reduced',
      'Reflex bradycardia increases'
    ],
    correctAnswerIndex: 3,
    explanation: 'Blunted baroreflex → weaker tachycardia to hypotension.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_053',
    question: 'In low EF patients, most critical parameter during anesthesia?',
    options: [
      'HR',
      'SpO₂',
      'Respiratory rate',
      'Arterial pressure',
      'Contractility'
    ],
    correctAnswerIndex: 4,
    explanation: 'Maintaining contractility is vital when EF is low.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_054',
    question: 'Best measure of myocardial contractility?',
    options: [
      'HR',
      'CVP',
      'Ejection fraction (EF)',
      'Arterial pressure',
      'Pulmonary artery pressure'
    ],
    correctAnswerIndex: 2,
    explanation: 'EF reflects LV systolic performance.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_055',
    question: 'Which physiologic state increases CO?',
    options: [
      'Increased vagal tone',
      'Deeper anesthesia',
      'Exercise',
      'Hypothermia',
      'Sedation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Exercise → sympathetic stimulation → ↑ HR & contractility → ↑ CO.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_056',
    question: 'Which drug can increase pulmonary vascular resistance and RV load?',
    options: [
      'Dobutamine',
      'Adenosine',
      'Norepinephrine',
      'Nitrate',
      'Prostacyclin'
    ],
    correctAnswerIndex: 2,
    explanation: 'Norepinephrine causes systemic + pulmonary vasoconstriction → ↑ RV afterload.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_057',
    question: 'Diastolic time is mainly related to?',
    options: [
      'HR',
      'Preload',
      'Contractility',
      'Afterload',
      'LA pressure'
    ],
    correctAnswerIndex: 0,
    explanation: '↑ HR → shorter diastole.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_058',
    question: 'What happens to stroke volume if HR suddenly falls?',
    options: [
      'Increases',
      'Decreases',
      'No change',
      'Increases then decreases',
      'Systolic time lengthens'
    ],
    correctAnswerIndex: 0,
    explanation: 'Lower HR → longer filling → ↑ SV.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_059',
    question: 'Main determinant of arterial blood pressure?',
    options: [
      'Venous valves',
      'Plasma osmolality',
      'CO',
      'Respiratory rate',
      'CNS'
    ],
    correctAnswerIndex: 2,
    explanation: 'MAP = CO × SVR → CO is a primary determinant.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_060',
    question: 'Which determinant most influences myocardial oxygen consumption?',
    options: [
      'Wall tension',
      'HR',
      'Contractility',
      'Afterload',
      'Preload'
    ],
    correctAnswerIndex: 0,
    explanation: 'By Laplace\'s law (T = P × r / 2h), wall tension accounts for ~50% of O₂ consumption.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_061',
    question: 'Which factor increases pulmonary vascular resistance (PVR)?',
    options: [
      'Hypoxia',
      'Acetylcholine',
      'Nitric oxide',
      'Prostacyclin',
      'Alkalosis'
    ],
    correctAnswerIndex: 0,
    explanation: 'Hypoxic pulmonary vasoconstriction (Euler-Liljestrand reflex) ↑ PVR.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_062',
    question: 'How is coronary perfusion pressure (CPP) calculated?',
    options: [
      'CPP = Diastolic Ao pressure – LVEDP',
      'CPP = Systolic Ao pressure – CVP',
      'CPP = MAP – PCWP',
      'CPP = PAOP – RVEDP',
      'CPP = DBP – RAP'
    ],
    correctAnswerIndex: 0,
    explanation: 'Coronary filling occurs in diastole; CPP >60 mmHg is normal.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_063',
    question: 'Best clinical measure of preload?',
    options: [
      'PCWP',
      'SVR',
      'MAP',
      'CVP',
      'CO'
    ],
    correctAnswerIndex: 0,
    explanation: 'PCWP ≈ LVEDP, best preload indicator.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_064',
    question: 'Hemodynamic profile of cardiogenic shock?',
    options: [
      '↓CO, ↑PCWP, ↑SVR',
      '↑CO, ↓PCWP, ↓SVR',
      '↑CO, ↑PCWP, ↑SVR',
      '↓CO, ↓PCWP, ↓SVR',
      'Normal CO, normal PCWP'
    ],
    correctAnswerIndex: 0,
    explanation: 'Pump failure → low CO, high filling pressures, compensatory vasoconstriction.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_065',
    question: 'Which is NOT used in pulmonary hypertension therapy?',
    options: [
      'Beta-blockers',
      'Nitric oxide',
      'Prostacyclin',
      'Sildenafil',
      'Calcium channel blockers'
    ],
    correctAnswerIndex: 0,
    explanation: 'β-blockers worsen RV afterload; others cause pulmonary vasodilation.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_066',
    question: 'Earliest sign of volume overload?',
    options: [
      'Increased PCWP',
      'Peripheral edema',
      'Pulmonary edema',
      'Oliguria',
      'Hepatomegaly'
    ],
    correctAnswerIndex: 0,
    explanation: 'PCWP >18 mmHg indicates congestion; clinical signs appear later.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_067',
    question: 'Most common cause of cardiac arrest under anesthesia?',
    options: [
      'Hypoxia',
      'Hyperkalemia',
      'Acidosis',
      'Hypertension',
      'Hyperthermia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Airway-related hypoxia = most preventable cause.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_068',
    question: 'Hemodynamic profile of mitral stenosis?',
    options: [
      '↑PCWP, ↓CO, pulmonary hypertension',
      '↓PCWP, ↑CO, systemic hypotension',
      'Normal PCWP, normal CO',
      '↑CVP, ↓PAOP',
      '↓SVR, ↑PVR'
    ],
    correctAnswerIndex: 0,
    explanation: 'MS → ↑LA pressure → pulmonary congestion → pulmonary HTN.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_069',
    question: 'Contraindicated anesthetic approach in aortic stenosis?',
    options: [
      'Hypovolemia + vasodilation',
      'Slow HR',
      'Normovolemia',
      'High SVR',
      'Sinus rhythm'
    ],
    correctAnswerIndex: 0,
    explanation: 'Fixed CO in AS → drop in SVR causes severe hypotension.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_070',
    question: 'When is perioperative myocardial infarction most common?',
    options: [
      'Postop day 3',
      'Induction',
      'Surgical incision',
      'Extubation',
      'Start of anesthesia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Peak stress response occurs within 24–72 hrs postop.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_071',
    question: 'Mechanism of perioperative statin cardioprotection?',
    options: [
      'Plaque stabilization + improved endothelial function',
      'Lower BP',
      'Decreased HR',
      'Inhibition of coagulation',
      'Bronchodilation'
    ],
    correctAnswerIndex: 0,
    explanation: 'Statins reduce inflammation and stabilize plaques → lower periop cardiac events.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_072',
    question: 'Which cannot be measured in right heart catheterization?',
    options: [
      'LVEDP',
      'Pulmonary artery pressure',
      'CO',
      'CVP',
      'PCWP'
    ],
    correctAnswerIndex: 0,
    explanation: 'LVEDP requires left heart cath; PCWP only approximates it.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_073',
    question: 'First-line therapy for perioperative atrial fibrillation?',
    options: [
      'Beta-blockers',
      'Calcium channel blockers',
      'Digoxin',
      'Amiodarone',
      'Electrical cardioversion'
    ],
    correctAnswerIndex: 0,
    explanation: 'Hemodynamically stable → β-blockers first; CCB/Amiodarone if refractory.',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
  Question(
    id: 'cardiovascular_physiology_anesthesia_074',
    question: 'First diagnostic step if PE is suspected intraoperatively?',
    options: [
      'EKG + arterial blood gas',
      'D-dimer',
      'CT pulmonary angiography',
      'V/Q scan',
      'Echocardiography'
    ],
    correctAnswerIndex: 0,
    explanation: 'Early signs = EKG (S1Q3T3) + ABG (hypoxemia + respiratory alkalosis).',
    category: 'Cardiovascular Physiology & Anesthesia',
    difficulty: 2
  ),
];
