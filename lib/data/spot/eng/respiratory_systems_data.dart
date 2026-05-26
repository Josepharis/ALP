import 'package:flutter/material.dart';

class RespiratorySystemsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RespiratorySystemsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RespiratorySystemsCategory {
  final String categoryName;
  final List<RespiratorySystemsItem> items;

  RespiratorySystemsCategory({required this.categoryName, required this.items});
}

class RespiratorySystemsData {
  static List<RespiratorySystemsCategory> getRespiratorySystemsData(BuildContext context) {
    return [
      RespiratorySystemsCategory(
        categoryName: 'Insufflation',
        items: [
          RespiratorySystemsItem(
            title: "INSUFFLATION",
            description: "The simplest anesthesia method where anesthetic gases are blown onto the patient's face or directly into the airway with no rebreathing.",
            subtitle: "Flow >10 L/min → prevents CO₂ accumulation",
            additionalInfo: "The fresh gas flow must be kept high to prevent CO₂ accumulation. Its usage areas can be listed as follows:\n• Blowing to face: In pediatric patients and local procedures where the face is covered.\n• Blowing into lungs: Anesthetic gas is delivered directly into the trachea during bronchoscopy.\n• Nasal cannula: Used up to 6 L/min; each 1 L increase raises FiO₂ by approximately 4% (maximum ≈ 44%).\n• Venturi mask: Maintains a constant FiO₂ between 24–40% and is independent of minute ventilation and inspiratory flow rate.",
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Open-Drop Anesthesia',
        items: [
          RespiratorySystemsItem(
            title: "OPEN-DROP ANESTHESIA",
            description: "A historical anesthesia method applied using ether dropped onto a Schimmel-Busch mask.",
            additionalInfo: "In this method used in medical history, anesthetic liquid was dropped onto a gas-permeable cloth on a wire cage mask. The patient would enter anesthesia by inhaling this vaporous substance. There is no rebreathing control, and adjusting the depth of anesthesia required experience. Today, it is known only for its historical significance.",
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Draw-Over Anesthesia',
        items: [
          RespiratorySystemsItem(
            title: "DRAW-OVER ANESTHESIA",
            description: "A portable anesthesia method that uses atmospheric air as the carrier gas and can operate without the need for an oxygen source.",
            subtitle: "Hose ≈ 400 mL; non-rebreathing valve + PEEP valve are present",
            additionalInfo: "Its greatest advantage is that it can be applied in the wild or under resource-poor field conditions. Potent halogenated agents can be used in this system. IPPV, CPAP, and PEEP applications are possible. Oxygen support affects FiO₂ as follows:\n• Adding 1 L/min → FiO₂ 30–40%\n• Adding 4 L/min → FiO₂ 60–80%\nDisadvantages include difficulties in pediatric and head-neck surgery and environmental pollution from waste gases. The risk of SpO₂ falling below 90% should be taken into account.",
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Mapleson Circuits',
        items: [
          RespiratorySystemsItem(
            title: "MAPLESON CIRCUITS (General Structure)",
            description: "A family of semi-open anesthesia circuits consisting of a hose, fresh gas inlet, APL valve, and reservoir bag, either with or without rebreathing.",
            additionalInfo: "Common components in all Mapleson circuits include:\n• Hoses: 22 mm in diameter, with a volume at least equal to the tidal volume.\n• Fresh gas inlet: The main factor determining the performance of the circuit.\n• APL valve: Provides pressure-controlled outflow.\n• Reservoir bag: Used for both gas reservoir and positive pressure application; a large-volume bag increases compliance and reduces the risk of barotrauma.",
          ),
          RespiratorySystemsItem(
            title: "MAPLESON A (Magill)",
            description: "The most efficient Mapleson circuit for spontaneous breathing; since the fresh gas inlet is close to the mask, alveolar gas is expelled first.",
            additionalInfo: "However, the risk of CO₂ accumulation increases in controlled (mechanical) ventilation, making it unsuitable for this purpose. In spontaneous breathing, it is sufficient to keep the fresh gas flow equal to the minute ventilation.",
          ),
          RespiratorySystemsItem(
            title: "MAPLESON B",
            description: "The fresh gas inlet is next to the mask and the APL valve is also located close to the mask; it is moderately efficient in both spontaneous and controlled breathing.",
            additionalInfo: "Circuit arrangement: Bag → Hose → Fresh Gas → APL Valve → Mask. B and C circuits are evaluated particularly for their practicality of use.",
          ),
          RespiratorySystemsItem(
            title: "MAPLESON C (Waters To-and-Fro)",
            description: "A shortened version of Mapleson B; it is compact due to its short hose but carries a high risk of rebreathing.",
            additionalInfo: "It is very rarely used today. The short circuit length does not reduce dead space because CO₂ accumulation is inevitable without sufficient fresh gas flow.",
          ),
          RespiratorySystemsItem(
            title: "MAPLESON D (Bain)",
            description: "The most suitable Mapleson circuit for controlled ventilation; it is preferred in pediatrics and long procedures because the breath is warmed by the internal fresh gas hose.",
            additionalInfo: "Since the fresh gas hose passes through the circuit, it carries a risk of kinking and should be checked periodically. It requires a higher fresh gas flow in controlled ventilation. It is not as efficient as the A circuit in spontaneous breathing.",
          ),
          RespiratorySystemsItem(
            title: "MAPLESON E (Ayre T-Piece)",
            description: "A version of Mapleson D from which the bag and APL valve have been removed; it is the simplest pediatric circuit with no rebreathing.",
            additionalInfo: "It is preferred especially for small children and newborns because respiratory resistance is minimal. It operates with the patient's own respiratory effort in spontaneous breathing.",
          ),
          RespiratorySystemsItem(
            title: "MAPLESON F (Jackson-Rees)",
            description: "Mapleson E modified for pediatric controlled ventilation by adding an open-ended reservoir bag.",
            additionalInfo: "It has no APL valve; respiratory control is achieved by the anesthesiologist squeezing the end of the bag. It has widespread use in pediatric practice. Respiratory effort can be easily understood from the movement of the bag.",
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Circle System',
        items: [
          RespiratorySystemsItem(
            title: "CO₂ ABSORBENTS",
            description: "Chemical filters in the circle system that allow the gas to be rebreathed by capturing exhaled carbon dioxide; final products are heat, water, and CaCO₃.",
            subtitle: "Final products: heat + water + CaCO₃",
            additionalInfo: "Commonly used absorbents are soda lime, barium hydroxide lime, and amsorb. The indicator dye, ethyl violet, changes color when 50–70% of it is exhausted and must be replaced. Risks:\n• CO production: Increases if the absorbent is dry, temperature is high, or if used with desflurane/sevoflurane.\n• Compound A: A nephrotoxic metabolite formed by the reaction of sevoflurane with soda lime.\nFor absorbent efficiency, tidal volume should be at least half of the absorbent volume. Soda lime has a higher capacity compared to barium lime.",
          ),
          RespiratorySystemsItem(
            title: "UNIDIRECTIONAL VALVES",
            description: "Critical components in the circle system that ensure gas flows in only one direction, preventing exhaled air containing CO₂ from mixing with the inspiratory limb.",
            additionalInfo: "There is one unidirectional valve in each of the inspiratory and expiratory limbs. If these valves fail, rebreathing occurs and CO₂ accumulation becomes inevitable. Periodic checks are mandatory for patient safety.",
          ),
          RespiratorySystemsItem(
            title: "CIRCUIT PLACEMENT",
            description: "Correct positioning of the components in the circle system is of critical importance for CO₂ control and safe ventilation.",
            additionalInfo: "The standard arrangement is as follows:\n• Fresh gas inlet (TGG): Placed between the absorbent and the inspiratory valve.\n• APL valve: Placed between the expiratory valve and the absorbent.\n• Reservoir bag: Connected between the expiratory valve and the absorbent.",
          ),
          RespiratorySystemsItem(
            title: "CIRCLE SYSTEM PERFORMANCE",
            description: "If the fresh gas flow is kept above 5 L/min, the absorbent may become redundant; at low flows, however, the role of the absorbent becomes vital.",
            subtitle: "Bacterial risk → A filter can be added at the Y-connector or to the inspiratory/expiratory limb.",
            additionalInfo: "Important performance features:\n• Dead space: Hose length does not affect dead space.\n• Resistance: Valves and absorber increase resistance; this is important in chronic lung disease.\n• Heat and humidity: Absorber granules are an important source of heat and moisture.\nDisadvantages:\n• It has a large and complex structure.\n• Unpredictable complications may arise in the combination of absorbent and low flow.",
          ),
        ],
      ),
      RespiratorySystemsCategory(
        categoryName: 'Other Systems',
        items: [
          RespiratorySystemsItem(
            title: "JET VENTILATION",
            description: "A ventilation method used in difficult airway situations where traditional circuits cannot be used, delivering fresh gas to the alveoli via a high-pressure air jet melalui a 22G cannula.",
            additionalInfo: "It is used particularly in rigid bronchoscopy, laser airway surgery, and transtracheal emergency airway management. It is mandatory for the gas outlet to be free to prevent barotrauma.",
          ),
          RespiratorySystemsItem(
            title: "CLOSED SYSTEM",
            description: "An anesthesia circuit where all exhaled gas is rebreathed after CO₂ is absorbed; no gas is expelled to the outside.",
            additionalInfo: "Fresh gas flow is delivered only in the amount of oxygen consumed by the patient. Loss of drug and heat is minimal. However, it requires very close monitoring of absorbent consumption and gas composition.",
          ),
          RespiratorySystemsItem(
            title: "SEMI-CLOSED SYSTEM",
            description: "The most commonly used anesthesia circuit type where part of the exhaled gas is rebreathed and part is expelled to the outside through the APL valve.",
            additionalInfo: "The fresh gas flow is kept higher than in the closed system. The gas composition is more predictable and clinically easier to manage. It is the most frequently preferred system in clinical practice today.",
          ),
        ],
      ),
    ];
  }
}
