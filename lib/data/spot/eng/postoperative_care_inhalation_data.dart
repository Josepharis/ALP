import 'package:flutter/material.dart';

class PostoperativeCareInhalationItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  PostoperativeCareInhalationItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class PostoperativeCareInhalationCategory {
  final String categoryName;
  final List<PostoperativeCareInhalationItem> items;

  PostoperativeCareInhalationCategory({
    required this.categoryName,
    required this.items,
  });
}

class PostoperativeCareInhalationData {
  static List<PostoperativeCareInhalationCategory> getPostoperativeCareInhalationData(BuildContext context) {
    return [
      PostoperativeCareInhalationCategory(
        categoryName: 'General Principles',
        items: [
          PostoperativeCareInhalationItem(
            title: 'ROLE OF VENTILATION IN THE PACU AND ICU',
            description: 'Mechanical ventilation and inhalation therapies are vital for maintaining physiological stability in the postanesthetic period.',
            additionalInfo: 'Ensures safe transition for patients with respiratory compromise.',
          ),
          PostoperativeCareInhalationItem(
            title: 'CORE GOALS OF INHALATION THERAPY',
            description: 'Aims to optimize oxygenation, facilitate CO2 elimination, and protect the lungs from secondary injury.',
            additionalInfo: 'Lung-protective strategies are prioritized to improve overall clinical outcomes.',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Oxygen Therapy',
        items: [
          PostoperativeCareInhalationItem(
            title: 'ROUTINE POSTOPERATIVE OXYGEN ADMINISTRATION',
            description: 'Mandatory in the early recovery phase to mitigate the risk of hypoxemia resulting from anesthetic effects.',
            additionalInfo: 'Should be titrated based on continuous pulse oximetry readings.',
          ),
          PostoperativeCareInhalationItem(
            title: 'ETIOLOGY OF POSTOPERATIVE HYPOXEMIA',
            description: 'Common causes include resident anesthetic depression, atelectasis, and upper airway obstruction.',
            additionalInfo: 'Inadequate reversal of muscle relaxants significantly contributes to hypoventilation.',
          ),
          PostoperativeCareInhalationItem(
            title: 'OXYGEN DELIVERY DEVICES AND FLOW RATES',
            description: 'Nasal cannulas (1-6 L/min) provide 24-44% FiO2, while simple masks (6-10 L/min) deliver 35-60% FiO2.',
            subtitle: 'Venturi masks provide fixed FiO2 concentrations; reservoir masks can deliver up to 90% FiO2',
            additionalInfo: 'The choice of device depends on the severity of the respiratory deficit.',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Humidification & Inhalation Therapy',
        items: [
          PostoperativeCareInhalationItem(
            title: 'REQUIREMENTS FOR INSPIRED GAS HUMIDIFICATION',
            description: 'Inspired gases must reach an absolute humidity of ≥30 mg/L and a temperature of approximately 37 °C.',
            additionalInfo: 'Prevents drying of secretions and maintains mucociliary clearance.',
          ),
          PostoperativeCareInhalationItem(
            title: 'METHODS OF HUMIDIFICATION IN VENTILATION',
            description: 'HME filters are suitable for short-term use; active heated humidifiers are preferred for long-term ICU care.',
            additionalInfo: 'Active humidification reduces the risk of endotracheal tube occlusion.',
          ),
          PostoperativeCareInhalationItem(
            title: 'INHALED PHARMACOTHERAPY AND NEBULIZATION',
            description: 'Direct delivery of bronchodilators, mucolytics, and even certain antibiotics to the lower respiratory tract.',
            subtitle: 'Nebulizers can be seamlessly integrated into the mechanical ventilator circuit',
            additionalInfo: 'Vibrating mesh nebulizers are often more efficient than jet nebulizers in-line.',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Indications for Mechanical Ventilation',
        items: [
          PostoperativeCareInhalationItem(
            title: 'CRITICAL HYPOXEMIA THRESHOLDS',
            description: 'Characterized by a PaO2 <60 mmHg while receiving a supplemental FiO2 greater than 0.5.',
            additionalInfo: 'Requires prompt intervention to prevent cellular hypoxia.',
          ),
          PostoperativeCareInhalationItem(
            title: 'HYPERCAPNIA AND RESPIRATORY ACIDOSIS LİMİTS',
            description: 'Initiated when PaCO2 exceeds 50 mmHg with an accompanying serum pH below 7.25.',
            additionalInfo: 'Commonly seen in acute-on-chronic respiratory failure.',
          ),
          PostoperativeCareInhalationItem(
            title: 'CLINICAL INDICATIONS: MUSCLE FATIGUE AND APNEA',
            description: 'Exhaustion of respiratory effort or complete cessation of breathing (apnea) demands immediate support.',
            additionalInfo: 'Clinical work of breathing is a subjective but critical assessment tool.',
          ),
          PostoperativeCareInhalationItem(
            title: 'HEMODYNAMIC INSTABILITY AND AIRWAY PROTECTION',
            description: 'Used in shock states to reduce the metabolic cost of breathing and protect against aspiration.',
            additionalInfo: 'Altered consciousness usually results in loss of protective airway reflexes.',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Ventilation Modes',
        items: [
          PostoperativeCareInhalationItem(
            title: 'CMV: CONTROLLED MECHANICAL VENTILATION',
            description: 'The ventilator delivers a set rate and volume/pressure without any spontaneous patient effort.',
            additionalInfo: 'Typically reserved for paralyzed or deeply sedated patients.',
          ),
          PostoperativeCareInhalationItem(
            title: 'ASSIST–CONTROL (AC) VENTILATION MODE',
            description: 'Every breath, whether patient-triggered or machine-timed, receives the full set support.',
            additionalInfo: 'Can lead to hyperventilation if the patient has a high spontaneous trigger rate.',
          ),
          PostoperativeCareInhalationItem(
            title: 'SIMV: SYNCHRONIZED INTERMITTENT MANDATORY VENTILATION',
            description: 'Delivers a minimum number of set breaths while allowing the patient to breathe spontaneously in between.',
            additionalInfo: 'Synchronizes mandatory breaths with the patient’s inspiratory effort.',
          ),
          PostoperativeCareInhalationItem(
            title: 'PSV: PRESSURE SUPPORT VENTILATION',
            description: 'A weaning mode that provides a set level of pressure to assist every spontaneous breath.',
            additionalInfo: 'The patient determines both the rate and the inspiratory time.',
          ),
          PostoperativeCareInhalationItem(
            title: 'PEEP: POSITIVE END-EXPIRATORY PRESSURE',
            description: 'Maintains alveolar recruitment at the end of expiration, preventing atelectasis and improving Shunt.',
            additionalInfo: 'Essential for optimizing oxygenation in parenchymal lung disease.',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Ventilation Parameters',
        items: [
          PostoperativeCareInhalationItem(
            title: 'LUNG-PROTECTIVE TIDAL VOLUME (6 ML/KG)',
            description: 'Setting tidal volume to 6 mL/kg of Ideal Body Weight (IBW) is critical for patients with ARDS.',
            additionalInfo: 'Standard postoperative patients may be managed with 6-8 mL/kg.',
          ),
          PostoperativeCareInhalationItem(
            title: 'RESPIRATORY RATE AND CO2 TITRATION',
            description: 'Typically set at 10–14 breaths per minute and adjusted to maintain normocapnia.',
            additionalInfo: 'Minute ventilation is primary driver of CO2 clearance.',
          ),
          PostoperativeCareInhalationItem(
            title: 'FIO2 TARGETS AND TOXICITY AVOIDANCE',
            description: 'Aim for the lowest possible FiO2 that maintains an SpO2 of 92–96% to prevent oxygen toxicity.',
            additionalInfo: 'Extended exposure to FiO2 >0.6 should be avoided.',
          ),
          PostoperativeCareInhalationItem(
            title: 'PEEP SELECTION IN ARDS MANAGEMENT',
            description: 'Initial PEEP starts at 5 cmH2O, but higher levels (10-20 cmH2O) are often needed in severe ARDS.',
            additionalInfo: 'Higher PEEP requires careful monitoring of hemodynamic consequences.',
          ),
          PostoperativeCareInhalationItem(
            title: 'STRICT PLATEAU PRESSURE LIMITS (<30 CMH2O)',
            description: 'Plateau pressure must be kept below 30 cmH2O to minimize the risk of barotrauma and VILI.',
            additionalInfo: 'A key indicator of alveolar distension during inspiration.',
          ),
          PostoperativeCareInhalationItem(
            title: 'PEAK INSPIRATORY PRESSURE (PIP) MONITORING',
            description: 'Reflects both airway resistance and lung compliance; objectives should keep PIP <35–40 cmH2O.',
            additionalInfo: 'Sharp increases in PIP suggest acute issues like tube kinking or pneumothorax.',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Noninvasive Ventilation (NIV)',
        items: [
          PostoperativeCareInhalationItem(
            title: 'CPAP: CONTINUOUS POSITIVE AIRWAY PRESSURE',
            description: 'Provides a single constant pressure throughout the respiratory cycle to improve alveolar surface area.',
            additionalInfo: 'Requires an intact spontaneous respiratory drive.',
          ),
          PostoperativeCareInhalationItem(
            title: 'BIPAP: BI-LEVEL POSITIVE AIRWAY PRESSURE',
            description: 'Utilizes different pressures for inspiration (IPAP) and expiration (EPAP) to assist ventilation.',
            additionalInfo: 'IPAP provides the ventilation support while EPAP (PEEP) optimizes oxygenation.',
          ),
          PostoperativeCareInhalationItem(
            title: 'INDICATIONS FOR NONINVASIVE VENTILATION',
            description: 'First-line therapy for COPD exacerbations and acute cardiogenic pulmonary edema.',
            additionalInfo: 'Can prevent the need for endotracheal intubation in many cases.',
          ),
          PostoperativeCareInhalationItem(
            title: 'CONTRAINDICATIONS TO NIV USE',
            description: 'Include altered level of consciousness, risk of massive aspiration, and hemodynamic shock.',
            additionalInfo: 'A patient must be able to protect their own airway to safely use NIV.',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Complications',
        items: [
          PostoperativeCareInhalationItem(
            title: 'BAROTRAUMA AND ALVEOLAR RUPTURE',
            description: 'High airway pressures can lead to pneumothorax, pneumomediastinum, and subcutaneous emphysema.',
            additionalInfo: 'Requires immediate decompression if tension pneumothorax develops.',
          ),
          PostoperativeCareInhalationItem(
            title: 'VOLUTRAUMA: HARM FROM EXCESSIVE STRETCH',
            description: 'Lung injury resulting from excessive alveolar distension by high tidal volumes regardless of pressure.',
            additionalInfo: 'Minimizing VT is the primary defense against volutrauma.',
          ),
          PostoperativeCareInhalationItem(
            title: 'OXYGEN TOXICITY AND ABSORPTIVE ATELEKTASIS',
            description: 'Prolonged high concentrations of oxygen (FiO2 >0.6) lead to free radical damage and alveolar collapse.',
            additionalInfo: 'Nitrogen washout is a major driver of absorptive atelectasis.',
          ),
          PostoperativeCareInhalationItem(
            title: 'HEMODYNAMIC CONSEQUENCES OF HIGH PEEP',
            description: 'Increased intrathoracic pressure reduces venous return, potentially significantly lowering cardiac output.',
            additionalInfo: 'Fluid status must be optimized before aggressive PEEP increments.',
          ),
          PostoperativeCareInhalationItem(
            title: 'VENTILATOR-ASSOCIATED PNEUMONIA (VAP)',
            description: 'The most common infectious complication linked to prolonged mechanical ventilation.',
            additionalInfo: 'Prevention bundles (head elevation, oral care) are essential standard of care.',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'Weaning (Extubation Readiness)',
        items: [
          PostoperativeCareInhalationItem(
            title: 'RESPIRATORY READINESS FOR WEANING',
            description: 'Criteria include SpO2 >90% on FiO2 ≤0.4, PEEP ≤5, and a PaO2/FiO2 ratio >150–200.',
            additionalInfo: 'The patient must also have a stable hemodynamic profile and intact cough/gag reflexes.',
          ),
          PostoperativeCareInhalationItem(
            title: 'SPONTANEOUS BREATHING TRIALS (SBT)',
            description: 'A duration of ≥30 minutes of independent breathing (via T-piece or low support) to assess extubation success.',
            additionalInfo: 'Success in SBT is the best predictor of extubation readiness.',
          ),
          PostoperativeCareInhalationItem(
            title: 'THE RSBI AS A SUCCESS PREDICTOR',
            description: 'A Rapid Shallow Breathing Index (Rate/VT) <105 suggests a high probability of successful weaning.',
            additionalInfo: 'Values >105 indicate impending respiratory muscle fatigue.',
          ),
        ],
      ),
      PostoperativeCareInhalationCategory(
        categoryName: 'PACU Spot Notes',
        items: [
          PostoperativeCareInhalationItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'PACU Hypoxemia: Primary intervention is positioning + O2. Weaning benchmark: RSBI <105.',
            subtitle: 'Residual block + Opioids = Hypoventilation. Shivering adds massive O2 demand',
            additionalInfo: 'Mechanical Ventilation #1 Risk: VAP. Oxygen target: lowest effective concentration to avoid toxicity.',
          ),
        ],
      ),
    ];
  }
}
