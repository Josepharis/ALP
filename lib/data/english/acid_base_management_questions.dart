import '../../models/question.dart';

List<Question> acidBaseManagementQuestions = [
  Question(
    id: 'acid_base_management_001',
    question: 'Which of the following is NOT one of the main buffer systems in acid–base balance?',
    options: [
      'Bicarbonate buffer system',
      'Hemoglobin buffer system',
      'Phosphate buffer system',
      'Protein buffer system',
      'Chloride buffer system'
    ],
    correctAnswerIndex: 4,
    explanation: 'Chloride ions can influence balance but are not considered a primary buffer system.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_002',
    question: 'What is the most common cause of metabolic alkalosis?',
    options: [
      'Vomiting or nasogastric drainage',
      'Diarrhea',
      'Ketoacidosis',
      'Renal failure',
      'Sepsis'
    ],
    correctAnswerIndex: 0,
    explanation: 'Loss of gastric acid (HCl) from vomiting or NG suction is the most common cause of metabolic alkalosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_003',
    question: 'Which of the following is a cause of normal anion gap metabolic acidosis?',
    options: [
      'Lactic acidosis',
      'Ketoacidosis',
      'Renal tubular acidosis',
      'Aspirin poisoning',
      'Methanol intoxication'
    ],
    correctAnswerIndex: 2,
    explanation: 'RTA leads to HCO₃⁻ loss; Cl⁻ rises to maintain electroneutrality, so AG remains normal → "hyperchloremic acidosis."',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_004',
    question: 'Delta anion gap calculation is used in the evaluation of which disorder?',
    options: [
      'Normal AG acidosis',
      'Respiratory alkalosis',
      'High AG metabolic acidosis + coexisting disorder',
      'Chronic hypercapnia',
      'Compensated metabolic alkalosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Delta AG helps identify mixed metabolic disorders in the presence of high AG acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_005',
    question: 'In which of the following conditions is the anion gap NOT increased?',
    options: [
      'Uremia',
      'Lactic acidosis',
      'Ketoacidosis',
      'Diarrhea',
      'Methanol poisoning'
    ],
    correctAnswerIndex: 3,
    explanation: 'Diarrhea causes HCO₃⁻ loss but AG remains normal due to compensatory rise in Cl⁻.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_006',
    question: 'Which of the following is a respiratory effect of alkalosis?',
    options: [
      'Respiratory arrest',
      'Compensatory hyperventilation',
      'Increased oxygen saturation',
      'Hypoventilation with hypercapnia',
      'Increased oxygen consumption'
    ],
    correctAnswerIndex: 3,
    explanation: 'In metabolic alkalosis, respiratory compensation = ↑ PaCO₂ by hypoventilation → hypercapnia develops.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_007',
    question: 'Which condition is most commonly associated with respiratory alkalosis?',
    options: [
      'Respiratory failure',
      'Slow breathing',
      'Sepsis',
      'Hyperkalemia',
      'Opiate use'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sepsis stimulates the respiratory center → hyperventilation → respiratory alkalosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_008',
    question: 'Which of the following does NOT cause an increase in base excess (BE)?',
    options: [
      'Metabolic alkalosis',
      'Hypokalemia',
      'Metabolic acidosis',
      'Volume contraction',
      'Diuretic use'
    ],
    correctAnswerIndex: 2,
    explanation: 'Metabolic acidosis produces a base deficit → negative BE.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_009',
    question: 'Which equation underlies the bicarbonate buffer system?',
    options: [
      'Gibbs–Donnan',
      'Henderson–Hasselbalch',
      'Starling equation',
      'Nernst potential',
      'Fick\'s law'
    ],
    correctAnswerIndex: 1,
    explanation: 'Henderson–Hasselbalch: pH = 6.1 + log([HCO₃⁻]/0.03×PaCO₂).',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_010',
    question: 'In which disorder is anion gap (AG) calculation most helpful diagnostically?',
    options: [
      'Metabolic alkalosis',
      'Respiratory acidosis',
      'Respiratory alkalosis',
      'Metabolic acidosis',
      'Hyperkalemia'
    ],
    correctAnswerIndex: 3,
    explanation: 'AG differentiates high AG vs. normal AG metabolic acidosis, important for diagnosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_011',
    question: 'In which situation may high AG metabolic acidosis coexist with normal or elevated bicarbonate?',
    options: [
      'RTA',
      'Methanol intoxication',
      'Early lactic acidosis',
      'Chronic diarrhea',
      'Volume contraction'
    ],
    correctAnswerIndex: 2,
    explanation: 'In early lactic acidosis, AG rises before significant HCO₃⁻ consumption, so bicarbonate may still appear normal.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_012',
    question: 'In which of the following should a mixed acid–base disorder be suspected?',
    options: [
      'High AG acidosis + normal AG acidosis',
      'Respiratory acidosis + metabolic alkalosis',
      'Pure metabolic acidosis',
      'Pure respiratory alkalosis',
      'Isolated positive base excess'
    ],
    correctAnswerIndex: 1,
    explanation: 'Example: COPD with CO₂ retention (respiratory acidosis) + diuretics (metabolic alkalosis).',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_013',
    question: 'When ΔAG/ΔHCO₃⁻ ratio >2, what should be suspected?',
    options: [
      'Pure metabolic acidosis',
      'Concomitant metabolic alkalosis',
      'Respiratory acidosis',
      'SIADH',
      'Hypokalemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'If ΔAG/ΔHCO₃⁻ >2, bicarbonate is higher than expected → metabolic alkalosis is present in addition to high AG acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_014',
    question: 'Which of the following enhances renal H⁺ excretion and helps correct acidosis?',
    options: [
      'Hyperkalemia',
      'Hypochloremia',
      'Aldosterone',
      'ADH',
      'Hypoalbuminemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'Aldosterone increases H⁺ secretion in collecting ducts → improves metabolic acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_015',
    question: 'Which is the best example of normal AG (hyperchloremic) metabolic acidosis?',
    options: [
      'Ketoacidosis',
      'Sepsis',
      'Lactic acidosis',
      'Type 1 RTA',
      'Methanol intoxication'
    ],
    correctAnswerIndex: 3,
    explanation: 'Distal RTA → bicarbonate loss + chloride retention → normal AG acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_016',
    question: 'High AG metabolic acidosis + hypokalemia is most likely seen in which situation?',
    options: [
      'Ketoacidosis',
      'Methanol intoxication',
      'Salicylate poisoning',
      'Diabetic ketoacidosis (during treatment)',
      'Hypochloremic alkalosis'
    ],
    correctAnswerIndex: 3,
    explanation: 'In DKA, initial K⁺ may be normal/high; after insulin therapy, K⁺ shifts into cells → hypokalemia develops.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_017',
    question: 'In metabolic acidosis, which finding may suggest the diagnosis despite normal pH?',
    options: [
      'High bicarbonate',
      'High PaCO₂',
      'High AG',
      'Normal PaCO₂',
      'Negative base excess'
    ],
    correctAnswerIndex: 2,
    explanation: 'High AG indicates early metabolic acidosis before pH drops significantly.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_018',
    question: 'What is a major cause of hypochloremic metabolic alkalosis?',
    options: [
      'Proximal RTA',
      'Gastric fluid loss',
      'Lactic acidosis',
      'Salicylate toxicity',
      'Uremia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Gastric secretions contain large amounts of HCl → loss (vomiting/NG suction) causes hypochloremic metabolic alkalosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_019',
    question: 'What is characteristic of chronic respiratory acidosis?',
    options: [
      'High PaCO₂, low HCO₃⁻',
      'High PaCO₂, high HCO₃⁻',
      'Low PaCO₂, low HCO₃⁻',
      'Normal pH, normal PaCO₂',
      'High pH, low HCO₃⁻'
    ],
    correctAnswerIndex: 1,
    explanation: 'In chronic respiratory acidosis, kidneys retain HCO₃⁻ → bicarbonate increases as compensation.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_020',
    question: 'Which electrolyte disorder commonly accompanies metabolic acidosis?',
    options: [
      'Hypokalemia',
      'Hyponatremia',
      'Hyperkalemia',
      'Hypocalcemia',
      'Hypomagnesemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'H⁺ enters cells while K⁺ exits → hyperkalemia develops.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_021',
    question: 'Which factor increases the serum anion gap?',
    options: [
      'Hypochloremia',
      'Lactic acid',
      'Potassium retention',
      'Hypoalbuminemia',
      'Hypocalcemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Lactate is an unmeasured anion → increases AG.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_022',
    question: 'In which condition is compensation inadequate?',
    options: [
      'Acute respiratory acidosis',
      'Chronic respiratory alkalosis',
      'Metabolic alkalosis',
      'Acute metabolic acidosis',
      'Chronic metabolic acidosis'
    ],
    correctAnswerIndex: 0,
    explanation: 'Renal compensation requires time → acute respiratory acidosis shows inadequate compensation.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_023',
    question: 'Which best explains how buffer systems work?',
    options: [
      'Acid binding to proteins',
      'H⁺ entry into cells',
      'Balance between weak acid and conjugate base',
      'HCO₃⁻ reabsorption',
      'Renal K⁺ excretion'
    ],
    correctAnswerIndex: 2,
    explanation: 'Buffer systems resist pH changes by equilibrium between weak acids and conjugate bases.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_024',
    question: 'In which case is bicarbonate administration NOT a priority despite low HCO₃⁻?',
    options: [
      'DKA',
      'Methanol poisoning',
      'Lactic acidosis',
      'RTA',
      'Well-perfused patient with low HCO₃⁻ but stable status'
    ],
    correctAnswerIndex: 4,
    explanation: 'Not all low bicarbonate levels require replacement; in stable, well-perfused patients, bicarbonate therapy may be unnecessary.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_025',
    question: 'What is the strongest evidence of a mixed acid–base disorder?',
    options: [
      'Normal pH',
      'HCO₃⁻ and PaCO₂ change in the same direction',
      'Values outside expected compensatory range',
      'Hypokalemia',
      'High anion gap'
    ],
    correctAnswerIndex: 2,
    explanation: 'Deviation from expected compensation suggests a mixed disorder.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_026',
    question: 'Which of the following describes the renal contribution to acid–base balance?',
    options: [
      'CO₂ hyperventilation',
      'H⁺ secretion and HCO₃⁻ reabsorption',
      'PaO₂ regulation',
      'Na⁺–K⁺ exchange',
      'ADH secretion'
    ],
    correctAnswerIndex: 1,
    explanation: 'The kidneys maintain acid-base balance by secreting H⁺ ions and reabsorbing HCO₃⁻ ions.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_027',
    question: 'What does the Winter\'s formula calculate?',
    options: [
      'Compensation in metabolic alkalosis',
      'Compensation in respiratory acidosis',
      'Expected PaCO₂ in metabolic acidosis',
      'Anion gap',
      'Serum osmolality'
    ],
    correctAnswerIndex: 2,
    explanation: 'Winter\'s formula: PaCO₂ = (1.5 × HCO₃⁻) + 8 ± 2 → predicts expected PaCO₂ in metabolic acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_028',
    question: 'What is the typical time course for renal compensation in respiratory disorders?',
    options: [
      'Immediate',
      'Within 1 hour',
      '6–12 hours',
      '24–48 hours',
      'Within minutes'
    ],
    correctAnswerIndex: 3,
    explanation: 'Renal compensation for respiratory acid-base disorders typically takes 24-48 hours to develop.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_029',
    question: 'A fall in pH of 0.1 units is associated with an approximate increase in serum potassium of how much?',
    options: [
      '0.1 mEq/L',
      '0.3 mEq/L',
      '0.6 mEq/L',
      '1.0 mEq/L',
      '2.0 mEq/L'
    ],
    correctAnswerIndex: 2,
    explanation: 'For every 0.1 unit decrease in pH, serum potassium increases by approximately 0.6 mEq/L.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_030',
    question: 'How does hypoalbuminemia affect the anion gap?',
    options: [
      'Increases it',
      'No effect',
      'Decreases it',
      'Only in lactic acidosis',
      'Causes acidosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Albumin is an unmeasured anion → low albumin reduces AG.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_031',
    question: 'What is the typical acid–base disturbance sequence in salicylate poisoning?',
    options: [
      'Respiratory alkalosis → metabolic acidosis',
      'Metabolic alkalosis → respiratory alkalosis',
      'Metabolic acidosis → respiratory acidosis',
      'Respiratory acidosis → metabolic alkalosis',
      'Metabolic acidosis → metabolic alkalosis'
    ],
    correctAnswerIndex: 0,
    explanation: 'Salicylate poisoning initially causes respiratory alkalosis (direct stimulation of respiratory center), followed by metabolic acidosis (uncoupling of oxidative phosphorylation).',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_032',
    question: 'Which factor helps maintain metabolic alkalosis?',
    options: [
      'Hypokalemia',
      'Hyperventilation',
      'Hyperchloremia',
      'Increased GFR',
      'Acidosis'
    ],
    correctAnswerIndex: 0,
    explanation: 'Hypokalemia promotes H⁺ secretion in exchange for K⁺ reabsorption, helping to maintain metabolic alkalosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_033',
    question: 'What is the fastest intervention to normalize pH in respiratory alkalosis?',
    options: [
      'Give bicarbonate',
      'Stop oxygen',
      'Slow down ventilation',
      'Administer albumin',
      'Start diuretics'
    ],
    correctAnswerIndex: 2,
    explanation: 'Reducing ventilation rate is the most direct way to correct respiratory alkalosis by allowing CO₂ to accumulate.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_034',
    question: 'Which is NOT an effect of acidosis in anesthesia practice?',
    options: [
      'Decreased catecholamine sensitivity',
      'Reduced cardiac contractility',
      'Respiratory center depression',
      'Increased sensitivity to muscle relaxants',
      'Increased arrhythmia risk'
    ],
    correctAnswerIndex: 2,
    explanation: 'Acidosis stimulates the respiratory center → hyperventilation occurs; it does not cause depression.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_035',
    question: 'In compensated metabolic acidosis, what deviation from Winter\'s formula PaCO₂ indicates an additional respiratory disorder?',
    options: [
      '±1 mmHg',
      '±2 mmHg',
      '±5 mmHg',
      '±10 mmHg',
      '±15 mmHg'
    ],
    correctAnswerIndex: 2,
    explanation: 'Winter\'s tolerance = ±2 mmHg → deviation >±5 mmHg suggests mixed disorder.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_036',
    question: 'Which finding suggests concomitant metabolic alkalosis in a patient with high AG metabolic acidosis?',
    options: [
      'HCO₃⁻ <10 mEq/L',
      'ΔAG/ΔHCO₃⁻ >2',
      'PaCO₂ >55 mmHg',
      'pH <7.10',
      'AG <12'
    ],
    correctAnswerIndex: 1,
    explanation: 'If ΔAG/ΔHCO₃⁻ >2, HCO₃⁻ is higher than expected → coexisting metabolic alkalosis is likely.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_037',
    question: 'Which of the following clinical scenarios suggests simultaneous high AG and normal AG metabolic acidosis?',
    options: [
      'Sepsis with diarrhea',
      'Vomiting with hypokalemia',
      'Lactic acidosis with respiratory alkalosis',
      'RTA with metabolic alkalosis',
      'Chronic obstructive pulmonary disease (COPD)'
    ],
    correctAnswerIndex: 0,
    explanation: 'Sepsis → lactic acidosis (high AG), diarrhea → hyperchloremic acidosis (normal AG) → mixed metabolic acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_038',
    question: 'Which pair of acid–base disorders can mask the pH when occurring together?',
    options: [
      'Metabolic acidosis + metabolic alkalosis',
      'Respiratory alkalosis + metabolic alkalosis',
      'Respiratory acidosis + respiratory alkalosis',
      'Metabolic acidosis + respiratory alkalosis',
      'Metabolic acidosis + respiratory acidosis'
    ],
    correctAnswerIndex: 0,
    explanation: 'Opposing metabolic disorders (acidosis + alkalosis) may normalize pH → masking the underlying imbalance.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_039',
    question: 'In a patient with albumin 2.0 g/dL, what adjustment should be made when calculating AG?',
    options: [
      'Add 2 to AG',
      'Subtract 2 from AG',
      'Add 2.5 to AG',
      'Add 4–6 to AG',
      'Add 0.25 × (4.0 - serum albumin) to AG'
    ],
    correctAnswerIndex: 4,
    explanation: 'For every 1 g/dL decrease in albumin, add ~2.5–3 mEq/L to AG → formula: AG + 0.25 × (4.0 – albumin).',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_040',
    question: 'Which system acts first to buffer when hydrogen ion concentration increases?',
    options: [
      'Renal bicarbonate buffer',
      'Hemoglobin buffer system',
      'Protein buffer system',
      'Phosphate buffer system',
      'Respiratory compensation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hemoglobin is a rapid and powerful buffer in blood and cells → quickly binds H⁺.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_041',
    question: 'Which is an important complication of alkalosis under anesthesia?',
    options: [
      'Respiratory stimulation',
      'Cerebral vasodilation',
      'Shortened duration of muscle relaxants',
      'Cerebral vasoconstriction with reduced seizure threshold',
      'Increased oxygen carrying capacity'
    ],
    correctAnswerIndex: 3,
    explanation: 'Alkalosis causes cerebral vasoconstriction → lowers seizure threshold and may cause altered consciousness.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_042',
    question: 'How is the anion gap calculated?',
    options: [
      'Na⁺ + K⁺ – (Cl⁻ + HCO₃⁻)',
      'Na⁺ – (Cl⁻ + HCO₃⁻)',
      'K⁺ – (Na⁺ + Cl⁻)',
      'Cl⁻ – (Na⁺ + HCO₃⁻)',
      'Na⁺ + HCO₃⁻ – Cl⁻'
    ],
    correctAnswerIndex: 1,
    explanation: 'Anion gap = Na⁺ – (Cl⁻ + HCO₃⁻); normal = 8–12 mEq/L.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_043',
    question: 'Which is the strongest buffer system?',
    options: [
      'Hemoglobin',
      'Bicarbonate',
      'Phosphate',
      'Plasma proteins',
      'Glutathione'
    ],
    correctAnswerIndex: 1,
    explanation: 'The bicarbonate buffer system is the fastest and most effective in acid–base regulation.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_044',
    question: 'Which is the strongest buffer system?',
    options: [
      'Hemoglobin',
      'Bicarbonate',
      'Phosphate',
      'Plasma proteins',
      'Glutathione'
    ],
    correctAnswerIndex: 1,
    explanation: 'The bicarbonate buffer system is the fastest and most effective in acid–base regulation.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_045',
    question: 'What is the renal response in metabolic acidosis?',
    options: [
      'HCO₃⁻ secretion',
      'H⁺ retention',
      'H⁺ secretion and NH₄⁺ excretion',
      'Na⁺ excretion',
      'Water retention'
    ],
    correctAnswerIndex: 2,
    explanation: 'Kidneys excrete H⁺, reabsorb HCO₃⁻, and generate NH₄⁺ in acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_046',
    question: 'What is Winter\'s formula used for?',
    options: [
      'Plasma osmolality calculation',
      'Anion gap calculation',
      'To calculate expected PaCO₂ in metabolic acidosis',
      'Chloride level evaluation',
      'Oxygen saturation evaluation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Winter\'s formula: Expected PaCO₂ = (1.5 × HCO₃⁻) + 8 ± 2; assesses adequacy of compensation in metabolic acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_047',
    question: 'Which condition commonly accompanies metabolic alkalosis?',
    options: [
      'Hypokalemia',
      'Hypocalcemia',
      'Hypernatremia',
      'Hypermagnesemia',
      'Hyperkalemia'
    ],
    correctAnswerIndex: 0,
    explanation: 'In alkalosis, K⁺ shifts into cells → serum hypokalemia occurs.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_048',
    question: 'Which is an absolute indication for bicarbonate therapy?',
    options: [
      'Mild acidosis in DKA (pH >7.20)',
      'Metabolic alkalosis',
      'Lactic acidosis',
      'Metabolic acidosis in shock',
      'Refractory acidosis with pH <7.10'
    ],
    correctAnswerIndex: 4,
    explanation: 'Bicarbonate is used in severe, life-threatening acidosis with pH <7.10.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_049',
    question: 'Which enzyme is essential in the bicarbonate buffer system?',
    options: [
      'Aldolase',
      'Carbonic anhydrase',
      'Amylase',
      'Phosphokinase',
      'Succinate dehydrogenase'
    ],
    correctAnswerIndex: 1,
    explanation: 'Carbonic anhydrase catalyzes H₂CO₃ ↔ H₂O + CO₂.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_050',
    question: 'If PaCO₂ falls more than expected in metabolic acidosis (per Winter\'s formula), what coexisting disorder is likely?',
    options: [
      'Respiratory alkalosis',
      'Respiratory acidosis',
      'Metabolic alkalosis',
      'Hypoxemia',
      'Hyperchloremia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Lower than expected PaCO₂ indicates additional respiratory alkalosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_051',
    question: 'Which of the following cannot be buffered by the bicarbonate system?',
    options: [
      'Lactic acid',
      'Ketoacids',
      'HCl',
      'CO₂-derived acid',
      'Sulfate'
    ],
    correctAnswerIndex: 3,
    explanation: 'CO₂ is part of the system itself → it cannot buffer itself.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_052',
    question: 'What is the purpose of the delta–delta (ΔΔ) method?',
    options: [
      'Measuring pH',
      'Assessing respiratory compensation',
      'Evaluating combined metabolic disorders',
      'Calculating serum osmolality',
      'Determining sodium balance'
    ],
    correctAnswerIndex: 2,
    explanation: 'ΔAG / ΔHCO₃⁻ helps detect additional metabolic disorders.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_053',
    question: 'In normal anion gap metabolic acidosis, which ion is elevated?',
    options: [
      'Na⁺',
      'K⁺',
      'Cl⁻',
      'HCO₃⁻',
      'Mg²⁺'
    ],
    correctAnswerIndex: 2,
    explanation: 'HCO₃⁻ loss is compensated by increased Cl⁻ → hyperchloremic acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_054',
    question: 'Which is a typical laboratory finding of ketoacidosis?',
    options: [
      'High HCO₃⁻',
      'Low PaCO₂',
      'Increased anion gap',
      'Increased pH',
      'Decreased serum ketones'
    ],
    correctAnswerIndex: 2,
    explanation: 'Ketoacids increase AG → high AG metabolic acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_055',
    question: 'In which condition does PaCO₂ NOT increase?',
    options: [
      'Hypoventilation',
      'Respiratory depression',
      'COPD',
      'Compensation for metabolic alkalosis',
      'Sepsis with hyperventilation'
    ],
    correctAnswerIndex: 4,
    explanation: 'Sepsis causes hyperventilation → PaCO₂ decreases.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_056',
    question: 'Hyperchloremic metabolic acidosis (↑ Cl⁻) is most associated with which condition?',
    options: [
      'Lactic acidosis',
      'DKA',
      'Renal tubular acidosis (RTA)',
      'Sepsis',
      'Aspirin poisoning'
    ],
    correctAnswerIndex: 2,
    explanation: 'RTA → HCO₃⁻ loss with compensatory Cl⁻ rise → hyperchloremic acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_057',
    question: 'Which of the following is the weakest component of buffer systems?',
    options: [
      'Hemoglobin',
      'Bicarbonate',
      'Protein',
      'Phosphate',
      'Glucose'
    ],
    correctAnswerIndex: 4,
    explanation: 'Glucose is not a component of physiological buffer systems.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_058',
    question: 'Which ion is increased during metabolic alkalosis?',
    options: [
      'H⁺',
      'K⁺',
      'Cl⁻',
      'HCO₃⁻',
      'Phosphate'
    ],
    correctAnswerIndex: 3,
    explanation: 'Metabolic alkalosis is characterized by elevated bicarbonate and increased pH.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_059',
    question: 'Which acid–base disorder is most likely in sepsis?',
    options: [
      'Metabolic alkalosis',
      'Respiratory alkalosis',
      'Lactic acidosis → metabolic acidosis',
      'Hypocapnia',
      'Hyperchloremic acidosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Sepsis → tissue hypoxia → anaerobic metabolism → lactic acid accumulation → high AG metabolic acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_060',
    question: 'What is the most common cause of normal AG metabolic acidosis?',
    options: [
      'DKA',
      'Lactic acidosis',
      'RTA',
      'Methanol poisoning',
      'Salicylate poisoning'
    ],
    correctAnswerIndex: 2,
    explanation: 'RTA causes HCO₃⁻ loss with Cl⁻ retention → normal AG acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_061',
    question: 'Which acid–base disorder occurs with salicylate poisoning?',
    options: [
      'Only metabolic acidosis',
      'Only respiratory alkalosis',
      'Combined: respiratory alkalosis + metabolic acidosis',
      'Only metabolic alkalosis',
      'Respiratory acidosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Salicylates first stimulate the medulla → respiratory alkalosis, later metabolic acidosis develops.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_062',
    question: 'How do the kidneys compensate in metabolic acidosis?',
    options: [
      'Secretion of HCO₃⁻',
      'Excretion of NH₄⁺ and reabsorption of HCO₃⁻',
      'Absorption of H⁺',
      'Excretion of K⁺',
      'Water retention'
    ],
    correctAnswerIndex: 1,
    explanation: 'H⁺ is excreted, HCO₃⁻ is reabsorbed, and NH₄⁺ production increases.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_063',
    question: 'In acidosis, albumin-bound calcium decreases and ionized calcium increases. What is the clinical effect?',
    options: [
      'Tetany',
      'Muscle weakness',
      'Hypotension',
      'Positive inotropy',
      'Hyporeflexia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Increased ionized calcium → enhanced myocardial contractility → positive inotropic effect.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_064',
    question: 'Which of the following is a cause of high anion gap metabolic acidosis?',
    options: [
      'Furosemide use',
      'Diarrhea',
      'Lactic acidosis',
      'Renal tubular acidosis (RTA)',
      'Hypoaldosteronism'
    ],
    correctAnswerIndex: 2,
    explanation: 'Lactate, ketones, and toxic acids increase the anion gap.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_065',
    question: 'After a panic attack with dizziness and paresthesia, which is the most likely finding?',
    options: [
      'Hypokalemia',
      'Respiratory alkalosis',
      'Hyponatremia',
      'Metabolic alkalosis',
      'Metabolic acidosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Anxiety → hyperventilation → ↓CO₂ → ↑pH → respiratory alkalosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_066',
    question: 'Which of the following are the primary regulators of acid–base balance?',
    options: [
      'Lungs',
      'Kidneys',
      'Liver',
      'A and B',
      'All'
    ],
    correctAnswerIndex: 3,
    explanation: 'Lungs (CO₂ elimination) and kidneys (HCO₃⁻ regulation) are the main regulators of acid–base balance.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_067',
    question: 'What is the most common cause of high anion gap metabolic acidosis?',
    options: [
      'Diarrhea',
      'Renal tubular acidosis',
      'Lactic acidosis',
      'Acetazolamide use',
      'Ureteroenteric anastomosis'
    ],
    correctAnswerIndex: 2,
    explanation: 'Lactic acidosis (type A/B), ketoacidosis, and toxins (e.g., methanol) are common causes of high AG metabolic acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_068',
    question: 'Which of the following is a cause of normal anion gap metabolic acidosis?',
    options: [
      'Methanol poisoning',
      'Diarrhea',
      'Uremia',
      'Ethylene glycol poisoning',
      'Alcoholic ketoacidosis'
    ],
    correctAnswerIndex: 1,
    explanation: 'Diarrhea (HCO₃⁻ loss) and RTA cause normal AG (hyperchloremic) metabolic acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_069',
    question: 'What is the expected respiratory compensation in metabolic acidosis?',
    options: [
      'PaCO₂ = 1.5 × HCO₃⁻ + 8 (±2)',
      'PaCO₂ = HCO₃⁻ + 15',
      'PaCO₂ = 40 - (24 - HCO₃⁻)',
      'PaCO₂ = HCO₃⁻ × 0.7',
      'No compensation'
    ],
    correctAnswerIndex: 0,
    explanation: 'Winter\'s formula: PaCO₂ = (1.5 × HCO₃⁻) + 8 ± 2. If PaCO₂ is higher, a concomitant respiratory acidosis is present.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_070',
    question: '"Chloride-sensitive" metabolic alkalosis is most commonly seen in which condition?',
    options: [
      'Primary hyperaldosteronism',
      'Cushing\'s syndrome',
      'Excessive vomiting',
      'Bartter syndrome',
      'Hypercortisolism'
    ],
    correctAnswerIndex: 2,
    explanation: 'Chloride-sensitive alkalosis (vomiting, NG suction) improves with NaCl infusion; chloride-resistant forms (e.g., hyperaldosteronism) do not.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_071',
    question: 'When does renal compensation begin in acute respiratory acidosis?',
    options: [
      '6–12 hours',
      '24–48 hours',
      'Immediately',
      '5–7 days',
      'No compensation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Renal HCO₃⁻ retention begins 24–48 hours after onset, reaching maximum in 3–5 days.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_072',
    question: 'What is the expected metabolic compensation in respiratory alkalosis?',
    options: [
      'HCO₃⁻ decreases by 2–4 mEq/L',
      'HCO₃⁻ decreases by 4–5 mEq/L',
      'HCO₃⁻ decreases by 5–7 mEq/L',
      'HCO₃⁻ remains unchanged',
      'HCO₃⁻ increases'
    ],
    correctAnswerIndex: 1,
    explanation: 'In acute respiratory alkalosis, HCO₃⁻ decreases 2–4 mEq/L; in chronic, 4–5 mEq/L.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_073',
    question: 'When is mixed acid–base disorder definitively diagnosed?',
    options: [
      'Normal pH with abnormal PaCO₂ and HCO₃⁻',
      'Values not fitting compensation rules',
      'Elevated anion gap',
      'Presence of hyperchloremic acidosis',
      'None'
    ],
    correctAnswerIndex: 1,
    explanation: 'If values fall outside expected compensatory ranges, a mixed disorder exists (e.g., metabolic acidosis + respiratory alkalosis).',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_074',
    question: 'What acid–base disorder is seen in chronic kidney disease?',
    options: [
      'High AG metabolic acidosis',
      'Normal AG metabolic acidosis',
      'Respiratory acidosis',
      'Metabolic alkalosis',
      'None'
    ],
    correctAnswerIndex: 0,
    explanation: 'Uremia causes high AG metabolic acidosis (due to phosphate, sulfate accumulation); hyperchloremic acidosis may also coexist.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_075',
    question: 'What is the mechanism of "uremic acidosis"?',
    options: [
      'HCO₃⁻ loss in proximal tubule',
      'Decreased NH₄⁺ excretion',
      'Lactate accumulation',
      'Ketoacid production',
      'None'
    ],
    correctAnswerIndex: 1,
    explanation: 'In uremia, reduced renal NH₄⁺ excretion leads to increased anion gap metabolic acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_076',
    question: 'Which acid–base disturbance may Ringer\'s lactate infusion cause?',
    options: [
      'Metabolic acidosis',
      'Metabolic alkalosis',
      'Respiratory acidosis',
      'Respiratory alkalosis',
      'None'
    ],
    correctAnswerIndex: 1,
    explanation: 'Ringer\'s lactate contains bicarbonate precursors; hepatic metabolism may cause mild alkalosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_077',
    question: 'Which condition represents a "triple disturbance"?',
    options: [
      'Metabolic acidosis + respiratory acidosis + metabolic alkalosis',
      'Respiratory acidosis + respiratory alkalosis + metabolic acidosis',
      'High AG + normal AG metabolic acidosis + respiratory alkalosis',
      'Hyperchloremic acidosis + lactic acidosis + uremic acidosis',
      'None'
    ],
    correctAnswerIndex: 0,
    explanation: 'Example: sepsis (metabolic acidosis) + COPD (respiratory acidosis) + vomiting (metabolic alkalosis).',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_078',
    question: 'Which is a cause of "salt-retaining" metabolic alkalosis?',
    options: [
      'Loop diuretics',
      'Primary hyperaldosteronism',
      'Vomiting',
      'Bartter syndrome',
      'None'
    ],
    correctAnswerIndex: 1,
    explanation: 'Excess mineralocorticoids (e.g., hyperaldosteronism, Cushing\'s) → sodium retention → chloride-resistant alkalosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_079',
    question: 'Which of the following is a feature of proximal RTA (Type 2)?',
    options: [
      'Urine pH >5.5',
      'Hypokalemia',
      'Hypouricemia',
      'Hypercalciuria',
      'All'
    ],
    correctAnswerIndex: 4,
    explanation: 'In proximal RTA, HCO₃⁻ reabsorption is impaired → urine pH >5.5, hypokalemia, Fanconi syndrome (glucose, phosphate, uric acid loss).',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_080',
    question: 'Which complication is associated with distal RTA (Type 1)?',
    options: [
      'Nephrocalcinosis',
      'Hypocitraturia',
      'Bone disease',
      'All',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'Distal RTA → chronic acidosis, hypercalciuria → nephrocalcinosis and bone disease risk.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_081',
    question: 'What is the expected metabolic compensation in chronic respiratory acidosis?',
    options: [
      'HCO₃⁻ increases by 1 mEq/L',
      'HCO₃⁻ increases by 3–4 mEq/L',
      'HCO₃⁻ decreases by 1 mEq/L',
      'HCO₃⁻ decreases by 4–5 mEq/L',
      'No change'
    ],
    correctAnswerIndex: 1,
    explanation: 'In chronic respiratory acidosis, HCO₃⁻ rises 3–4 mEq/L for every 10 mmHg increase in PaCO₂.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_082',
    question: 'When does "post-hypercapnic alkalosis" occur?',
    options: [
      'COPD patient on mechanical ventilation',
      'DKA treatment',
      'Excessive diuretic use',
      'Hyperaldosteronism',
      'None'
    ],
    correctAnswerIndex: 0,
    explanation: 'In chronic hypercapnia, rapid PaCO₂ correction leaves persistently high HCO₃⁻ → metabolic alkalosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_083',
    question: 'Which of the following causes lactic acidosis?',
    options: [
      'Sepsis',
      'Hypoperfusion',
      'Metformin toxicity',
      'All',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'Lactic acidosis causes: Type A (hypoxia/shock), Type B (metformin, malignancy).',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_084',
    question: 'Which acid–base disorder does hypoproteinemia cause?',
    options: [
      'High AG metabolic acidosis',
      'Normal AG metabolic acidosis',
      'Respiratory acidosis',
      'Pseudo-metabolic alkalosis',
      'None'
    ],
    correctAnswerIndex: 3,
    explanation: 'Albumin (negatively charged) decreases → AG falls → pseudo-alkalosis (true acidosis may be masked).',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
  Question(
    id: 'acid_base_management_085',
    question: 'In which condition is urinary anion gap calculated?',
    options: [
      'Normal AG metabolic acidosis',
      'High AG metabolic acidosis',
      'Metabolic alkalosis',
      'Respiratory acidosis',
      'None'
    ],
    correctAnswerIndex: 0,
    explanation: 'Urinary AG (Na⁺ + K⁺ – Cl⁻) helps evaluate renal acid excretion. Negative → extrarenal cause; positive → renal tubular acidosis.',
    category: 'Acid-Base Management',
    difficulty: 2
  ),
];
