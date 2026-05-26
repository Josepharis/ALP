import 'package:flutter/material.dart';

class RespiratoryDiseaseAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RespiratoryDiseaseAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RespiratoryDiseaseAnesthesiaCategory {
  final String categoryName;
  final List<RespiratoryDiseaseAnesthesiaItem> items;

  RespiratoryDiseaseAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class RespiratoryDiseaseAnesthesiaData {
  static List<RespiratoryDiseaseAnesthesiaCategory>
      getRespiratoryDiseaseAnesthesiaData(BuildContext context) {
    return [
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Pulmonary Risk Factors',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "PATIENT-RELATED RISK FACTORS",
            description: "Smoking, advanced age, and obesity are the strongest predictors of perioperative respiratory complications.",
            additionalInfo: "Specifically, smoking impairs ciliary activity and leads to increased secretions. Advanced age reduces lung elasticity, thereby increasing closing capacity.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "SURGICAL PROCEDURE AND RISK LEVEL",
            description: "The proximity of the operation site to the diaphragm directly affects the rate of decrease in lung volumes.",
            subtitle: "In thoracic and upper abdominal surgeries, Functional Residual Capacity (FRC) is the volume that decreases most",
            additionalInfo: "Diaphragm dysfunction and 'splinting' due to pain following surgical trauma maximize the risk of atelectasis.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "UPPER ABDOMINAL SURGERY AND FRC CHANGE",
            description: "Loss of FRC in upper abdominal operations reaches its most prominent level on the first postoperative day.",
            additionalInfo: "This adverse effect usually continues for 7–10 days and seriously limits the patient's ability to cough effectively and take deep breaths.",
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Obstructive Lung Diseases',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "OBSTRUCTIVE PATHOLOGY AND TEST CRITERIA (FEV1/FVC)",
            description: "Early abnormality in small airways is detected by the FEF25–75 value falling below 70% of the predicted value.",
            subtitle: "In advanced obstruction, FEV1 decreases while the FEV1/FVC ratio is observed below 70%",
            additionalInfo: "Residual volume (RV) and total lung capacity (TLC) increase due to air trapping. Normal FEF25–75 values are >1.6 L/sec for women and >2 L/sec for men.",
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Asthma',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "ASTHMA PATHOPHYSIOLOGY AND MEDIATORS (IgE AND HISTAMINE)",
            description: "Mediators released as a result of increased parasympathetic tone and IgE-mediated mast cell activation lead to widespread bronchoconstriction.",
            subtitle: "Bronchial tone is at its highest level in the early morning hours due to diurnal rhythm",
            additionalInfo: "Hypocapnia due to tachypnea is a typical finding; in an asthmatic patient, the return to normal or elevation of PaCO2 is a severe warning that respiratory failure is developing.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "PHARMACOLOGICAL TREATMENT IN ASTHMA AND BETA-2 AGONISTS",
            description: "Beta-2 agonists are the fundamental drug group providing the most effective and rapid bronchodilation in the respiratory tract.",
            subtitle: "Methylxanthines provide cAMP level increase through PDE inhibition and offer diaphragmatic stimulation",
            additionalInfo: "Glucocorticoids (Beclomethasone, Budesonide, Fluticasone) play a key role in chronic management and reducing airway sensitivity with their anti-inflammatory effects.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "THE ROLE OF ANTICHOLINERGIC AGENTS IN BRONCHOSPASM",
            description: "Anticholinergic drugs like ipratropium are particularly effective in resolving bronchospasm developing via reflex paths.",
            additionalInfo: "They offer supportive treatment in asthma and COPD exacerbations by preventing vagus-mediated bronchial narrowing.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "ANESTHETIC APPROACH AND CHOICES IN THE ASTHMATIC PATIENT",
            description: "The most critical point of anesthesia management in asthmatic patients is bronchospasm that can be triggered by airway instrumentation.",
            subtitle: "Regional anesthesia or mask ventilation (avoiding intubation) should be preferred if possible",
            additionalInfo: "If general anesthesia is required, Sevoflurane is an excellent choice for induction due to its potent bronchodilatory effect.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "LIDOCAINE USE AND BRONCHIAL IRRITATION",
            description: "Intravenous lidocaine at low doses shows an anti-irritant effect, suppressing airway reflexes.",
            additionalInfo: "However, lidocaine applied in inadequate doses can itself cause bronchial irritation and trigger bronchospasm; dosage should be adjusted carefully.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "INTRAOPERATIVE VENTILATION STRATEGIES",
            description: "Ventilator settings in asthmatic patients should be optimized to prevent air trapping (auto-PEEP).",
            subtitle: "Expiratory time (I:E ratio) should be prolonged to ensure air is completely exhaled",
            additionalInfo: "In the treatment of bronchospasm developing during the operation, concentrations of inhaled agents and volatile anesthetics should be increased.",
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Chronic Obstructive Pulmonary Disease (COPD)',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "CHRONIC BRONCHITIS AND THE 'BLUE BLOATER' PHENOTYPE",
            description: "A condition characterized by a productive (phlegm-producing) cough lasting for at least three months in at least two consecutive years.",
            subtitle: "Hypercapnia and deep hypoxemia (Blue Bloater) are widely seen in these patients",
            additionalInfo: "Chronic inflammation and increased mucus in the airways lead to obstruction in small airways and V/Q imbalance.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "EMPHYSEMA AND THE ALVEOLAR DESTRUCTION PROCESS",
            description: "Permanent damage to alveolar walls resulting in abnormal expansion of air spaces and irreversible loss of diffusion.",
            subtitle: "Smoking causes 'centrilobular' emphysema, بينما alpha-1 antitrypsin deficiency causes 'panlobular' emphysema",
            additionalInfo: "Characterized by the Pink Puffer phenotype; pulmonary hypertension usually runs a mild course (<40 mmHg). The effective gas exchange surface is markedly reduced.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "COPD TREATMENT AND OXYGEN SUPPORT",
            description: "Smoking cessation is the only intervention proven to slow the progression rate of the disease.",
            subtitle: "Oxygen support of 1–2 L/min per day increases survival in patients with chronic hypoxemia (<55 mmHg)",
            additionalInfo: "Bronchodilators provide symptomatic relief; diuretic treatment should be added in cases of concomitant cor pulmonale.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "ANESTHESIA AND EXERCISE CAPACITY IN THE COPD PATIENT",
            description: "A pre-operative FEV1 value below 50% is an indicator of exertional dyspnea, and below 25% of rest dyspnea.",
            additionalInfo: "Denitrogenation and preoxygenation before induction gain vital time for these patients.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "VENTILATION METHODS THAT REDUCE AIR TRAPPING",
            description: "In patients with COPD, dynamic hyperinflation is prevented by increasing the expiratory time on the ventilator.",
            subtitle: "Permissive hypercapnia (PaCO2 up to ~70 mmHg) can be tolerated as long as cerebral pH is maintained",
            additionalInfo: "Application of low external PEEP is aimed at balancing the patient's own intrinsic PEEP.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "NITROUS OXIDE (N2O) CONTRAINDICATION AND BULLAE",
            description: "N2O rapidly fills air-filled bullae in patients with emphysema, potentially leading to bulla rupture or tension pneumothorax.",
            additionalInfo: "Furthermore, N2O use should be avoided in patients with pulmonary hypertension as it can increase pulmonary vascular resistance.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "POSTOPERATIVE MECHANICAL VENTILATION RISK ESTIMATION",
            description: "Patients with an FEV1 value < 50% and undergoing upper abdominal/thoracic surgery have a high need for prolonged respiratory support after the operation.",
            additionalInfo: "Early mobilization and aggressive pain control (epidural, etc.) are the most important factors reducing this risk.",
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Restrictive Lung Diseases',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "RESTRICTIVE PATTERN AND RESPIRATORY MECHANICS",
            description: "A condition where FEV1 and FVC values drop due to a decrease in lung compliance, but the FEV1/FVC ratio remains normal.",
            subtitle: "Patients typically exhibit a rapid and shallow breathing pattern to compensate for volume loss",
            additionalInfo: "Gas exchange is usually maintained until very late stages of the disease. The main problem is the need for high pressure to inflate the lung.",
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Acute Intrinsic Lung Diseases',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "ARDS VENTILATION STRATEGY AND PROTECTIVE SETTINGS",
            description: "Low tidal volume (4–6 mL/kg) ventilation is the gold standard in ARDS patients to protect the lung from volutrauma.",
            subtitle: "Plateau pressure (Pplat) should be attempted to be kept below the 30 cmH2O value",
            additionalInfo: "Sufficient minute ventilation should be provided by setting the respiratory frequency to 14–18 per minute.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "POSTOPERATIVE INTENSIVE CARE AND SUPPORT PLAN",
            description: "Follow-up in the intensive care unit and continuation of ventilator support should be planned for patients with acute lung injury after the operation.",
            additionalInfo: "Fluid management should be conducted meticulously with the principle of keeping 'dry' (to reduce pulmonary edema).",
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Chronic Intrinsic (Interstitial) Lung Diseases',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "CRITERIA FOR SEVERE RESPIRATORY DYSFUNCTION",
            description: "A drop in vital capacity (VC) below 15 mL/kg is a strong indicator that the patient will not tolerate surgical stress.",
            subtitle: "The normal VC value is approximately 70 mL/kg; the risk of hypoxemia during induction is very high due to seriously reduced FRC",
            additionalInfo: "Lungs are stiffened due to interstitial fibrosis and require small tidal volumes.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "BLEOMYCIN HISTORY AND PROTECTION FROM OXYGEN TOXICITY",
            description: "In patients who have previously received Bleomycin treatment, high oxygen concentrations can trigger fatal lung fibrosis.",
            subtitle: "Intraoperative FiO2 should be kept as low as possible and SpO2 targeted in the 88–92% range",
            additionalInfo: "If necessary, 1:1 or inverse ratio ventilation techniques can be applied to maintain tissue oxygenation.",
          ),
        ],
      ),
      RespiratoryDiseaseAnesthesiaCategory(
        categoryName: 'Pulmonary Embolism',
        items: [
          RespiratoryDiseaseAnesthesiaItem(
            title: "PULMONARY EMBOLISM PATHOPHYSIOLOGY AND V/Q IMBALANCE",
            description: "Alveoli nourished by vessels blocked after embolism continue to be ventilated but cannot be perfused (dead space).",
            subtitle: "Reflex vasoconstriction and bronchospasm (BC) cause the condition to worsen even further",
            additionalInfo: "Atelectasis develops due to surfactant loss 24–48 hours after the event; while PaCO2 usually rises, deep hypoxemia predominates clinically.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "CIRCULATORY OBSTRUCTION AND PULMONARY HYPERTENSION",
            description: "Pulmonary HT and right heart loading begin when 50% of the pulmonary circulation is closed in healthy individuals.",
            additionalInfo: "In individuals with pre-existing heart-lung disease, this critical state can appear with a much smaller percentage of obstruction.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "EMBOLISM SYMPTOMS AND CLINICAL FINDINGS",
            description: "Suddenly developing dyspnea (shortness of breath), tachypnea (rapid breathing), and chest pain is the classic triad of embolism.",
            additionalInfo: "In some cases, this picture can be accompanied by hemoptysis (coughing up blood) and syncope (fainting).",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "ARTERIAL BLOOD GAS (ABG) AND DIAGNOSTIC FINDINGS",
            description: "The typical blood gas finding in pulmonary embolism is hypoxemia seen along with respiratory alkalosis.",
            additionalInfo: "An increase in the alveolar-arterial (A-a) oxygen gradient is a strong piece of data supporting the diagnosis.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "ECG FINDINGS AND RIGHT HEART LOADING",
            description: "Due to acute right heart strain, right axis deviation, right bundle branch block (RBBB), and peaked T waves may be seen on the ECG.",
            additionalInfo: "The most famous ECG finding is the S1Q3T3 pattern, but this may not be seen in every case.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "DIAGNOSTIC METHODS AND GOLD STANDARD (ANGIOGRAPHY)",
            description: "CT Angiography is the first choice due to practical convenience and speed; however, the gold standard in difficult cases where a diagnosis cannot be made is pulmonary angiography.",
            additionalInfo: "The D-dimer test can be used as an exclusionary factor in low-risk patients.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "DEEP VEIN THROMBOSIS (DVT) PREVENTION METHODS",
            description: "Elastic bandages, pneumatic compression devices, and early mobilization are essential to reduce the risk of DVT in the perioperative period.",
            additionalInfo: "Thromboembolism prophylaxis in the surgical patient is a vital safety standard.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "HEPARIN TREATMENT AND LABORATORY FOLLOW-UP (APTT)",
            description: "In acute embolism treatment, heparin is infused to maintain the aPTT value at 1.5–2.5 times normal.",
            subtitle: "Low molecular weight heparins (LMWH) should be discontinued 12 hours before surgery and started 12-24 hours after surgery",
            additionalInfo: "Anticoagulant dosage should be managed in the delicate balance between bleeding risk and thrombosis risk.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "BRIDGE TREATMENT (HEPARIN AND WARFARIN)",
            description: "Heparin support is continued until the warfarin effect begins (bridging); heparin is discontinued once the INR reaches a therapeutic level.",
            additionalInfo: "Warfarin use is usually discontinued in the perioperative period due to bleeding risk and managed by starting heparin instead.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "EMBOLISM HISTORY AND SURGICAL TIMING",
            description: "The risk of recurring embolism for surgical interventions to be performed approximately one year after an acute embolism attack is quite low.",
            additionalInfo: "For mandatory surgeries in the early period, vena cava filters or strict anticoagulation protocols should be considered.",
          ),
          RespiratoryDiseaseAnesthesiaItem(
            title: "INTRAOPERATIVE EMBOLISM SIGNS AND ETCO2 MONITORING",
            description: "If an EtCO2 value drop accompanies a picture of suddenly developing hypotension, hypoxemia, and bronchospasm during the operation, pulmonary embolism should be suspected.",
            additionalInfo: "A drop in EtCO2 is the most specific sign of embolism in the intraoperative period as a result of an increase in dead space.",
          ),
        ],
      ),
    ];
  }
}
