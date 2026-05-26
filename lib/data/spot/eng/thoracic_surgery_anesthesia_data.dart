import 'package:flutter/material.dart';

class ThoracicSurgeryAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  ThoracicSurgeryAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class ThoracicSurgeryAnesthesiaCategory {
  final String categoryName;
  final List<ThoracicSurgeryAnesthesiaItem> items;

  ThoracicSurgeryAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class ThoracicSurgeryAnesthesiaData {
  static List<ThoracicSurgeryAnesthesiaCategory>
      getThoracicSurgeryAnesthesiaData(BuildContext context) {
    return [
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Lateral Decubitus Position',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "SPONTANEOUS BREATHING AND V/Q BALANCE",
            description: "In an awake patient in the lateral position, the dependent lung is both better ventilated and better perfused.",
            additionalInfo: "Due to gravity, the compliance and perfusion of the dependent lung increase, which ensures the maintenance of the ventilation-perfusion (V/Q) balance.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "GENERAL ANESTHESIA AND POSITIVE PRESSURE VENTILATION",
            description: "When switching to positive pressure ventilation under anesthesia, airway pressure shifts toward the upper (nondependent) lung.",
            additionalInfo: "While perfusion remains dependent due to gravity, the shift of ventilation upward leads to serious V/Q mismatch and a risk of hypoxemia.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "POSITIONAL FACTORS INCREASING HYPOXEMIA",
            description: "Pillow placement and the thoracotomy site in the lateral position can adversely affect oxygenation by impairing lung mechanics.",
            additionalInfo: "Specifically, inadequate anesthetic depth and compression of the upper lung by surgical maneuvers aggravate the picture of hypoxemia.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Open Pneumothorax',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "PARADOXICAL BREATHING MECHANISM",
            description: "While the chest cage is open during inspiration, air moves from the open side toward the closed (intact) lung.",
            subtitle: "During expiration, air shifts from the intact lung toward the open side (surgical side)",
            additionalInfo: "This condition seriously reduces respiratory efficiency and causes 're-breathing of the same air' (pendelluft).",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "MEDIASTINAL MOVEMENT (FLUTTER)",
            description: "In an open pneumothorax, mediastinal structures shift downward during inspiration and upward during expiration.",
            additionalInfo: "This pendulum movement of the mediastinum can obstruct venous return and lead to hemodynamic instability by lowering cardiac output.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'One-Lung Ventilation (OLV / TAV)',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "INTRAPULMONARY SHUNT AND HYPOXEMIA",
            description: "A 20–30% shunt occurs as a result of blood passing through the operated (unventilated) lung returning without being oxygenated.",
            additionalInfo: "This physiological shunt developing during OLV is the most important source of hypoxemia that the anesthesiologist should pay attention to.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "FACTORS INHIBITING THE HPV RESPONSE",
            description: "Hypoxic Pulmonary Vasoconstriction (HPV) is a protective mechanism that reduces the shunt by narrowing vessels.",
            subtitle: "Very low or very high pulmonary artery pressure (PAP) and hypocapnia impair the HPV response",
            additionalInfo: "Vasodilators, pulmonary infection, excessively low/high PaO2 values, and high-dose inhalation agents also increase hypoxemia by suppressing HPV.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "CAUSES REDUCING DEPENDENT LUNG PERFUSION",
            description: "High pressure in the lower lung (intact side) impairs blood flow and prevents oxygenation.",
            subtitle: "High PEEP/airway pressure and 'intrinsic PEEP' developing due to inadequate expiratory time impair perfusion",
            additionalInfo: "Furthermore, the use of systemic vasoconstrictor agents can increase resistance by narrowing the dependent lung vessels.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "CARBON DIOXIDE (CO2) ELIMINATION DURING OLV",
            description: "Carbon dioxide elimination during one-lung ventilation usually remains stable, unlike the impairment in oxygenation.",
            additionalInfo: "Thanks to the high diffusion capacity of CO2, adequate minute ventilation performed with one lung can maintain PaCO2 levels within normal limits.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Double-Lumen Tube (DLT)',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "DLT SIZE SELECTION AND GENDER DIFFERENCES",
            description: "In adult patients, typically 35F for women and tubes in the 37-41F range for men are preferred.",
            additionalInfo: "Size selection should be individualized according to the patient's height, radiological bronchial diameter, and tracheal width.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "TRACHEA ANATOMY AND PLACEMENT LIMITS",
            description: "The trachea is approximately 11–13 cm long; it starts at the cricoid cartilage (C6) level and ends at the carina (T5).",
            additionalInfo: "During DLT placement, the fact that the tube passes the carina and fully seats into the targeted main bronchus should be confirmed by fiberoptic bronchoscopy.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "FEATURES OF THE RIGHT DOUBLE-LUMEN TUBE (DLT)",
            description: "Because the right main bronchus is very short, right DLTs feature a special opening (fenestration) to allow ventilation of the upper lobe.",
            additionalInfo: "Placement of a right tube is more difficult, and the risk of obstructing the upper lobe is much higher compared to a left tube.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "CRITICAL SITUATIONS WHERE LEFT DLT IS NOT PREFERRED",
            description: "Use of a left DLT is contraindicated in the presence of external compression (e.g., aortic aneurysm) or a tumor in the left main bronchus.",
            subtitle: "A right DLT should be preferred in left pneumonectomy, left lung transplantation, and left main bronchial resections",
            additionalInfo: "In these cases, a tube should not be placed in the bronchus on the side of the operation to avoid disturbing the surgical field and protecting the suture line.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "COMPLICATIONS THAT CAN DEVELOP IN DLT APPLICATION",
            description: "The most common problems in DLT use are tube displacement and sudden hypoxemia developing as a result.",
            subtitle: "Traumatic laryngitis, bronchial rupture, and accidental suturing of the tube during surgery are serious risks",
            additionalInfo: "Excessive cuff pressure can lead to ischemia in the bronchial mucosa; therefore, cuff pressures should be kept to a minimum.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Bronchial Blocker Use',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "ADVANTAGES OF BRONCHIAL BLOCKERS",
            description: "If long-term intubation is REQUIRED after the operation, it eliminates the need to replace a DLT with a standard tube.",
            additionalInfo: "Furthermore, it is a great advantage that it can be applied within a standard endotracheal tube in small children and patients with difficult airways.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "DISADVANTAGES OF BRONCHIAL BLOCKERS",
            description: "Deflation (collapse) of the aspirated or blocked lung occurs much more slowly compared to a DLT.",
            additionalInfo: "It requires continuous fiberoptic bronchoscopy follow-up as it tends to be displaced by surgical maneuvers.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Lung Resection – Preoperative Evaluation',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "BENIGN LUNG TUMORS (HAMARTOMA)",
            description: "90% of the benign masses of the lung are comprised of hamartomas consisting of cartilage, fat, and epithelial tissue.",
            additionalInfo: "They are usually detected incidentally and can be followed conservatively if there is no suspicion of malignancy.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "MALIGNANT LUNG TUMORS AND LOCATIONS",
            description: "Small cell and epidermoid (squamous cell) cancers are frequently centrally located, while adenocarcinomas are peripheral.",
            additionalInfo: "Central masses can compress major airways, making airway management and DLT selection difficult.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "POSTOPERATIVE FEV1 CALCULATION AND MORTALITY",
            description: "Predicted postoperative FEV1 is found by multiplying the pre-operative value by the percentage of remaining lung tissue.",
            subtitle: "Calculated value below 40% means high mortality; below 30% means difficulty weaning from the ventilator",
            additionalInfo: "This calculation is the most fundamental criterion in determining whether the patient's respiratory reserve will be sufficient after resection.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "DIFFUSION CAPACITY (DLCO) AND RISK ANALYSIS",
            description: "A DLCO value, measuring the gas exchange surface of the lung, below 40% increases the risk of postoperative complications.",
            additionalInfo: "Even if volume tests are normal, low DLCO indicates that oxygenation problems may be experienced in the perioperative period.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "GAS EXCHANGE AND ARTERIAL BLOOD GAS PARAMETERS",
            description: "For surgical suitability, PaO2 > 60 mmHg and PaCO2 < 45 mmHg on room air are desired.",
            additionalInfo: "Chronic hypercapnia increases the risk of decreased respiratory center sensitivity and prolonged ventilation in the postoperative period.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "MAXIMAL OXYGEN CONSUMPTION (VO2 MAX) CAPACITY",
            description: "A VO2 max value below 20 mL/kg/min is accepted as a high risk factor for post-surgery.",
            additionalInfo: "This test is the most objective parameter showing the performance of the heart and lung under stress (exercise).",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Intraoperative Ventilation Management',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "VENTILATOR SETTINGS DURING OLV",
            description: "A tidal volume of 6–8 mL/kg should be targeted to protect the lung during one-lung ventilation.",
            subtitle: "5–10 cmH2O PEEP should be applied to the dependent lung to prevent atelectasis",
            additionalInfo: "FiO2 is usually maintained in the 50–80% range; it can be increased to 100% if there is hypoxemia.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "SAFE AIRWAY PRESSURE LIMITS (PPLAT AND PPEAK)",
            description: "To prevent barotrauma, plateau pressure (Pplat) should not exceed 25 cmH2O, and peak pressure (Ppeak) should not exceed 35 cmH2O.",
            additionalInfo: "High pressures can lead to edema (Leaking Lung Syndrome) and inflammation in the dependent lung.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "LUNG RECRUITMENT MANEUVER",
            description: "A procedure to re-ventilate the lungs by applying 30 cmH2O pressure to open collapsed areas.",
            additionalInfo: "This maneuver is usually applied when terminating OLV or during intraoperative hypoxemia attacks.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "INTRAOPERATIVE FLUID MANAGEMENT SENSITIVITY",
            description: "Excessive fluid loading impairs oxygenation by leading to leakage edema, which we call 'dependent lung syndrome'.",
            additionalInfo: "Fluid management should be managed according to the as-restricted-as-possible (dry lung) principle.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "STUMP LEAK TEST AND SURGICAL CONTROL",
            description: "To check the seal of the surgical suture line, 30 cmH2O pressure is applied underwater while looking for bubbles.",
            additionalInfo: "A positive test means there is a leak in the stapler or suture line and requires additional surgical intervention.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Hypoxia Management during OLV',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "FIRST RESPONSE STEPS IN CASE OF HYPOXIA",
            description: "The first action when saturation drops is to check the position of the tube and make the FiO2 ratio 1.0 (pure oxygen).",
            subtitle: "Right after, a recruitment maneuver should be applied to the dependent (lower) lung",
            additionalInfo: "The tube clamp may have slipped or the bronchus might be blocked with secretions; fiberoptic control is vital.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "VENTILATION AND TRANSPORT OPTIMIZATION",
            description: "The PEEP level should be optimized, and cardiac output and oxygen transport capacity should be increased.",
            additionalInfo: "Adequate hemoglobin level and stable blood pressure are as important as oxygen content (CaO2) in the struggle against hypoxemia.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "COMPATIBLE CPAP APPLICATION WITH SURGERY",
            description: "If hypoxia does not resolve, low-pressure oxygen (CPAP) is given to the operated (upper) lung in a way that does not obstruct the surgeon's view.",
            additionalInfo: "This method can rapidly increase saturation by ensuring some oxygenation of the shunt blood.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "ADVANCED METHODS IN PERSISTENT HYPOXIA",
            description: "If all maneuvers fail, surgery should be paused and bilateral ventilation should be started.",
            subtitle: "In very difficult cases, temporary clamping of the pulmonary artery by the surgeon can completely cut off the shunt",
            additionalInfo: "Clamping mechanically corrects saturation by directing shunt blood to the working lung.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Postoperative Complications and Analgesia',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "COMMON POSTOPERATIVE PROBLEMS",
            description: "Hypoxemia, respiratory acidosis, and supraventricular tachycardias (SVTs) are frequently observed after thoracic surgery.",
            additionalInfo: "Atelectasis, mucus plugs, and bleeding from the surgical site are other conditions requiring close follow-up.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "ANALGESIA MANAGEMENT AND EPIDURAL ADVANTAGE",
            description: "Thoracic epidural analgesia provides much superior comfort and better respiratory performance compared to systemic opioids.",
            additionalInfo: "The ability of a pain-free patient to cough better and take deep breaths minimizes postoperative lung complications.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "IMPORTANCE AND RISKS OF EARLY EXTUBATION",
            description: "Patients should be wakened on the transition table if possible to avoid high positive airway pressures and protect the suture line.",
            subtitle: "Late extubation increases the risk of barotrauma and air leak from the surgical stump",
            additionalInfo: "Early transition of the patient to spontaneous breathing contributes to the natural ventilation of the lungs and improved lymphatic drainage.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "POSTOPERATIVE ATELECTASIS AND AIR LEAK",
            description: "While secretion plugs cause deflations, leaks in the surgical line are noticed by continuous air coming in the tube drainage.",
            subtitle: "Late-onset pneumothorax, mediastinal shift, and lung torsion can create emergency surgical situations",
            additionalInfo: "Drainage follow-up and serial chest X-rays are essential for catching complications early.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "NERVE INJURIES DUE TO SURGERY",
            description: "During surgery, the phrenic nerve, vagus nerve, or recurrent laryngeal nerve can be accidentally damaged.",
            subtitle: "Phrenic nerve damage leads to diaphragmatic paralysis; recurrent laryngeal nerve damage leads to hoarseness",
            additionalInfo: "Very rarely, devastating neurological results such as paraplegia can develop as a result of spinal cord compression.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Special Situations and Interventions',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "MASSIVE HEMOPTYSIS AND ASYMMETRIC MANAGEMENT",
            description: "Bleeding over 500–600 mL in 24 hours is accepted as massive, and mortality is over 20%.",
            additionalInfo: "These patients should be managed by preventing blood from filling the intact lung with asymmetric intubation or a DLT.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "ANESTHESIA IN LUNG CYSTS AND BULLAE",
            description: "Nitrous oxide (N2O) is contraindicated in bullous diseases as it can fill into the bulla and cause rupture.",
            subtitle: "Intubation to be performed while maintaining spontaneous breathing if possible reduces the risk of rupture",
            additionalInfo: "Low peak pressures should be preferred during positive pressure ventilation.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "LUNG ABSCESS AND INTACT LUNG PROTECTION",
            description: "In patients with an abscess, immediate DLT placement is essential to prevent inflammation from flowing into the intact lung (contamination).",
            additionalInfo: "While the patient is usually taken into the lateral position, care can be taken to keep the intact side upper (temporarily).",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "BRONCHOPLEURAL FISTULA AND VENTILATION RESTRICTION",
            description: "When there is a connection between the bronchus and pleura, positive pressure ventilation leads to major air leaks.",
            additionalInfo: "In these cases, high-frequency jet ventilation or low-pressure strategies are applied until the fistula is closed by surgery.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Tracheal Resection',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "PREMEDICATION RESTRICTION IN TRACHEAL SURGERY",
            description: "Heavy premedication that will suppress the respiratory center is avoided in patients with tracheal stenosis.",
            additionalInfo: "Maintenance of the patient's level of wakefulness is a key factor for airway safety.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "PRESERVATION OF SPONTANEOUS BREATHING (NMB AVOIDANCE)",
            description: "Muscle relaxants should be avoided in induction to preserve the patient's own breathing.",
            additionalInfo: "Muscle relaxation can cause tracheal collapse or inability to push air behind the stenosis (obstruction).",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "LIDOCAINE SUPPORT IN INDUCTION",
            description: "Anesthetic depth is increased by using 1–2 mg/kg intravenous lidocaine to reduce laryngoscopic stimulation.",
            additionalInfo: "In this way, cough and laryngospasm reflexes are suppressed while the patient is kept awake.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Diagnostic Procedures',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "VENTILATION METHODS DURING BRONCHOSCOPY",
            description: "Apneic oxygenation, side-arm ventilation, or jet ventilation methods can be used in rigid bronchoscopy.",
            additionalInfo: "During the procedure, airway sharing should be managed in cooperation with the surgeon, and hypoxemia should be closely monitored.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "MEDIASTINOSCOPY AND VASCULAR COMPRESSION RISK",
            description: "The mediastinoscope can compress the innominate artery, causing disappearance of the pulse and blood pressure in the right arm.",
            subtitle: "Therefore, blood pressure monitoring must be performed from the left arm",
            additionalInfo: "Furthermore, one should be careful about bradycardia that can develop due to vagal stimulation.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "BRONCHOALVEOLAR LAVAGE (BAL) MANAGEMENT",
            description: "During whole-lung lavage (e.g., proteinosis), a DLT is used for isolation, and washing is performed with 10–20 liters of warm saline.",
            additionalInfo: "The biggest risk is leakage during washing and fluid escaping into the intact lung; isolation should be continuously checked with fiberoptics.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Lung Transplantation',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "SINGLE-LUNG TRANSPLANT AND CPB NEED",
            description: "CPB is usually not required in single-lung transplants performed in cases such as Idiopathic Pulmonary Fibrosis (IPF).",
            additionalInfo: "However, if right heart loading or hypoxemia cannot be tolerated when the pulmonary artery is clamped, bypass may be required.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "DOUBLE-LUNG TRANSPLANT AND BYPASS PROCESS",
            description: "The operation is usually conducted accompanied by CPB when double-sided resection and anastomosis are required.",
            additionalInfo: "Extracellular protection solutions (perfusion fluids) are used to protect the donor lung.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "APPROACH TO HYPOTENSION IN TRANSPLANT",
            description: "Vasopressors are preferred instead of excessive fluid in the development of hypotension to prevent edema in the new lung.",
            additionalInfo: "Low-dose adrenaline or noradrenaline serves the 'dry lung' principle while maintaining perfusion pressure.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "REFLEX CHANGES IN THE TRANSPLANTED LUNG",
            description: "The HPV protective mechanism continues to work in the lung after transplant, but the cough reflex is lost.",
            additionalInfo: "This requires aggressive physiotherapy as it will make secretion clearing difficult in the postoperative period.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "EARLY POSTOPERATIVE PERIOD MANAGEMENT",
            description: "Early extubation of the patients after transplant and keeping fluid intake at a minimum is the key to success.",
            additionalInfo: "Very strict immunosuppressive treatments are applied for rejection signs and infection control.",
          ),
        ],
      ),
      ThoracicSurgeryAnesthesiaCategory(
        categoryName: 'Esophageal Surgery',
        items: [
          ThoracicSurgeryAnesthesiaItem(
            title: "ESOPHAGEAL SURGERY AND ASPIRATION RISK",
            description: "Patients with esophageal stenosis or dilation (achalasia) have the highest aspiration risk because gastric content accumulates.",
            additionalInfo: "Long-term fasting of the patient in the preoperative period and emptying with a gastric tube if necessary should be considered.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "CRUSH (FAST) PROTOCOL IN INDUCTION",
            description: "Rapid Sequence Induction (RSI) accompanied by cricoid pressure should be applied to prevent aspiration.",
            additionalInfo: "Ventilation should be avoided as much as possible until intubation is completed.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "TUBE SELECTION AND THORACOTOMY RELATIONSHIP",
            description: "If the surgical intervention is to be performed via the chest cage (thoracotomy), a double-lumen tube is used for isolation.",
            additionalInfo: "Standard endotracheal tube may be sufficient if the operation is to be performed via the laparoscopic or transhiatal route.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "INTRAOPERATIVE CARDIAC AND VAGAL RISKS",
            description: "Manipulation of the esophagus can cause filling impairment or severe vagal impulses (bradycardia) by directly compressing the heart.",
            additionalInfo: "The surgeon should be informed at these critical moments, and anticholinergic drugs should be used if necessary.",
          ),
          ThoracicSurgeryAnesthesiaItem(
            title: "POSTOPERATIVE MECHANICAL VENTILATION NEED",
            description: "Due to extensive surgical trauma and diaphragm involvement, the need for postoperative intensive care and respiratory support is frequent in these patients.",
            additionalInfo: "Nutritional support and fluid balance are vital for the continuity of surgical success.",
          ),
        ],
      ),
    ];
  }
}
