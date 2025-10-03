import 'package:flutter/material.dart';

class NeuromuscularBlockingAgentsItem {
  final String title;
  final String description;
  final String? subtitle;
  final String? additionalInfo;

  NeuromuscularBlockingAgentsItem({
    required this.title,
    required this.description,
    this.subtitle,
    this.additionalInfo,
  });
}

class NeuromuscularBlockingAgentsCategory {
  final String categoryName;
  final List<NeuromuscularBlockingAgentsItem> items;

  NeuromuscularBlockingAgentsCategory({
    required this.categoryName,
    required this.items,
  });
}

class NeuromuscularBlockingAgentsData {
  static List<NeuromuscularBlockingAgentsCategory> getNeuromuscularBlockingAgentsData(BuildContext context) {
    return [
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Neuromuscular Transmission',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: 'Basic Process',
            description: 'Action potential → motor end plate → Ach release',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Ach Binding',
            description: 'Ach binds nicotinic receptor (10% binding is sufficient) → depolarization',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Receptor Structure',
            description: '2α + β + δ + ε (fetal: γ instead of ε)',
            subtitle: 'Contraction occurs only if Ach binds both α subunits',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Quantal Release',
            description: '1 quantum ≈ 10⁴ Ach; ~200 quanta released per stimulus',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Calcium Effect',
            description: '↑ [Ca²⁺] → ↑ Ach release',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Eaton-Lambert Syndrome',
            description: 'Reduced Ach release',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Myasthenia Gravis',
            description: 'Reduced receptors',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Ach Degradation',
            description: 'Ach degraded by AchE',
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Depolarizing vs Nondepolarizing Block',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: 'General Structure',
            description: 'All are quaternary ammonium compounds',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Depolarizing Block (SC)',
            description: 'Acts like Ach → persistent depolarization → Phase I block',
            subtitle: 'If prolonged → Phase II block',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Nondepolarizing Block',
            description: 'Blocks α subunit (competitive antagonism)',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Denervation Effect',
            description: 'Denervation → ↑ receptors → exaggerated response to depolarizing, resistance to nondepolarizing agents',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Closed Channel Block',
            description: 'Channel occlusion',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Open Channel Block',
            description: 'Use-dependent',
            subtitle: 'Neostigmine, antibiotics, cocaine, quinidine → cause channel block',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Nondepolarizing Block Reversal',
            description: 'AChE inhibitors, sugammadex (binds steroidal agents)',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Pseudocholinesterase Metabolism',
            description: 'SC and mivacurium → degraded by pseudocholinesterase',
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Peripheral Nerve Stimulation',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: 'TOF (Train-of-Four)',
            description: '4 stimuli; fade → nondepolarizing/Phase II block',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Other Stimulation Patterns',
            description: 'Tetany (50–100 Hz, 5 s), DBS, ST',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Post-Tetanic Potentiation',
            description: 'Seen in nondepolarizing block',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Most Sensitive Methods',
            description: 'DBS/tetany',
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Depolarizing Muscle Relaxants',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: 'Succinylcholine - Structure',
            description: 'Diacetylcholine',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Succinylcholine - Onset/Duration',
            description: 'Onset: 30–40 s; duration: ~10 min',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Succinylcholine - Metabolism',
            description: 'Pseudocholinesterase',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Dibucaine Number - Normal',
            description: '80% (5–10 min)',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Dibucaine Number - Heterozygous',
            description: '40–60% (10–20 min)',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Dibucaine Number - Homozygous',
            description: '20% (4–6 h)',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Succinylcholine - Clinical Use',
            description: 'Ease of intubation, rapid onset, short duration',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Succinylcholine - CVS Effects',
            description: 'Low dose → bradycardia; high dose → tachycardia',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Succinylcholine - Muscle Effects',
            description: 'Fasciculations + muscle pain',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Succinylcholine - Hyperkalemia',
            description: 'Risk ↑ after burns, trauma, neurological disease (especially after day 7–10)',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Succinylcholine - Intraocular Pressure',
            description: '↑ Intraocular pressure → contraindicated in eye trauma',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Succinylcholine - Masseter Spasm',
            description: 'May indicate MH',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Succinylcholine - MH Trigger',
            description: 'MH trigger',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Succinylcholine - Prolonged Paralysis',
            description: 'Pseudocholinesterase defect',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Succinylcholine - Histamine Release',
            description: 'Mild histamine release',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Succinylcholine - Contraindications',
            description: 'Routine use in children/adolescents, full stomach (aspiration risk), suspected MH',
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Nondepolarizing Muscle Relaxants',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: 'Steroidal Agents',
            description: 'Vagolytic (esp. pancuronium)',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Isoquinoline Agents',
            description: 'Histamine release (atracurium, mivacurium)',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Potency vs Onset',
            description: 'Potent agents → slower onset',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Inhalation Anesthetic Potentiation',
            description: 'Des > Sevo > Iso > Enflurane > Halothane',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Electrolyte Effects',
            description: 'Hypokalemia, hypocalcemia, hypermagnesemia → enhance block',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Neonates',
            description: '↑ sensitivity (immature receptors), but dose reduction not necessary',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Glottic Structures',
            description: 'Resistant to block',
            subtitle: 'Intubation assessed by orbicularis oculi',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Atracurium - Metabolism',
            description: 'Hoffman elimination + ester hydrolysis',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Atracurium - Side Effects',
            description: 'Histamine release, laudanosine → seizures',
            subtitle: 'Prolonged effect in acidosis/hypothermia',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Cisatracurium',
            description: 'More potent isomer of atracurium; minimal histamine release',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Pancuronium',
            description: 'Steroidal, vagolytic → tachycardia, arrhythmia',
            subtitle: 'Renal excretion',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Vecuronium',
            description: 'Biliary excretion',
            subtitle: 'Active metabolite → accumulates in renal failure with prolonged use',
            additionalInfo: 'Women are ~30% more sensitive',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Rocuronium',
            description: 'Rapid onset, useful for intubation',
            subtitle: 'Not metabolized; biliary + renal excretion',
            additionalInfo: 'Intubation possible in 60–90 s',
          ),
          NeuromuscularBlockingAgentsItem(
            title: 'Gantacurium',
            description: 'New agent; onset 1–2 min, duration 5–10 min',
            subtitle: 'Metabolism: cysteine adduction + ester hydrolysis',
          ),
        ],
      ),
      NeuromuscularBlockingAgentsCategory(
        categoryName: 'Key Exam Spots',
        items: [
          NeuromuscularBlockingAgentsItem(
            title: 'SUMMARY SPOT QUESTIONS',
            description: 'SC: onset 30-40s, duration ~10min, dibucaine number 80%',
            subtitle: 'Atracurium/Cisatracurium: Hoffman elimination',
            additionalInfo: 'Pancuronium: vagolytic → tachycardia\nRocuronium: rapid onset, sugammadex reversal\nSC contraindicated: burns/trauma day 7-10',
          ),
        ],
      ),
    ];
  }
}
