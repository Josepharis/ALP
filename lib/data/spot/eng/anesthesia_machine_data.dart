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

  AnesthesiaMachineCategory({
    required this.categoryName,
    required this.items,
  });
}

class AnesthesiaMachineData {
  static List<AnesthesiaMachineCategory> getAnesthesiaMachineData(BuildContext context) {
    return [
      AnesthesiaMachineCategory(
        categoryName: 'Gas Distribution',
        items: [
          AnesthesiaMachineItem(
            title: 'Pipeline Inlets',
            description: 'O₂, N₂O, Air → central system 50 psi',
          ),
          AnesthesiaMachineItem(
            title: 'Misconnection Prevention',
            description: 'DISS, one-way valve, and filter',
          ),
          AnesthesiaMachineItem(
            title: 'Cylinder Inlets',
            description: 'PISS (Pin Index Safety System), 45 psi (Bourdon gauge)',
          ),
          AnesthesiaMachineItem(
            title: 'Pressure Regulators',
            description: 'Central system: constant pressure',
            subtitle: 'Cylinder: variable pressure',
            additionalInfo: 'Cylinder does not engage unless central system <45 psi',
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Oxygen Safety',
        items: [
          AnesthesiaMachineItem(
            title: 'Fail-Safe Valve',
            description: 'If O₂ pressure falls below 50%, other gases are cut off (25–30 psi)',
          ),
          AnesthesiaMachineItem(
            title: 'O₂ Supply Pressure',
            description: 'Cut-off if <0.5 psi for N₂O, <10 psi for other gases',
          ),
          AnesthesiaMachineItem(
            title: 'Hypoxia Prevention',
            description: 'The most reliable method is an oxygen analyzer (placed in inspiratory limb)',
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Flow Control',
        items: [
          AnesthesiaMachineItem(
            title: 'Flow Valve',
            description: 'Proximal = high pressure, distal = low pressure',
            subtitle: 'Touch and color coding prevent opening the wrong gas',
          ),
          AnesthesiaMachineItem(
            title: 'O₂ Flow Valve',
            description: 'Fluted, large, positioned on the far right',
          ),
          AnesthesiaMachineItem(
            title: 'Flowmeters',
            description: 'Constant pressure – variable orifice',
            subtitle: 'Read at center of float',
            additionalInfo: 'Poiseuille\'s law: low flow → viscosity dominates; high flow → density dominates',
          ),
          AnesthesiaMachineItem(
            title: 'Minimum O₂ Flow',
            description: '≥150 mL/min',
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Vaporizers',
        items: [
          AnesthesiaMachineItem(
            title: 'Safety Rule',
            description: 'Two vaporizers cannot be opened simultaneously',
          ),
          AnesthesiaMachineItem(
            title: 'Pumping Effect',
            description: 'Positive pressure or O₂ flush → increased vaporizer output',
          ),
          AnesthesiaMachineItem(
            title: 'Physics of Vaporization',
            description: 'Boiling point → vapor pressure = atmospheric pressure',
            subtitle: 'Evaporation rate is proportional to temperature',
          ),
          AnesthesiaMachineItem(
            title: 'Modern Conventional Vaporizer',
            description: 'Turned counterclockwise; part of carrier gas passes through',
            subtitle: 'At >15 L/min or <250 mL/min, gas concentration varies',
          ),
          AnesthesiaMachineItem(
            title: 'Electronic Vaporizer (Desflurane)',
            description: 'Vapor pressure: 39 °C and 2 atm',
            subtitle: 'Fresh gas does not pass through; ambient pressure changes do not affect concentration',
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Breathing Circuit & Humidification',
        items: [
          AnesthesiaMachineItem(
            title: 'Oxygen Analyzers',
            description: 'Clark (polarographic), galvanic (fuel cell), paramagnetic',
          ),
          AnesthesiaMachineItem(
            title: 'Spirometers',
            description: 'Measure expiration or inspiration; ultrasonic or turbine type',
          ),
          AnesthesiaMachineItem(
            title: 'APL Valve',
            description: 'Open during spontaneous breathing, partially closed during controlled ventilation',
          ),
          AnesthesiaMachineItem(
            title: 'Humidifiers',
            description: 'Passive: HME (≈60 mL dead space)',
            subtitle: 'Active: passover, wick, bubble-through, vapor-phase; inspired gas should be ≤41 °C',
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Ventilators',
        items: [
          AnesthesiaMachineItem(
            title: 'Cycle',
            description: 'Inspiration → end-inspiration → expiration → end-expiration',
          ),
          AnesthesiaMachineItem(
            title: 'Phases',
            description: 'Constant pressure/flow, peak pressure, plateau pressure',
          ),
          AnesthesiaMachineItem(
            title: 'Double-Circuit Piston Ventilator',
            description: 'Tidal volume: transparent, rigid plastic bellows',
            subtitle: 'Contains valve allowing spontaneous breathing',
          ),
          AnesthesiaMachineItem(
            title: 'Spill Valve',
            description: 'Closed during inspiration, open during expiration',
          ),
          AnesthesiaMachineItem(
            title: 'Alarm System',
            description: 'Low pressure, low tidal volume, low expired CO₂',
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Waste Gas Scavenging',
        items: [
          AnesthesiaMachineItem(
            title: 'NIOSH Limits',
            description: 'N₂O 25 ppm, halogenated agent 2 ppm, combination 0.5 ppm',
          ),
          AnesthesiaMachineItem(
            title: 'Active/Passive System',
            description: 'Pressure 0.5–3.5 cm H₂O',
          ),
          AnesthesiaMachineItem(
            title: 'Active Vacuum',
            description: 'Capacity of 10–15 L/min for waste gas removal',
          ),
        ],
      ),
      AnesthesiaMachineCategory(
        categoryName: 'Key Exam Spots',
        items: [
          AnesthesiaMachineItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'Pipeline: 50 psi, Cylinder: 45 psi',
            subtitle: 'Fail-safe: O₂ <50% → other gases cut off',
            additionalInfo: 'Min O₂ flow: ≥150 mL/min\nTwo vaporizers cannot open simultaneously\nNIOSH: N₂O 25 ppm, halogenated 2 ppm',
          ),
        ],
      ),
    ];
  }
}
