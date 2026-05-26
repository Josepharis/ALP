import 'package:flutter/material.dart';

class CardiovascularPhysiologyItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  CardiovascularPhysiologyItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class CardiovascularPhysiologyCategory {
  final String categoryName;
  final List<CardiovascularPhysiologyItem> items;

  CardiovascularPhysiologyCategory({
    required this.categoryName,
    required this.items,
  });
}

class CardiovascularPhysiologyData {
  static List<CardiovascularPhysiologyCategory> getCardiovascularPhysiologyData(
    BuildContext context,
  ) {
    return [
      CardiovascularPhysiologyCategory(
        categoryName: 'Cardiac Action Potential',
        items: [
          CardiovascularPhysiologyItem(
            title: "RESTING POTENTIAL (-80/-90 MV)",
            description: "The resting membrane potential in cardiac cells is between -80 and -90 mV.",
            additionalInfo: "This potential difference is actively maintained by the Na-K ATPase pump; maintaining the negative charge inside the cell is fundamental for excitability.",
          ),
          CardiovascularPhysiologyItem(
            title: "PHASE 0 (RAPID DEPOLARIZATION)",
            description: "A sudden stage of electrical discharge occurring with the opening of fast sodium (Na⁺) channels.",
            additionalInfo: "With Na⁺ ions rapidly entering the cell, the membrane potential quickly rises from negative to positive values.",
          ),
          CardiovascularPhysiologyItem(
            title: "PHASE 1 (SODIUM INACTIVATION)",
            description: "A short repolarization phase beginning with the closure of fast sodium channels and transient outward potassium flow.",
            additionalInfo: "At this stage, the action potential reaches its peak, and inactivation gates close, stopping the sodium current.",
          ),
          CardiovascularPhysiologyItem(
            title: "PHASE 2 (CALCIUM INFLUX AND PLATEAU PERIOD)",
            description: "The plateau stage where contraction is triggered by the influx of calcium (Ca²⁺) ions into the cell.",
            additionalInfo: "This influx via slow calcium channels is balanced by potassium efflux, prolonging the action potential duration and preventing tetanic contraction of the heart.",
          ),
          CardiovascularPhysiologyItem(
            title: "PHASE 3 (POTASSIUM EFFLUX AND REPOLARIZATION)",
            description: "The stage that allows the cell to return to its negative resting potential via rapid potassium (K⁺) efflux.",
            additionalInfo: "With the completion of repolarization, the cell is prepared to become excitable again; the ion balance is reorganized in this stage.",
          ),
          CardiovascularPhysiologyItem(
            title: "PHASE 4 (RETURN TO RESTING POTENTIAL)",
            description: "The stable resting potential stage where the cell awaits re-stimulation.",
            subtitle: "The absolute refractory period, during which the cell is resistant to re-stimulation, lasts until Phase IV",
            additionalInfo: "The Na-K ATPase pump puts ions back in their place (Na out, K in) in this phase, becoming ready for the next action potential.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Cardiac Conduction System',
        items: [
          CardiovascularPhysiologyItem(
            title: "SA NODE (PRIMARY PACEMAKER)",
            description: "The heart's main rhythm center, with the intrinsic capacity to produce 90–100 impulses per minute.",
            additionalInfo: "Located in the right atrium, this structure is the main center determining heart rate in normal physiology as the dominant pacemaker.",
          ),
          CardiovascularPhysiologyItem(
            title: "AV NODE (CONDUCTION DELAY)",
            description: "Provides a conduction delay of approximately 0.11 seconds to allow the atria to empty and the ventricles to fill.",
            additionalInfo: "The intrinsic impulse rate is between 40–60 per minute. This delay mechanism is of vital importance for the mechanical efficiency of the cardiac cycle.",
          ),
          CardiovascularPhysiologyItem(
            title: "HIS–PURKINJE SYSTEM (FASTEST CONDUCTION)",
            description: "The region where conduction spreads fastest, allowing simultaneous contraction of the ventricles within 0.03 seconds.",
            additionalInfo: "This rapid spread enables the heart to work synchronously (contraction synchronization) while ejecting blood.",
          ),
          CardiovascularPhysiologyItem(
            title: "EFFECTS OF ANESTHETICS ON THE CONDUCTION SYSTEM",
            description: "Potent inhalation agents suppress the SA node, moderately affect the AV node, and involve complex effects on Purkinje fibers.",
            subtitle: "Opioids prolong the action potential (AP) duration",
            additionalInfo: "Local anesthetics (LAs) can seriously slow the conduction velocity by blocking Na⁺ channels at high doses.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Cardiac Innervation',
        items: [
          CardiovascularPhysiologyItem(
            title: "PARASYMPATHETIC SYSTEM (M2 RECEPTORS)",
            description: "Exert negative chronotropy, dromotropy, and inotropy effects via muscarinic type 2 receptors.",
            additionalInfo: "This control, carried out via the vagus nerve, reduces the work load of the heart by suppressing heart rate and contractile force.",
          ),
          CardiovascularPhysiologyItem(
            title: "SYMPATHETIC SYSTEM (BETA-1 RECEPTORS)",
            description: "Show positive chronotropy, dromotropy, and inotropy effects via beta-1 receptors.",
            additionalInfo: "Impulses arriving via the sympathetic upper chain increase cardiac output by raising heart rate and contractile force.",
          ),
          CardiovascularPhysiologyItem(
            title: "INNERVATION DISTRIBUTION AND NODE CONTROL",
            description: "Right autonomic nerves primarily control the SA node, while the left side tends to control the AV node.",
            additionalInfo: "The right vagus/sympathetic system determines the dominant rate on the SA node, while the left vagus/sympathetic system determines the AH (AV transition) delay.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Cardiac Cycle',
        items: [
          CardiovascularPhysiologyItem(
            title: "ATRIAL CONTRACTION (ATRIAL KICK)",
            description: "Systole of the atria contributes approximately 20–30% to total ventricular filling.",
            additionalInfo: "The loss of this contribution in conditions like atrial fibrillation can result in a significant drop in cardiac output.",
          ),
          CardiovascularPhysiologyItem(
            title: "CVP WAVES (A, C, V WAVES)",
            description: "The 'a' wave in central venous pressure reflects atrial systole, while the 'c' wave reflects ventricular systole.",
            subtitle: "The 'v' wave represents the atrial filling stage",
            additionalInfo: "These mechanical indicators in the CVP trace provide direct information about hemodynamic events on the right side of the heart.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Ventricular Performance',
        items: [
          CardiovascularPhysiologyItem(
            title: "BASIC HEMODYNAMIC FORMULAS (CO AND CI)",
            description: "Cardiac output (CO) is the product of stroke volume and heart rate; CO = SV × HR.",
            subtitle: "CI (Cardiac Index) is the ratio of CO to body surface area and is normally 2.5–4.2 L/min/m²",
            additionalInfo: "These formulas are the most basic clinical parameters determining whether sufficient blood is delivered to tissues.",
          ),
          CardiovascularPhysiologyItem(
            title: "EJECTION FRACTION (EF) AND MIXED VENOUS",
            description: "EF shows how much of the end-diastolic volume is ejected; EF = (EDV-ESV)/EDV (Normal 67%±8).",
            additionalInfo: "Mixed venous saturation (SvO2) is the most sensitive perfusion indicator reflecting the balance between oxygen consumption and delivery by tissues.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Preload',
        items: [
          CardiovascularPhysiologyItem(
            title: "PRELOAD INDICATORS (EDV)",
            description: "Ventricular end-diastolic volume (EDV) is the most basic indicator for the heart's preload.",
            additionalInfo: "Clinically, as EDV increases, contractile force and stroke volume also increase according to the Frank-Starling law.",
          ),
          CardiovascularPhysiologyItem(
            title: "FRANK–STARLING LAW AND VOLUME RELATIONSHIP",
            description: "As the blood volume reaching the heart increases, cardiac output (CO) increases due to the stretching of fibers.",
            subtitle: "In case of excessive volume overload, the heart cannot compensate for this increase; output remains constant or decreases",
            additionalInfo: "This mechanism is an intrinsic feature allowing the heart to adapt to instantaneous changes in venous return.",
          ),
          CardiovascularPhysiologyItem(
            title: "EFFECT OF HEART RATE ON FILLING",
            description: "A heart rate exceeding 120 beats per minute reduces ventricular filling as it shortens diastole duration.",
            additionalInfo: "Shortened filling duration can seriously reduce output especially in conditions such as mitral stenosis or coronary insufficiency.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Afterload',
        items: [
          CardiovascularPhysiologyItem(
            title: "WALL TENSION AND LAPLACE'S LAW",
            description: "Wall tension is the pressure the ventricle overcomes to eject blood, calculated with the (P×R)/(2×H) formula.",
            additionalInfo: "As the ventricular radius increases or the wall thins, the required contractile force and oxygen consumption also increase.",
          ),
          CardiovascularPhysiologyItem(
            title: "VASCULAR RESISTANCE VALUES (SVR AND PVR)",
            description: "Systemic resistance (SVR) is 900–1500, while pulmonary resistance (PVR) is between 50–150 dyn·s·cm⁻⁵.",
            additionalInfo: "These resistance values determine the impedance the heart encounters pushing blood forward with each stroke.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Contractility',
        items: [
          CardiovascularPhysiologyItem(
            title: "POSITIVE INOTROPIC EFFECTS",
            description: "The most powerful positive factor increasing contraction is sympathetic system stimulation.",
            additionalInfo: "Exogenous catecholamines, calcium, and digitalis derivatives are also elements that increase contractile force.",
          ),
          CardiovascularPhysiologyItem(
            title: "NEGATIVE INOTROPIC EFFECTS",
            description: "Anoxia, acidosis, ischemia, and carbon dioxide accumulation reduce the heart's contractile force within seconds.",
            additionalInfo: "Additionally, catecholamine depletion in chronic conditions produces a negative effect on contractility.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Systemic Circulation',
        items: [
          CardiovascularPhysiologyItem(
            title: "PRESSURE CALCULATIONS (MAP AND PP)",
            description: "Mean arterial pressure (MAP) = Diastolic Pressure + 1/3 Pulse Pressure.",
            subtitle: "Pulse pressure is directly proportional to stroke volume and inversely proportional to arterial elasticity (compliance)",
            additionalInfo: "MAP is the fundamental driving force providing tissue perfusion and should be carefully monitored under anesthesia.",
          ),
          CardiovascularPhysiologyItem(
            title: "ROLE OF ARTERIOLES IN RESISTANCE",
            description: "Arterioles are the region where the greatest blood pressure drop occurs in the circulatory system.",
            additionalInfo: "These small vessels play a leading role in controlling blood flow as the main determinant of vascular resistance (SVR).",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Pressure Control Mechanisms',
        items: [
          CardiovascularPhysiologyItem(
            title: "EARLY PHASE (BAROREFLEX)",
            description: "The fastest pressure control mechanism acting within seconds.",
            subtitle: "Carotid sinus baroreceptors are more dominant compared to the aortic area",
            additionalInfo: "Detects pressure changes and adjusts heart rate and resistance via the autonomic nervous system.",
          ),
          CardiovascularPhysiologyItem(
            title: "INTERMEDIATE PHASE (RAAS AND AVP)",
            description: "The Renin-Angiotensin and Vasopressin system acting within minutes to hours.",
            additionalInfo: "Attempts to balance blood pressure through vasoconstriction and fluid retention.",
          ),
          CardiovascularPhysiologyItem(
            title: "LONG-TERM PHASE (RENAL MECHANISMS)",
            description: "Mechanism regulating sodium and water balance via the kidneys over days and weeks.",
            additionalInfo: "Keeps blood pressure stable by adjusting blood volume through pressure natriuresis and diuresis.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Coronary Circulation',
        items: [
          CardiovascularPhysiologyItem(
            title: "SUPPLY REGIONS OF CORONARY ARTERIES",
            description: "RCA supplies the right heart and LV inferior; LCA supplies the left heart, septum, and anterior regions.",
            additionalInfo: "RCA = Right atrium, Right ventricle, LV inferior wall; LCA = Left atrium, Interventricular septum, LV anterior–lateral wall.",
          ),
          CardiovascularPhysiologyItem(
            title: "CORONARY PERFUSION PRESSURE AND FLOW",
            description: "Coronary perfusion pressure is the DBP – LVEDP difference; normal blood flow is 250 mL per minute.",
            subtitle: "64% of heart's oxygen consumption is spent on pressure work",
            additionalInfo: "Sinus venous saturation is approximately 30%; this shows the myocardium is the most efficient (maximum) oxygen-using organ.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Cardiovascular Effects of Anesthetics',
        items: [
          CardiovascularPhysiologyItem(
            title: "PROTECTIVE EFFECTS OF VOLATILE AGENTS",
            description: "They provide regeneration and reperfusion protection by opening ATP-sensitive potassium channels.",
            additionalInfo: "They protect the heart during risky periods by reducing coronary vasodilation and myocardial oxygen (MVO2) demand.",
          ),
          CardiovascularPhysiologyItem(
            title: "SEVOFLURANE AND CORONARY STEAL",
            description: "It has been clinically proven that Sevoflurane does not lead to the coronary steal phenomenon.",
            additionalInfo: "This feature offers a reliable option for inhalation anesthesia in ischemic heart patients.",
          ),
        ],
      ),
      CardiovascularPhysiologyCategory(
        categoryName: 'Heart Failure',
        items: [
          CardiovascularPhysiologyItem(
            title: "BASIC CAUSE (CORONARY ARTERY DISEASE)",
            description: "Coronary artery disease is the primary and most common ideological cause of heart failure cases.",
            additionalInfo: "Impairment of myocardial perfusion leads to contractile and filling defects over time, forming the clinical picture of failure.",
          ),
          CardiovascularPhysiologyItem(
            title: "CAUSES OF DIASTOLIC DYSFUNCTION",
            description: "Often develops after Hypertension (HT), Coronary Artery Disease (CAD), and Hypertrophic Cardiomyopathy.",
            additionalInfo: "Characterized by hardening of the heart muscle or difficulty in filling, this situation is responsible for a significant part of heart failure symptoms.",
          ),
          CardiovascularPhysiologyItem(
            title: "COMPENSATORY MECHANISMS AND VENTRICLE",
            description: "When heart output drops, the body increases preload, raises sympathetic tone, and develops ventricular hypertrophy.",
            additionalInfo: "Short-term output-maintaining responses can lead to heart reshaping (remodeling) and worsening failure in the long run.",
          ),
        ],
      ),
    ];
  }
}
