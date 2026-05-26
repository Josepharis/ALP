import 'package:flutter/material.dart';

class OperatingRoomItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  OperatingRoomItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class OperatingRoomCategory {
  final String categoryName;
  final List<OperatingRoomItem> items;

  OperatingRoomCategory({
    required this.categoryName,
    required this.items,
  });
}

class OperatingRoomData {
  static List<OperatingRoomCategory> getOperatingRoomData(BuildContext context) {
    return [
      OperatingRoomCategory(
        categoryName: "Medical Gas Sources",
        items: [
          OperatingRoomItem(
            title: "O₂ H-CYLINDER",
            description: "Giant oxygen cylinders used as the main source in large central systems with 2000 psi pressure.",
            additionalInfo: "They are located as stationary units in central gas plants. The high pressure of 2000 psi inside the cylinder is reduced to a safe working level of 55 ±5 psi through regulators before being delivered to the pipeline.",
          ),
          OperatingRoomItem(
            title: "O₂ E-CYLINDER",
            description: "A 660-liter backup oxygen source used for emergencies and transport, capable of direct connection to the anesthesia machine.",
            additionalInfo: "It has a full load pressure of 2000 psi. Thanks to the Pin Index Safety System (PISS), it can only be attached to the oxygen inlet of the machine. It contains approximately 660 liters of gas at a standard temperature of 20 °C.",
          ),
          OperatingRoomItem(
            title: "LIQUID OXYGEN",
            description: "Oxygen stored in large volumes and economically by keeping it below its critical temperature of –119 °C.",
            additionalInfo: "It is the primary oxygen source for large hospitals. It takes up much less space compared to its gaseous form. Before being delivered to the system, it is converted to the gas phase through evaporators and pumped into the pipeline. If the temperature rises above the critical point, it cannot be maintained in liquid form.",
          ),
          OperatingRoomItem(
            title: "PIN INDEX SAFETY SYSTEM (PISS)",
            description: "A mechanical safety key that prevents incorrect cylinder connections and accidental delivery of the wrong gas to the patient.",
            additionalInfo: "It is based on the matching of pins on the yoke assembly with holes on the cylinder valve. Each gas (O₂, N₂O, Air) has its own unique pin configuration, making it physically impossible to attach nitrous oxide instead of oxygen.",
          ),
          OperatingRoomItem(
            title: "N₂O (NITROUS OXIDE)",
            description: "An anesthetic gas stored in blue cylinders in both liquid and gas phases, with a critical temperature of 36.5 °C.",
            additionalInfo: "The cylinder pressure remains constant (745 psi) until the liquid phase is completely exhausted. Therefore, it is impossible to determine the remaining gas amount by looking at the pressure gauge; the amount can only be accurately calculated by weighing the cylinder (gross weight - tare weight).",
          ),
          OperatingRoomItem(
            title: "MEDICAL AIR",
            description: "A clean air source obtained by mixing oxygen and nitrogen in specific proportions, with a critical temperature of –140.6 °C.",
            additionalInfo: "It is usually designated with a yellow color code in operating rooms. It is preferred as a carrier gas particularly when high oxygen concentrations are not desired or to reduce the risk of combustion in airway surgeries.",
          ),
          OperatingRoomItem(
            title: "CARBON DIOXIDE (CO₂)",
            description: "Used to inflate the abdominal cavity (insufflation) during laparoscopy and robotic surgery procedures to create a working space.",
            additionalInfo: "Stored in gray cylinders. It is colorless and odorless; however, its most important features are that it is non-flammable and can be rapidly eliminated when absorbed into the bloodstream. It may cause shoulder pain after the procedure due to its slightly acidic character.",
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: "Operating Room Environmental Factors",
        items: [
          OperatingRoomItem(
            title: "IDEAL TEMPERATURE MANAGEMENT",
            description: "The room temperature should be fixed between 20-24 °C for both patient comfort and infection control.",
            additionalInfo: "A drop in temperature below these limits poses a risk of 'Perioperative Hypothermia.' Hypothermia increases surgical site infections, impairs clotting (coagulopathy), and triggers cardiac side effects. Pediatric and geriatric patients are particularly sensitive to these changes.",
          ),
          OperatingRoomItem(
            title: "HUMIDITY BALANCE",
            description: "Humidity should be maintained at 50–55% to prevent airborne infections and static electricity buildup.",
            additionalInfo: "Humidity below 30% increases the risk of explosions and fires caused by static electricity, as well as the spread of infections. Humidity above 60% impairs the barrier properties of sterile drapes and can cause mold growth.",
          ),
          OperatingRoomItem(
            title: "VENTILATION AND POSITIVE PRESSURE",
            description: "Operating room air must be filtered through HEPA filters, replaced at least 25 times per hour, and kept at positive pressure relative to the corridor.",
            additionalInfo: "Slight positive pressure ensures that when a door is opened, dirty air does not enter, but clean air flows out. Regular flow from ceiling to floor (laminar flow) ensures that particles settle on the floor. HEPA filters strain 99.97% of 0.3-micron particles.",
          ),
          OperatingRoomItem(
            title: "NOISE CONTROL",
            description: "The noise level should be kept below 70 dB to avoid disrupting team communication and concentration.",
            additionalInfo: "Equipment alarms, suction sounds, and team conversations can rapidly raise the noise level. High noise can increase patient anxiety and trigger the risk of incorrect drug/dose applications, especially during critical phases like anesthesia induction and emergence.",
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: "Radiation Safety",
        items: [
          OperatingRoomItem(
            title: "ALARA / ALARP PRINCIPLE",
            description: "A fundamental safety philosophy advocating that radiation exposure should be kept 'As Low As Reasonably Achievable/Practicable'.",
            additionalInfo: "Any unnecessary exposure must be avoided. There are three main rules in practice: 1- Minimize exposure time, 2- Stay as far as possible from the source, 3- Use shielding with lead barriers.",
          ),
          OperatingRoomItem(
            title: "INVERSE SQUARE LAW",
            description: "The intensity of radiation decreases rapidly with the square of the distance from the source.",
            additionalInfo: "Distance is the best protector, even without physical shielding. For example, moving from 1 meter to 2 meters away from the radiation source reduces the amount of radiation exposure by 4 times (2²), and moving 3 meters away reduces it by 9 times (3²). The ideal distance is at least 2 meters.",
          ),
          OperatingRoomItem(
            title: "RISKY AREAS AND PROTECTION",
            description: "Interventional procedures using fluoroscopy (C-arm) are areas where the risk of radiation is most intense.",
            additionalInfo: "All team members working in these environments must wear lead aprons, thyroid shields, and lead glasses. It is also a legal requirement to carry a dosimeter at the neck level to monitor the amount of exposure.",
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: "Electrical Safety",
        items: [
          OperatingRoomItem(
            title: "MACROSHOCK AND MICROSHOCK",
            description: "Even very small currents reaching the heart directly (microshock) can cause fatal ventricular fibrillation.",
            additionalInfo: "Macroshock (mA level) encounters high resistance while passing through the skin. However, if microshock (μA level) reaches the heart through direct paths such as central venous catheters or pacing wires, it can cause arrest even at values as low as 100 μA. The allowable leakage current limit is 10 μA.",
          ),
          OperatingRoomItem(
            title: "LINE ISOLATION MONITOR (LIM)",
            description: "A device that continuously scans the leakage current level in the isolated power system and warns personnel against electric shock.",
            additionalInfo: "A LIM alarm indicates a leak (grounding fault) in the system. When the alarm sounds, the surgery is not stopped and power is not cut; however, the plug of the last device connected to the system should be pulled and technical service should be called. The LIM works together with an isolation transformer.",
          ),
        ],
      ),
      OperatingRoomCategory(
        categoryName: "Fire Safety",
        items: [
          OperatingRoomItem(
            title: "FIRE TRIANGLE ELEMENTS",
            description: "The presence of Fuel, Oxidizer, and Heat (ignition) elements is essential for a fire; operating rooms are risky in this regard.",
            additionalInfo: "Components always present in the system:\n• Fuel: Alcohol-based disinfectants, sterile drapes, intestinal gases.\n• Oxidizer: Oxygen and N₂O (accelerates combustion).\n• Heat/Ignition: Electrocautery tip, laser beams, defibrillator paddles.",
          ),
          OperatingRoomItem(
            title: "CO₂ EXTINGUISHER PREFERENCE",
            description: "The primary fire extinguishing agent due to its lack of damage to sensitive medical equipment and minimized risk of thermal injury.",
            additionalInfo: "It disperses quickly, leaves no residue, and does not conduct electricity. However, it should be kept in mind that when used intensely in a closed area, it can displace oxygen and create a risk of asphyxia for personnel.",
          ),
        ],
      ),
    ];
  }
}
