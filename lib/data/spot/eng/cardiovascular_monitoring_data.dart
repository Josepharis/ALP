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
  static List<CardiovascularMonitoringCategory> getCardiovascularMonitoringData(BuildContext context) {
    return [
      CardiovascularMonitoringCategory(
        categoryName: 'Arterial Blood Pressure (ABP)',
        items: [
          CardiovascularMonitoringItem(
            title: 'Pulse Pressure (PP)',
            description: 'Systolic – Diastolic',
          ),
          CardiovascularMonitoringItem(
            title: 'Mean ABP (MAP)',
            description: '(Systolic – Diastolic)/3 + Diastolic',
          ),
          CardiovascularMonitoringItem(
            title: 'Peripheral Pressure',
            description: 'From central to peripheral, systolic and pulse pressure increase, waveform changes',
            subtitle: 'After hypothermic CPB: peripheral pressure may be low',
          ),
          CardiovascularMonitoringItem(
            title: 'Non-Invasive (NIBP) - Indication',
            description: 'All types of anesthesia; measurement every 3–5 min is sufficient',
          ),
          CardiovascularMonitoringItem(
            title: 'Non-Invasive (NIBP) - Contraindications',
            description: 'AV shunt, limb with IV line, burns, etc.',
          ),
          CardiovascularMonitoringItem(
            title: 'NIBP Methods - Palpation',
            description: 'Measures only systolic',
          ),
          CardiovascularMonitoringItem(
            title: 'NIBP Methods - Doppler',
            description: 'Measures systolic (diastolic possible with additions)',
          ),
          CardiovascularMonitoringItem(
            title: 'NIBP Methods - Auscultation',
            description: 'Korotkoff sounds; Phase I → Systolic, Phase V → Diastolic',
          ),
          CardiovascularMonitoringItem(
            title: 'NIBP Methods - Oscillometry',
            description: 'Measures ~10 mmHg higher than direct ABP; measures systolic and MAP',
          ),
          CardiovascularMonitoringItem(
            title: 'NIBP Methods - Arterial Tonometer',
            description: 'Measured over bony artery; frequent calibration needed',
          ),
          CardiovascularMonitoringItem(
            title: 'Cuff Size',
            description: 'Width = 40% of arm circumference, length = 80% of limb',
          ),
          CardiovascularMonitoringItem(
            title: 'Invasive (IBP) - Indication',
            description: 'Conditions requiring strict hemodynamic monitoring',
          ),
          CardiovascularMonitoringItem(
            title: 'Invasive (IBP) - Vessel Choice',
            description: 'Radial > Brachial > Femoral > Ulnar/Dorsalis pedis/Axillary',
          ),
          CardiovascularMonitoringItem(
            title: 'Invasive (IBP) - Complications',
            description: 'Hematoma, bleeding, vasospasm, thrombosis, pseudoaneurysm, necrosis, nerve injury, infection',
          ),
          CardiovascularMonitoringItem(
            title: 'Invasive (IBP) - Waveform',
            description: 'Fourier theory, ideal 16–24 Hz',
          ),
          CardiovascularMonitoringItem(
            title: 'Heart Level Reference',
            description: 'Mid-axillary line; for cerebral perfusion, external auditory meatus',
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Electrocardiography (ECG)',
        items: [
          CardiovascularMonitoringItem(
            title: 'Mandatory Monitoring',
            description: 'Mandatory intraoperative ECG monitoring for all patients',
          ),
          CardiovascularMonitoringItem(
            title: 'Waves and Complexes',
            description: 'P → atrial systole',
            subtitle: 'QRS → ventricular systole',
            additionalInfo: 'T → repolarization',
          ),
          CardiovascularMonitoringItem(
            title: 'Leads - DII',
            description: 'Atrial activity, arrhythmias, inferior wall ischemia',
          ),
          CardiovascularMonitoringItem(
            title: 'Leads - V5',
            description: 'Anterior/lateral wall ischemia',
          ),
          CardiovascularMonitoringItem(
            title: 'Ischemic Change',
            description: 'ST depression ≥1 mm, T wave inversion 80 ms after J point',
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Central Venous Catheter (CVC)',
        items: [
          CardiovascularMonitoringItem(
            title: 'Indications',
            description: 'CVP monitoring, fluid resuscitation, caustic drugs, TPN, aspiration of air embolism',
          ),
          CardiovascularMonitoringItem(
            title: 'Placement',
            description: 'Internal jugular (short-term), subclavian (long-term)',
          ),
          CardiovascularMonitoringItem(
            title: 'Complications',
            description: 'Infection, air/thromboembolism, arrhythmias, hematoma, pneumo/hemo/chylothorax, cardiac perforation',
          ),
          CardiovascularMonitoringItem(
            title: 'CVP Waves',
            description: 'a → atrial contraction',
            subtitle: 'c → tricuspid valve bulging',
            additionalInfo: 'x → atrial relaxation\nv → atrial filling\ny → tricuspid valve opening',
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Pulmonary Artery Catheter (Swan-Ganz)',
        items: [
          CardiovascularMonitoringItem(
            title: 'Measurements',
            description: 'CO, pulmonary artery occlusion pressure (PAOP/PCWP)',
          ),
          CardiovascularMonitoringItem(
            title: 'Ideal Position',
            description: 'Zone III; with PEEP >10 cmH₂O → add +1–2 mmHg',
          ),
          CardiovascularMonitoringItem(
            title: 'Complications',
            description: 'Same as CVC plus valve injury, PA injury',
          ),
          CardiovascularMonitoringItem(
            title: 'Interpretation',
            description: 'Low PAOP → hypovolemia',
            subtitle: 'High PAOP → volume overload, need for inotropes',
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Cardiac Output (CO)',
        items: [
          CardiovascularMonitoringItem(
            title: 'Thermodilution',
            description: 'Cold fluid injected into RA, CO measured by thermistor',
          ),
          CardiovascularMonitoringItem(
            title: 'Transpulmonary Thermodilution (PiCCO)',
            description: 'No PA catheter required, measures global diastolic volume & extravascular lung water',
          ),
          CardiovascularMonitoringItem(
            title: 'Dye Dilution',
            description: 'CO measurement with indocyanine green or lithium system',
          ),
          CardiovascularMonitoringItem(
            title: 'Pulse Contour Devices',
            description: 'Assess CO, SVV, PPV (arterial access required)',
          ),
          CardiovascularMonitoringItem(
            title: 'Esophageal Doppler',
            description: 'Descending aortic flow velocity → CO ≈ 70%',
          ),
          CardiovascularMonitoringItem(
            title: 'Thoracic Bioimpedance',
            description: 'Calculates CO from thoracic volume changes',
          ),
          CardiovascularMonitoringItem(
            title: 'Fick Principle',
            description: 'CO = VO₂ / (CaO₂ – CvO₂), SvO₂ ≈ 75%',
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Echocardiography (ECHO)',
        items: [
          CardiovascularMonitoringItem(
            title: 'TTE',
            description: 'Non-invasive, safe',
          ),
          CardiovascularMonitoringItem(
            title: 'TEE',
            description: 'No window limitation, but complications include esophageal rupture, mediastinitis',
          ),
          CardiovascularMonitoringItem(
            title: 'Most Accurate Method',
            description: 'Most accurate method to assess left ventricular preload = TEE',
          ),
        ],
      ),
      CardiovascularMonitoringCategory(
        categoryName: 'Key Exam Spots',
        items: [
          CardiovascularMonitoringItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'MAP = (Systolic-Diastolic)/3 + Diastolic',
            subtitle: 'Cuff size: width 40%, length 80% of limb',
            additionalInfo: 'Vessel choice: Radial > Brachial > Femoral\nECG: DII for arrhythmias, V5 for ischemia\nCVP waves: a, c, x, v, y',
          ),
        ],
      ),
    ];
  }
}
