import 'package:flutter/material.dart';

class AnesthesiaMachineItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  AnesthesiaMachineItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class AnesthesiaMachineCategory {
  final String categoryName;
  final List<AnesthesiaMachineItem> items;

  AnesthesiaMachineCategory({required this.categoryName, required this.items});
}

class AnesthesiaMachineData {
  static List<AnesthesiaMachineCategory> getAnesthesiaMachineData(
    BuildContext context,
  ) {
    return [
      AnesthesiaMachineCategory(
        categoryName: 'Gas Distribution',
        items: [
          AnesthesiaMachineItem(
            title: "PIPELINE INLETS",
            description: "Gases such as O₂, N₂O, and air reach the machine from the hospital's central system at 50 psi pressure.",
            subtitle: "Misconnection prevention: DISS system, one-way valve, and filter",
            additionalInfo: "The DISS (Diameter Index Safety System) ensures that only the correct hose can be connected for each gas. The one-way valve prevents gas backflow. The filter removes particles that may come from the pipeline.",
          ),
          AnesthesiaMachineItem(
            title: "CYLINDER INLETS (PISS)",
            description: "Cylinder inlets, which act as backups when the central system is insufficient, are equipped with the Pin Index Safety System to prevent incorrect gas connections.",
            additionalInfo: "Cylinder pressure is monitored with a Bourdon gauge and the cylinder does not engage when it reaches approximately 45 psi; it only becomes active automatically when the central system pressure falls below 45 psi.",
          ),
          AnesthesiaMachineItem(
            title: "PRESSURE REGULATOR",
            description: "While a constant pressure is maintained in the central system, the pressure in gas supply from cylinders varies depending on the fill level of the cylinder.",
            additionalInfo: "A pressure regulator is mandatory in cylinder lines to stabilize this variable pressure. Without a regulator, the high pressure of the gas can affect flowmeter and vaporizer performance.",
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Oxygen Safety',
        items: [
          AnesthesiaMachineItem(
            title: "FAIL-SAFE VALVE (N₂O Cut-off)",
            description: "A critical safety mechanism that automatically shuts off the flow of N₂O and other gases when oxygen pressure falls below a certain threshold.",
            additionalInfo: "If O₂ pressure falls below 50% (approximately 25–30 psi), other gases are cut off. However, the fail-safe valve is not a substitute for an oxygen analyzer; as a hypoxic O₂/N₂O mixture can still form. Therefore, an oxygen analyzer must be present in the inspiratory limb.",
          ),
          AnesthesiaMachineItem(
            title: "O₂ SUPPLY PRESSURE SAFETY",
            description: "N₂O and other gases are automatically cut off when oxygen supply pressure falls below the critical threshold.",
            additionalInfo: "The threshold value is 0.5 psi for N₂O and 10 psi for other gases. Gas flow automatically stops below these values and the formation of a hypoxic mixture is prevented.",
          ),
          AnesthesiaMachineItem(
            title: "HYPOXIA PREVENTION (Oxygen Analyzer)",
            description: "The most reliable method to monitor in real-time whether the gas reaching the patient contains sufficient oxygen and prevent hypoxia is the oxygen analyzer.",
            additionalInfo: "The oxygen analyzer is placed in the inspiratory limb and measures FiO₂ in real-time. A low oxygen alarm ensures that a hypoxic mixture is detected before it reaches the patient. It is the final safeguard when fail-safe valves and proportional systems are insufficient.",
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Flow Control',
        items: [
          AnesthesiaMachineItem(
            title: "FLOW VALVE (Control Knob)",
            description: "Individual flow valves for each gas convert proximal high-pressure gas to distal low-pressure and direct it to the flowmeter.",
            subtitle: "Touch and color coding system prevents opening the wrong gas",
            additionalInfo: "The O₂ knob is universally on the far right, fluted, and larger in size than the others; this provides both visual and tactile distinction. Each gas knob has its own unique color and shape.",
          ),
          AnesthesiaMachineItem(
            title: "O₂ FLOW VALVE (Fluted and Large Design)",
            description: "The oxygen flow valve is designed on the far right, fluted, and with a larger diameter to be distinguishable from other gases.",
            additionalInfo: "This design standard enables the anesthesiologist to find oxygen quickly by touch, especially in dark or emergency conditions. The minimum O₂ flow is set to ≥150 mL/min.",
          ),
          AnesthesiaMachineItem(
            title: "FLOWMETERS (Rotameter)",
            description: "Operating on the principle of constant pressure – variable orifice, rotameters visually show gas flow with a floating ball or bobbin.",
            subtitle: "Read at the center of the ball",
            additionalInfo: "According to Poiseuille's Law:\n• In low-flow conditions, gas viscosity is the determinant in laminar flow in the narrow lower part of the tube.\n• In high-flow conditions, gas density is the determinant in turbulent flow in the wide upper part of the tube.\nMinimum O₂ flow is fixed at ≥150 mL/min.",
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Vaporizers',
        items: [
          AnesthesiaMachineItem(
            title: "VAPORIZER SAFETY RULE",
            description: "More than one vaporizer cannot be opened simultaneously; an interlocking mechanism physically prevents this.",
            additionalInfo: "If two vaporizers are opened at the same time, it becomes difficult to predict the concentration in the resulting mixed anesthetic vapor. In sequentially used vaporizers, a waiting period is recommended between transitions as the effect of the previous agent may still persist.",
          ),
          AnesthesiaMachineItem(
            title: "PUMPING EFFECT",
            description: "Back pressure created by positive pressure ventilation or the O₂ flush mechanism temporarily increases the vaporizer output concentration.",
            additionalInfo: "This effect is particularly pronounced at low fresh gas flows. While it was a more significant problem in older vaporizer designs, modern vaporizers are equipped with pressure balancing systems to minimize this effect.",
          ),
          AnesthesiaMachineItem(
            title: "PHYSICS OF VAPORIZATION",
            description: "Vaporization of anesthetic liquid in the vaporizer is directly related to temperature and vapor pressure; at the boiling point, the vapor pressure is equal to atmospheric pressure.",
            additionalInfo: "Evaporation rate is proportional to temperature. Since heat is consumed during vaporization, the vaporizer cools down; this reduces the output concentration. Modern vaporizers are equipped with heat exchanger systems to compensate for this.",
          ),
          AnesthesiaMachineItem(
            title: "CONVENTIONAL VAPORIZER (Sevoflurane, Isoflurane)",
            description: "A bypass vaporizer opened by turning counterclockwise, allowing part of the carrier gas to pass over the anesthetic liquid.",
            subtitle: "Output concentration may vary at flows above 15 L/min or below 250 mL/min",
            additionalInfo: "A portion of the fresh gas flows directly from the bypass line, while the other portion passes over the anesthetic liquid and becomes saturated with vapor. The mixture of the two flows creates the set concentration.",
          ),
          AnesthesiaMachineItem(
            title: "ELECTRONIC VAPORIZER (Desflurane)",
            description: "An electronically controlled system used instead of conventional vaporizers which cannot steadily control room temperature evaporation due to the high vapor pressure of desflurane (2 atm at 39°C).",
            subtitle: "Fresh gas does not pass through the circuit; ambient pressure changes do not affect concentration",
            additionalInfo: "Desflurane is brought to 2 atm pressure in a heated and pressurized chamber. An electronic control unit doses the gas to provide the correct concentration under all flow conditions. Its operating principle is completely different from conventional vaporizers.",
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Breathing Circuit and Humidification',
        items: [
          AnesthesiaMachineItem(
            title: "OXYGEN ANALYZERS",
            description: "Safety devices that momentarily measure the percentage of oxygen in the inspired gas mixture and provide a hypoxia alarm.",
            additionalInfo: "Three basic types are available:\n• Clark (polarographic): Operates on electrochemical principle, the most commonly used type.\n• Galvanic (fuel cell): Does not require an electrical power source; produces current as it consumes oxygen.\n• Paramagnetic: Based on magnetic properties of O₂; compares with reference gas.",
          ),
          AnesthesiaMachineItem(
            title: "SPIROMETERS",
            description: "In-circuit measuring devices that monitor tidal volume and minute ventilation to ensure they remain at target values by measuring the volume of air breathed by the patient.",
            additionalInfo: "Can be placed in the expiratory or inspiratory limb. Two basic operating principles are available:\n• Ultrasonic type: Calculates flow rate using sound waves.\n• Propeller (turbine) type: Calculates volume based on number of propeller rotations with gas flow.",
          ),
          AnesthesiaMachineItem(
            title: "APL VALVE (Adjustable Pressure Limiting)",
            description: "A valve that provides safe pressure limiting in both spontaneous and controlled ventilation by venting excess gas from the circuit.",
            additionalInfo: "During spontaneous breathing, it is kept fully open so the patient can breathe freely. In controlled (manual) ventilation, it is partially closed to create positive pressure when the bag is squeezed. The APL valve is bypassed when switching to mechanical ventilation.",
          ),
          AnesthesiaMachineItem(
            title: "HUMIDIFIERS (Passive and Active)",
            description: "Humidification of inspired gas preserves mucociliary function; passive devices use the patient's own breath while active devices require external heat and water sources.",
            subtitle: "Inspired gas should be ≤41°C in an active humidifier",
            additionalInfo: "Passive type: HME (Heat and Moisture Exchanger) — returns the heat and moisture exhaled by the patient to the next inspiration; creates about 60 mL dead space.\nActive types:\n• Passover: Gas is passed over the surface of the water.\n• Wick: Gas flow is provided over a wick immersed in water.\n• Bubble-through: Gas is passed through the water in the form of bubbles.\n• Vapor-phase: Water is vaporized and added to heated gas.",
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Ventilators',
        items: [
          AnesthesiaMachineItem(
            title: "VENTILATOR CYCLE",
            description: "Mechanical ventilation consists of four phases: inspiration, end-inspiration (plateau), expiration, and end-expiration.",
            additionalInfo: "During the inspiration phase, gas flow continues until the set volume or pressure target is reached. Intralveolar pressure balance is achieved during the end-inspiration pause (plateau pressure is measured). Expiration occurs passively. End-expiration is the short rest period where PEEP can be applied or respiratory calmness is provided.",
          ),
          AnesthesiaMachineItem(
            title: "VENTILATOR PHASES (Pressure and Flow)",
            description: "Pressure, flow, and volume values are controlled via distinct threshold points during ventilator inspiration.",
            additionalInfo: "Peak pressure: The highest point of inspiration; reflects airway resistance and flow rate.\nPlateau pressure: Static pressure measured when flow stops; reflects lung compliance.\nA large peak-plateau difference indicates high airway resistance.",
          ),
          AnesthesiaMachineItem(
            title: "DOUBLE-CIRCUIT PISTON VENTILATOR",
            description: "A ventilator type where tidal volume can be seen within a transparent and rigid plastic bellows; it precisely controls gas volume in the anesthesia circuit.",
            subtitle: "Contains a separate valve allowing spontaneous breathing",
            additionalInfo: "When the piston moves up, the bellows expand and the exhaled gas is collected. When the piston moves down, the bellows are squeezed and gas is delivered to the lungs. The spill valve closes during inspiration, ensuring all gas goes to the patient.",
          ),
          AnesthesiaMachineItem(
            title: "SPILL VALVE",
            description: "A ventilator safety valve that closes during inspiration to direct all gas to the patient; opens during expiration to vent excess gas to the waste gas line.",
            additionalInfo: "If the spill valve fails and remains open during inspiration, pressure does not build up in the system and adequate tidal volume cannot be provided. This condition is detected by the alarm system with a low tidal volume warning.",
          ),
          AnesthesiaMachineItem(
            title: "ALARM SYSTEM",
            description: "Ventilator alarms are critical safety components that monitor patient ventilation and immediately warn of deviations.",
            additionalInfo: "Main alarm types:\n• Low pressure alarm: Indicates circuit leak or disconnection.\n• Low tidal volume alarm: Indicates insufficient ventilation.\n• Low expired CO₂ alarm: The most reliable indicator of correct ventilation; a value approaching zero suggests esophageal intubation.",
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Waste Gas Scavenging',
        items: [
          AnesthesiaMachineItem(
            title: "NIOSH LIMIT VALUES",
            description: "NIOSH standards, which limit exposure to anesthetic gases in the work environment, have been established to prevent chronic occupational damage.",
            additionalInfo: "Maksimum allowable exposure limits:\n• N₂O alone: 25 ppm\n• Halogenated agent alone: 2 ppm\n• N₂O + halogenated agent combination: 0.5 ppm\nExceeding these limits can carry risks of impaired vitamin B₁₂ due to chronic N₂O exposure and liver damage due to halogenated agents.",
          ),
          AnesthesiaMachineItem(
            title: "ACTIVE / PASSIVE WASTE GAS SYSTEM",
            description: "Systems that remove waste anesthetic gases without disseminating them into the working environment; circuit pressure should be maintained between 0.5–3.5 cmH₂O for safe operation.",
            additionalInfo: "Passive system: Expels waste gases outside by connecting them to the building's ventilation system; its reliability depends on ambient conditions.\nActive system: Provides a more reliable cleaning by constantly sucking with a vacuum pump. It has a waste gas cleaning capacity of 10–15 L/min. Protective valves against excessive suction pressure are present.",
          ),
        ],
      ),
    ];
  }
}
