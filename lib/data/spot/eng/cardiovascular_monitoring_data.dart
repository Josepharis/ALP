import 'package:flutter/material.dart';

class CardiovascularMonitoringItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiovascularMonitoringItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiovascularMonitoringCategory {
  final String categoryName;
  final List<CardiovascularMonitoringItem> items;

  CardiovascularMonitoringCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiovascularMonitoringData {
  static List<CardiovascularMonitoringCategory> getCardiovascularMonitoringData(
    BuildContext context,
  ) {
    return [
      CardiovascularMonitoringCategory(
        categoryName: 'Arterial Blood Pressure (ABP)',
        items: [
          CardiovascularMonitoringItem(
            title: "PULSE PRESSURE (PP)",
            description: "The difference between systolic and diastolic pressure; provides information about stroke volume and arterial compliance.",
            additionalInfo: "In a normal adult, pulse pressure reflects the amount of blood pumped by the heart with each beat (SV) and the elasticity of the vascular bed against this volume. It is calculated using the formula: Systolic - Diastolic.",
          ),
          CardiovascularMonitoringItem(
            title: "MEAN ARTERIAL PRESSURE (MAP)",
            description: "The most critical pressure value determining tissue perfusion; it is closer to diastolic pressure because most of the cardiac cycle is spent in diastole.",
            additionalInfo: "Calculation formula: [(Systolic – Diastolic) / 3] + Diastolic. Maintaining values of 65 mmHg and above is generally targeted for organ perfusion.",
          ),
          CardiovascularMonitoringItem(
            title: "PERIPHERAL PRESSURE CHANGES",
            description: "As blood flow advances from the center to the periphery, systolic pressure rises while the waveform becomes steeper and narrower.",
            additionalInfo: "Due to the reflection of arterial waves, the systolic pressure measured at the wrist may appear higher than the pressure in the aorta. However, mean arterial pressure is almost the same throughout the body. Peripheral pressure can be misleading due to peripheral vasoconstriction after hypothermia and CPB.",
          ),
          CardiovascularMonitoringItem(
            title: "NON-INVASIVE MONITORING (NIBP)",
            description: "A mandatory pressure measurement method for every patient undergoing anesthesia, performed via a cuff.",
            additionalInfo: "Ideal cuff size should be 40% of arm circumference and length should be 80% of the limb. A small cuff shows pressure higher, while a large cuff shows it lower. Measurement methods include:\n• Auscultation: Based on Korotkoff sounds (Phase I: Systolic, Phase V: Diastolic).\n• Oscillometry: The standard method for modern devices; measures mean pressure most accurately.\n• Doppler and Palpation: Generally can only detect systolic pressure.",
          ),
          CardiovascularMonitoringItem(
            title: "INVASIVE MONITORING (IBP)",
            description: "A method that allows real-time and continuous monitoring of blood pressure with each heart beat through arterial catheterization.",
            additionalInfo: "It is the gold standard for surgeries requiring frequent blood gas follow-up or in hemodynamically unstable conditions. The radial artery is most commonly preferred; brachial, femoral, and ulnar arteries can also be used. The transducer (sensor) level should be zeroed at the mid-axillary line at the level of the right atrium (Phlebostatic Axis). In neurosurgery, the zeroing point is at the level of the external auditory meatus.",
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Electrocardiography (ECG)',
        items: [
          CardiovascularMonitoringItem(
            title: "INTRAOPERATIVE ECG STANDARD",
            description: "Intraoperative ECG monitoring is a legal requirement for all patients under anesthesia to monitor heart rate, rhythm, and signs of ischemia.",
            additionalInfo: "ECG plays a vital role in detecting myocardial ischemia, conduction defects, electrolyte imbalances, and drug effects. In the operating room environment, 3 or 5-lead systems are generally preferred.",
          ),
          CardiovascularMonitoringItem(
            title: "WAVES AND COMPLEXES",
            description: "ECG waves consist of specific sections representing the electrical stimulation and resting phases of the heart.",
            additionalInfo: "• P wave: Represents atrial depolarization (beginning of systole).\n• QRS complex: Represents ventricular depolarization (ventricular systole).\n• T wave: Represents ventricular repolarization (resting phase).\nThe ST segment is the most critical section in monitoring myocardial ischemia.",
          ),
          CardiovascularMonitoringItem(
            title: "CRITICAL LEADS AND ISCHEMIA",
            description: "Lead DII is best for monitoring arrhythmias and the inferior wall, while lead V5 is the best point for monitoring the anterior and lateral walls.",
            additionalInfo: "For the diagnosis of myocardial ischemia, an ST segment depression of ≥1 mm at 80 ms after the J point or T wave inversion is considered significant. More than 80% of ischemia can be captured by simultaneous monitoring of DII and V5 leads.",
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Central Venous Catheter (CVC)',
        items: [
          CardiovascularMonitoringItem(
            title: "CVC INDICATIONS",
            description: "Used for monitoring CVP pressure, administration of large-volume fluids, application of irritating drugs (chemotherapy, inotropes), and TPN support.",
            additionalInfo: "It also provides a vital access route for aspiration in neurosurgeries carrying a risk of air embolism and for patients where peripheral vascular access cannot be established. It is also preferred for dialysis access in acute renal failure.",
          ),
          CardiovascularMonitoringItem(
            title: "CATHETER PLACEMENT AND PREFERENCE",
            description: "The right internal jugular vein (IJV) is preferred for short-term access, while the subclavian vein is the primary choice for long-term nutrition and chemotherapy.",
            additionalInfo: "The right IJV is the most frequently used site because it offers the most direct path to the right atrium. Subclavian vein catheterization is safer in terms of infection but carries a higher risk of pneumothorax. The catheter tip should be at the junction of the superior vena cava and the right atrium.",
          ),
          CardiovascularMonitoringItem(
            title: "CVC COMPLICATIONS",
            description: "The most common risks include pneumothorax, malposition, and arrhythmia during insertion; and infection and thrombosis in the long term.",
            additionalInfo: "Rare but fatal complications include cardiac perforation and tamponade. To prevent the risk of air embolism, the procedure must be performed in the Trendelenburg position. Full sterile barrier precautions are mandatory during placement for infection control.",
          ),
          CardiovascularMonitoringItem(
            title: "CVP WAVEFORMS",
            description: "The central venous pressure trace consists of five basic waves (a, c, x, v, y) reflecting pressure changes in the cardiac cycle.",
            additionalInfo: "• a wave: Represents atrial systole (after the P wave).\n• c wave: Represents tricuspid valve bulging into the atrium during ventricular systole.\n• x descent: Represents atrial relaxation.\n• v wave: Represents passive atrial filling.\n• y descent: Represents tricuspid valve opening and ventricular filling.\nIn atrial fibrillation, the 'a' wave disappears, while in tricuspid regurgitation, giant 'v' waves are seen.",
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Pulmonary Artery Catheter (Swan-Ganz)',
        items: [
          CardiovascularMonitoringItem(
            title: "SWAN-GANZ MEASUREMENT PRINCIPLES",
            description: "An advanced monitoring technique allowing measurement of cardiac output (CO), pulmonary artery pressures, and 'wedge' (PCWP) pressure.",
            additionalInfo: "The catheter is placed in the pulmonary artery passing through the right atrium and ventricle. When the balloon is inflated (PCWP measurement), the pressure of the left atrium is indirectly measured. For ideal measurement, the catheter should be positioned in the West Zone III region. PEEP values above 10 cmH₂O misleadingly elevate PAOP measurements.",
          ),
          CardiovascularMonitoringItem(
            title: "PA CATHETER COMPLICATIONS",
            description: "In addition to CVC complications, the most dangerous risks are pulmonary artery rupture and valve damage.",
            additionalInfo: "Continuous Swan-Ganz monitoring brings additional risks such as knotting, pulmonary infarction, and right bundle branch block. If PA rupture occurs, severe massive hemoptysis is seen and requires emergency intervention.",
          ),
          CardiovascularMonitoringItem(
            title: "PAOP (WEDGE) EVALUATION",
            description: "Pulmonary Artery Occlusion Pressure (PAOP) provides information about the left ventricular preload and left heart functions.",
            additionalInfo: "Low PAOP levels generally indicate hypovolemia, while high levels indicate heart failure or volume overload. By combining PAOP and CO data, it is decided whether the patient needs inotropic support or fluid.",
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Cardiac Output and Advanced Monitoring',
        items: [
          CardiovascularMonitoringItem(
            title: "THERMODILUTION METHOD",
            description: "Calculation of cardiac output based on the temperature change detected by the thermistor in the pulmonary artery of cold fluid delivered to the right atrium.",
            additionalInfo: "Modern Swan-Ganz catheters use this technique. The area under the temperature-time curve is inversely proportional to cardiac output (CO). Results may be misleading in tricuspid regurgitation or intracardiac shunts.",
          ),
          CardiovascularMonitoringItem(
            title: "TRANSPULMONARY THERMODILUTION (PiCCO)",
            description: "A system offering expanded hemodynamic data through collaboration of central vein and large artery (femoral, etc.) without requiring a pulmonary artery catheter.",
            additionalInfo: "In addition to cardiac output, it can measure critical parameters such as global diastolic volume and extravascular lung water, which indicate pulmonary edema early. It is less invasive but requires frequent calibration.",
          ),
          CardiovascularMonitoringItem(
            title: "PULSE CONTOUR ANALYSIS AND DOPPLER",
            description: "Devices providing cardiac output, stroke volume variation (SVV), and pulse pressure variation (PPV) by analyzing the arterial waveform.",
            additionalInfo: "SVV and PPV are the most reliable dynamic parameters showing whether the patient will respond to fluid. The esophageal Doppler method estimates CO with approximately 70% accuracy by measuring blood flow velocity in the descending aorta via a probe.",
          ),
          CardiovascularMonitoringItem(
            title: "FICK PRINCIPLE AND OTHER METHODS",
            description: "Mathematical calculation of cardiac output using oxygen consumption and arterio-venous blood oxygen difference.",
            additionalInfo: "Formula: CO = VO₂ / (CaO₂ – CvO₂). This method is used to evaluate adequacy of organ perfusion by monitoring mixed venous oxygen saturation (SvO₂ %75). Dye dilution (Indocyanine green) and thoracic bioimpedance techniques are also available.",
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Echocardiography (ECHO)',
        items: [
          CardiovascularMonitoringItem(
            title: "TTE AND TEE DIFFERENCES",
            description: "While Transthoracic (TTE) is completely risk-free and non-invasive, Transesophageal (TEE) offers much clearer images but is invasive.",
            additionalInfo: "In TTE, the imaging window may be limited due to the rib cage, COPD, or obesity. TEE reach the heart via the esophagus and provides the clearest valve and ventricle images without obstruction. The most serious TEE complications include esophageal rupture and mediastinitis.",
          ),
          CardiovascularMonitoringItem(
            title: "PRELOAD EVALUATION WITH TEE",
            description: "Echocardiography is the most accurate method to show left ventricular filling level (preload) compared to calculation systems or Swan-Ganz.",
            additionalInfo: "Ventricular contractility, valve functions, regional wall motion abnormalities, and volume status can be monitored momentarily 'by direct observation' during the intraoperative period. It is an indispensable monitoring tool, especially in major cardiac surgeries.",
          ),
        ],
      ),
    ];
  }
}
