import 'package:flutter/material.dart';

class CardiopulmonaryResuscitationItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiopulmonaryResuscitationItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiopulmonaryResuscitationCategory {
  final String categoryName;
  final List<CardiopulmonaryResuscitationItem> items;

  CardiopulmonaryResuscitationCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiopulmonaryResuscitationData {
  static List<CardiopulmonaryResuscitationCategory> getCardiopulmonaryResuscitationData(BuildContext context) {
    return [
      CardiopulmonaryResuscitationCategory(
        categoryName: 'General Principles',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'DEFINITION OF CARDIOPULMONARY RESUSCITATION',
            description: 'Encompasses both basic and advanced life support techniques used to maintain circulation and oxygenation during cardiac arrest.',
            additionalInfo: 'The main objective is to preserve cerebral and end-organ viability.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'CORE RESUSCITATION GOALS',
            description: 'Focuses on early recognition, rapid initiation of basic life support, early defibrillation, and integrated post-resuscitation care.',
            additionalInfo: 'Optimal outcomes depend on minimizing time to first compression and first shock.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'CRITICAL DETERMINANTS OF SUCCESS',
            description: 'High-quality chest compressions and early defibrillation are the most significant factors improving survival rates.',
            additionalInfo: 'Minimize interruptions to compressions to maintain coronary perfusion pressure.',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Diagnosis of Cardiac Arrest',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'PRIMARY SIGNS OF ARREST',
            description: 'Sudden loss of consciousness, absent or agonal breathing, and absence of a detectable pulse.',
            additionalInfo: 'Do not mistake agonal gasps for effective breathing.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'PULSE CHECK PROTOCOL (≤10 SEC)',
            description: 'Carotid or femoral pulse should be checked for no more than 10 seconds before starting chest compressions.',
            additionalInfo: 'If the pulse is not certainly felt within 10 seconds, immediately begin chest compressions.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'RHYTHM ANALYSIS AND CLASSIFICATION',
            description: 'Rhythms are categorized as shockable (VF and pulseless VT) or non-shockable (Asystole and PEA).',
            additionalInfo: 'Management pathways diverge significantly based on this initial rhythm analysis.',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Basic Life Support (BLS)',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'THE CAB SEQUENCE OF INTERVENTION',
            description: 'Prioritizes Circulation (compressions) first, followed by Airway and Breathing.',
            additionalInfo: 'Replaces the older ABC sequence to ensure immediate perfusion.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'CHEST COMPRESSION DEPTH AND RATE',
            description: 'Target a depth of 5–6 cm and a rate of 100–120 compressions per minute for adults.',
            subtitle: 'Compression-to-ventilation ratio: 30:2 for adults; 15:2 for children/infants with two rescuers',
            additionalInfo: 'Allow complete chest recoil between compressions and minimize interruptions.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'OXYGENATION DURING RESUSCITATION',
            description: 'Utilize 100% supplemental oxygen during active resuscitation efforts if available.',
            additionalInfo: 'After ROSC, oxygen should be titrated to avoid hyperoxia.',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Advanced Cardiac Life Support (ACLS)',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'DEFIBRILLATION ENERGY LEVELS',
            description: 'Apply 120–200 J with biphasic defibrillators or 360 J with monophasic devices for shockable rhythms.',
            subtitle: 'Resume CPR immediately after the shock without pausing for rhythm checks',
            additionalInfo: 'Delay in defibrillation is a primary cause of unsuccessful resuscitation.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'PHARMACOLOGICAL INTERVENTIONS',
            description: 'Epinephrine is given at 1 mg IV/IO every 3–5 minutes for all rhythms.',
            subtitle: 'Amiodarone (300 mg bolus, then 150 mg) or Lidocaine for shock-refractory VF/VT; Magnesium for Torsades',
            additionalInfo: 'Intraosseous (IO) access is a preferred alternative if IV access cannot be established quickly.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'PEA AND ASYSTOLE MANAGEMENT',
            description: 'These non-shockable rhythms require high-quality CPR and early epinephrine while investigating underlying causes.',
            additionalInfo: 'Searching for the 5Hs and 5Ts is essential for these rhythms.',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Reversible Causes (5H–5T)',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'THE 5Hs: METABOLIC AND SYSTEMIC CAUSES',
            description: 'Includes Hypovolemia, Hypoxia, Hydrogen ion (acidosis), Hypo-/Hyperkalemia, and Hypothermia.',
            additionalInfo: 'Correction of these factors is mandatory for successful Return of Spontaneous Circulation (ROSC).',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'THE 5Ts: MECHANICAL AND OBSTRUCTIVE CAUSES',
            description: 'Encompasses Tension pneumothorax, Cardiac Tamponade, Toxins, and Thrombosis (coronary or pulmonary).',
            additionalInfo: 'Mechanical issues typically require drainage or surgical/thrombolytic intervention.',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Airway Management',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'AIRWAY INTERVENTION OPTIONS',
            description: 'Can involve bag-valve-mask ventilation, supraglottic devices, or definitive endotracheal intubation.',
            additionalInfo: 'The choice should be based on operator skill and patient needs.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'VENTILATION IN THE INTUBATED PATIENT',
            description: 'Continuous chest compressions are maintained without pauses for ventilation; deliver 1 breath every 6 seconds.',
            additionalInfo: 'Avoid excessive ventilation, which can decrease cardiac output.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'WAVEFORM CAPNOGRAPHY (ETCO2) MONITORING',
            description: 'Acts as a real-time indicator of CPR quality; constant ETCO2 <10 mmHg suggests poor technique or prognosis.',
            additionalInfo: 'A sudden, sustained rise in ETCO2 is the most reliable early indicator of ROSC.',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Post-Resuscitation Care',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'HEMODYNAMIC STABILIZATION (MAP ≥65 MMHG)',
            description: 'Maintain an average arterial pressure of at least 65 mmHg to ensure adequate end-organ perfusion.',
            additionalInfo: 'Utilization of vasopressors or inotropes may be necessary.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'OXYGENATION AND CO2 TARGETS',
            description: 'Target SpO2 of 94–98% and normocapnia while avoiding hyperoxia and hypocapnia.',
            additionalInfo: 'Hyperoxia can exacerbate reperfusion brain injury.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'TARGETED TEMPERATURE MANAGEMENT (TTM)',
            description: 'Keep core body temperature between 32–36 °C for at least 24 hours in patients who remain comatose after ROSC.',
            additionalInfo: 'Actively prevents fever-induced secondary brain damage.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'NEUROLOGICAL MONITORING IN THE COMA PATIENT',
            description: 'Continuous or serial EEG should be used to detect subclinical seizures and assist in neuroprognostication.',
            additionalInfo: 'Multimodal assessment is usually delayed until 72 hours post-ROSC.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'ADDRESSING THE UNDERLYING ETIOLOGY',
            description: 'Interventions include immediate coronary reperfusion (PCI), correction of electrolytes, or managing intoxications.',
            additionalInfo: 'Standard care includes search for triggers to prevent re-arrest.',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Special Situations',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'PREGNANCY-RELATED RESUSCITATION',
            description: 'For patients over 20 weeks gestation, apply manual left uterine displacement to relieve aortocaval compression.',
            additionalInfo: 'Significantly improves venous return and compression efficacy.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'HYPOTHERMIC CARDIAC ARREST',
            description: 'If core temperature is <30 °C, the efficacy of drugs and defibrillation is limited; prioritize rewarming.',
            additionalInfo: 'Resuscitation efforts should often be more prolonged in hypothermic patients.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'TRAUMATIC CARDIAC ARREST',
            description: 'Focus is on airway control, chest decompression, and immediate management of massive hemorrhage.',
            additionalInfo: 'Standard medical ACLS drugs are less effective in hemorrhagic shock arrest.',
          ),
          CardiopulmonaryResuscitationItem(
            title: 'ASTHMA AND AIRWAY OBSTRUCTION',
            description: 'Avoid dynamic hyperinflation by using slower ventilation rates and allowing for longer expiration times.',
            additionalInfo: 'High intrathoracic pressures can further reduce cardiac output.',
          ),
        ],
      ),
      CardiopulmonaryResuscitationCategory(
        categoryName: 'Clinical Practice Pearls',
        items: [
          CardiopulmonaryResuscitationItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Success hinges on early defibrillation + high-quality compressions (with fraction >60%).',
            subtitle: 'Epinephrine for all rhythms; Amiodarone for shock-resistant VF/VT; ETCO2 is the quality monitor',
            additionalInfo: 'After ROSC: TTM (32-36 °C), hemodynamics (MAP ≥65), and cause-specific reperfusion.',
          ),
        ],
      ),
    ];
  }
}
