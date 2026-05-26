import 'package:flutter/material.dart';

class RespiratoryPhysiologyAnesthesiaItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  RespiratoryPhysiologyAnesthesiaItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class RespiratoryPhysiologyAnesthesiaCategory {
  final String categoryName;
  final List<RespiratoryPhysiologyAnesthesiaItem> items;

  RespiratoryPhysiologyAnesthesiaCategory({
    required this.categoryName,
    required this.items,
  });
}

class RespiratoryPhysiologyAnesthesiaData {
  static List<RespiratoryPhysiologyAnesthesiaCategory>
      getRespiratoryPhysiologyAnesthesiaData(BuildContext context) {
    return [
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Functional Respiratory Anatomy',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "THORACIC CAGE AND RESPIRATORY MUSCLES (DIAPHRAGM)",
            description: "The diaphragm is the primary inspiratory muscle responsible for 75% of changes in intrathoracic volume.",
            subtitle: "During normal breathing, inspiration is active (diaphragm + intercostal muscles), while expiration is passive",
            additionalInfo: "In cases of forced or labored inspiration, pectoral muscles, scalene muscles, and the sternocleidomastoid (SCM) muscle are recruited as adjuncts.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "FORCED BREATHING AND AIRWAY MUSCLES",
            description: "During forced breathing, the abdominal and intercostal muscles actively participate in expiration.",
            subtitle: "Pharyngeal muscles play a vital role in maintaining airway patency during sleep and anesthesia",
            additionalInfo: "Relaxation of the tongue base and pharyngeal muscles is the main cause of obstruction, especially in patients with obstructive sleep apnea or following anesthesia induction.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "TRACHEOBRONCHIAL TREE AND ANATOMY OF THE CARINA",
            description: "The trachea is a tube-like structure approximately 10–13 cm long, extending from the lower margin of the cricoid cartilage to the carina.",
            subtitle: "The carina, located at the level of the sternal angle, is the area where the trachea divides into the right and left main bronchi",
            additionalInfo: "The tracheal diameter is wider in males (2.3 x 1.8 cm) than in females (2.0 x 1.4 cm). The narrowest point is 1.7 cm in males and 1.3 cm in females.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "BRONCHIAL ANATOMY AND LOBAR DIVISIONS",
            description: "The right and left main bronchi show distinct differences in terms of their lengths and anatomical angles.",
            subtitle: "The right bronchus (2 cm) is shorter, wider, and branches at a more vertical angle compared to the left (5 cm)",
            additionalInfo: "The right upper lobe bronchus branches approximately 2 cm (male) after the trachea, while this distance is up to 5 cm on the left. this increases the likelihood of accidental right-sided endobronchial intubation.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "BRONCHIAL GENERATIONS AND GAS EXCHANGE",
            description: "The airways divide through a total of 23 generations from the trachea down to the terminal branches.",
            subtitle: "Gas exchange primarily begins in the respiratory bronchioles between the 17th and 19th generations",
            additionalInfo: "The patency of large airways is dependent on total lung volume, while small airways are kept open by the radial traction of surrounding tissues.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "ALVEOLI AND PNEUMOCYTE TYPES",
            description: "The alveoli, the ultimate units of gas exchange in the lungs, have a diameter of 0.05–0.33 mm.",
            subtitle: "Type I pneumocytes cover 90% of the surface and provide gas exchange; Type IIs produce surfactant",
            additionalInfo: "Type II cells also take on a 'stem cell'-like role with the ability to divide and transform into Type I cells in case of damage.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "PULMONARY AND BRONCHIAL CIRCULATORY SYSTEMS",
            description: "Blood flow to the lungs is provided via two separate paths: pulmonary (for gas exchange) and bronchial (for nutrition).",
            subtitle: "Pulmonary capillaries are approximately 10 µm in diameter, and a single erythrocyte can pass through them",
            additionalInfo: "The bronchial circulation nourishes the wall structure up to the terminal bronchioles. The pulmonary circulation handles the entire cardiac output arriving from the heart.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "PULMONARY LYMPHATIC FLOW AND DRAINAGE",
            description: "Removal of excess fluid in the lung interstitial tissue is provided by a lymphatic flow of approximately 20 mL per minute.",
            additionalInfo: "Impairment of lymphatic drainage is an important factor in the formation of pulmonary edema and a decrease in lung compliance.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "INNERVATION OF RESPIRATION (PHRENIC NERVE)",
            description: "Motor control of the diaphragm is provided by the phrenic nerve, originating from the C3, C4, and C5 spinal nerves.",
            subtitle: "Spinal cord injuries above the C5 level can completely stop spontaneous breathing",
            additionalInfo: "The vagus nerve carries sensory impulses from the lungs while exerting a parasympathetic bronchoconstrictor effect via muscarinic receptors.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "SYMPATHETIC INNERVATION AND BRONCHODILATION",
            description: "Sympathetic impulses from the T1–T4 levels provide dilation of the bronchi via beta-2 receptors.",
            subtitle: "Pulmonary vessels have alpha-1 (vasoconstriction) and beta-2 (vasodilation) receptors",
            additionalInfo: "Furthermore, pulmonary vessel dilation can be achieved through the nitric oxide (NO)-mediated parasympathetic system.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Mechanisms of Breathing',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "SPONTANEOUS BREATHING AND PRESSURE CHANGES",
            description: "During natural breathing, expansion of the chest cage causes intrapleural pressure to drop to negative values, drawing air in.",
            subtitle: "Intrapleural pressure is –5 cmH₂O at the end of expiration and drops to –9 cmH₂O during inspiration",
            additionalInfo: "Transpulmonary pressure (Ptrans = Palv – Pplev) is the fundamental pressure difference that keeps the lungs open. Alveolar pressure drops to –3/–4 cmH₂O during inspiration.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "MECHANICAL VENTILATION AND POSITIVE PRESSURE",
            description: "Mechanical ventilators used in general anesthesia push air into the lungs with positive pressure, unlike spontaneous breathing.",
            subtitle: "Tidal volume (VT) is generated by positive pressure; expiration occurs passively when pressure is removed",
            additionalInfo: "Positive pressure ventilation can have negative effects on cardiac output by reducing venous return.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Lung Mechanics',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "COMPLIANCE (LUNG AND CHEST WALL)",
            description: "Compliance is a measure of how much the lungs can expand in response to a unit change in pressure.",
            subtitle: "Normal lung compliance (CL) is 100-150 mL/cmH₂O, chest wall compliance (CW) is 200 mL/cmH₂O",
            additionalInfo: "Total system compliance (~100 mL/cmH2O) is determined by the interaction of these two values like springs connected in series.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "SURFACE TENSION AND THE LAW OF LAPLACE",
            description: "The tension on the inner surface of the alveoli increases the tendency of small alveoli to deflate according to Laplace's law (P = 2T / r).",
            subtitle: "Surfactant released from Type II cells protects small alveoli against collapse by reducing surface tension",
            additionalInfo: "In cases of surfactant deficiency (prematurity, etc.), inflating the lungs requires very high pressures.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "LUNG VOLUMES AND FRC CHANGES",
            description: "Functional Residual Capacity (FRC) is the amount of air remaining in the lungs after a normal breath is exhaled.",
            subtitle: "Obesity, the supine position, and general anesthesia (GA) significantly lower the FRC value",
            additionalInfo: "FRC decreases by 0.8–1 L when supine, and an additional 0.4–0.5 L upon GA induction. A decrease in FRC means reduced oxygen reserve and risk of atelectasis.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "CLOSING CAPACITY AND AGE RELATIONSHIP",
            description: "Closing capacity is the volume at which small airways begin to deflate, and it increases linearly with age.",
            additionalInfo: "Closing capacity can exceed the FRC when supine at age 44 and when standing at age 66; this impairs gas exchange.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "AIRWAY RESISTANCE AND FLOW TYPES",
            description: "This is the obstruction air channels present against flow and is normally around 0.5–2 cmH₂O/L/sec.",
            subtitle: "The area where airway resistance is highest is not the main bronchi, but the medium-sized bronchi",
            additionalInfo: "Flow type is determined by the Reynolds number (Re): if Re < 1000, flow is laminar (quiet); if Re > 1500, flow is turbulent (noisy).",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "DYNAMIC AIRWAY COLLAPSE",
            description: "The premature deflation of the bronchi as a result of intrathoracic pressure exceeding intraluminal airway pressure during forced expiration.",
            additionalInfo: "In diseases such as COPD, airway pressure is increased by applying the 'pursed-lip' breathing mechanism, delaying this collapse.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Ventilation – Perfusion Balance',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "V/Q RATIO AND DEAD SPACE CALCULATION",
            description: "The ratio between air going to the lungs (ventilation) and blood (perfusion) is ideally around 0.8.",
            subtitle: "Areas where gas exchange does not occur are called dead space and are at a level of approximately 2 mL/kg (~150 mL) in adults",
            additionalInfo: "Impairment of the V/Q ratio is the most common cause of hypoxemia (shunt or dead space effect).",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "WEST ZONES AND PERFUSION DISTRIBUTION",
            description: "Lung perfusion is divided into three main regions due to the effects of gravity and pressure.",
            subtitle: "Zone 3 consists of the lower regions where gas exchange and perfusion are best, with a pressure relationship of Pa > Pv > PA",
            additionalInfo: "In Zone 1, capillaries are collapsed (dead space) as alveolar pressure (PA) is greater than arterial pressure. Zone 4 is seen in cases of edema or atelectasis.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "HYPOXIC PULMONARY VASOCONSTRICTION (HPV)",
            description: "Lung tissue reduces blood flow to hypoxic (non-ventilated) areas by narrowing the vessels.",
            subtitle: "Volatile anesthetics can increase the amount of shunt by inhibiting the HPV response",
            additionalInfo: "The HPV mechanism is a protective reflex that ensures blood is directed to well-ventilated areas.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Gas Pressures and Alveolar Gas',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "OXYGEN PRESSURES (PAO2 AND PAO2)",
            description: "The oxygen pressure in the alveoli (PAO2) is approximately 100 mmHg while breathing room air at sea level.",
            subtitle: "The normal PaO2 level in arterial blood is in the 60–100 mmHg range",
            additionalInfo: "The expected arterial oxygen pressure can be roughly calculated with the formula '120 – (age/3)'.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "A-A GRADIENT AND AGE-DEPENDENT CHANGE",
            description: "The oxygen pressure difference between the alveolus and the artery is normally below 15 mmHg; it increases with age.",
            subtitle: "The oxygen pressure in mixed venous blood (PvO2) drops to approximately 40 mmHg",
            additionalInfo: "An increase in this difference points to the presence of lung parenchyma disease or a shunt.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "CARBON DIOXIDE PRESSURES AND ETCO2",
            description: "The carbon dioxide pressure in arterial blood (PaCO2) is normally at the level of 40 ± 4 mmHg.",
            subtitle: "The end-tidal CO2 (EtCO2) value is expected to be approximately 5 mmHg lower than the PaCO2",
            additionalInfo: "EtCO2 monitoring provides instantaneous information about the adequacy of ventilation and metabolic state.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Oxygen Transport',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "OXYGEN CARRYING CAPACITY WITH HEMOGLOBIN",
            description: "99% of blood oxygen is transported bound to hemoglobin; 1 gram of Hb binds 1.39 mL of oxygen.",
            additionalInfo: "At normal saturation and hemoglobin levels, there is approximately 19.5 mL/dL of oxygen in the arterial blood (CaO2). Tissues use approximately 25% of this oxygen.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "OXYGEN STORE AND THE EFFECT OF PREOXYGENATION",
            description: "The body's largest oxygen store is the air within the FRC (Functional Residual Capacity) in the lungs.",
            subtitle: "Performing preoxygenation with 100% oxygen for 3–5 minutes can increase apnea tolerance time to 8-10 minutes",
            additionalInfo: "Filling the air in the FRC with oxygen instead of nitrogen (denitrogenation) gains critical time in difficult airway management.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Carbon Dioxide Transport',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "CO2 TRANSPORT METHODS AND THE HALDANE EFFECT",
            description: "CO2 is transported in the blood in dissolved form, as bicarbonate (most), and as carbamino compounds.",
            subtitle: "Haldane effect: The carbon dioxide carrying capacity increases when hemoglobin releases oxygen",
            additionalInfo: "Normal CO2 production (VCO2) in the body is approximately 200 mL per minute. The rate of passage from blood to alveolus in the lungs is 20 times faster than oxygen.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Respiratory Control Mechanisms',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "RESPIRATORY CENTERS (MEDULLA AND PONS)",
            description: "The fundamental rhythm of respiration is generated by groups of neurons in the medulla oblongata in the brainstem.",
            subtitle: "Dorsal group neurons manage inspiration, while ventral group neurons manage forced expiration",
            additionalInfo: "The pneumotaxic and apneustic centers located in the pons modulate the depth and pattern of respiration.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "CENTRAL AND PERIPHERAL CHEMORECEPTORS",
            description: "Centers that sense gas changes in the blood adjust ventilation by sending impulses to the respiratory center.",
            subtitle: "Central chemoreceptors are the centers most sensitive to hydrogen (pH) and CO2 changes within the CSF",
            additionalInfo: "Peripheral chemoreceptors (especially the carotid body) are stimulated when PaO2 drops below 50 mmHg.",
          ),
        ],
      ),
      RespiratoryPhysiologyAnesthesiaCategory(
        categoryName: 'Effects of Anesthesia on the Respiratory System',
        items: [
          RespiratoryPhysiologyAnesthesiaItem(
            title: "FRC AND CLOSING CAPACITY CHANGES",
            description: "General anesthesia lowers the lung volume (FRC) while tipping the balance with closing capacity in favor of shunting.",
            additionalInfo: "This imbalance leads to premature deflation of the airways and a drop in blood oxygen levels (hypoxemia).",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "RESPIRATORY EFFECTS OF VOLATILE AGENTS",
            description: "While volatile anesthetics cause direct bronchodilation, they also suppress the protective HPV reflex.",
            subtitle: "The use of high FiO2 can increase the risk of 'absorption atelectasis'",
            additionalInfo: "Furthermore, anesthetics slightly suppress alveolar surfactant function, increasing the tendency for atelectasis.",
          ),
          RespiratoryPhysiologyAnesthesiaItem(
            title: "BREATHING PATTERNS AND AGENT INTERACTION",
            description: "Different anesthesia combinations characteristically alter the patient's breathing pattern.",
            subtitle: "Opioids cause slow and deep breathing, while volatile agents cause rapid and shallow breathing",
            additionalInfo: "The carbon dioxide awakening threshold shifts to the right under anesthesia; meaning the patient only begins to breathe at higher CO2 values.",
          ),
        ],
      ),
    ];
  }
}
