import 'package:flutter/material.dart';

class TraumaEmergencySurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  TraumaEmergencySurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class TraumaEmergencySurgeryAnesthesiaCategory {
  final String categoryName;
  final List<TraumaEmergencySurgeryAnesthesiaItem> items;

  TraumaEmergencySurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class TraumaEmergencySurgeryAnesthesiaData {
  static List<TraumaEmergencySurgeryAnesthesiaCategory>
      getTraumaEmergencySurgeryAnesthesiaData(BuildContext context) {
    return [
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Primary Survey (ABCDE)',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "AIRWAY MANAGEMENT AND FULL STOMACH ASSUMPTION",
            description: "All trauma patients should be considered to have a 'full stomach' and protected against aspiration until proven otherwise.",
            subtitle: "In-line stabilization should be maintained at all times against the possibility of cervical spine injury",
            additionalInfo: "Surgical airway sets must be kept ready against the possibility of failed intubation.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "BREATHING ASSESSMENT AND TENSION PNEUMOTHORAX",
            description: "Sudden hemodynamic instability developing after the start of mechanical ventilation should primarily suggest tension pneumothorax.",
            subtitle: "Bilateral needle thoracostomy (2nd ICS, midclavicular line) followed by tube thoracostomy should be applied",
            additionalInfo: "100% O2 should be started immediately and lung expansion should be monitored.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "CIRCULATION ASSESSMENT AND EMERGENCY RESUSCITATION",
            description: "In the presence of pulselessness and penetrating chest injury, rapid fluid replacement (500-1000 mL) and bilateral chest tubes are priority.",
            subtitle: "Resuscitation should continue until life-threatening bleeding is stopped",
            additionalInfo: "Thoracotomy is not routinely performed except for life-threatening indications (cardiac tamponade, etc.).",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "NEUROLOGICAL FUNCTION AND CONSCIOUSNESS LEVEL (AVPU/GCS)",
            description: "CNS injury should be assumed in trauma patients with loss of consciousness after metabolic causes (sugar, alcohol, drugs) are excluded.",
            additionalInfo: "Patients with a GCS score below 8 should be intubated for airway protection.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "DISABILITY ASSESSMENT AND PREVENTION OF HYPOTHERMIA",
            description: "A 'complete exposure' examination should be performed by removing all the patient's clothes, but active warming should be started immediately after.",
            subtitle: "The patient and fluids must be warmed to break the fatal triad (Acidosis-Coagulopathy-Hypothermia)",
            additionalInfo: "Hypothermia increases bleeding by directly impairing the coagulation cascade.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Hemorrhage Classification',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "CLASS I HEMORRHAGE (<15% VOLUME LOSS)",
            description: "Loss of less than 15% of body volume; hemodynamics are usually stable and fluid replacement is generally not required.",
            additionalInfo: "In young patients, the pulse may remain normal thanks to compensation mechanisms.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "CLASS II HEMORRHAGE (15-30% VOLUME LOSS)",
            description: "In this stage, where loss is between 15-30%, tachycardia starts and an increase in diastolic blood pressure (SBP is maintained) is observed.",
            additionalInfo: "Crystalloid or colloid replacement should be started, and blood preparation should be made.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "CLASS III HEMORRHAGE (30-40% VOLUME LOSS)",
            description: "Marked hypotension and metabolic acidosis develop; response to fluid boluses is transient and the condition quickly deteriorates again.",
            additionalInfo: "Blood transfusion (Red blood cell suspension) is required at this stage.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "CLASS IV HEMORRHAGE (>40% VOLUME LOSS)",
            description: "It is a life-threatening shock condition; massive transfusion and damage control resuscitation should be applied immediately.",
            additionalInfo: "Vital organ perfusion has come to a standstill and intervention within seconds is mandatory.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Trauma Coagulopathy',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "TRAUMATIC COAGULOPATHY INCIDENCE AND RISKS",
            description: "Approximately 25% of patients undergoing major trauma have coagulopathy at the time of arrival at the hospital.",
            subtitle: "Coagulopathy risk increases by 20% in patients with a base deficit > 6",
            additionalInfo: "It is the combined effect of hypoperfusion, acidosis, and hemodilution.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "TRAUMA COAGULOPATHY PATHOPHYSIOLOGY",
            description: "Thrombomodulin increases as a result of hypoperfusion; this reduces fibrin formation and leads to hyperfibrinolysis with protein C activation.",
            additionalInfo: "Platelet dysfunction also accompanies the condition.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "TRANEXAMIC ACID (TXA) USE PROTOCOL (CRASH-2)",
            description: "1 g bolus within the first 3 hours and then 1 g infusion in 8 hours significantly reduces mortality in major bleeding trauma.",
            additionalInfo: "TXA given after 3 hours does not provide benefit, it may even increase mortality.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Hemostatic Resuscitation',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "TRANSFUSION GOAL: 1:1:1 RATIO (RBC:FFP:PLATELET)",
            description: "Current guidelines recommend replacement of blood products in a 1:1:1 ratio to mimic whole blood.",
            subtitle: "If possible, specific product support should be provided under TEG (Thromboelastography) guidance",
            additionalInfo: "The 'hemostatic balance' should be maintained by avoiding excessive crystalloid loading.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "UNCROSSMATCHED (EMERGENCY) TRANSFÜSİON CHOICE",
            description: "In very urgent cases, O Negative in women and O Positive blood group in men can be given without waiting for cross-match.",
            additionalInfo: "If more than 8 units of group O have been given, it should be continued with group O due to reaction risk.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "MASSIVE TRANSFUSION PROTOCOL (MTP) AND INDICATIONS",
            description: "MTP is a life-saving logistical protocol; it reduces mortality and the risk of multiple organ failure.",
            additionalInfo: "A system coordinated with the blood bank must be established for the protocol to go into effect.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "ABC SCORE AND MTP NEED PREDICTION (>=2)",
            description: "The need for massive transfusion is high if there are 2 or more of penetrating injury, SBP <90 mmHg, HR >120 bpm, and FAST (+) findings.",
            additionalInfo: "A score of 2 and above predicts an MTP need over 40%.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Anesthetic Management',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "GENERAL APPROACH AND SAFETY IN TRAUMA ANESTHESIA",
            description: "Until proven otherwise, all trauma patients should be assumed to have cervical injury, full stomach, and hypovolemia.",
            additionalInfo: "Rapid sequence induction (RSI) should be applied in cases where preoxygenation cannot be performed.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "INDUCTION AGENT CHOICE IN UNSTABLE TRAUMA (KETAMINE/ETOMIDATE)",
            description: "Etomidate or Ketamine are the safest choices for induction in those with hemodynamic instability.",
            subtitle: "Low-dose Scopolamine (0.4 mg) can be added to provide amnesia (not remembering) if necessary",
            additionalInfo: "Propofol and thiopental can lead to severe hypotension and cardiac arrest in these patients.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "TRAUMA MONITORING AND TIME MANAGEMENT",
            description: "Invasive arterial monitoring is useful but should not delay entry to surgery and bleeding control.",
            additionalInfo: "Standard monitors (ECG, SpO2, NIBP) are sufficient in the first stage.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "DAMAGE CONTROL SURGERY",
            description: "The aim of the operation is not definitive repair; it is to quickly control bleeding foci and stop contamination (bowel injury, etc.).",
            additionalInfo: "If the patient continues to remain unstable, the abdomen is closed by packing and resuscitation is continued in the intensive care unit.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Traumatic Brain Injury (TBI)',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "ACUTE SUBDURAL HEMATOMA AND VENOUS INJURY",
            description: "Occurs as a result of tearing of bridging veins; mortality is very high in the elderly with brain atrophy and in major head trauma.",
            additionalInfo: "Brain parenchyma injury usually accompanies.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "EPIDURAL HEMATOMA (MCA INJURY) AND SURGICAL LIMITS",
            description: "Usually occurs as a result of A. Meningea Media injury and its prognosis is better than subdural.",
            subtitle: "Hematomas greater than 30 mL supratentorial and greater than 10 mL infratentorial require emergency surgical evacuation",
            additionalInfo: "The classic 'lucid interval' (temporary well-being) is seen in these bleedings.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "INTRAPARENCHYMAL HEMATOMA AND DECOMPRESSION",
            description: "Decompression can be applied to relieve the inside of the head in bleedings that cause a sudden increase in ICP in the frontal and temporal lobes.",
            additionalInfo: "Struggle with brain edema is as important as surgery.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "DIFFUSE AXONAL INJURY (DAI) AND DECELERATION",
            description: "It is the tearing of axons at the microscopic level as a result of severe deceleration trauma; clinically it is a high-mortality condition accompanied by deep coma.",
            additionalInfo: "Findings are usually very mild on tomography but injury can be monitored on MRI.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'ICP Management',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "INTRACRANIAL PRESSURE (ICP) NORMAL VALUES AND LIMITS",
            description: "Normal ICP is around 10 mmHg; in a patient with head trauma, it is aimed to keep the pressure below 20 mmHg.",
            additionalInfo: "Increase in pressure can lead to brain death by cutting off cerebral blood flow.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "CEREBRAL PERFUSION PRESSURE (CPP) GOAL (50-70 MMHG)",
            description: "Brain nutrition should be provided by keeping the CPP (Mean Arterial Pressure - ICP) value in the 50-70 mmHg range in head trauma.",
            additionalInfo: "Pressure dropping below 50 can increase ischemic injury, and rising above 70 can increase brain edema.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "EFFECT OF HYPERVENTILATION ON ICP AND ISCHEMIA",
            description: "Hyperventilation performed by reducing CO2 rapidly lowers ICP by constricting vessels; however, it creates a risk of brain ischemia when done excessively.",
            additionalInfo: "It should only be used as a short-term 'bridge' treatment in the presence of herniation signs.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "MANNITOL USE AND OSMOLALITY FOLLOW-UP",
            description: "Mannitol should be given at a dose of 0.25-1 g/kg to lower the pressure; however, serum osmolality and electrolyte breakdown should be monitored.",
            additionalInfo: "Osmotic diuresis pulls the edema in the brain by dehydrating the patient.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "BARBITURATE COMA AND METABOLIC SUPPRESSION",
            description: "Barbiturate coma can be applied to reduce brain oxygen consumption and metabolism to a minimum in treatment-resistant ICP increase.",
            additionalInfo: "It is aimed to stop the metabolism to provide cerebral protection.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Spinal Cord Injury',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "ASSESSMENT OF SPINE STABILITY (3 COLUMN RULE)",
            description: "The spine is divided into 3 columns as anterior, middle, and posterior; damage to at least 2 columns indicates that the spine is 'unstable'.",
            additionalInfo: "According to Deny's column classification, the middle column (posterior longitudinal ligament, etc.) is the key to stability.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "RISK OF MULTIPLE INJURY IN CERVICAL FRACTURES",
            description: "In 10-15% of patients with a fracture in the cervical region, there is also a simultaneous fracture in another level of the spine.",
            additionalInfo: "The entire spinal axis should be scanned before the surgical plan.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "CHARACTERISTICS OF THORACOLUMBAR FRACTURES (T11-L3)",
            description: "The possibility of seeing a second fracture in fractures developing in the transition zone between T11-L3 can rise up to 40%.",
            additionalInfo: "This region is a mechanically weak point where mobility changes.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "SPINAL SURGERY INDICATIONS AND HEIGHT LOSS",
            description: "Loss of more than 50% height in the vertebral body or narrowing more than 30% in the spinal canal is an indication for surgical stabilization.",
            additionalInfo: "Progression of neurological deficit is the most urgent surgical indicator.",
          ),
        ],
      ),
      TraumaEmergencySurgeryAnesthesiaCategory(
        categoryName: 'Burn Management',
        items: [
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "1st DEGREE BURN (EPIDERMAL INJURY)",
            description: "Only the epidermis, the topmost layer of the skin, is affected; it is painful but does not require systemic fluid replacement.",
            additionalInfo: "Sunburns are the most typical example.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "2nd DEGREE BURN (DERMIS PARTIALLY DAMAGED)",
            description: "Epidermis and part of the dermis are damaged; bullae (water blisters) are present and fluid treatment is mandatory if it exceeds 20% of the body surface.",
            additionalInfo: "Tissue integrity is broken in places, it is open to infection.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "3rd DEGREE BURN (FULL THICKNESS DAMAGE)",
            description: "Includes all skin layers; it is insensate because nerve endings are damaged and grafting is absolutely required for healing.",
            additionalInfo: "Dermatological color is in white, smoky, or charred appearance.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "BURN CENTER REFERRAL CRITERIA (>20% SURFACE)",
            description: "The patient should be referred to a full-fledged burn center if the 2nd or 3rd degree burn surface exceeds 20% of the total body area in adults.",
            additionalInfo: "Face, hands, feet, and genital area burns are reasons for referral regardless of percentage.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "BURN SHOCK PATHOPHYSIOLOGY AND HEMODYNAMICS",
            description: "Cardiac output drops by 50% in the first stage as a result of intense plasma loss due to increased capillary permeability (Burn Shock).",
            subtitle: "This condition resolves in approximately 48 hours if correct fluid replacement is performed",
            additionalInfo: "Burn shock is a mixed shock with hypovolemic and distributive components.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "PARKLAND FORMULA AND FLUID RESUSCITATION",
            description: "Calculation: 4 mL x kg x %Burn Surface; half of this amount is given in the first 8 hours, and the remaining half in the next 16 hours.",
            additionalInfo: "The formula is only valid for 2nd and 3rd degree burns.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "FLUID CALCULATION WITH BROOK FORMULA",
            description: "The modified Brook formula, aiming for less fluid loading, is calculated over 2 mL x kg x %Burn Surface.",
            additionalInfo: "This formula can be preferred in patients at risk of pulmonary edema.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "URINE OUTPUT GOALS BY AGE",
            description: "Urine output of 0.5-1 mL/kg/hour in adults and 1 mL/kg/hour in children should be targeted for the success of fluid treatment.",
            subtitle: "5% Dextrose should also be given in addition to replacement fluid to children under 30 kg",
            additionalInfo: "The goal in infants under 1 year is 1-2 mL/kg/hour.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "RISK OF ABDOMINAL COMPARTMENT SYNDROME",
            description: "Giving more than 6 mL/kg/hour fluid can excessively increase intra-abdominal pressure, especially in children with more than 20% body surface burned.",
            additionalInfo: "Abdominal wall burns aggravate this condition by reducing flexibility.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "CARBON MONOXIDE (CO) POISONING AND PULSE OXYMETRY",
            description: "Standard pulse oximeters can erroneously show 100% oxygen saturation in CO poisoning and are deceptive.",
            subtitle: "The patient must be intubated and connected to mechanical ventilation immediately if the HbCO level exceeds 20%",
            additionalInfo: "HbCO level reaching 60% is usually fatal; 100% O2 or hyperbaric O2 treatment is required.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "POST-BURN PULMONER COMPLICATIONS",
            description: "Airway edema developing due to inhalation injury, restrictive chest burns, and late-stage pneumonia are common.",
            additionalInfo: "Upper airway edema can progress to total obstruction within seconds.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "AIRWAY MANAGEMENT AND EDEMA IN BURNS",
            description: "Early intubation decisions should be made before edema develops in the presence of facial burns and singed nasal hairs.",
            additionalInfo: "Delayed intubation may become impossible as a result of loss of anatomical markers due to edema.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "SUCCINYLCHOLINE USE CONTRAINDICATION (48 HOURS+)",
            description: "The use of Succinylcholine after the first 48 hours following burn leads to fatal hyperkalemia due to receptor up-regulation.",
            additionalInfo: "Resistance develops against non-depolarizing agents, higher dose is required.",
          ),
          TraumaEmergencySurgeryAnesthesiaItem(
            title: "ANALGESIA MANAGEMENT IN BURN PATIENTS",
            description: "Burn is one of the most severe causes of pain in the body; a multimodal analgesia and opioid-supported plan must be made.",
            additionalInfo: "Doses should be increased during dressings and debridements.",
          ),
        ],
      ),
    ];
  }
}
