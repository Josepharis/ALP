import 'package:flutter/material.dart';

class NoncardiovascularMonitoringItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NoncardiovascularMonitoringItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NoncardiovascularMonitoringCategory {
  final String categoryName;
  final List<NoncardiovascularMonitoringItem> items;

  NoncardiovascularMonitoringCategory({
    required this.categoryName,
    required this.items,
  });
}

class NoncardiovascularMonitoringData {
  static List<NoncardiovascularMonitoringCategory>
  getNoncardiovascularMonitoringData(BuildContext context) {
    return [
      NoncardiovascularMonitoringCategory(
        categoryName: 'Respiratory Gas Exchange Monitors',
        items: [
          NoncardiovascularMonitoringItem(
            title: "STETHOSCOPE (PRECORDIAL AND ESOPHAGEAL)",
            description: "The primary method for continuous monitoring of breath sounds and heart rhythm in the absence of advanced gas monitors.",
            subtitle: "Contraindications: Presence of esophageal stricture and varices",
            additionalInfo: "Precordial stethoscopy is applied by placing it over the chest wall or suprasternal notch. Esophageal stethoscopy (8-24F) provides listening from the points closest to the heart and lungs by placing a ballooned catheter into the esophagus. It is particularly valuable for monitoring intubation and ventilation in pediatric patients.",
          ),
          NoncardiovascularMonitoringItem(
            title: "PULSE OXIMETER",
            description: "A mandatory non-invasive device for every anesthesia application that measures blood oxygen saturation (SpO2) and pulse rate.",
            subtitle: "Operates on the principle of the Lambert-Beer Law",
            additionalInfo: "It measures light absorption at 660 nm (deoxyhemoglobin) and 940 nm (oxyhemoglobin) wavelengths via a light source and sensor. Carbon monoxide poisoning (COHb), methemoglobinemia, methylene blue use, and low perfusion states can mislead the measurement. An SpO2 measurement of 90% corresponds to a PaO2 value of approximately 60-65 mmHg.",
          ),
          NoncardiovascularMonitoringItem(
            title: "CAPNOGRAPHY (ETCO2)",
            description: "The gold standard providing momentary information about the adequacy of ventilation and metabolic state by monitoring the amount of carbon dioxide in exhaled air.",
            subtitle: "Infrared (IR) light absorption technique is used",
            additionalInfo: "It is mandatory for confirming endotracheal placement in every patient under general anesthesia. A sudden increase in ETCO2 seen on the capnograph may be the first sign of Malignant Hyperthermia. Normally, the difference between arterial CO2 and ETCO2 (PaCO2-ETCO2) is approximately 2-5 mmHg; an increase in this difference indicates increased dead space ventilation.",
          ),
          NoncardiovascularMonitoringItem(
            title: "ANESTHETIC GAS ANALYSIS",
            description: "Advanced measurement technologies that determine the concentrations of oxygen, nitrous oxide, and volatile agents in inspired and fresh gas lines.",
            subtitle: "Oxygen and nitrogen do not absorb IR rays; they require special sensors",
            additionalInfo: "Analysis methods include:\n• Infrared spectrophotometry: The most common method; able to differentiate between agents.\n• Piezoelectric oscillation: Operates on an acoustic principle but cannot differentiate between agents.\n• Galvanic cell: Measures oxygen by chemically consuming it; has a limited life span.\n• Paramagnetic analysis: Uses the magnetic properties of oxygen and provides a fast response.",
          ),
          NoncardiovascularMonitoringItem(
            title: "SPIROMETRY",
            description: "Evaluates lung compliance and airway resistance by monitoring flow, volume, and pressure changes in the breathing circuit.",
            additionalInfo: "Conditions such as flow limitation, over-distention, or secretion accumulation can be visually detected via pressure-volume loops. It guides the clinician in PEEP optimization and atelectasis monitoring.",
          ),
        ],
      ),
      NoncardiovascularMonitoringCategory(
        categoryName: 'Neurological Monitors',
        items: [
          NoncardiovascularMonitoringItem(
            title: "ELECTROENCEPHALOGRAPHY (EEG) AND BIS",
            description: "Used to assess the depth of anesthesia and prevent awareness by monitoring the electrical activity of the brain.",
            subtitle: "BIS (Bispectral Index): A range of 40-60 indicates ideal general anesthesia depth",
            additionalInfo: "EEG wave types are classified by their frequencies:\n• Alpha (8-13 Hz): Distant resting state.\n• Beta (13-30 Hz): Active thinking or light anesthesia.\n• Delta (0.5-4 Hz): Deep sleep or deep anesthesia.\n• Theta (4-7 Hz): Drowsy state.\nBIS value varies between 100 (fully awake) and 0 (isoelectric EEG). Additionally, the Entropy module (SE and RE) monitors both brain and muscle activity.",
          ),
          NoncardiovascularMonitoringItem(
            title: "EVOKED POTENTIALS (EP)",
            description: "Monitoring that reduces the risk of paralysis in neurosurgery and spinal surgeries by measuring the central nervous system responses to stimuli given to nerve pathways.",
            subtitle: "SEP monitors sensory (cortex), MEP monitors motor transmission (muscle)",
            additionalInfo: "MEP is contraindicated in those with implanted devices (pacemakers), metal skull defects, or severe brain damage. Anesthetic agents (especially inhalation agents) can make monitoring difficult by decreasing the amplitude and increasing the latency of EP waves. Neuromuscular blockers (NMB) have no effect on SEP, but muscle relaxation must be reversed for MEP measurement.",
          ),
          NoncardiovascularMonitoringItem(
            title: "CEREBRAL OXIMETRY (NIRS)",
            description: "Continuously and non-invasively monitors regional oxygen saturation (rSO2) in the frontal region of the brain using near-infrared light technology.",
            subtitle: "Values below 40% or a 25% change from baseline are risky",
            additionalInfo: "Since it does not have pulsatile flow, it can provide information even in cases of low cardiac output or hypothermia. Normal values are generally in the range of 60-70%. It is of vital importance for detecting cerebral ischemia in procedures where brain perfusion is at risk, such as cardiac surgery and carotid surgery.",
          ),
        ],
      ),
      NoncardiovascularMonitoringCategory(
        categoryName: 'Other Monitors',
        items: [
          NoncardiovascularMonitoringItem(
            title: "BODY TEMPERATURE MONITORING",
            description: "Mandatory for the detection of hypothermia or malignant hyperthermia that may develop as heat regulation mechanisms are suppressed under general anesthesia.",
            subtitle: "Core temperature monitoring is the gold standard",
            additionalInfo: "Heat loss occurs in three phases: I- Redistribution (central to peripheral), II- Net heat loss, III- Thermal balance. Among measurement sites, the esophagus, nasopharynx, tympanic membrane, and urinary bladder are regions that most accurately reflect core temperature. Perioperative hypothermia increases the risk of infection and impairs clotting.",
          ),
          NoncardiovascularMonitoringItem(
            title: "URINE OUTPUT (OLIGURIA MONITORING)",
            description: "One of the most objective indicators of vital organ perfusion and fluid balance.",
            subtitle: "Values below 0.5 mL/kg/hour are considered oliguria",
            additionalInfo: "Monitored via a Foley catheter. Oliguria may develop due to inadequate fluid intake, renal failure, or excessive ADH secretion. It is a fundamental monitoring method for the preservation of renal functions, especially in long-duration operations, major surgeries, and cardiovascular surgery.",
          ),
          NoncardiovascularMonitoringItem(
            title: "PERIPHERAL NERVE STIMULATION (TOF)",
            description: "Used to measure the effect of neuromuscular blockers, determine intubation time, and ensure safe emergence of the patient from anesthesia (extubation).",
            subtitle: "A TOF (Train-of-Four) ratio above 0.9 is targeted for complete recovery",
            additionalInfo: "Usually, the response of the adductor pollicis muscle is measured over the ulnar nerve. In the TOF test, 4 stimuli are given within 2 seconds; in non-depolarizing blocks, these responses progressively weaken. Obtaining only one of the 4 responses indicates that muscle relaxation continues at a rate of 90%. The orbicularis oculi muscle is more resistant to muscle relaxation and shows recovery earlier, similar to the diaphragm.",
          ),
        ],
      ),
    ];
  }
}
