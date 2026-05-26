import 'package:flutter/material.dart';

class Erc2021Item {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  Erc2021Item({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class Erc2021Category {
  final String categoryName;
  final List<Erc2021Item> items;

  Erc2021Category({
    required this.categoryName,
    required this.items,
  });
}

class Erc2021Data {
  static List<Erc2021Category> getErc2021Data(BuildContext context) {
    return [
      Erc2021Category(
        categoryName: 'Basic Life Support (BLS)',
        items: [
          Erc2021Item(
            title: 'DIAGNOSIS OF CARDIAC ARREST: UNRESPONSIVE AND AGONAL BREATHING',
            description: 'Cardiac arrest is diagnosed if a patient is unresponsive and not breathing normally (including agonal gasps).',
            additionalInfo: 'Pulse checks should not delay the start of chest compressions.',
          ),
          Erc2021Item(
            title: 'EMERGENCY CALL AND SPEAKER MODE ASSISTANCE',
            description: 'Activate the emergency medical services immediately and use the phone on speaker mode to receive dispatcher guidance.',
            additionalInfo: 'Hands-free communication allows for an earlier start to CPR.',
          ),
          Erc2021Item(
            title: 'CHEST COMPRESSION DEPTH AND RATE GUIDELINES',
            description: 'Compress the lower half of the sternum to a depth of 5–6 cm at a frequency of 100–120 compressions per minute.',
            additionalInfo: 'Ensure full chest recoil between compressions and minimize interruptions.',
          ),
          Erc2021Item(
            title: 'RESCUE BREATHS AND THE 30:2 COMPRESSION RATIO',
            description: 'Deliver 2 rescue breaths for every 30 compressions; if unable to provide breaths, perform compression-only CPR.',
            additionalInfo: 'Continuous chest compressions are vital for maintaining coronary perfusion pressure.',
          ),
          Erc2021Item(
            title: 'AED APPLICATION AND ELECTRODE PAD PLACEMENT',
            description: 'Apply an Automated External Defibrillator as soon as it arrives, using the standard anterolateral configuration.',
            subtitle: 'Anteroposterior placement is an acceptable alternative',
            additionalInfo: 'Resume compressions immediately after the shock is delivered.',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Advanced Life Support (ALS)',
        items: [
          Erc2021Item(
            title: 'RHYTHM CLASSIFICATION: SHOCKABLE VS NON-SHOCKABLE',
            description: 'Determine the rhythm: shockable (VF/pulseless VT) requires immediate defibrillation; non-shockable (PEA/asystole) requires immediate adrenaline.',
            additionalInfo: 'Early shocks are the strongest predictor of survival in VF/pVT.',
          ),
          Erc2021Item(
            title: 'ADRENALINE TIMING IN CARDIAC ARREST ALGORITHMS',
            description: 'Administer 1 mg of adrenaline as soon as possible for non-shockable rhythms, and after the 3rd shock for shockable rhythms.',
            subtitle: 'Repeat the dose every 3–5 minutes throughout the resuscitation',
            additionalInfo: 'Intraosseous (IO) access is a valid alternative if IV access cannot be established within 2 minutes.',
          ),
          Erc2021Item(
            title: 'ADVANCED AIRWAY MANAGEMENT AND COMPETENCY',
            description: 'Advanced airway interventions like endotracheal intubation should only be performed by highly experienced personnel.',
            additionalInfo: 'Supraglottic airway devices are often preferred for less experienced providers.',
          ),
          Erc2021Item(
            title: 'POCUS FOR REVERSIBLE CAUSE IDENTIFICATION',
            description: 'Focused Ultrasound can identify 5H-5T causes but must not interfere with the 10-second rhythm check limit.',
            additionalInfo: 'Especially useful for diagnosing cardiac tamponade or massive PE.',
          ),
          Erc2021Item(
            title: 'REFRACTORY VF AND ANTICIPATORY DEFIBRILLATOR CHARGING',
            description: 'For persistent VF, consider changing pad position to anteroposterior and charging the device while compressions are ongoing.',
            subtitle: 'Amiodarone 300 mg should be given after the 3rd shock',
            additionalInfo: 'Minimizing the "peri-shock pause" is critical for success.',
          ),
          Erc2021Item(
            title: 'POST-ROSC CARE AND SEARCH FOR REVERSIBLE CAUSES',
            description: 'Once spontaneous circulation returns, search for reversible causes and implement targeted temperature management.',
            additionalInfo: 'Post-resuscitation syndrome management is key to neurological recovery.',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'First Aid Principles',
        items: [
          Erc2021Item(
            title: 'PRIMARY GOALS OF FIRST AID INTERVENTION',
            description: 'Focused on preserving life, alleviating pain, preventing further injury, and accelerating recovery.',
            additionalInfo: 'Education of the general public is the first step in the chain of survival.',
          ),
          Erc2021Item(
            title: 'THE RECOVERY POSITION FOR UNCONSCIOUS PATIENTS',
            description: 'Place unresponsive patients with normal breathing in a lateral recovery position with the head tilted back.',
            additionalInfo: 'Maintains a clear airway and prevents aspiration of gastric contents.',
          ),
          Erc2021Item(
            title: 'MANAGEMENT OF PATIENTS IN HYPOVOLEMIC SHOCK',
            description: 'Position the patient supine and consider elevating the legs to facilitate venous return.',
            additionalInfo: 'Control active external bleeding using direct pressure.',
          ),
          Erc2021Item(
            title: 'ANAPHYLAXIS TREATMENT AND EPINEPHRINE AUTO-INJECTORS',
            description: 'Administer an adrenaline auto-injector into the lateral thigh; repeat after 5 minutes if symptoms persist.',
            additionalInfo: 'Early administration is the cornerstone of anaphylaxis management.',
          ),
          Erc2021Item(
            title: 'HYPOGLYCEMIA CORRECTION AND THE 15-MINUTE RULE',
            description: 'Give 15–20 g of glucose to conscious patients; recheck blood glucose after 15 minutes and repeat if necessary.',
            additionalInfo: 'Unconscious patients require medical intervention (glucagon or IV dextrose).',
          ),
          Erc2021Item(
            title: 'CHEST PAIN MANAGEMENT AND ASPIRIN ADMINISTRATION',
            description: 'If non-traumatic chest pain and no contraindications, give 150–300 mg of aspirin to chew.',
            additionalInfo: 'Reduces platelet aggregation in suspected Acute Coronary Syndrome.',
          ),
          Erc2021Item(
            title: 'HEAT STROKE AND RAPID COOLING TECHNIQUES',
            description: 'Initiate rapid cooling immediately, preferably using cold-water immersion until core temperature drops.',
            additionalInfo: 'Heat stroke is a medical emergency with high mortality if not cooled quickly.',
          ),
          Erc2021Item(
            title: 'BLEEDING CONTROL: DIRECT PRESSURE AND TOURNIQUETS',
            description: 'Apply firm direct pressure to wounds; use a commercial tourniquet if massive limb bleeding is not controlled.',
            additionalInfo: 'A tourniquet should be tightened until the distal pulse disappears.',
          ),
          Erc2021Item(
            title: 'FOREIGN BODY AIRWAY OBSTRUCTION (FBAO) STEPS',
            description: 'Encourage coughing, followed by 5 back blows and 5 abdominal thrusts (Heimlich maneuver).',
            additionalInfo: 'If the patient becomes unresponsive, start chest compressions immediately.',
          ),
          Erc2021Item(
            title: 'THERMAL BURN FIRST AID AND COOLING DURATION',
            description: 'Rinse the burned area with cool running water for at least 20 minutes and cover with a sterile dressing.',
            additionalInfo: 'Avoid ice as it can cause further tissue damage through vasoconstriction.',
          ),
        ],
      ),
      Erc2021Category(
        categoryName: 'Neonatal Resuscitation',
        items: [
          Erc2021Item(
            title: 'NEONATAL TRANSITION STATISTICS AND PPV NEEDS',
            description: 'While 85% of newborns breathe spontaneously, 5% require Positive Pressure Ventilation (PPV).',
            subtitle: '10% respond to drying, stimulation, and airway opening efforts',
            additionalInfo: 'Intubation is required in less than 2% of all deliveries.',
          ),
          Erc2021Item(
            title: 'TEMPERATURE CONTROL TARGETS (36.5–37.5 °C)',
            description: 'Thermal stability is essential; maintain a delivery room temperature of 23–25 °C (>25 °C for preterms).',
            subtitle: 'Preterms ≤32 weeks require polyethylene wrap and radiant warmers immediately',
            additionalInfo: 'Hypothermia at birth is a major risk factor for neonatal mortality.',
          ),
          Erc2021Item(
            title: 'UMBILICAL CORD MANAGEMENT AND CLAMPING DELAY',
            description: 'In stable newborns, delay cord clamping for at least 60 seconds, ideally after lung aeration.',
            subtitle: 'Cord milking is an alternative for preterms >28 weeks if delay is not possible',
            additionalInfo: 'Improves iron stores and circulatory stability.',
          ),
          Erc2021Item(
            title: 'INITIAL ASSESSMENT: TONE, COLOR, RESPRIRATION, AND HR',
            description: 'Assess heart rate (HR) as the primary indicator of successful adaptation: >100 is good, <60 is critical.',
            subtitle: 'HR 60–100 indicates moderate distress requiring ventilation support',
            additionalInfo: 'Chest compressions are only initiated if HR remains <60 despite effective ventilation.',
          ),
          Erc2021Item(
            title: 'TACTILE STIMULATION AND NEUTRAL HEAD POSITION',
            description: 'Gently rub the soles of the feet or the back; maintain the head in a neutral (sniffing) position to open the airway.',
            additionalInfo: 'Avoid aggressive stimulation to prevent injury.',
          ),
          Erc2021Item(
            title: 'AIRWAY MANAGEMENT: PPV, CPAP, AND PEEP',
            description: 'Initiate mask PPV within the first 60 seconds; use 30 cmH2O for term and 25 cmH2O for preterm infants.',
            subtitle: 'CPAP is the first choice for spontaneously breathing preterms; PEEP ≥5–6 is recommended',
            additionalInfo: 'Routine suction for meconium is no longer recommended as it delays ventilation.',
          ),
          Erc2021Item(
            title: 'ALTERNATIVE AIRWAY AND ETT INDICATIONS',
            description: 'Laryngeal masks are indicated for infants ≥34 weeks if ventilation fails; ETT is needed for prolonged resuscitation.',
            additionalInfo: 'ETT is also mandatory for exogenous surfactant administration.',
          ),
          Erc2021Item(
            title: 'CHEST COMPRESSION TECHNIQUE AND 3:1 RATIO',
            description: 'Start compressions if HR is <60 after 30 seconds of effective ventilation, using a 3:1 compression-to-ventilation ratio.',
            subtitle: 'Two-thumb encircling technique is preferred over the two-finger technique',
            additionalInfo: 'Deliver approximately 120 events per minute (90 compressions and 30 ventilations).',
          ),
          Erc2021Item(
            title: 'VASCULAR ACCESS AND EMERGENCY DRUG DOSAGES',
            description: 'The umbilical vein is the preferred route for access; IO is the backup. Adrenaline dose is 10–30 µg/kg.',
            subtitle: 'Volume resuscitation with 10 mL/kg O Rh(-) blood or crystalloid is for suspected shock',
            additionalInfo: 'Sodium bicarbonate may be given for prolonged, non-responsive acidosis after ventilation is established.',
          ),
          Erc2021Item(
            title: 'NEONATAL PROGNOSIS AND RESUSCITATION TERMINATION',
            description: 'A total lack of response after 10–20 minutes of intensive resuscitation is associated with a very poor prognosis.',
            additionalInfo: 'The decision to stop should be a collective one involving the team and the family.',
          ),
        ],
      ),
    ];
  }
}
