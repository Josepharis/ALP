import 'package:flutter/material.dart';

class CardiovascularSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiovascularSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiovascularSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<CardiovascularSurgeryAnesthesiaItem> items;

  CardiovascularSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiovascularSurgeryAnesthesiaData {
  static List<CardiovascularSurgeryAnesthesiaCategory>
      getCardiovascularSurgeryAnesthesiaData(BuildContext context) {
    return [
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Cardiopulmonary Bypass (CPB)',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: "CPB BASIC CIRCUIT COMPONENTS (RESERVOAR AND PUMP)",
            description: "The cardiopulmonary bypass circuit consists of a reservoir where venous blood is collected and a main pump that ensures blood circulation.",
            subtitle: "The risk of air embolism and filling pressure requirements vary by pump type",
            additionalInfo: "The reservoir collects venous blood at every gravity-fed level. While gas exchange is provided in the oxygenator section (silicone membrane), the heat exchanger system warms or cools the blood via conduction.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "PUMP TYPES AND MECHANICAL FEATURES (ROLLER AND CENTRIFUGAL)",
            description: "Pressure-independent 'roller' or pressure-sensitive 'centrifugal' pumps are used to maintain blood flow in cardiac surgery.",
            subtitle: "While roller pumps are unaffected by pressure, centrifugal pumps minimize blood trauma (hemolysis)",
            additionalInfo: "The risk of pumping air is higher in the roller pump. Systems capable of providing pulsatile flow may be preferred in special cases to increase tissue perfusion.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "ARTERIAL FILTER AND EMBOLI PROTECTION",
            description: "A filtration process against microemboli is performed using 27–40 µm pore filters before Returning the blood in the circuit to the patient.",
            additionalInfo: "These filters significantly reduce the risk of cerebral and systemic embolism by trapping air bubbles, particles, and aggregates that may come from the circuit.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "CPB ACCESSORY EQUIPMENT",
            description: "Various auxiliary aspirator and pump systems are used to clean the surgical field and empty the cardiac chambers.",
            additionalInfo: "These include the cardiotomy suction, left ventricular 'vent' line (emptying), cardioplegia pump, and ultrafiltration units used to remove excess fluid from the blood.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "SYSTEMIC HYPOTHERMIA AND METABOLIC EFFECTS",
            description: "Body temperature is usually lowered to between 20–32°C during CPB to reduce tissue oxygen demand.",
            subtitle: "Every 10°C drop in body temperature approximately halves the metabolic oxygen requirement",
            additionalInfo: "In cases of deep hypothermic circulatory arrest (DHCA), the temperature can be lowered to 15–18°C, and circulation can be completely stopped for a short time under brain protection.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "MYOCARDIAL PROTECTION AND CARDIOPLEGIA PRINCIPLES",
            description: "Stopping the heart in diastole (cardioplegia) is essential to provide surgical comfort and to minimize the energy consumption of the myocardium.",
            subtitle: "Electrical activity is stopped using potassium-rich (10–40 mEq/L) solutions",
            additionalInfo: "Ca, Mg, bicarbonate, mannitol, and agents that stabilize the cell membrane are added to the cardioplegia solution. The solution is usually repeated every 30 minutes to maintain myocardial 'cold' silence.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "CARDIOPLEGIA APPLICATION METHODS",
            description: "Heart-stopping solution can be delivered directly into the coronary arteries (antegrade) or via the coronary sinus (retrograde).",
            additionalInfo: "The retrograde method can be more effective in reaching ischemic areas behind blocked coronary arteries. Hypercalcemia (stone heart risk) should be avoided during application.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "SYSTEMIC PHYSIOLOGICAL EFFECTS OF CPB",
            description: "Artificial circulation causes an increase in stress hormones and a systemic inflammatory response in the body, affecting many organs.",
            subtitle: "Coagulopathy, edema, ARDS risk, and acute kidney injury (AKI) are possible complications of this process",
            additionalInfo: "Pharmacokinetic processes change during the CPB period; specifically, the plasma concentration of hydrophilic agents decreases due to dilution. Use of heparin affects drug protein binding rates.",
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Anesthesia Management in Cardiac Surgery',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: "PREOPERATIVE MULTISYSTEMIC ASSESSMENT",
            description: "In patients undergoing cardiac surgery, a detailed analysis of pulmonary, renal, and neurological functions as well as cardiac reserve is mandatory.",
            additionalInfo: "Exercise tolerance, history of past stroke, and kidney function tests (creatinine) are key factors determining postoperative success.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "ADVANCED MONITORING TECHNIQUES",
            description: "In addition to non-interventional standard follow-ups, advanced methods such as invasive artery, central venous pressure, and TEE are used.",
            additionalInfo: "ECG leads II and V5 are monitored to catch ischemia. Transesophageal Echo (TEE) is the gold standard for myocardial function, and EEG and NIRS for cerebral perfusion.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "ANESTHESIA INDUCTION AND HEMODYNAMIC CONTROL",
            description: "The induction process should be deep enough to suppress the response to laryngoscopy but calm and controlled enough not to strain the heart.",
            additionalInfo: "In cases of unexpected hypotension, agents such as phenylephrine, vasopressin, or ephedrine should be brought into play rapidly. Fluid boluses should be delivered in a controlled manner.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "HIGH-DOSE OPIOID ANESTHESIA",
            description: "Anesthesia combined with high-dose opioids can be applied to minimize myocardial depression and maintain hemodynamic stability.",
            subtitle: "In this method, it should be known that the risk of myocardial depression is reduced, but postoperative early extubation becomes more difficult",
            additionalInfo: "High-dose opioids provide a painless surgery while creating a need for prolonged mechanical ventilation in the postoperative period.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "TOTAL INTRAVENOUS ANESTHESIA (TIVA) AND FAST-TRACK",
            description: "In cases aiming for early extubation (fast-track), target-controlled infusions (TCI) of propofol and opioids are preferred.",
            additionalInfo: "Propofol infusion is usually maintained at a target of 1.5–2 µg/mL. This method allows the patient to be awakened rapidly in the recovery room or ICU.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "MIXED INTRAVENOUS AND INHALATIONAL APPROACH",
            description: "Combined use with IV agents is common to benefit from the cardioprotective effects of volatile (inhalation) agents.",
            subtitle: "Nitrous Oxide (N₂O) is strictly not used in cardiac surgery due to the risk of air embolism",
            additionalInfo: "Volatile agents (Sevoflurane/Desflurane) provide myocardial preconditioning, offering additional protection against ischemic damage.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "MUSCLE RELAXANT SELECTION AND MANAGEMENT",
            description: "Non-depolarizing muscle relaxants with low hemodynamic side effects are preferred in heart surgery.",
            additionalInfo: "Rocuronium, vecuronium, and cisatracurium for those with renal or liver failure are the most commonly used agents.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "PRE-BYPASS PREPARATION AND HEPARINIZATION (ACT MONITORING)",
            description: "Clotting of the blood before contact with the CPB circuit must be completely prevented with Heparin at a dose of 300–400 units/kg.",
            subtitle: "An ACT (Activated Clotting Time) in the 400–480 second range is safe for starting CPB",
            additionalInfo: "In cases of heparin resistance (ATIII deficiency), FFP or recombinant ATIII support may be necessary. Tranexamic acid infusion is standard for bleeding prophylaxis.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "BYPASS PERIOD FLOW AND PRESSURE GOALS",
            description: "Ideal pump flow during bypass is kept between 2–2.5 L/min/m², and mean arterial pressure between 50–80 mmHg.",
            additionalInfo: "Fluid management is based on the hemodilution principle. Ventilation is stopped during this time or maintained at very low pressures (PEEP 5).",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "CEREBRAL PROTECTION STRATEGIES",
            description: "A multisystemic approach is applied to protect the brain against microembolism and ischemia during surgery.",
            additionalInfo: "Epi-aortic echo monitoring with TEE, use of steroids, mannitol, cooling of the head region, and use of thiopental/propofol to lower cerebral metabolism are parts of this strategy.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "PUMP SEPARATION (WEANING) PROCESS",
            description: "When surgery is completed, pump flow is gradually reduced, and the heart's assumption of its own load is watched.",
            subtitle: "Complete separation from the pump occurs when systolic pressure is >80–90 mmHg and heart rate reaches a sufficient level",
            additionalInfo: "If the heart is insufficient, positive inotropic drugs or Intra-aortic Balloon Pump (IABP) support is the choice.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "POSTOPERATIVE FOLLOW-UP AND PROTAMINE UYGULAMASI",
            description: "After separation from the pump, Protamine is applied at a dose of 1 mg / 100 units to reverse the heparin effect.",
            subtitle: "The goal is to maintain a postoperative Hematocrit (Hct) value in the 25–30% range",
            additionalInfo: "If the postoperative bleeding rate exceeds 10 mL/kg/hour, an indication for surgical re-exploration (re-opening) arises. Electrolyte and rhythm control should be very tight.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "OFF-PUMP CABG (BYPASS ON A BEATING HEART) MANAGEMENT",
            description: "In these cases performed without using the CPB circuit, the surgical field must be fixed with special 'suction' stabilizers.",
            additionalInfo: "Vasopressor support may be needed to prevent hypotension during distal anastomoses, and vasodilator support to protect the suture line in proximal anastomoses.",
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Pediatric Cardiac Surgery',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: "PEDIATRIC PREOPERATIVE PREPARATION AND PGE1 SUPPORT",
            description: "In newborns with ductus-dependent congenital lesions, PGE1 infusion is of vital importance to keep the ductus open.",
            additionalInfo: "CHF and pulmonary infections must be treated before surgery. Hemodynamic balance is much more fragile in children.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "ANESTHESIA INDUCTION METHODS IN CHILDREN",
            description: "In children with difficulty in cooperation, IM Ketamine or high-concentration Sevoflurane may be preferred in addition to IV induction.",
            subtitle: "A combination of Ketamine (4–10 mg/kg) and Atropine is often used in IM induction",
            additionalInfo: "A vagolytic (atropine) should be kept ready against the risk of bradycardia during laryngoscopy in children.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "PEDIATRIC MONITORING STANDARDS",
            description: "Invasive artery and CVP monitoring appropriate for the small body structure is standard in every case; a pulmonary artery catheter is rarely needed.",
            additionalInfo: "Monitoring of body temperature (rectal/esophageal) is much more important in children than in adults due to rapid heat loss.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "CPB FEATURES IN CHILDREN AND PH-STAT APPROACH",
            description: "Pediatric bypass circuits are usually prepared (primed) with blood to prevent excessive hemodilution.",
            additionalInfo: "In deep hypothermic children requiring circulatory arrest, the pH-stat blood gas management is considered superior for optimizing cerebral blood flow and cooling.",
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Heart Transplantation',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: "PREOPERATIVE CRITERIA FOR HEART TRANSPLANT AND PVR LIMIT",
            description: "In candidates for transplant, Ejection Fraction (EF) is usually below 20%, and PVR should be < 6–8 Wood units.",
            additionalInfo: "Cases with advanced irreversible organ damage are not suitable for transplant; preoperative pulmonary vascular resistance monitoring is a critical selection criterion.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "ANESTHESIA PREPARATION AND MEASURES IN TRANSPLANT",
            description: "Heart transplant patients should be managed with the 'full stomach' protocol; H2 blocker and metoclopramide support should be provided.",
            additionalInfo: "The management of cyclosporine and other immunosuppressives started before the operation and sterilization rules are very strict.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "POST-CPB RISKS AND RIGHT HEART FAILURE",
            description: "Right heart failure may develop upon exiting the pump as a result of the new heart (donor heart) encountering high pulmonary resistance.",
            additionalInfo: "In this situation, an attempt is made to relieve the load on the right ventricle using hyperventilation and pulmonary vasodilators.",
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Pericardial Diseases',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: "CARDIAC TAMPONADE AND EMERGENCY INTERVENTION",
            description: "In acute tamponade, 100–200 mL of fluid can lead to severe hypotension and shock by preventing cardiac filling.",
            subtitle: "The disappearance of the 'y' wave and prominence of the 'x' wave in the CVP trace is a diagnostic sign",
            additionalInfo: "The 'full fill but fast' rule applies in anesthesia to maintain hemodynamics. Low-dose ketamine is ideal for induction.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "CONSTRICTIVE PERICARDITIS AND SURGICAL MANAGEMENT",
            description: "A condition where the thickening of the pericardium compresses the heart, resulting in a visible 'y' descent and (+) Kussmaul sign.",
            subtitle: "CPB must be kept ready during surgical pericardiectomy",
            additionalInfo: "The fundamental goal is to maintain the restricted filling volume of the heart by avoiding bradycardia and cardiac depression.",
          ),
        ],
      ),
      CardiovascularSurgeryAnesthesiaCategory(
        categoryName: 'Vascular Surgery',
        items: [
          CardiovascularSurgeryAnesthesiaItem(
            title: "AORTIC SURGERY AND DISSECTION MANAGEMENT",
            description: "Aortic dissection and aneurysms larger than 5 cm are emergency or elective surgical indications.",
            additionalInfo: "In dissection, proximal lesions require surgery, while distal lesions usually require medical treatment (blood pressure control). Coarctation is divided into preductal and postductal.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "ANESTHESIA AND PROTECTION IN AORTIC SURGERY",
            description: "Deep hypothermia and circulatory arrest are frequently applied for cerebral and spinal protection in aortic surgery.",
            subtitle: "The risk of clamp-related distal hypotension and proximal hypertension is high in descending thoracic aortic surgery",
            additionalInfo: "TEE monitoring and the use of tranexamic acid for bleeding control are standard. Hemodynamic instability should be closely monitored in the postoperative period.",
          ),
          CardiovascularSurgeryAnesthesiaItem(
            title: "CAROTID SURGERY (ENDARTERECTOMY) AND RISK ANALYSIS",
            description: "Usually performed in symptomatic patients with 70% and over stenosis to reduce the risk of stroke.",
            subtitle: "The fundamental goal is the meticulous protection of cerebral and coronary perfusion throughout the operation",
            additionalInfo: "Patients over the age of 75, with uncontrolled hypertension, or thrombosis are considered high-risk for complications.",
          ),
        ],
      ),
    ];
  }
}
