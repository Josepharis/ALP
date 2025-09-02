import '../../models/question.dart';

List<Question> anesthesiaCardiovascularDiseaseQuestions = [
  Question(
    id: 'anesthesia_cardiovascular_disease_001',
    question: 'In which situation does myocardial oxygen demand increase the most?',
    options: [
      'Bradycardia',
      'Hypotension',
      'Sympathetic stimulation',
      'Parasympathetic activity',
      'Low contractility'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sympathetic activation increases HR and contractility → ↑ myocardial O₂ demand.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_002',
    question: 'In a patient with aortic stenosis, which condition should be avoided during induction?',
    options: [
      'Normal sinus rhythm',
      'Stable preload',
      'Low systemic vascular resistance',
      'Mild tachycardia',
      'Preserved aortic flow'
    ],
    correctAnswerIndex: 2,
    explanation: 'In AS, SVR must be preserved; low SVR → hypotension & ischemia.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_003',
    question: 'Which inhalational anesthetic causes the most myocardial depression?',
    options: [
      'Sevoflurane',
      'Desflurane',
      'Isoflurane',
      'Halothane',
      'Enflurane'
    ],
    correctAnswerIndex: 3,
    explanation: 'Halothane has a strong negative inotropic effect; avoid in poor cardiac reserve.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_004',
    question: 'Best anesthetic approach for a patient with left heart failure?',
    options: [
      'Increase preload',
      'Lower HR',
      'Decrease afterload, optimize preload',
      'Increase SVR',
      'Increase HR'
    ],
    correctAnswerIndex: 2,
    explanation: 'In LV failure → reduce afterload, carefully optimize preload for perfusion.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_005',
    question: 'Which is an absolute contraindication for elective surgery in active ischemic heart disease?',
    options: [
      'Stable angina',
      'Controlled hypertension',
      'Myocardial infarction within 30 days',
      'EF 50%',
      'Beta-blocker use'
    ],
    correctAnswerIndex: 2,
    explanation: 'MI <30 days → high perioperative mortality → delay elective surgery.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_006',
    question: 'What is the first step if tachycardia develops perioperatively in a cardiac patient?',
    options: [
      'Give propofol',
      'Start beta-blocker',
      'Analyze ST segment (ECG)',
      'Administer vasodilator',
      'Start dobutamine infusion'
    ],
    correctAnswerIndex: 2,
    explanation: 'New tachycardia may indicate ischemia → check ECG first.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_007',
    question: 'In hypertrophic obstructive cardiomyopathy (HOCM), which should be avoided?',
    options: [
      'Preserving afterload',
      'Sinus rhythm',
      'Tachycardia',
      'Maintaining preload',
      'Mild bradycardia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Tachycardia ↓ filling → worsens obstruction.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_008',
    question: 'In aortic regurgitation, which hemodynamic goal is preferred?',
    options: [
      'Low HR',
      'Increased SVR',
      'Slow diastole',
      'High HR',
      'Low preload'
    ],
    correctAnswerIndex: 3,
    explanation: 'Faster HR shortens diastole → less regurgitation.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_009',
    question: 'In pulmonary hypertension, which should be most avoided during anesthesia?',
    options: [
      'Normocapnia',
      'Hypothermia',
      'Hypoxia & hypercapnia',
      'Pain control',
      'Normal rhythm'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypoxia + hypercapnia → ↑ pulmonary vasoconstriction → RV failure risk.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_010',
    question: 'In which patient group is maintaining CO during anesthesia most critical?',
    options: [
      'Renal transplant',
      'Hip replacement',
      'Elderly ASA I',
      'Cardiomyopathy',
      'Spinal trauma'
    ],
    correctAnswerIndex: 3,
    explanation: 'In cardiomyopathy, CO reduction → severe complications.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_011',
    question: 'In chronic CHF, which is the most important preoperative parameter?',
    options: [
      'Temperature',
      'Respiratory rate',
      'Ejection fraction (EF)',
      'Muscle strength',
      'Hematocrit'
    ],
    correctAnswerIndex: 2,
    explanation: 'EF is key for perioperative cardiac risk assessment.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_012',
    question: 'Most common ECG change during anesthesia in CAD patients?',
    options: [
      'ST elevation',
      'QT prolongation',
      'Short PR',
      'ST depression',
      'T wave inversion'
    ],
    correctAnswerIndex: 3,
    explanation: 'ST depression = subendocardial ischemia, most frequent periop change.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_013',
    question: 'Which raises BP without increasing CO?',
    options: [
      'Dopamine',
      'Norepinephrine',
      'Dobutamine',
      'Isoproterenol',
      'Epinephrine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Norepinephrine → ↑ SVR (α1 agonist) → ↑ BP, no CO rise.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_014',
    question: 'Most dangerous arrhythmia in aortic stenosis?',
    options: [
      'Sinus tachycardia',
      'PVCs',
      'Atrial fibrillation',
      'Sinus bradycardia',
      'Junctional rhythm'
    ],
    correctAnswerIndex: 2,
    explanation: 'AS depends on atrial contraction; AF → ↓ preload → poor perfusion.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_015',
    question: 'Main risk in hypertensive patients under anesthesia?',
    options: [
      'Hypothermia',
      'Fluid retention',
      'Severe pain',
      'Perioperative myocardial ischemia',
      'Metabolic alkalosis'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hypertensive patients → exaggerated sympathetic responses → ischemia.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_016',
    question: 'In which condition should high-dose opioids be avoided?',
    options: [
      'Stable angina',
      'Pulmonary hypertension',
      'HOCM',
      'Right heart failure',
      'Severe LV failure'
    ],
    correctAnswerIndex: 3,
    explanation: 'High opioid → hypoventilation → hypercapnia → ↑ RV strain.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_017',
    question: 'Which drug can ↑ pulmonary vascular resistance (avoid in PH)?',
    options: [
      'Ketamine',
      'Propofol',
      'Midazolam',
      'Etomidate',
      'Fentanyl'
    ],
    correctAnswerIndex: 0,
    explanation: 'Ketamine → sympathomimetic → ↑ PVR.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_018',
    question: 'In which condition is preserving preload most critical?',
    options: [
      'Aortic regurgitation',
      'HOCM',
      'Mitral regurgitation',
      'Pulmonary embolism',
      'Sepsis'
    ],
    correctAnswerIndex: 1,
    explanation: 'In HOCM, ↓ preload → worsens obstruction.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_019',
    question: 'What must be avoided in mitral stenosis?',
    options: [
      'Sinus rhythm',
      'Increasing preload',
      'Atrial fibrillation',
      'Stable HR',
      'Normocapnia'
    ],
    correctAnswerIndex: 2,
    explanation: 'MS patients rely on atrial contraction → AF → pulmonary congestion.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_020',
    question: 'Most likely cardiac complication during anesthesia in pulmonary hypertension?',
    options: [
      'VF',
      'Atrial flutter',
      'Right heart failure',
      'Left heart failure',
      'QT prolongation'
    ],
    correctAnswerIndex: 2,
    explanation: 'PH ↑ RV afterload → RV failure.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_021',
    question: 'Effect of calcium channel blockers perioperatively?',
    options: [
      'Hypertension',
      'Bradycardia & hypotension',
      'Hypokalemia',
      'Increased HR',
      'Increased LV contractility'
    ],
    correctAnswerIndex: 1,
    explanation: 'CCBs → negative inotropy + chronotropy.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_022',
    question: 'Best anesthetic approach in severe mitral regurgitation?',
    options: [
      'Decrease preload',
      'Increase afterload',
      'Lower HR',
      'Keep HR moderate-high',
      'Use depressant agents'
    ],
    correctAnswerIndex: 3,
    explanation: 'MR → keep afterload low, HR moderate-high.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_023',
    question: 'First drug for bradycardia after anesthesia in β-blocker patient?',
    options: [
      'Propranolol',
      'Dopamine',
      'Furosemide',
      'Atropine',
      'Verapamil'
    ],
    correctAnswerIndex: 3,
    explanation: 'Atropine = first-line vagolytic.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_024',
    question: 'Why is tachycardia dangerous in MS during intubation?',
    options: [
      '↑ SVR',
      'Longer diastole',
      'Shortened diastole',
      '↑ Afterload',
      '↓ O₂ consumption'
    ],
    correctAnswerIndex: 2,
    explanation: 'MS patients depend on diastolic filling; tachycardia shortens it → congestion.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_025',
    question: 'Key induction parameter in AS anesthesia?',
    options: [
      'Arrhythmia control',
      'HR',
      'Preserve SVR',
      'Urine output',
      'Fluid restriction'
    ],
    correctAnswerIndex: 2,
    explanation: 'In AS, SVR must be preserved for coronary perfusion.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_026',
    question: 'Which lowers CO but raises SVR?',
    options: [
      'Sepsis',
      'Hypovolemia',
      'Cardiogenic shock',
      'Anemia',
      'Aortic regurgitation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Pump failure → ↓ CO, ↑ SVR (compensatory).',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_027',
    question: 'EKG finding suggestive of digitalis toxicity pre-cardiac surgery?',
    options: [
      'ST elevation',
      'T inversion',
      'PR prolongation + atrial tachyarrhythmia',
      'Short QT',
      'U wave'
    ],
    correctAnswerIndex: 2,
    explanation: 'Digoxin → PR prolongation, PVCs, atrial tachyarrhythmias, AV block.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_028',
    question: 'Why are hypertensive patients more sensitive to anesthesia?',
    options: [
      '↑ Baroreceptor sensitivity',
      '↑ CO',
      'Sympathetic inhibition',
      'Impaired baroreceptor response',
      '↑ Vagal tone'
    ],
    correctAnswerIndex: 3,
    explanation: 'Chronic HTN → baroreceptor dysfunction → hemodynamic instability.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_029',
    question: 'Which antihypertensive should NOT be continued perioperatively?',
    options: [
      'Beta-blocker',
      'Calcium channel blocker',
      'ACE inhibitor',
      'Alpha-blocker',
      'Diuretic'
    ],
    correctAnswerIndex: 2,
    explanation: 'ACE inhibitors → refractory hypotension → usually withheld.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_030',
    question: 'Early CABG complication?',
    options: [
      'Hyponatremia',
      'Atrial fibrillation',
      'Pulmonary fibrosis',
      'Hypercalcemia',
      'ICH'
    ],
    correctAnswerIndex: 1,
    explanation: 'AF is the most common arrhythmia post-CABG.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_031',
    question: 'Which anesthetic effect worsens coronary perfusion?',
    options: [
      'Normocapnia',
      '↓ Diastolic BP',
      'Mildly lower HR',
      'Optimized afterload',
      'Slightly ↑ preload'
    ],
    correctAnswerIndex: 1,
    explanation: 'Coronary perfusion depends on diastolic pressure; low DBP → ↓ perfusion.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_032',
    question: 'First-choice agent for refractory bradycardia + hypotension in β-blocker patient?',
    options: [
      'Epinephrine',
      'Norepinephrine',
      'Glucagon',
      'Verapamil',
      'Furosemide'
    ],
    correctAnswerIndex: 2,
    explanation: 'Glucagon works via cAMP independently of β-receptors.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_033',
    question: 'Strategy for aortic regurgitation anesthesia?',
    options: [
      'High SVR',
      'Low HR',
      'High HR',
      'Hypovolemia',
      'Arrhythmia induction'
    ],
    correctAnswerIndex: 2,
    explanation: 'AR → keep HR high → less diastolic regurgitation.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_034',
    question: 'Optimal timing for elective surgery after acute MI?',
    options: [
      '1 week',
      '2 weeks',
      '4 weeks',
      '6 weeks',
      '8 hours'
    ],
    correctAnswerIndex: 3,
    explanation: 'Elective surgery delayed ≥6 weeks post-MI.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_035',
    question: 'Inotrope of choice in cardiogenic shock?',
    options: [
      'Esmolol',
      'Furosemide',
      'Dobutamine',
      'Diltiazem',
      'Verapamil'
    ],
    correctAnswerIndex: 2,
    explanation: 'Dobutamine = β1 agonist → ↑ contractility.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_036',
    question: 'First step before elective surgery in stable angina?',
    options: [
      'Coronary angiography',
      'Start beta-blocker',
      'ECG + functional capacity',
      'Cardiac MRI',
      'Holter monitor'
    ],
    correctAnswerIndex: 2,
    explanation: 'Initial step = ECG & METs functional capacity.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_037',
    question: 'In preop AF patient, what is the most important evaluation?',
    options: [
      'HR control',
      'TSH',
      'ECG monitoring',
      'Thromboembolism risk (CHA₂DS₂-VASc)',
      'Electrolytes'
    ],
    correctAnswerIndex: 3,
    explanation: 'Assess thromboembolic risk perioperatively.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_038',
    question: 'PCI + stent patient requiring surgery: antiplatelet strategy?',
    options: [
      'Stop clopidogrel, continue aspirin',
      'Stop aspirin, start LMWH',
      'Continue ASA + clopidogrel',
      'Stop both',
      'Continue clopidogrel only'
    ],
    correctAnswerIndex: 0,
    explanation: 'If surgery unavoidable → stop clopidogrel, keep aspirin if possible.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_039',
    question: 'Pacemaker patient with electrocautery planned: best precaution?',
    options: [
      'Continue without change',
      'Keep probe near heart',
      'Prefer bipolar cautery',
      'Remove pacemaker',
      'Use high voltage'
    ],
    correctAnswerIndex: 2,
    explanation: 'Bipolar cautery safer than monopolar (less EMI).',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_040',
    question: 'Key anesthetic target in severe aortic stenosis?',
    options: [
      'Lower HR',
      'Decrease SVR',
      'Increase CO',
      'Maintain afterload',
      'Reduce preload'
    ],
    correctAnswerIndex: 3,
    explanation: 'AS patients must maintain SVR for perfusion.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_041',
    question: 'In patients with cardiomyopathy, which parameter is most critical during anesthesia?',
    options: [
      'Oxygen saturation',
      'Respiratory rate',
      'Arterial blood pressure',
      'Heart rate and contractility',
      'Hematocrit'
    ],
    correctAnswerIndex: 3,
    explanation: 'HR and contractility are the most important factors in cardiomyopathy patients.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_042',
    question: 'In a perioperative heart failure patient requiring vasodilator therapy, which is preferred?',
    options: [
      'Epinephrine',
      'Phenylephrine',
      'Nitroglycerin',
      'Atropine',
      'Dobutamine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Nitroglycerin reduces preload and alleviates CHF symptoms.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_043',
    question: 'Which is the most dangerous intraoperative trigger in pulmonary hypertension?',
    options: [
      'Oxygen administration',
      'Hyperventilation',
      'Hypoxemia',
      'Analgesia',
      'Isoflurane'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypoxemia → ↑ pulmonary vascular resistance → ↑ RV load.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_044',
    question: 'Most appropriate anesthetic technique for a patient with heart failure?',
    options: [
      'General anesthesia',
      'High-dose spinal',
      'Combined spinal-epidural',
      'Deep sedation',
      'High-dose propofol TIVA'
    ],
    correctAnswerIndex: 2,
    explanation: 'Techniques with controlled titration (e.g., epidural) provide better hemodynamic stability.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_045',
    question: 'Surgical approach in early period after CABG?',
    options: [
      'Stop antiplatelets',
      'Surgery within 1 week',
      'Delay elective surgery 6 weeks',
      'Stop aspirin, start LMWH',
      'Stenting before surgery'
    ],
    correctAnswerIndex: 2,
    explanation: 'Surgery should be postponed ≥6 weeks post-CABG due to ischemia risk.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_046',
    question: 'In severe MR during ventilation, which must be avoided?',
    options: [
      'Hyperventilation',
      'Atelectasis',
      'Excessive PEEP',
      'Hypocapnia',
      'Suppression of spontaneous breathing'
    ],
    correctAnswerIndex: 2,
    explanation: 'Excessive PEEP ↑ LA pressure → pulmonary edema risk.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_047',
    question: 'During GA in aortic stenosis, which should be avoided?',
    options: [
      'Preserving HR',
      'Preserving preload',
      'Decreasing afterload',
      'Reducing O₂ consumption',
      'Maintaining sinus rhythm'
    ],
    correctAnswerIndex: 2,
    explanation: 'Afterload must not be reduced in AS → coronary perfusion must be maintained.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_048',
    question: 'In right heart failure, which premedication should be avoided?',
    options: [
      'Oxygen',
      'Benzodiazepine',
      'Anticholinergic',
      'Nitrates',
      'Fentanyl'
    ],
    correctAnswerIndex: 3,
    explanation: 'Nitrates ↓ preload → worsen RV filling.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_049',
    question: 'In severe mitral stenosis, which must be especially avoided intraoperatively?',
    options: [
      'Bradycardia',
      'Volume overload',
      'Vasodilation',
      'Tachycardia',
      'Increased SVR'
    ],
    correctAnswerIndex: 3,
    explanation: 'Tachycardia shortens diastole → ↑ LA pressure → pulmonary congestion.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_050',
    question: 'In acute heart failure, which hemodynamic parameter increases?',
    options: [
      'Cardiac output',
      'CVP',
      'PCWP',
      'HR',
      'SVR'
    ],
    correctAnswerIndex: 2,
    explanation: 'LV failure → ↑ PCWP → pulmonary congestion.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_051',
    question: 'Which agent should be avoided in cardiomyopathy under GA?',
    options: [
      'Etomidate',
      'Ketamine',
      'Sevoflurane',
      'Fentanyl',
      'Midazolam'
    ],
    correctAnswerIndex: 1,
    explanation: 'Ketamine ↑ sympathetic activity → ↑ myocardial workload.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_052',
    question: 'In CAD, what is the first step if tachycardia develops intraoperatively?',
    options: [
      'Fluid loading',
      'Deepen anesthesia',
      'Beta-blocker',
      'Antiarrhythmic',
      'Inotrope'
    ],
    correctAnswerIndex: 2,
    explanation: 'Tachycardia ↑ O₂ demand → beta-blocker preferred.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_053',
    question: 'In HOCM, which must be strictly avoided during anesthesia?',
    options: [
      'Hypotension',
      'Bradycardia',
      'Vasodilation',
      'Increased afterload',
      'Tachycardia'
    ],
    correctAnswerIndex: 4,
    explanation: 'Tachycardia → ↓ filling time → worsens obstruction.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_054',
    question: 'In AR, which anesthetic property is preferred?',
    options: [
      'Keep HR low',
      'Increase afterload',
      'Keep HR near normal',
      'Reduce preload',
      'Pro-arrhythmic agents'
    ],
    correctAnswerIndex: 2,
    explanation: 'In AR, HR should be near-normal; avoid bradycardia.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_055',
    question: 'Timing of surgery after PCI with stent placement?',
    options: [
      'Bare-metal stent → 2 weeks',
      'DES → 1 month',
      'Bare-metal stent → 4 weeks',
      'DES → 6 months',
      'DES → 12 months'
    ],
    correctAnswerIndex: 3,
    explanation: 'Surgery after DES should be delayed ≥6 months.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_056',
    question: 'First-line management in pulmonary edema with hypoxemia?',
    options: [
      'Fluid loading',
      'Diuretics',
      'Mechanical ventilation',
      'Non-invasive ventilation (CPAP/BiPAP)',
      'Change position'
    ],
    correctAnswerIndex: 3,
    explanation: 'NIV is first-line for pulmonary edema.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_057',
    question: 'In LV failure, elevated PCWP leads to?',
    options: [
      'Cerebral edema',
      'Pulmonary congestion',
      'Pericardial effusion',
      'Vasodilation',
      'Cardiac tamponade'
    ],
    correctAnswerIndex: 1,
    explanation: 'LV failure → ↑ wedge pressure → pulmonary congestion.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_058',
    question: 'Mechanism of peripheral edema in HF?',
    options: [
      '↑ Afterload',
      'Venous stasis & sodium retention',
      'Hyponatremia',
      'Vasodilation',
      'Hypovolemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Venous pressure ↑ + renal sodium retention → edema.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_059',
    question: 'Post-cardiac surgery, new-onset dyspnea suggests?',
    options: [
      'Bronchospasm',
      'Laryngospasm',
      'Pulmonary embolism',
      'Sinusitis',
      'Hypothermia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sudden dyspnea + desaturation → pulmonary embolism.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_060',
    question: 'In CAD, strongest periop ischemia risk factor?',
    options: [
      'Age >70',
      'Diabetes',
      'MI in last 6 months',
      'HTN',
      'Smoking'
    ],
    correctAnswerIndex: 2,
    explanation: 'Recent MI (<6 months) = highest risk.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_061',
    question: 'In AS, critical hemodynamic goal during induction?',
    options: [
      'Sinus rhythm',
      'Maintain SVR',
      'Low HR',
      'Reduce PA pressure',
      'High CO'
    ],
    correctAnswerIndex: 1,
    explanation: 'SVR must be maintained to ensure perfusion.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_062',
    question: 'Most specific sign of periop MI?',
    options: [
      'Chest pain',
      'ST elevation',
      'Troponin elevation',
      'Hypoxemia',
      'Tachycardia'
    ],
    correctAnswerIndex: 1,
    explanation: 'ST elevation = most specific, though troponin confirms diagnosis.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_063',
    question: 'In PH, which should be avoided intraop?',
    options: [
      'High FiO₂',
      'Hyperventilation',
      'Systemic hypotension',
      'Volatile agents',
      'Opioid-based anesthesia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Systemic hypotension → RV ischemia.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_064',
    question: 'Which is NOT first-line for periop AF?',
    options: [
      'Amiodarone',
      'Beta-blockers',
      'Calcium channel blockers',
      'Digoxin',
      'Lidocaine'
    ],
    correctAnswerIndex: 4,
    explanation: 'Lidocaine works on VT, not AF.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_065',
    question: 'Which is contraindicated in HOCM anesthesia?',
    options: [
      'Volatile anesthetics',
      'Inotropes (epinephrine)',
      'Epidural anesthesia',
      'Fluid restriction',
      'Beta-blockers'
    ],
    correctAnswerIndex: 1,
    explanation: 'Inotropes worsen LVOT obstruction.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_066',
    question: 'Which is NOT included in RCRI?',
    options: [
      'High-risk surgery',
      'CAD history',
      'CKD',
      'Diabetes',
      'LV dysfunction'
    ],
    correctAnswerIndex: 3,
    explanation: 'RCRI = high-risk surgery, CAD, CHF, CVA, Cr >2, insulin-dependent DM.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_067',
    question: 'In acute aortic dissection, key induction goal?',
    options: [
      'Rapid intubation',
      'Deep anesthesia',
      'Hemodynamic stability',
      'Neuromonitoring',
      'BP control'
    ],
    correctAnswerIndex: 2,
    explanation: 'Avoid BP swings → maintain stability.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_068',
    question: 'Earliest ECG sign of periop ischemia?',
    options: [
      'ST depression',
      'Troponin rise',
      'Tachycardia',
      'Hypoxemia',
      'AF'
    ],
    correctAnswerIndex: 0,
    explanation: 'ST depression = earliest marker of ischemia.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_069',
    question: 'In CAD, strongest periop ischemia risk factor?',
    options: [
      'Hypertension',
      'Diabetes',
      'MI in last 6 months',
      'Smoking',
      'Obesity'
    ],
    correctAnswerIndex: 2,
    explanation: 'Recent MI = highest reinfarction risk.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_070',
    question: 'In AS, most critical induction target?',
    options: [
      'Maintain sinus rhythm',
      'Preserve SVR',
      'Keep HR low',
      'Reduce PA pressure',
      'Maximize CO'
    ],
    correctAnswerIndex: 1,
    explanation: 'Sudden SVR drop → collapse.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_071',
    question: 'Which is contraindicated in PH anesthesia?',
    options: [
      'Optimized oxygenation',
      'High PEEP',
      'N₂O',
      'Dobutamine',
      'Pulmonary vasodilators'
    ],
    correctAnswerIndex: 2,
    explanation: 'N₂O ↑ PVR → RV failure.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_072',
    question: 'Which is NOT an ECG finding of periop ischemia?',
    options: [
      'ST elevation',
      'ST depression',
      'New bundle branch block',
      'QT prolongation',
      'T inversion'
    ],
    correctAnswerIndex: 3,
    explanation: 'QT prolongation = electrolyte/meds, not ischemia.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_073',
    question: 'Which is NOT a cardioprotective effect of statins periop?',
    options: [
      'Plaque stabilization',
      'Improved endothelial function',
      'Anti-inflammatory',
      'Platelet inhibition',
      'Bronchodilation'
    ],
    correctAnswerIndex: 4,
    explanation: 'Statins do not cause bronchodilation.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_074',
    question: 'In which valvular disease are vasodilators first-line?',
    options: [
      'AS',
      'MS',
      'AR',
      'MR',
      'HOCM'
    ],
    correctAnswerIndex: 2,
    explanation: 'Vasodilators ↓ regurgitant volume in AR.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_075',
    question: 'Which is NOT an indication for periop β-blocker?',
    options: [
      'CAD',
      'Controlled HTN',
      'Uncontrolled HF',
      'Preop tachycardia',
      'MI history'
    ],
    correctAnswerIndex: 2,
    explanation: 'β-blockers contraindicated in decompensated HF.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_076',
    question: 'In which case is spinal anesthesia relatively contraindicated?',
    options: [
      'AR',
      'MR',
      'AS',
      'HOCM',
      'ASD'
    ],
    correctAnswerIndex: 2,
    explanation: 'In AS, spinal-induced SVR drop → collapse.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_077',
    question: 'How long before elective surgery should warfarin be stopped?',
    options: [
      'Day of surgery',
      '1 day',
      '3–5 days',
      '1 week',
      'Not needed'
    ],
    correctAnswerIndex: 2,
    explanation: 'Stop 3–5 days prior → INR <1.5.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_cardiovascular_disease_078',
    question: 'When is N₂O absolutely contraindicated?',
    options: [
      'COPD',
      'Severe PH',
      'Diabetes',
      'Obesity',
      'HTN'
    ],
    correctAnswerIndex: 1,
    explanation: 'N₂O ↑ PVR → RV failure.',
    category: 'Anesthesia for Patients with Cardiovascular Disease',
    difficulty: 2
  ),
];
