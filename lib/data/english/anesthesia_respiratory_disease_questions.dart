import '../../models/question.dart';

List<Question> anesthesiaRespiratoryDiseaseQuestions = [
  Question(
    id: 'anesthesia_respiratory_disease_001',
    question: 'Which factor increases the risk of air trapping during anesthesia in a patient with COPD?',
    options: [
      'High tidal volume',
      'Long expiratory time',
      'Low respiratory rate',
      'Rapid ventilation (high frequency)',
      'Application of PEEP'
    ],
    correctAnswerIndex: 3,
    explanation: 'In COPD, expiration is prolonged. Rapid breathing initiates a new inspiration before full expiration → air trapping occurs.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_002',
    question: 'Which inhalation anesthetic is contraindicated during an asthma attack?',
    options: [
      'Sevoflurane',
      'Desflurane',
      'Halothane',
      'Isoflurane',
      'Nitrous oxide'
    ],
    correctAnswerIndex: 1,
    explanation: 'Desflurane is irritating and may trigger bronchospasm in asthmatics.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_003',
    question: 'What is the most effective first-line treatment for bronchospasm in an asthmatic patient?',
    options: [
      'Antibiotics',
      'Beta blockers',
      'Beta-2 agonists (salbutamol)',
      'Anticholinergics',
      'Aminophylline'
    ],
    correctAnswerIndex: 2,
    explanation: 'Cause bronchodilation by relaxing airway smooth muscle → first choice in acute attacks.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_004',
    question: 'Which anesthetic choice is most appropriate for a patient with COPD?',
    options: [
      'General anesthesia with high FiO₂',
      'Superficial sedation',
      'Spinal anesthesia',
      'Low-dose sedation/analgesia or regional anesthesia',
      'Deep inhalation anesthesia'
    ],
    correctAnswerIndex: 3,
    explanation: 'COPD patients are at risk of respiratory depression → careful sedation or regional preferred.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_005',
    question: 'During general anesthesia in pulmonary hypertension, which condition must be most avoided?',
    options: [
      'Normovolemia',
      'Hyperventilation',
      'Hypoxia and hypercapnia',
      'Neuromuscular blockade',
      'PEEP application'
    ],
    correctAnswerIndex: 2,
    explanation: 'Both worsen pulmonary vasoconstriction → raise pulmonary artery pressure.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_006',
    question: 'In advanced restrictive lung disease, which intraoperative finding is most common?',
    options: [
      'Hypocapnia',
      'Increased compliance',
      'Increased tidal volume',
      'Rapid shallow breathing',
      'Air trapping'
    ],
    correctAnswerIndex: 3,
    explanation: 'Due to reduced compliance, patients adopt rapid shallow breathing with low TV.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_007',
    question: 'After pneumonectomy, which situation requires special attention during anesthesia?',
    options: [
      'High PEEP',
      'Low respiratory rate',
      'Supine position',
      'Volume loading',
      'One-lung ventilation'
    ],
    correctAnswerIndex: 0,
    explanation: 'May cause barotrauma and decreased venous return in the single remaining lung.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_008',
    question: 'Which disease shows the highest airway hyperreactivity?',
    options: [
      'COPD',
      'Bronchiectasis',
      'Pulmonary fibrosis',
      'Asthma',
      'Emphysema'
    ],
    correctAnswerIndex: 3,
    explanation: 'Asthma is defined by airway hyperreactivity.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_009',
    question: 'During one-lung ventilation (OLV), what is the most effective method to prevent hypoxemia?',
    options: [
      'Hyperventilation',
      'Increasing O₂ flow',
      'CPAP application',
      'N₂O use',
      'Lowering FiO₂'
    ],
    correctAnswerIndex: 2,
    explanation: 'Applying CPAP to the non-ventilated lung keeps alveoli open, improving oxygenation.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_010',
    question: 'Which parameter must be assessed preoperatively in obstructive lung disease?',
    options: [
      'Vital capacity',
      'Respiratory rate',
      'FEV₁/FVC ratio',
      'Hemoglobin level',
      'Heart rate'
    ],
    correctAnswerIndex: 2,
    explanation: 'Key measure of obstruction severity.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_011',
    question: 'Which factor increases the risk of complications during mechanical ventilation in obstructive lung disease?',
    options: [
      'Long expiration time',
      'Low tidal volume',
      'High respiratory rate',
      'Low FiO₂',
      'High inspiratory O₂ concentration'
    ],
    correctAnswerIndex: 2,
    explanation: 'Shortens expiration → air trapping → ↑ intrathoracic pressure.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_012',
    question: 'Which physiologic change is expected in interstitial lung disease (restrictive)?',
    options: [
      'Decreased FEV₁/FVC',
      'Increased total lung capacity',
      'Increased tidal volume',
      'Decreased diffusion capacity',
      'Increased airway reactivity'
    ],
    correctAnswerIndex: 3,
    explanation: 'Due to thickened alveolar-capillary membrane.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_013',
    question: 'What is the most common complication of one-lung ventilation?',
    options: [
      'Hypotension',
      'Hypoxemia',
      'Bradycardia',
      'Pneumothorax',
      'Acidosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'The non-ventilated lung continues perfusion → shunt → hypoxemia.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_014',
    question: 'Which ventilation strategy is commonly used in restrictive lung disease?',
    options: [
      'High TV, low rate',
      'High PEEP, low TV',
      'Low TV, high rate',
      'High-frequency oscillatory ventilation',
      'Spontaneous breathing'
    ],
    correctAnswerIndex: 2,
    explanation: 'More effective due to poor compliance.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_015',
    question: 'Which anesthetic agent has bronchodilator effects?',
    options: [
      'Ketamine',
      'Propofol',
      'Etomidate',
      'Desflurane',
      'Midazolam'
    ],
    correctAnswerIndex: 0,
    explanation: 'Relaxes bronchial smooth muscle → useful in reactive airways.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_016',
    question: 'Most common cause of mortality after lung resection?',
    options: [
      'Hemorrhage',
      'Hypoglycemia',
      'Bronchopleural fistula',
      'Respiratory failure',
      'Hypothermia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Respiratory failure is the most common cause of mortality after lung resection.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_017',
    question: 'Which position most impairs lung function in obese patients?',
    options: [
      'Lateral',
      'Semi-Fowler',
      'Trendelenburg',
      'Sitting',
      'Prone'
    ],
    correctAnswerIndex: 2,
    explanation: 'Diaphragm is displaced upward → FRC falls → atelectasis risk.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_018',
    question: 'Which induction agent is least likely to trigger bronchospasm in asthma?',
    options: [
      'Desflurane',
      'Sevoflurane',
      'Ketamine',
      'Thiopental',
      'Succinylcholine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ketamine has bronchodilator effects and is least likely to trigger bronchospasm in asthmatic patients.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_019',
    question: 'Which factor increases the risk of postoperative pulmonary complications (PPCs)?',
    options: [
      'Age <10',
      'Obesity',
      'Male sex',
      'Short surgery duration',
      'Left lateral position'
    ],
    correctAnswerIndex: 1,
    explanation: 'Obesity increases the risk of postoperative pulmonary complications.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_020',
    question: 'In preoperative COPD management, which statement is correct?',
    options: [
      'Quitting smoking 24h before is sufficient',
      'Steroids only for emergencies',
      'Bronchodilators should be stopped on surgery day',
      'Pulmonary physiotherapy not recommended',
      'Quitting smoking at least 8 weeks prior is beneficial'
    ],
    correctAnswerIndex: 4,
    explanation: 'Quitting smoking at least 8 weeks prior to surgery is beneficial for reducing perioperative complications.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_021',
    question: 'Which ventilation strategy carries highest risk for pneumothorax?',
    options: [
      'Low PEEP',
      'Low TV',
      'High inspiratory flow',
      'High PEEP',
      'Low rate'
    ],
    correctAnswerIndex: 3,
    explanation: 'High PEEP carries the highest risk for pneumothorax due to increased intrathoracic pressure.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_022',
    question: 'Main risk of general anesthesia in obstructive lung disease?',
    options: [
      'O₂ toxicity',
      'Hypoglycemia',
      'Air trapping and barotrauma',
      'Hypothermia',
      'Thrombocytopenia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Air trapping and barotrauma are the main risks of general anesthesia in obstructive lung disease.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_023',
    question: 'Critical measure in anesthesia for a patient with bronchopleural fistula?',
    options: [
      'High FiO₂',
      'LMA use',
      'One-lung ventilation',
      'Trendelenburg position',
      'Volatile anesthetics'
    ],
    correctAnswerIndex: 2,
    explanation: 'One-lung ventilation is critical in patients with bronchopleural fistula to prevent air leak.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_024',
    question: 'Which condition increases V/Q ratio?',
    options: [
      'Atelectasis',
      'Pulmonary embolism',
      'Pulmonary fibrosis',
      'Asthma',
      'Emphysema'
    ],
    correctAnswerIndex: 1,
    explanation: 'Pulmonary embolism increases V/Q ratio by reducing perfusion while maintaining ventilation.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_025',
    question: 'First-line support for hypoxemic respiratory failure?',
    options: [
      'O₂ only',
      'CPAP or BiPAP',
      'Hyperventilation',
      'Spinal anesthesia',
      'Inhaled nitric oxide'
    ],
    correctAnswerIndex: 1,
    explanation: 'CPAP or BiPAP is first-line support for hypoxemic respiratory failure.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_026',
    question: 'Which single parameter predicts high postop risk after lung resection?',
    options: [
      'Vital capacity',
      'PaCO₂',
      'FEV₁ <40%',
      'SaO₂ >94%',
      'DLCO >70%'
    ],
    correctAnswerIndex: 2,
    explanation: 'FEV₁ <40% predicts high postoperative risk after lung resection.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_027',
    question: 'Which causes auto-PEEP in obstructive disease?',
    options: [
      'Low rate',
      'High TV',
      'Insufficient expiratory time',
      'Long inspiration',
      'NO therapy'
    ],
    correctAnswerIndex: 2,
    explanation: 'Insufficient expiratory time causes auto-PEEP in obstructive disease.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_028',
    question: 'Which surgery has the lowest PPC risk?',
    options: [
      'AAA repair',
      'Laparoscopic cholecystectomy',
      'Open colectomy',
      'Thoracotomy',
      'Esophagectomy'
    ],
    correctAnswerIndex: 1,
    explanation: 'Laparoscopic cholecystectomy has the lowest postoperative pulmonary complication risk.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_029',
    question: 'Which must be avoided intraoperatively in pulmonary hypertension?',
    options: [
      'Increased anesthesia depth',
      'Maintaining normocapnia',
      'Hypoventilation',
      'Mild vasodilation',
      'IV fluids'
    ],
    correctAnswerIndex: 2,
    explanation: 'Hypoventilation must be avoided intraoperatively in pulmonary hypertension as it worsens pulmonary vasoconstriction.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_030',
    question: 'Most important pre-op preparation in bronchiectasis?',
    options: [
      'Laxatives',
      'Anticoagulants',
      'Steroids',
      'Clearance of secretions',
      'Special diet'
    ],
    correctAnswerIndex: 3,
    explanation: 'Clearance of secretions is the most important preoperative preparation in bronchiectasis.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_031',
    question: 'Best indicator of ventilation after lung resection?',
    options: [
      'PaCO₂',
      'SpO₂',
      'TV',
      'pH',
      'RR'
    ],
    correctAnswerIndex: 0,
    explanation: 'PaCO₂ is the best indicator of ventilation after lung resection.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_032',
    question: 'Which parameter is decreased in restrictive disease?',
    options: [
      'FEV₁/FVC ratio',
      'TLC',
      'PaCO₂',
      'IRV',
      'HCO₃'
    ],
    correctAnswerIndex: 1,
    explanation: 'Total lung capacity (TLC) is decreased in restrictive disease.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_033',
    question: 'Best pre-op step to reduce complications in COPD?',
    options: [
      '100% O₂ ventilation',
      'Deep sedation',
      'Continue smoking',
      'Bronchodilators',
      'High-dose steroids'
    ],
    correctAnswerIndex: 3,
    explanation: 'Bronchodilators are the best preoperative step to reduce complications in COPD.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_034',
    question: 'Earliest sign of intra-op bronchospasm in asthma?',
    options: [
      'Hypotension',
      '↑ ETCO₂',
      '↓ Breath sounds',
      'Bradycardia',
      '↑ SpO₂'
    ],
    correctAnswerIndex: 2,
    explanation: 'Decreased breath sounds is the earliest sign of intraoperative bronchospasm in asthma.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_035',
    question: 'Most effective in preventing postop atelectasis?',
    options: [
      'Low sedation',
      'Early mobilization & breathing exercises',
      'High FiO₂',
      'NO inhalation',
      'Longer NPO'
    ],
    correctAnswerIndex: 1,
    explanation: 'Early mobilization and breathing exercises help open alveoli and prevent atelectasis.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_036',
    question: 'Key point in O₂ therapy in chronic hypercapnia?',
    options: [
      'Give high dose O₂',
      'Stop O₂',
      'FiO₂ titrated to PaCO₂',
      'Excess O₂ may depress ventilation',
      'No effect'
    ],
    correctAnswerIndex: 3,
    explanation: 'In chronic hypercapnia, ventilation may be driven by hypoxia; excessive O₂ can suppress this drive.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_037',
    question: 'First intervention if hypoxia develops during OLV?',
    options: [
      'CPAP to non-ventilated lung',
      'Increase PEEP',
      'Decrease FiO₂',
      'Give N₂O',
      'Supine positioning'
    ],
    correctAnswerIndex: 0,
    explanation: 'Applying CPAP to the non-ventilated lung keeps alveoli open, improving oxygenation.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_038',
    question: 'Most likely problem during anesthesia in pulmonary fibrosis?',
    options: [
      'Increased compliance',
      'Easy ventilation',
      'Hypoxia resistance',
      'Decreased diffusion capacity',
      'Low RR'
    ],
    correctAnswerIndex: 3,
    explanation: 'Pulmonary fibrosis thickens the alveolar-capillary membrane, impairing gas exchange.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_039',
    question: 'Which is a contraindication to early extubation post-surgery in lung disease?',
    options: [
      'pH 7.38',
      'PaCO₂ 52 mmHg',
      'Vital capacity 9 mL/kg',
      'SpO₂ 94%',
      'SaO₂ 96%'
    ],
    correctAnswerIndex: 2,
    explanation: 'VC <15 mL/kg indicates weak respiratory muscles → unsafe for early extubation.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_040',
    question: 'Which test is most strongly linked to mortality after lung resection?',
    options: [
      'SpO₂',
      'FEV₁',
      'DLCO',
      'Hb',
      'PaCO₂'
    ],
    correctAnswerIndex: 2,
    explanation: 'DLCO (diffusion capacity) is most strongly linked to mortality after lung resection.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_041',
    question: 'Which condition shows hypoxemia with normal or low PaCO₂?',
    options: [
      'Diffusion defect',
      'Pulmonary embolism',
      'Atelectasis',
      'Bronchospasm',
      'Respiratory acidosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Pulmonary embolism reduces perfusion but ventilation continues → hypoxemia with normal/low PaCO₂.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_042',
    question: 'Which is NOT a harmful effect of high FiO₂ in pulmonary disease?',
    options: [
      'Absorption atelectasis',
      'Free radical formation',
      'Hypoventilation',
      'Hypercapnia',
      'Cerebral edema'
    ],
    correctAnswerIndex: 4,
    explanation: 'High FiO₂ can cause absorption atelectasis, free radical formation, hypoventilation, and hypercapnia, but not directly cerebral edema.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_043',
    question: 'Which premedication agent is safe in asthma?',
    options: [
      'Antihistamines',
      'Lithium',
      'Beta blockers',
      'Midazolam',
      'Aspirin'
    ],
    correctAnswerIndex: 3,
    explanation: 'Midazolam is sedative and anxiolytic, does not release histamine or trigger bronchospasm.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_044',
    question: 'What is the most important intraoperative risk in a patient with pulmonary hypertension?',
    options: [
      'Atelectasis',
      'Pulmonary edema',
      'Right heart failure',
      'Hyperventilation',
      'Hypocapnia'
    ],
    correctAnswerIndex: 2,
    explanation: 'In pulmonary hypertension, the right ventricle is overloaded, leading to possible failure.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_045',
    question: 'What is the risk of administering high FiO₂ in a patient with COPD?',
    options: [
      'Hyperventilation',
      'Bronchospasm',
      'Suppression of ventilatory drive',
      'Decrease in hemoglobin',
      'Hypocapnia'
    ],
    correctAnswerIndex: 2,
    explanation: 'COPD patients may rely on hypoxic drive; high FiO₂ suppresses this mechanism.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_046',
    question: 'What is the first step in treating intraoperative bronchospasm in an asthmatic patient?',
    options: [
      'Intubation',
      'Discontinuation of inhalation anesthetics',
      'Administration of beta-agonist inhaler',
      'Starting antibiotics',
      'Increasing PEEP'
    ],
    correctAnswerIndex: 2,
    explanation: 'First-line therapy is beta-agonist inhaler (e.g., salbutamol).',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_047',
    question: 'Which agent is preferred if hypotension develops in a patient with pulmonary hypertension?',
    options: [
      'Norepinephrine',
      'Dobutamine',
      'Epinephrine',
      'Nitroprusside',
      'Phenylephrine'
    ],
    correctAnswerIndex: 0,
    explanation: 'Norepinephrine increases systemic vascular resistance with minimal effect on pulmonary pressure.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_048',
    question: 'What is the purpose of perioperative steroid therapy in asthma?',
    options: [
      'Provide bronchodilation',
      'Increase mucus secretion',
      'Correct hypotension',
      'Suppress inflammation',
      'Cause vasodilation'
    ],
    correctAnswerIndex: 3,
    explanation: 'Steroids suppress inflammation in asthma.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_049',
    question: 'What is the most common ventilatory problem during anesthesia in emphysema?',
    options: [
      'Hypoexpansion',
      'Volume loss',
      'Air trapping',
      'Inspiratory failure',
      'Pulmonary embolism'
    ],
    correctAnswerIndex: 2,
    explanation: 'Enlarged alveoli with loss of elasticity → impaired expiration → air trapping.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_050',
    question: 'Which should be avoided in postoperative oxygen therapy for COPD?',
    options: [
      'Low-flow O₂',
      'High FiO₂',
      'Intermittent positive-pressure ventilation',
      'SpO₂ monitoring',
      'Nasal cannula use'
    ],
    correctAnswerIndex: 1,
    explanation: 'High FiO₂ may increase CO₂ retention and suppress hypoxic drive.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_051',
    question: 'After an asthma attack, how long should elective surgery be postponed?',
    options: [
      '24 h',
      '48 h',
      '1 week',
      '2 weeks',
      'Immediately after the attack'
    ],
    correctAnswerIndex: 3,
    explanation: 'Elective surgery should be postponed for 2 weeks after an asthma attack.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_052',
    question: 'Which factor most increases postoperative complication risk in COPD?',
    options: [
      'Male sex',
      'SpO₂ >95%',
      'FEV₁ <50%',
      'Increased IRV',
      'Low hemoglobin'
    ],
    correctAnswerIndex: 2,
    explanation: 'FEV₁ <50% most increases postoperative complication risk in COPD.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_053',
    question: 'What is the first step if wheezing is heard after intubation in asthma?',
    options: [
      'Terminate anesthesia',
      'Administer salbutamol inhalation',
      'Give fluids',
      'Reverse neuromuscular block',
      'Administer furosemide'
    ],
    correctAnswerIndex: 1,
    explanation: 'First step is to administer salbutamol inhalation.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_054',
    question: 'Which should NOT be recommended intraoperatively to prevent lung complications in interstitial lung disease?',
    options: [
      'Avoid high FiO₂',
      'Use low tidal volume',
      'Apply high PEEP',
      'Limited recruitment maneuvers',
      'Lung-protective ventilation'
    ],
    correctAnswerIndex: 2,
    explanation: 'High PEEP should not be recommended in interstitial lung disease as it may worsen lung injury.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_055',
    question: 'Which drug should be given before induction to reduce bronchospasm risk in asthma?',
    options: [
      'Beta blocker',
      'Anticholinergic',
      'Antibiotic',
      'Diuretic',
      'Leukotriene inhibitor'
    ],
    correctAnswerIndex: 1,
    explanation: 'Anticholinergic drugs reduce bronchospasm risk in asthma.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_056',
    question: 'Best induction agent for general anesthesia in pulmonary hypertension?',
    options: [
      'Propofol',
      'Ketamine',
      'Etomidate',
      'Midazolam',
      'Thiopental'
    ],
    correctAnswerIndex: 2,
    explanation: 'Etomidate provides hemodynamic stability and minimal effect on pulmonary pressure.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_057',
    question: 'Which agent provides sedation without significant respiratory depression in asthma?',
    options: [
      'Diazepam',
      'Morphine',
      'Fentanyl',
      'Ketamine',
      'Dexmedetomidine'
    ],
    correctAnswerIndex: 4,
    explanation: 'Dexmedetomidine provides sedation with minimal respiratory depression.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_058',
    question: 'What is the key principle in postoperative O₂ therapy in interstitial lung disease?',
    options: [
      'Target 100% saturation',
      'Keep FiO₂ high',
      'Prevent hypercapnia',
      'Titrate O₂ administration',
      'Deliver O₂ via mask'
    ],
    correctAnswerIndex: 3,
    explanation: 'Oxygen should be titrated carefully in interstitial lung disease to avoid oxygen toxicity.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_059',
    question: 'Which anesthesia technique reduces aspiration risk in asthma?',
    options: [
      'Rapid sequence induction',
      'Spinal anesthesia',
      'High-dose opioids',
      'N₂O use',
      'Deep anesthesia with intubation'
    ],
    correctAnswerIndex: 0,
    explanation: 'Rapid sequence induction reduces aspiration risk in asthma.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_060',
    question: 'Which is the most undesirable intraoperative condition in pulmonary hypertension?',
    options: [
      'Hypotension',
      'Hypercapnia',
      'Bradycardia',
      'Hypoxia',
      'Hypocapnia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hypoxia is most undesirable as it worsens pulmonary vasoconstriction.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_061',
    question: 'Most likely cause of postoperative hypercapnia in COPD?',
    options: [
      'High FiO₂',
      'Increased tidal volume',
      'Hyperventilation',
      'High PEEP',
      'Increased hematocrit'
    ],
    correctAnswerIndex: 0,
    explanation: 'High FiO₂ suppresses hypoxic drive in COPD patients, leading to hypercapnia.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_062',
    question: 'Which factor most triggers right heart failure postoperatively in pulmonary hypertension?',
    options: [
      'Hypoxemia',
      'Hypervolemia',
      'Hypoglycemia',
      'Hypothermia',
      'Hypocapnia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Hypoxemia triggers pulmonary vasoconstriction and right heart failure.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_063',
    question: 'Best indicator of airway obstruction in COPD?',
    options: [
      'FVC',
      'FEV₁/FVC ratio',
      'PaO₂',
      'PEF',
      'TLC'
    ],
    correctAnswerIndex: 1,
    explanation: 'FEV₁/FVC ratio is the best indicator of airway obstruction in COPD.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_064',
    question: 'Best tube type for intubation in COPD?',
    options: [
      'Uncuffed tube',
      'Double-lumen tube',
      'Subglottic suction tube',
      'Standard ETT',
      'Nasotracheal tube'
    ],
    correctAnswerIndex: 2,
    explanation: 'Subglottic suction tube helps prevent postoperative complications in COPD.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_065',
    question: 'Likely complication of high PEEP in COPD?',
    options: [
      'Hypoxemia',
      'Hypocapnia',
      'Barotrauma',
      'Atelectasis',
      'Bronchospasm'
    ],
    correctAnswerIndex: 2,
    explanation: 'High PEEP can cause barotrauma in COPD patients due to air trapping.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_066',
    question: 'If wheezing persists after intubation in asthma, which agent should be added?',
    options: [
      'Salbutamol',
      'Isoflurane',
      'Ipratropium bromide',
      'Theophylline',
      'Ketamine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ipratropium bromide can be added to beta-agonists for persistent bronchospasm.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_067',
    question: 'If bronchospasm does not respond to inhaler therapy, second-line treatment is?',
    options: [
      'Antibiotics',
      'Dexamethasone',
      'Halothane',
      'Dobutamine',
      'Adenosine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Corticosteroids (dexamethasone) are second-line treatment for refractory bronchospasm.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_068',
    question: 'What complication may occur due to increased intrathoracic pressure in COPD?',
    options: [
      'Atelectasis',
      'Hypoxemia',
      'Hypotension',
      'Hypervolemia',
      'Pulmonary embolism'
    ],
    correctAnswerIndex: 2,
    explanation: 'Increased intrathoracic pressure can decrease venous return and cause hypotension.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_069',
    question: 'Which intraoperative parameter must be carefully monitored in pulmonary hypertension?',
    options: [
      'Heart rate',
      'CVP',
      'Pulmonary artery pressure',
      'O₂ saturation',
      'PaCO₂'
    ],
    correctAnswerIndex: 2,
    explanation: 'Pulmonary artery pressure must be carefully monitored in pulmonary hypertension.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_070',
    question: 'Most effective agent for resolving bronchospasm after an asthma attack?',
    options: [
      'Epinephrine',
      'Theophylline',
      'Salbutamol',
      'Isoflurane',
      'Ketamine'
    ],
    correctAnswerIndex: 2,
    explanation: 'Salbutamol (beta-2 agonist) is most effective for resolving bronchospasm.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_071',
    question: 'Best method for postoperative analgesia in COPD?',
    options: [
      'IV opioid infusion',
      'Epidural analgesia',
      'Oral NSAID',
      'Local infiltration',
      'IM morphine'
    ],
    correctAnswerIndex: 1,
    explanation: 'Epidural analgesia provides effective pain relief with minimal respiratory depression.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_072',
    question: 'Most common respiratory complication after general anesthesia in COPD?',
    options: [
      'Pulmonary embolism',
      'Pneumothorax',
      'Bronchospasm',
      'Atelectasis',
      'Pulmonary edema'
    ],
    correctAnswerIndex: 3,
    explanation: 'Atelectasis is the most common respiratory complication after general anesthesia in COPD.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_073',
    question: 'Which lab finding is expected perioperatively in chronic bronchitis?',
    options: [
      'Polycythemia',
      'Microcytic anemia',
      'Thrombocytopenia',
      'Leukopenia',
      'Hyponatremia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Due to chronic hypoxia → secondary polycythemia.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_074',
    question: 'Which anesthesia technique is preferred in suspected pulmonary embolism?',
    options: [
      'Regional anesthesia',
      'General anesthesia',
      'High-dose opioid',
      'Inhalational anesthesia',
      'TIVA'
    ],
    correctAnswerIndex: 0,
    explanation: 'Avoid neuraxial (spinal/epidural) in anticoagulated patients; if GA used, heparinization must be managed carefully.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_075',
    question: 'Which is correct for emergency airway management in massive hemoptysis?',
    options: [
      'Double-lumen endotracheal tube',
      'Nasal intubation',
      'Laryngeal mask',
      'Face mask',
      'Tracheostomy'
    ],
    correctAnswerIndex: 0,
    explanation: 'To isolate bleeding lung (DLT or bronchial blocker).',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
  Question(
    id: 'anesthesia_respiratory_disease_076',
    question: 'Which is NOT used in pulmonary hypertension treatment?',
    options: [
      'Beta blockers',
      'Oxygen',
      'PDE-5 inhibitors (sildenafil)',
      'Prostacyclin analogs (epoprostenol)',
      'Endothelin receptor antagonists (bosentan)'
    ],
    correctAnswerIndex: 0,
    explanation: 'Beta blockers impair right ventricular function.',
    category: 'Anesthesia for Patients with Respiratory Disease',
    difficulty: 2
  ),
];