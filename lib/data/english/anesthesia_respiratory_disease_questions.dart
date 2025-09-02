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
];
