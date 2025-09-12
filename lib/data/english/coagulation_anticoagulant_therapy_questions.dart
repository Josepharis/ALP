import '../../models/question.dart';

List<Question> coagulationAnticoagulantTherapyQuestions = [
  Question(
    id: 'coagulation_anticoagulant_001',
    question: 'Which of the following factors functions in both the intrinsic and extrinsic pathways?',
    options: [
      'Factor VIII',
      'Factor IX',
      'Factor X',
      'Factor XII',
      'Fibrinogen'
    ],
    correctAnswerIndex: 2,
    explanation: 'Both the intrinsic and extrinsic pathways converge on the common pathway. Factor X is activated here and helps convert prothrombin to thrombin.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_002',
    question: 'Which anticoagulant most strongly affects prothrombin time (PT)?',
    options: [
      'Heparin',
      'Warfarin',
      'Fondaparinux',
      'Dabigatran',
      'Rivaroxaban'
    ],
    correctAnswerIndex: 1,
    explanation: 'Warfarin inhibits vitamin K–dependent factors (II, VII, IX, X). Because factor VII has a short half-life, PT is most prominently affected by warfarin.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_003',
    question: 'What is the antidote for heparin?',
    options: [
      'Vitamin K',
      'Protamine sulfate',
      'Idarucizumab',
      'Andexanet alfa',
      'Desmopressin'
    ],
    correctAnswerIndex: 1,
    explanation: 'Protamine sulfate binds the negatively charged heparin and neutralizes its effect.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_004',
    question: 'Before high-bleeding-risk surgery, a patient on warfarin has an INR of 3.5. What is the most appropriate approach?',
    options: [
      'Switch to heparin',
      'Proceed with surgery',
      'Give oral vitamin K only',
      'Give vitamin K + fresh frozen plasma (FFP)',
      'Administer andexanet alfa'
    ],
    correctAnswerIndex: 3,
    explanation: 'For urgent surgery, INR should be rapidly normalized. Vitamin K acts slowly, so it should be given with FFP.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_005',
    question: 'Deficiency of which factor prolongs both aPTT and PT?',
    options: [
      'Factor VII',
      'Factor IX',
      'Factor X',
      'Factor XI',
      'Factor XII'
    ],
    correctAnswerIndex: 2,
    explanation: 'Factor X is part of the common pathway; deficiency prolongs both tests.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_006',
    question: 'A patient on heparin develops a sudden drop in platelets and thrombosis. Most likely diagnosis?',
    options: [
      'TTP',
      'HIT (Heparin-Induced Thrombocytopenia)',
      'ITP',
      'DIC',
      'Aplastic anemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Thrombocytopenia with paradoxical thrombosis 5–10 days after starting heparin suggests HIT.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_007',
    question: 'Which test is not used to directly monitor levels of the newer oral anticoagulants (NOACs/DOACs)?',
    options: [
      'Anti-FXa level',
      'aPTT',
      'PT',
      'Ecarin clotting time',
      'INR'
    ],
    correctAnswerIndex: 4,
    explanation: 'INR is for warfarin monitoring and is unreliable for NOACs.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_008',
    question: 'Which of the following is a factor in the intrinsic pathway?',
    options: [
      'Factor VII',
      'Factor X',
      'Factor VIII',
      'Factor V',
      'Fibrinogen'
    ],
    correctAnswerIndex: 2,
    explanation: 'Factor VIII acts in the intrinsic pathway, aiding factor IX in activating factor X.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_009',
    question: 'Which lab test is most commonly used to monitor low–molecular weight heparin (LMWH) therapy?',
    options: [
      'PT',
      'aPTT',
      'Anti-Xa level',
      'INR',
      'Thromboplastin time'
    ],
    correctAnswerIndex: 2,
    explanation: 'LMWH effect is best monitored with anti-Xa levels; aPTT usually doesn\'t change.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_010',
    question: 'Preoperatively, a rivaroxaban-treated patient has active bleeding. Which agent best reverses anticoagulation urgently?',
    options: [
      'Protamine sulfate',
      'Idarucizumab',
      'Fresh frozen plasma',
      'Andexanet alfa',
      'Vitamin K'
    ],
    correctAnswerIndex: 3,
    explanation: 'Andexanet alfa is the specific antidote for FXa inhibitors (rivaroxaban, apixaban).',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_011',
    question: 'Which is not a vitamin K–dependent coagulation factor?',
    options: [
      'Factor II',
      'Factor VII',
      'Factor VIII',
      'Factor IX',
      'Factor X'
    ],
    correctAnswerIndex: 2,
    explanation: 'Factor VIII is not vitamin K–dependent. Vitamin K–dependent: II, VII, IX, X and proteins C/S.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_012',
    question: 'Which prolongs bleeding time (BT)?',
    options: [
      'Warfarin',
      'Heparin',
      'Thrombocytopenia',
      'Factor VIII deficiency',
      'Factor IX deficiency'
    ],
    correctAnswerIndex: 2,
    explanation: 'BT reflects primary hemostasis; low platelets prolong BT. Factor deficiencies affect PT/aPTT, not BT.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_013',
    question: 'Most likely lab finding in hemophilia A?',
    options: [
      'Prolonged PT',
      'Prolonged aPTT',
      'Prolonged BT',
      'Normal aPTT',
      'Thrombocytopenia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Hemophilia A = factor VIII deficiency → intrinsic pathway → prolonged aPTT; PT/BT usually normal.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_014',
    question: 'Specific antidote for dabigatran?',
    options: [
      'Protamine sulfate',
      'Vitamin K',
      'Idarucizumab',
      'Desmopressin',
      'Fresh frozen plasma'
    ],
    correctAnswerIndex: 2,
    explanation: 'Dabigatran is a direct thrombin inhibitor; its specific antidote is idarucizumab.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_015',
    question: 'Which is not expected in DIC?',
    options: [
      'Thrombocytopenia',
      'Increased fibrinogen',
      'Prolonged PT',
      'Increased D-dimer',
      'Prolonged aPTT'
    ],
    correctAnswerIndex: 1,
    explanation: 'In DIC, factors are consumed → fibrinogen decreases; PT/aPTT prolong; D-dimer increases.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_016',
    question: 'Which anticoagulant has the longest preoperative effect duration?',
    options: [
      'Heparin',
      'Enoxaparin',
      'Warfarin',
      'Apixaban',
      'Fondaparinux'
    ],
    correctAnswerIndex: 2,
    explanation: 'Warfarin half-life is long (≈36–42 h); complete reversal can take 5–7 days.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_017',
    question: 'Both PT and aPTT are prolonged, but correct with mixing study. Most likely cause?',
    options: [
      'Factor deficiency',
      'Lupus anticoagulant',
      'Anticoagulant drug use',
      'Liver disease',
      'DIC'
    ],
    correctAnswerIndex: 0,
    explanation: 'Correction with mixing suggests factor deficiency; lack of correction suggests an inhibitor.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_018',
    question: 'Mechanism of tranexamic acid used for intraoperative bleeding control?',
    options: [
      'Thrombin inhibition',
      'Factor VIII activation',
      'Fibrin stabilization',
      'Plasmin inhibition',
      'D-dimer reduction'
    ],
    correctAnswerIndex: 3,
    explanation: 'Tranexamic acid inhibits conversion of plasminogen to plasmin, preventing fibrinolysis.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_019',
    question: 'First step when urgent surgery is planned for a hemophilia patient?',
    options: [
      'Give vitamin K',
      'Administer protamine sulfate',
      'Give factor VIII concentrate',
      'Give fresh frozen plasma',
      'Administer desmopressin'
    ],
    correctAnswerIndex: 2,
    explanation: 'In hemophilia A, replace the deficient factor; desmopressin is for mild cases.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_020',
    question: 'In which situation is FFP not recommended as first-line therapy?',
    options: [
      'Liver failure',
      'High INR + urgent surgery',
      'Warfarin toxicity',
      'Hemophilia A',
      'DIC'
    ],
    correctAnswerIndex: 3,
    explanation: 'Specific therapy is factor VIII concentrate; FFP may be a temporary bridge only in emergencies.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_021',
    question: 'Which factor initiates the intrinsic pathway of the coagulation cascade?',
    options: [
      'Factor I',
      'Factor II',
      'Factor VII',
      'Factor XII',
      'Factor X'
    ],
    correctAnswerIndex: 3,
    explanation: 'The intrinsic pathway begins with activation of factor XII (Hageman factor), often via contact activation.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_022',
    question: 'If excessive anticoagulation develops under heparin therapy, which antidote is used?',
    options: [
      'Protamine sulfate',
      'Vitamin K',
      'Fresh frozen plasma',
      'Desmopressin',
      'Factor VIII concentrate'
    ],
    correctAnswerIndex: 0,
    explanation: 'Protamine sulfate binds heparin and neutralizes it.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_023',
    question: 'Which agent exerts anticoagulation by enhancing antithrombin III activity?',
    options: [
      'Warfarin',
      'Dabigatran',
      'Rivaroxaban',
      'Heparin',
      'Apixaban'
    ],
    correctAnswerIndex: 3,
    explanation: 'Heparin potentiates antithrombin III, inhibiting thrombin (IIa) and factor Xa.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_024',
    question: 'Which anticoagulant is a direct thrombin inhibitor?',
    options: [
      'Warfarin',
      'Rivaroxaban',
      'Apixaban',
      'Dabigatran',
      'Fondaparinux'
    ],
    correctAnswerIndex: 3,
    explanation: 'Dabigatran inhibits thrombin (IIa) directly; the others are Xa inhibitors or indirect agents.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_025',
    question: 'In a warfarin user needing urgent surgery in the preoperative period, what should be done first?',
    options: [
      'Start aspirin',
      'Give protamine sulfate',
      'Give IV heparin',
      'Give vitamin K and/or FFP (or PCC)',
      'Give LMWH'
    ],
    correctAnswerIndex: 3,
    explanation: 'To rapidly reverse warfarin, use vitamin K and/or FFP or prothrombin complex concentrate.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_026',
    question: 'Which statement about DIC is incorrect?',
    options: [
      'Fibrin degradation products increase.',
      'Platelet count decreases.',
      'PT and aPTT are prolonged.',
      'Fibrinogen level increases.',
      'Hemolytic anemia may occur.'
    ],
    correctAnswerIndex: 3,
    explanation: 'In DIC, fibrinogen usually decreases due to consumption, not increases.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_027',
    question: 'Factor V Leiden mutation causes a defect at which step?',
    options: [
      'Fibrin stabilization',
      'Platelet aggregation',
      'Inactivation by protein C',
      'Activation of prothrombin',
      'Conversion of fibrinogen to fibrin'
    ],
    correctAnswerIndex: 2,
    explanation: 'Factor V Leiden is resistant to inactivation by activated protein C → hypercoagulability.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_028',
    question: 'Which is not a vitamin K–dependent factor?',
    options: [
      'Factor II',
      'Factor VII',
      'Factor VIII',
      'Factor IX',
      'Factor X'
    ],
    correctAnswerIndex: 2,
    explanation: 'Factor VIII is not vitamin K–dependent; II, VII, IX, X and proteins C/S are.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_029',
    question: 'Which prolongs bleeding time (BT)?',
    options: [
      'Warfarin',
      'Heparin',
      'Thrombocytopenia',
      'Factor VIII deficiency',
      'Factor IX deficiency'
    ],
    correctAnswerIndex: 2,
    explanation: 'BT reflects primary hemostasis; low platelets prolong BT.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_030',
    question: 'Most likely lab finding in hemophilia A?',
    options: [
      'Prolonged PT',
      'Prolonged aPTT',
      'Prolonged BT',
      'Normal aPTT',
      'Thrombocytopenia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Factor VIII deficiency → prolonged aPTT; PT and BT usually normal.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_031',
    question: 'Which statement about FFP use is incorrect?',
    options: [
      'It can reverse the effect of vitamin K antagonists.',
      'Used in factor deficiencies.',
      'First choice for volume replacement in emergencies.',
      'Contains coagulation factors.',
      'May be used in massive transfusion protocols.'
    ],
    correctAnswerIndex: 2,
    explanation: 'The main purpose of FFP is to replace coagulation factors. Crystalloids are preferred for volume replacement.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_032',
    question: 'What is the most sensitive method to assess hemostasis preoperatively?',
    options: [
      'PT',
      'aPTT',
      'Platelet count',
      'Bleeding time',
      'Patient history'
    ],
    correctAnswerIndex: 4,
    explanation: 'A bleeding history is clinically more sensitive than lab tests for predicting bleeding disorders.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_033',
    question: 'If prothrombin time (PT) is prolonged but aPTT is normal, which of the following is most likely?',
    options: [
      'Hemophilia A',
      'Factor IX deficiency',
      'Warfarin use',
      'Lupus anticoagulant',
      'Heparin use'
    ],
    correctAnswerIndex: 2,
    explanation: 'Warfarin inhibits vitamin K–dependent factors, and because Factor VII has a short half-life, PT is prolonged first.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_034',
    question: 'Which of the following drugs belongs to the low-molecular-weight heparin (LMWH) group?',
    options: [
      'Enoxaparin',
      'Dabigatran',
      'Rivaroxaban',
      'Warfarin',
      'Argatroban'
    ],
    correctAnswerIndex: 0,
    explanation: 'Enoxaparin is an LMWH that exerts anticoagulant effects by inhibiting factor Xa.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_035',
    question: 'How many hours before surgery should LMWH be discontinued?',
    options: [
      '4 hours',
      '8 hours',
      '12 hours',
      '24 hours',
      '36 hours'
    ],
    correctAnswerIndex: 3,
    explanation: 'Prophylactic LMWH is usually stopped 12 hours before surgery, while therapeutic-dose LMWH should be stopped 24 hours before surgery.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_036',
    question: 'Which coagulation test is usually the earliest to become abnormal in chronic liver disease?',
    options: [
      'aPTT',
      'PT',
      'INR',
      'Bleeding time',
      'Platelet count'
    ],
    correctAnswerIndex: 1,
    explanation: 'Factor VII has a short half-life and is synthesized in the liver. Thus, PT is typically the first test to be prolonged in liver disease.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_037',
    question: 'Which method provides the fastest assessment of hemostasis during surgery?',
    options: [
      'PT',
      'aPTT',
      'TEG (Thromboelastography)',
      'INR',
      'Bleeding time'
    ],
    correctAnswerIndex: 2,
    explanation: 'Thromboelastography (TEG) dynamically evaluates the entire coagulation process, providing rapid intraoperative guidance.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_038',
    question: 'D-dimer, a fibrin degradation product, does NOT increase in which condition?',
    options: [
      'DVT',
      'PE',
      'DIC',
      'Hemophilia',
      'Post-surgical period'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hemophilia is a bleeding disorder, but since clot formation itself is impaired, fibrin breakdown does not occur and D-dimer levels do not rise.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_039',
    question: 'Which statement is true about Factor XIII deficiency?',
    options: [
      'PT and aPTT are prolonged',
      'Thrombocytopenia is observed',
      'A clot forms but cannot be stabilized',
      'It can be corrected with vitamin K',
      'Protamine sulfate is effective'
    ],
    correctAnswerIndex: 2,
    explanation: 'Factor XIII stabilizes fibrin clots. In its deficiency, clots form but are structurally unstable and break down easily.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_040',
    question: 'Which of the following tests does NOT directly assess platelet function?',
    options: [
      'Platelet aggregation test',
      'Platelet count',
      'Bleeding time',
      'TEG (Platelet module)',
      'PFA-100'
    ],
    correctAnswerIndex: 1,
    explanation: 'Platelet count gives only quantitative information; it does not measure platelet function. Other tests directly assess function.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_041',
    question: 'What is one of the first steps to be taken during massive hemorrhage in surgery?',
    options: [
      'Administer packed red blood cells',
      'Give fibrinogen concentrate',
      'Start IV tranexamic acid',
      'Activate the massive transfusion protocol',
      'Transfuse platelets'
    ],
    correctAnswerIndex: 3,
    explanation: 'In massive bleeding, immediate activation of the massive transfusion protocol ensures timely and balanced replacement of blood components.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_042',
    question: 'Which of the following defines massive transfusion?',
    options: [
      '2 units of RBCs in 1 hour',
      '6 units of FFP in 12 hours',
      '10 units of RBCs in 24 hours',
      '20 units of platelets in 24 hours',
      '5 units of RBCs in 6 hours'
    ],
    correctAnswerIndex: 2,
    explanation: 'Massive transfusion is usually defined as ≥10 units of red blood cells given within 24 hours.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_043',
    question: 'Which statement about fresh frozen plasma (FFP) is correct?',
    options: [
      'It must always be given with RBCs',
      'It contains coagulation factors',
      'It is the first choice for volume replacement',
      'ABO compatibility is not required',
      'It increases platelet count'
    ],
    correctAnswerIndex: 1,
    explanation: 'The main purpose of FFP is to replace coagulation factors. It is not primarily used for volume replacement or platelet support.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_044',
    question: 'Which of the following statements about tranexamic acid is FALSE?',
    options: [
      'It inhibits fibrinolysis',
      'It may reduce blood loss during surgery',
      'It is an antifibrinolytic drug',
      'It has anticoagulant effects',
      'It can be used in postpartum hemorrhage'
    ],
    correctAnswerIndex: 3,
    explanation: 'Tranexamic acid is antifibrinolytic, not anticoagulant. It prevents fibrin breakdown but does not inhibit clot formation directly.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_045',
    question: 'In which of the following is vitamin K NOT effective?',
    options: [
      'Warfarin overdose',
      'Newborn prophylaxis',
      'Liver failure',
      'Vitamin K deficiency',
      'Prolonged PT due to vitamin K–dependent factor deficiency'
    ],
    correctAnswerIndex: 2,
    explanation: 'In liver failure, the synthetic capacity for coagulation factors is impaired, so vitamin K administration has little to no effect.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_046',
    question: 'In a patient on direct oral anticoagulants (DOACs) who requires emergency surgery, which parameter most influences clinical decision-making?',
    options: [
      'PT value',
      'aPTT value',
      'Time of last drug intake',
      'Bleeding time',
      'Creatinine level'
    ],
    correctAnswerIndex: 2,
    explanation: 'DOAC activity declines over time. The most important factor for perioperative management is when the last dose was taken.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_047',
    question: 'Which of the following does NOT cause platelet dysfunction?',
    options: [
      'Aspirin',
      'Clopidogrel',
      'Uremia',
      'Heparin',
      'MDS (Myelodysplastic syndrome)'
    ],
    correctAnswerIndex: 3,
    explanation: 'Heparin may cause thrombocytopenia (HIT), but it does not directly impair platelet function.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_048',
    question: 'During surgery, at what platelet count threshold is transfusion generally required?',
    options: [
      '<150,000/mm³',
      '<100,000/mm³',
      '<75,000/mm³',
      '<50,000/mm³',
      '<20,000/mm³'
    ],
    correctAnswerIndex: 3,
    explanation: 'A platelet count above 50,000/mm³ is usually sufficient for most surgeries. Below this level, transfusion is recommended.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_049',
    question: 'In which situation is the best response to platelet transfusion expected?',
    options: [
      'Sepsis',
      'Hypersplenism',
      'Immune thrombocytopenic purpura (ITP)',
      'Bleeding + chemotherapy-induced thrombocytopenia',
      'DIC'
    ],
    correctAnswerIndex: 3,
    explanation: 'In marrow-suppression–related thrombocytopenia, transfused platelets are well-utilized, unlike in immune or consumptive causes.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_050',
    question: 'Protamine sulfate reverses the effect of which drug?',
    options: [
      'Warfarin',
      'Heparin',
      'Rivaroxaban',
      'Dabigatran',
      'Clopidogrel'
    ],
    correctAnswerIndex: 1,
    explanation: 'Protamine sulfate specifically neutralizes unfractionated heparin; it is not effective against warfarin, DOACs, or antiplatelets.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_051',
    question: 'In which condition is administration of fresh frozen plasma (FFP) most appropriate?',
    options: [
      'Thrombocytopenic bleeding',
      'Massive bleeding with fibrinogen <100 mg/dL',
      'Warfarin-related prolonged INR with active bleeding',
      'Hypotension due to hypovolemia',
      'Active bleeding due to heparin overdose'
    ],
    correctAnswerIndex: 2,
    explanation: 'FFP is indicated in patients with active bleeding and warfarin-induced coagulopathy because it replenishes clotting factors. A → Platelet transfusion is preferred. B → Cryoprecipitate or fibrinogen concentrate is better. D → Fluids (crystalloids/colloids) are first-line for hypovolemia. E → Protamine sulfate is the antidote for heparin overdose.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_052',
    question: 'In a patient scheduled for surgery who is on rivaroxaban, when should the drug ideally be discontinued to minimize anticoagulant effect?',
    options: [
      '12 hours',
      '24 hours',
      '48 hours',
      '72 hours',
      '96 hours'
    ],
    correctAnswerIndex: 2,
    explanation: 'Rivaroxaban (a factor Xa inhibitor) has a half-life of ~5–13 hours. In patients with normal renal function, it should be stopped 48 hours before surgery to reduce bleeding risk. In high-risk surgeries or renal impairment, this interval may need to be longer.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_053',
    question: 'Which factor in the coagulation cascade forms a complex with tissue factor to initiate the extrinsic pathway?',
    options: [
      'Factor VIII',
      'Factor VII',
      'Factor IX',
      'Factor X',
      'Factor XII'
    ],
    correctAnswerIndex: 1,
    explanation: 'The extrinsic pathway begins when tissue factor binds Factor VII, which then activates Factor X. Factor VII triggers the cascade by binding tissue factor.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_054',
    question: 'Which of the following factors is NOT vitamin K–dependent?',
    options: [
      'Factor II',
      'Factor VII',
      'Factor IX',
      'Factor XI',
      'Factor X'
    ],
    correctAnswerIndex: 3,
    explanation: 'Vitamin K–dependent factors are II, VII, IX, and X. Factor XI (intrinsic pathway) is not vitamin K–dependent.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_055',
    question: 'By which mechanism does heparin exert its anticoagulant effect?',
    options: [
      'Direct thrombin inhibition',
      'Direct inhibition of Factor Xa',
      'Enhancing antithrombin III activity',
      'Inhibiting plasmin activation',
      'Increasing protein C activation'
    ],
    correctAnswerIndex: 2,
    explanation: 'Heparin accelerates antithrombin III, inhibiting thrombin (IIa) and Factor Xa. Direct thrombin inhibitors (e.g., dabigatran) act differently.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_056',
    question: 'What is the usual target INR range during warfarin therapy?',
    options: [
      '0.8–1.2',
      '1.0–1.5',
      '2.0–3.0',
      '3.5–4.5',
      '4.5–5.5'
    ],
    correctAnswerIndex: 2,
    explanation: 'For most thromboembolic conditions, the target INR is 2.0–3.0; higher values increase bleeding risk.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_057',
    question: 'What is the most critical complication of anticoagulant use in surgery?',
    options: [
      'Infection',
      'Bleeding',
      'Thrombocytopenia',
      'Thrombosis',
      'Anemia'
    ],
    correctAnswerIndex: 1,
    explanation: 'Anticoagulants chiefly raise bleeding risk in surgical patients, so perioperative management is crucial.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_058',
    question: 'Which statement about LMWH used for DVT prophylaxis is correct?',
    options: [
      'Forms a direct complex with antithrombin III',
      'Has a longer half-life and is given subcutaneously',
      'Is given orally',
      'Increases protein C activation',
      'Inhibits Factor XII'
    ],
    correctAnswerIndex: 1,
    explanation: 'LMWHs are SC, have longer half-lives, and mainly inhibit Factor Xa via antithrombin III.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_059',
    question: 'Which is NOT a cause of bleeding due to platelet function disorder?',
    options: [
      'Aspirin use',
      'Uremia',
      'Von Willebrand disease',
      'Hemophilia A',
      'Thrombocytopenia'
    ],
    correctAnswerIndex: 3,
    explanation: 'Hemophilia A is a Factor VIII deficiency (coagulation factor problem), not a platelet function defect.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_060',
    question: 'After stopping an anticoagulant preoperatively, about how long does it take for INR to normalize?',
    options: [
      '1 day',
      '3–5 days',
      '7–10 days',
      '14–21 days',
      '30 days'
    ],
    correctAnswerIndex: 1,
    explanation: 'Warfarin\'s effect usually wanes and INR normalizes within 3–5 days.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_061',
    question: 'Which statement about heparin-induced thrombocytopenia (HIT) is correct?',
    options: [
      'Results from direct heparin toxicity',
      'Platelet count increases',
      'Antithrombin III falls',
      'An immune response against platelets is triggered',
      'Treat with LMWH'
    ],
    correctAnswerIndex: 3,
    explanation: 'HIT involves antibodies to heparin–PF4 complexes, leading to thrombocytopenia and thrombosis.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_062',
    question: 'Best perioperative strategy to reduce bleeding risk?',
    options: [
      'Stop all anticoagulants immediately before surgery',
      'Bring INR into the preop target range',
      'Continue all anticoagulants through surgery',
      'Continue aspirin/antiplatelets throughout',
      'Ignore bleeding risk'
    ],
    correctAnswerIndex: 1,
    explanation: 'Optimizing INR reduces bleeding; abrupt cessation can raise thrombotic risk.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_063',
    question: 'Which organ synthesizes most coagulation factors?',
    options: [
      'Spleen',
      'Kidney',
      'Liver',
      'Bone marrow',
      'Pancreas'
    ],
    correctAnswerIndex: 2,
    explanation: 'Most coagulation factors are produced in the liver.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_064',
    question: 'Which drug inhibits platelet aggregation?',
    options: [
      'Warfarin',
      'Heparin',
      'Aspirin',
      'Dabigatran',
      'Rivaroxaban'
    ],
    correctAnswerIndex: 2,
    explanation: 'Aspirin inhibits COX in platelets, blocking thromboxane A₂ and aggregation.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_065',
    question: 'Which of the following is NOT a hemostatic agent used for surgical bleeding control?',
    options: [
      'Tranexamic acid',
      'Desmopressin',
      'Protamine sulfate',
      'Fibrin sealants',
      'Alteplase'
    ],
    correctAnswerIndex: 4,
    explanation: 'Alteplase is thrombolytic (promotes clot breakdown), not hemostatic; it can worsen bleeding.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_066',
    question: 'Which is a mechanical method for DVT prophylaxis?',
    options: [
      'Compression stockings',
      'Warfarin',
      'Heparin',
      'Rivaroxaban',
      'Aspirin'
    ],
    correctAnswerIndex: 0,
    explanation: 'Mechanical options include graduated compression stockings and intermittent pneumatic compression.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_067',
    question: 'In a patient on anticoagulation needing emergency surgery, which agent is preferred for rapid reversal?',
    options: [
      'Protamine sulfate',
      'Vitamin K',
      'Tranexamic acid',
      'Desmopressin',
      'Alteplase'
    ],
    correctAnswerIndex: 0,
    explanation: 'Protamine rapidly neutralizes heparin. Vitamin K reverses warfarin but acts slowly.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_068',
    question: 'Which is TRUE of LMWH?',
    options: [
      'Fully reversible with protamine',
      'Given by IV infusion',
      'Inhibits thrombin more than anti-Xa',
      'Has a longer half-life',
      'Inhibits Factor XII'
    ],
    correctAnswerIndex: 3,
    explanation: 'LMWHs are SC, longer-acting, and only partially reversible with protamine; they predominantly inhibit Xa.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_069',
    question: 'Which factors mark the start of the common pathway?',
    options: [
      'Factors IX and VIII',
      'Factor VII and tissue factor',
      'Factors X, V, and II (thrombin)',
      'Factors XI and XII',
      'Factors I and XIII'
    ],
    correctAnswerIndex: 2,
    explanation: 'Both intrinsic and extrinsic pathways converge at Factor X activation; with Factor V, prothrombin (II) is converted to thrombin.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_070',
    question: 'Most commonly used drug to prevent postoperative thromboembolic complications?',
    options: [
      'Warfarin',
      'Low–molecular-weight heparin',
      'Aspirin',
      'Dabigatran',
      'Alteplase'
    ],
    correctAnswerIndex: 1,
    explanation: 'LMWH is widely used for postoperative VTE prophylaxis.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_071',
    question: 'First step in managing suspected HIT during heparin therapy?',
    options: [
      'Start warfarin',
      'Stop heparin',
      'Give protamine',
      'Start aspirin',
      'Continue low-dose heparin'
    ],
    correctAnswerIndex: 1,
    explanation: 'Immediately discontinue heparin and switch to a non-heparin anticoagulant.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_072',
    question: 'Which drug does NOT significantly interact with warfarin (vitamin K antagonists)?',
    options: [
      'Amiodarone',
      'Phenytoin',
      'Rifampin',
      'Metformin',
      'Trimethoprim–sulfamethoxazole'
    ],
    correctAnswerIndex: 3,
    explanation: 'Metformin has no clinically important interaction with warfarin; the others do.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_073',
    question: 'Purpose of tranexamic acid in surgery?',
    options: [
      'Increase fibrinolytic activity',
      'Inhibit plasmin activation',
      'Increase platelet aggregation',
      'Activate coagulation factors',
      'Increase tissue factor release'
    ],
    correctAnswerIndex: 1,
    explanation: 'An antifibrinolytic, tranexamic acid blocks plasmin binding to fibrin, reducing bleeding.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_074',
    question: 'Which finding increases surgical bleeding risk in an anticoagulated patient?',
    options: [
      'INR 1.0',
      'Platelets 150,000/mm³',
      'INR 4.5',
      'Normal aPTT',
      'Normal fibrinogen'
    ],
    correctAnswerIndex: 2,
    explanation: 'A high INR reflects reduced clotting factors and higher bleeding risk.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_075',
    question: 'Protamine sulfate is the antidote for which anticoagulant?',
    options: [
      'Warfarin',
      'Heparin',
      'Dabigatran',
      'Rivaroxaban',
      'Apixaban'
    ],
    correctAnswerIndex: 1,
    explanation: 'Protamine neutralizes unfractionated heparin\'s effect.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_076',
    question: 'Which factor initiates the intrinsic pathway?',
    options: [
      'Factor VII',
      'Factor X',
      'Factor XII',
      'Factor II',
      'Factor I'
    ],
    correctAnswerIndex: 2,
    explanation: 'The intrinsic pathway starts with activation of Factor XII.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_077',
    question: 'Which procedure is commonly performed without stopping anticoagulation beforehand?',
    options: [
      'Simple tooth extraction',
      'High-risk major surgery',
      'Emergency trauma surgery',
      'Total hip arthroplasty',
      'Gastric bypass'
    ],
    correctAnswerIndex: 0,
    explanation: 'For minor dental procedures, continuing anticoagulation is often safer, as thrombosis risk outweighs manageable bleeding risk.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_078',
    question: 'In the coagulation cascade, in which pathway does tissue factor play a primary role?',
    options: [
      'Intrinsic',
      'Extrinsic',
      'Common',
      'Fibrinolytic',
      'Platelet activation'
    ],
    correctAnswerIndex: 1,
    explanation: 'Tissue factor triggers the extrinsic pathway following tissue injury.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_079',
    question: 'Which anticoagulant is a Factor Xa inhibitor?',
    options: [
      'Heparin',
      'Warfarin',
      'Rivaroxaban',
      'Dabigatran',
      'Aspirin'
    ],
    correctAnswerIndex: 2,
    explanation: 'Rivaroxaban and apixaban are direct Factor Xa inhibitors; heparin is indirect, warfarin is a vitamin K antagonist.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_080',
    question: 'Most concerning complication of LMWH use in surgery?',
    options: [
      'Bleeding',
      'Thrombosis',
      'Thrombocytopenia',
      'Hyperkalemia',
      'Hypotension'
    ],
    correctAnswerIndex: 0,
    explanation: 'LMWH increases bleeding risk, especially relevant intraoperatively.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_081',
    question: 'Target INR during warfarin therapy?',
    options: [
      '0.5–1.0',
      '1.0–1.5',
      '2.0–3.0',
      '3.5–4.5',
      '4.5–5.5'
    ],
    correctAnswerIndex: 2,
    explanation: 'Standard therapeutic range is typically 2.0–3.0 (context-dependent).',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_082',
    question: 'Which coagulation test is used to assess the intrinsic pathway?',
    options: [
      'PT (Prothrombin Time)',
      'aPTT (Activated Partial Thromboplastin Time)',
      'TT (Thrombin Time)',
      'Fibrinogen level',
      'D-dimer'
    ],
    correctAnswerIndex: 1,
    explanation: 'aPTT evaluates the intrinsic and common pathways; PT evaluates the extrinsic and common pathways.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_083',
    question: 'After surgery, which laboratory finding is NOT expected in disseminated intravascular coagulation (DIC)?',
    options: [
      'Low platelet count',
      'Prolonged PT and aPTT',
      'Increased fibrinogen level',
      'Elevated D-dimer',
      'Microangiopathic hemolytic anemia'
    ],
    correctAnswerIndex: 2,
    explanation: 'In DIC, fibrinogen typically decreases due to consumption.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_084',
    question: 'What is the mechanism in heparin-induced thrombocytopenia (HIT)?',
    options: [
      'Direct thrombin inhibition',
      'Formation of antibodies to the heparin–platelet factor 4 (PF4) complex',
      'Vitamin K antagonism',
      'Factor Xa inhibitory effect',
      'Increased platelet aggregation (non-immune)'
    ],
    correctAnswerIndex: 1,
    explanation: 'HIT is caused by IgG antibodies against the heparin–PF4 complex, leading to thrombocytopenia and thrombosis.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_085',
    question: 'What is the mechanism of tranexamic acid (TXA) use in surgery?',
    options: [
      'Increases plasmin activation',
      'Prevents plasmin from binding to fibrin',
      'Prevents plasmin from dissociating from fibrin',
      'Factor Xa inhibitor',
      'Enhances platelet function'
    ],
    correctAnswerIndex: 2,
    explanation: 'TXA is antifibrinolytic; it reduces fibrin breakdown by preventing plasmin from detaching from fibrin.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_086',
    question: 'In which situation should anticoagulant therapy be continued without interruption before surgery?',
    options: [
      'Simple cataract surgery',
      'Low-risk orthopedic surgery',
      'Presence of a mechanical heart valve',
      'Elective appendectomy',
      'Low-risk tooth extraction'
    ],
    correctAnswerIndex: 2,
    explanation: 'Stopping anticoagulation in mechanical valve patients can markedly increase thromboembolic risk; therapy is often continued (or bridged).',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_087',
    question: 'A postoperative bleeding patient has an elevated INR. What should be given first?',
    options: [
      'Prothrombin complex concentrate (PCC)',
      'Tranexamic acid',
      'Heparin',
      'Aspirin',
      'Plasma exchange'
    ],
    correctAnswerIndex: 0,
    explanation: 'PCC rapidly corrects elevated INR.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_088',
    question: 'How does Factor V Leiden increase thrombosis risk?',
    options: [
      'Prevents Factor V inactivation by protein C',
      'Directly inhibits Factor Xa',
      'Increases fibrinogen synthesis',
      'Enhances antithrombin III effect',
      'Decreases platelet aggregation'
    ],
    correctAnswerIndex: 0,
    explanation: 'The mutation makes Factor V resistant to activated protein C, promoting clotting.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_089',
    question: 'Best management for bleeding after high-dose intraoperative heparin?',
    options: [
      'Increase the heparin dose',
      'Give protamine sulfate',
      'Start warfarin',
      'Give aspirin',
      'Plasma infusion'
    ],
    correctAnswerIndex: 1,
    explanation: 'Protamine rapidly reverses heparin.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_090',
    question: 'Which mechanism applies to dabigatran (a NOAC/DOAC)?',
    options: [
      'Factor Xa inhibitor',
      'Direct thrombin inhibitor',
      'Protein C activation',
      'Plasmin activation',
      'Factor VII inhibitor'
    ],
    correctAnswerIndex: 1,
    explanation: 'Dabigatran directly inhibits thrombin (Factor IIa).',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_091',
    question: 'After stopping anticoagulation preoperatively, what is the earliest typical time surgery can proceed?',
    options: [
      '4 hours',
      '12 hours',
      '24 hours',
      '48 hours',
      '7 days'
    ],
    correctAnswerIndex: 2,
    explanation: 'Timing depends on half-life, but 24 hours is a common minimum interval.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_092',
    question: 'Which is the most important risk factor for increased bleeding on anticoagulation?',
    options: [
      'Advanced age',
      'Male sex',
      'Smoking',
      'Diabetes',
      'Hypertension'
    ],
    correctAnswerIndex: 0,
    explanation: 'Older age is a key predictor of bleeding risk during anticoagulant therapy.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_093',
    question: 'Best test to diagnose HIT?',
    options: [
      'ELISA for anti-PF4/heparin antibodies',
      'Blood culture',
      'CBC',
      'PT-INR',
      'D-dimer'
    ],
    correctAnswerIndex: 0,
    explanation: 'Detection of anti-PF4/heparin antibodies supports the diagnosis (functional assays can further confirm).',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_094',
    question: 'At what fibrinogen level (mg/dL) is replacement generally recommended in surgical bleeding?',
    options: [
      '50',
      '100',
      '150',
      '200',
      '300'
    ],
    correctAnswerIndex: 2,
    explanation: 'Replacement is typically advised when fibrinogen falls below ~150 mg/dL in active bleeding.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_095',
    question: 'Which factors are contained in prothrombin complex concentrate (PCC) used intraoperatively?',
    options: [
      'Factors II, VII, IX, X',
      'Factors V, VIII, IX, X',
      'Factors I, II, V, VIII',
      'Factors VII, VIII, IX, XI',
      'Factors IX, X, XI, XII'
    ],
    correctAnswerIndex: 0,
    explanation: 'Four-factor PCC includes II, VII, IX, and X.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_096',
    question: 'Temporary measure to reduce thrombosis risk when anticoagulation is stopped for surgery?',
    options: [
      'Bridging with low-molecular-weight heparin (LMWH)',
      'Increase warfarin dose',
      'Give aspirin',
      'Use protamine sulfate',
      'Give tranexamic acid'
    ],
    correctAnswerIndex: 0,
    explanation: 'LMWH bridging can be used in select high-risk patients when long-acting anticoagulants are held.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_097',
    question: 'Postoperative bleeder with normal PT/INR but prolonged aPTT—Which anticoagulant is most likely?',
    options: [
      'Heparin',
      'Warfarin',
      'Aspirin',
      'Rivaroxaban',
      'Dabigatran'
    ],
    correctAnswerIndex: 0,
    explanation: 'Heparin prolongs aPTT; PT/INR often remains normal.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_098',
    question: 'Which disease features Factor VIII deficiency?',
    options: [
      'Hemophilia A',
      'Hemophilia B',
      'Von Willebrand disease',
      'DIC',
      'Thrombocytopenia'
    ],
    correctAnswerIndex: 0,
    explanation: 'Hemophilia A is due to Factor VIII deficiency.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_099',
    question: 'Best anticoagulant treatment for postoperative thrombophlebitis?',
    options: [
      'Low-molecular-weight heparin',
      'Warfarin',
      'Aspirin',
      'Tranexamic acid',
      'Protamine sulfate'
    ],
    correctAnswerIndex: 0,
    explanation: 'LMWH is commonly used for treatment in the postoperative setting.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_100',
    question: 'Warfarin (a vitamin K antagonist) acts by inhibiting synthesis of which factors?',
    options: [
      'Factors II, VII, IX, X',
      'Factors I, V, VIII, X',
      'Factors II, V, IX, XI',
      'Factors I, VII, IX, X',
      'Factors VII, VIII, XI, XII'
    ],
    correctAnswerIndex: 0,
    explanation: 'These are the vitamin K–dependent factors inhibited by warfarin.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
  Question(
    id: 'coagulation_anticoagulant_101',
    question: 'Most important factor when planning perioperative anticoagulant management?',
    options: [
      'Patient\'s thrombosis risk',
      'Patient\'s sex',
      'Duration of surgery',
      'Type of anesthesia',
      'Blood group compatibility'
    ],
    correctAnswerIndex: 0,
    explanation: 'Risk of thrombosis is the key driver of whether/when to interrupt, bridge, or resume therapy.',
    category: 'Coagulation and Anticoagulant Therapy',
    difficulty: 2
  ),
];
