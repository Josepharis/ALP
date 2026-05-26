import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// Import all spot data files (copied from InformationScreen)
import '../data/spot/anesthesia_history_data.dart';
import '../data/spot/operating_room_data.dart';
import '../data/spot/respiratory_systems_data.dart';
import '../data/spot/cardiovascular_monitoring_data.dart';
import '../data/spot/anesthesia_machine_data.dart';
import '../data/spot/noncardiovascular_monitoring_data.dart';
import '../data/spot/pharmacological_principles_data.dart';
import '../data/spot/inhalation_anesthetics_data.dart';
import '../data/spot/intravenous_anesthetics_data.dart';
import '../data/spot/analgesic_agents_data.dart';
import '../data/spot/neuromuscular_blocking_agents_data.dart';
import '../data/spot/cholinesterase_inhibitors_data.dart';
import '../data/spot/anticholinergic_drugs_data.dart';
import '../data/spot/adrenergic_agonists_antagonists_data.dart';
import '../data/spot/hypotensive_agents_data.dart';
import '../data/spot/local_anesthetics_data.dart';
import '../data/spot/anesthesia_adjuvant_drugs_data.dart';
import '../data/spot/airway_management_data.dart';
import '../data/spot/cardiovascular_physiology_data.dart';
import '../data/spot/cardiovascular_disease_anesthesia_data.dart';
import '../data/spot/cardiovascular_surgery_anesthesia_data.dart';
import '../data/spot/respiratory_physiology_anesthesia_data.dart';
import '../data/spot/respiratory_disease_anesthesia_data.dart';
import '../data/spot/thoracic_surgery_anesthesia_data.dart';
import '../data/spot/neurophysiology_anesthesia_data.dart';
import '../data/spot/neurosurgery_anesthesia_data.dart';
import '../data/spot/neurological_psychiatric_anesthesia_data.dart';
import '../data/spot/neuromuscular_disease_anesthesia_data.dart';
import '../data/spot/renal_physiology_anesthesia_data.dart';
import '../data/spot/renal_disease_anesthesia_data.dart';
import '../data/spot/genitourinary_surgery_anesthesia_data.dart';
import '../data/spot/hepatic_physiology_anesthesia_data.dart';
import '../data/spot/hepatic_disease_anesthesia_data.dart';
import '../data/spot/endocrine_disease_anesthesia_data.dart';
import '../data/spot/ophthalmic_surgery_anesthesia_data.dart';
import '../data/spot/otolaryngology_head_neck_surgery_anesthesia_data.dart';
import '../data/spot/orthopedic_surgery_anesthesia_data.dart';
import '../data/spot/trauma_emergency_surgery_anesthesia_data.dart';
import '../data/spot/maternal_fetal_physiology_anesthesia_data.dart';
import '../data/spot/obstetric_anesthesia_data.dart';
import '../data/spot/pediatric_anesthesia_data.dart';
import '../data/spot/geriatric_anesthesia_data.dart';
import '../data/spot/outpatient_non_or_anesthesia_data.dart';
import '../data/spot/spinal_epidural_caudal_blocks_data.dart';
import '../data/spot/peripheral_nerve_blocks_data.dart';
import '../data/spot/chronic_pain_management_data.dart';
import '../data/spot/eras_protocols_data.dart';
import '../data/spot/fluid_electrolyte_imbalance_data.dart';
import '../data/spot/acid_base_management_data.dart';
import '../data/spot/fluid_management_blood_products_data.dart';
import '../data/spot/thermoregulation_hypothermia_malignant_hyperthermia_data.dart';
import '../data/spot/perioperative_critical_care_nutrition_data.dart';
import '../data/spot/anesthesia_complications_data.dart';
import '../data/spot/cardiopulmonary_resuscitation_data.dart';
import '../data/spot/postanesthetic_care_data.dart';
import '../data/spot/intensive_care_problems_data.dart';
import '../data/spot/postoperative_care_inhalation_data.dart';
import '../data/spot/sepsis_ards_data.dart';
import '../data/spot/erc_2021_data.dart';

// English imports
import '../data/spot/eng/anesthesia_history_data.dart' as eng;
import '../data/spot/eng/operating_room_data.dart' as eng;
import '../data/spot/eng/respiratory_systems_data.dart' as eng;
import '../data/spot/eng/cardiovascular_monitoring_data.dart' as eng;
import '../data/spot/eng/anesthesia_machine_data.dart' as eng;
import '../data/spot/eng/noncardiovascular_monitoring_data.dart' as eng;
import '../data/spot/eng/pharmacological_principles_data.dart' as eng;
import '../data/spot/eng/inhalation_anesthetics_data.dart' as eng;
import '../data/spot/eng/intravenous_anesthetics_data.dart' as eng;
import '../data/spot/eng/analgesic_agents_data.dart' as eng;
import '../data/spot/eng/neuromuscular_blocking_agents_data.dart' as eng;
import '../data/spot/eng/cholinesterase_inhibitors_data.dart' as eng;
import '../data/spot/eng/anticholinergic_drugs_data.dart' as eng;
import '../data/spot/eng/adrenergic_agonists_antagonists_data.dart' as eng;
import '../data/spot/eng/hypotensive_agents_data.dart' as eng;
import '../data/spot/eng/local_anesthetics_data.dart' as eng;
import '../data/spot/eng/anesthesia_adjuvant_drugs_data.dart' as eng;
import '../data/spot/eng/airway_management_data.dart' as eng;
import '../data/spot/eng/cardiovascular_physiology_data.dart' as eng;
import '../data/spot/eng/cardiovascular_disease_anesthesia_data.dart' as eng;
import '../data/spot/eng/cardiovascular_surgery_anesthesia_data.dart' as eng;
import '../data/spot/eng/respiratory_physiology_anesthesia_data.dart' as eng;
import '../data/spot/eng/respiratory_disease_anesthesia_data.dart' as eng;
import '../data/spot/eng/thoracic_surgery_anesthesia_data.dart' as eng;
import '../data/spot/eng/neurophysiology_anesthesia_data.dart' as eng;
import '../data/spot/eng/neurosurgery_anesthesia_data.dart' as eng;
import '../data/spot/eng/neurological_psychiatric_anesthesia_data.dart' as eng;
import '../data/spot/eng/neuromuscular_disease_anesthesia_data.dart' as eng;
import '../data/spot/eng/renal_physiology_anesthesia_data.dart' as eng;
import '../data/spot/eng/renal_disease_anesthesia_data.dart' as eng;
import '../data/spot/eng/genitourinary_surgery_anesthesia_data.dart' as eng;
import '../data/spot/eng/hepatic_physiology_anesthesia_data.dart' as eng;
import '../data/spot/eng/hepatic_disease_anesthesia_data.dart' as eng;
import '../data/spot/eng/endocrine_disease_anesthesia_data.dart' as eng;
import '../data/spot/eng/ophthalmic_surgery_anesthesia_data.dart' as eng;
import '../data/spot/eng/otolaryngology_head_neck_surgery_anesthesia_data.dart' as eng;
import '../data/spot/eng/orthopedic_surgery_anesthesia_data.dart' as eng;
import '../data/spot/eng/trauma_emergency_surgery_anesthesia_data.dart' as eng;
import '../data/spot/eng/maternal_fetal_physiology_anesthesia_data.dart' as eng;
import '../data/spot/eng/obstetric_anesthesia_data.dart' as eng;
import '../data/spot/eng/pediatric_anesthesia_data.dart' as eng;
import '../data/spot/eng/geriatric_anesthesia_data.dart' as eng;
import '../data/spot/eng/outpatient_non_or_anesthesia_data.dart' as eng;
import '../data/spot/eng/spinal_epidural_caudal_blocks_data.dart' as eng;
import '../data/spot/eng/peripheral_nerve_blocks_data.dart' as eng;
import '../data/spot/eng/chronic_pain_management_data.dart' as eng;
import '../data/spot/eng/enhanced_recovery_protocols_data.dart' as eng;
import '../data/spot/eng/fluid_electrolyte_imbalance_data.dart' as eng;
import '../data/spot/eng/acid_base_management_data.dart' as eng;
import '../data/spot/eng/fluid_management_blood_products_data.dart' as eng;
import '../data/spot/eng/thermoregulation_hypothermia_malignant_hyperthermia_data.dart' as eng;
import '../data/spot/eng/perioperative_critical_care_nutrition_data.dart' as eng;
import '../data/spot/eng/anesthesia_complications_data.dart' as eng;
import '../data/spot/eng/cardiopulmonary_resuscitation_data.dart' as eng;
import '../data/spot/eng/postanesthetic_care_data.dart' as eng;
import '../data/spot/eng/intensive_care_problems_data.dart' as eng;
import '../data/spot/eng/postoperative_care_inhalation_data.dart' as eng;
import '../data/spot/eng/sepsis_ards_data.dart' as eng;
import '../data/spot/eng/erc2021_data.dart' as eng;

class SpotMigrationService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<Map<String, dynamic>> migrateAllSpotInfo(BuildContext context) async {
    try {
      int totalMigrated = 0;
      int totalErrors = 0;
      
      final Map<String, List<Map<String, dynamic>>> allData = {
        'tr': [
          {
            'unit': 'Anestezi Tarihçesi',
            'data': AnesthesiaHistoryData.categories,
          },
          {
            'unit': 'Ameliyathane Ortamı',
            'data': OperatingRoomData.getOperatingRoomData(context),
          },
          {
            'unit': 'Solunum Sistemleri',
            'data': RespiratorySystemsData.getRespiratorySystemsData(context),
          },
          {
            'unit': 'Anestezi Makinesi',
            'data': AnesthesiaMachineData.getAnesthesiaMachineData(context),
          },
          {
            'unit': 'Kardiyovasküler Monitörizasyon',
            'data': CardiovascularMonitoringData.getCardiovascularMonitoringData(context),
          },
          {
            'unit': 'Nonkardiyovasküler Monitörizasyon',
            'data': NoncardiovascularMonitoringData.getNoncardiovascularMonitoringData(context),
          },
          {
            'unit': 'Farmakolojik Prensipler',
            'data': PharmacologicalPrinciplesData.getPharmacologicalPrinciplesData(context),
          },
          {
            'unit': 'İnhalasyon Anestezikleri',
            'data': InhalationAnestheticsData.getInhalationAnestheticsData(context),
          },
          {
            'unit': 'İntravenöz Anestezikler',
            'data': IntravenousAnestheticsData.getIntravenousAnestheticsData(context),
          },
          {
            'unit': 'Analjezik Ajanlar',
            'data': AnalgesicAgentsData.getAnalgesicAgentsData(context),
          },
          {
            'unit': 'Nöromüsküler Bloke Edici Ajanlar',
            'data': NeuromuscularBlockingAgentsData.getNeuromuscularBlockingAgentsData(context),
          },
          {
            'unit': 'Kolinesteraz İnhibitörleri',
            'data': CholinesteraseInhibitorsData.getCholinesteraseInhibitorsData(context),
          },
          {
            'unit': 'Antikolinerjik İlaçlar',
            'data': AnticholinergicDrugsData.getAnticholinergicDrugsData(context),
          },
          {
            'unit': 'Adrenerjik Agonist ve Antagonistler',
            'data': AdrenergicAgonistsAntagonistsData.getAdrenergicAgonistsAntagonistsData(context),
          },
          {
            'unit': 'Hipotansif Ajanlar',
            'data': HypotensiveAgentsData.getHypotensiveAgentsData(context),
          },
          {
            'unit': 'Lokal Anestezikler',
            'data': LocalAnestheticsData.getLocalAnestheticsData(context),
          },
          {
            'unit': 'Anestezide Yardımcı İlaçlar',
            'data': AnesthesiaAdjuvantDrugsData.getAnesthesiaAdjuvantDrugsData(context),
          },
          {
            'unit': 'Havayolu Yönetimi',
            'data': AirwayManagementData.getAirwayManagementData(context),
          },
          {
            'unit': 'Kardiyovasküler Fizyoloji ve Anestezi',
            'data': CardiovascularPhysiologyData.getCardiovascularPhysiologyData(context),
          },
          {
            'unit': 'Kardiyovasküler Hastalığı Olan Hastalarda Anestezi',
            'data': CardiovascularDiseaseAnesthesiaData.getCardiovascularDiseaseAnesthesiaData(context),
          },
          {
            'unit': 'Kardiyovasküler Cerrahide Anestezi',
            'data': CardiovascularSurgeryAnesthesiaData.getCardiovascularSurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Solunum Fizyolojisi ve Anestezi',
            'data': RespiratoryPhysiologyAnesthesiaData.getRespiratoryPhysiologyAnesthesiaData(context),
          },
          {
            'unit': 'Solunum Sistemi Hastalığı Olan Hastalarda Anestezi',
            'data': RespiratoryDiseaseAnesthesiaData.getRespiratoryDiseaseAnesthesiaData(context),
          },
          {
            'unit': 'Toraks Cerrahisinde Anestezi',
            'data': ThoracicSurgeryAnesthesiaData.getThoracicSurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Nörofizyoloji ve Anestezi',
            'data': NeurophysiologyAnesthesiaData.getNeurophysiologyAnesthesiaData(context),
          },
          {
            'unit': 'Nörocerrahide Anestezi',
            'data': NeurosurgeryAnesthesiaData.getNeurosurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi',
            'data': NeurologicalPsychiatricAnesthesiaData.getNeurologicalPsychiatricAnesthesiaData(context),
          },
          {
            'unit': 'Nöromüsküler Hastalığı Olanlarda Anestezi',
            'data': NeuromuscularDiseaseAnesthesiaData.getNeuromuscularDiseaseAnesthesiaData(context),
          },
          {
            'unit': 'Böbrek Fizyolojisi ve Anestezi',
            'data': RenalPhysiologyAnesthesiaData.getRenalPhysiologyAnesthesiaData(context),
          },
          {
            'unit': 'Böbrek Hastalığı Olan Hastalarda Anestezi',
            'data': RenalDiseaseAnesthesiaData.getRenalDiseaseAnesthesiaData(context),
          },
          {
            'unit': 'Genitouriner Cerrahide Anestezi',
            'data': GenitourinarySurgeryAnesthesiaData.getGenitourinarySurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Hepatik Fizyoloji ve Anestezi',
            'data': HepaticPhysiologyAnesthesiaData.getHepaticPhysiologyAnesthesiaData(context),
          },
          {
            'unit': 'Karaciğer Hastalığı Olan Hastalarda Anestezi',
            'data': HepaticDiseaseAnesthesiaData.getHepaticDiseaseAnesthesiaData(context),
          },
          {
            'unit': 'Endokrin Hastalıklarda Anestezi',
            'data': EndocrineDiseaseAnesthesiaData.getEndocrineDiseaseAnesthesiaData(context),
          },
          {
            'unit': 'Oftalmik Cerrahide Anestezi',
            'data': OphthalmicSurgeryAnesthesiaData.getOphthalmicSurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Otolaringoloji-Baş ve Boyun Cerrahisinde Anestezi',
            'data': OtolaryngologyHeadNeckSurgeryAnesthesiaData.getOtolaryngologyHeadNeckSurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Ortopedik Cerrahide Anestezi',
            'data': OrthopedicSurgeryAnesthesiaData.getOrthopedicSurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Travma ve Acil Cerrahide Anestezi',
            'data': TraumaEmergencySurgeryAnesthesiaData.getTraumaEmergencySurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Maternal ve Fetal Fizyoloji ve Anestezi',
            'data': MaternalFetalPhysiologyAnesthesiaData.getMaternalFetalPhysiologyAnesthesiaData(context),
          },
          {
            'unit': 'Obstetrik Anestezi',
            'data': ObstetricAnesthesiaData.getObstetricAnesthesiaData(context),
          },
          {
            'unit': 'Pediatrik Anestezi',
            'data': PediatricAnesthesiaData.getPediatricAnesthesiaData(context),
          },
          {
            'unit': 'Geriatrik Anestezi',
            'data': GeriatricAnesthesiaData.getGeriatricAnesthesiaData(context),
          },
          {
            'unit': 'Günübirlik ve Ameliyathane Dışı Anestezi',
            'data': OutpatientNonOrAnesthesiaData.getOutpatientNonOrAnesthesiaData(context),
          },
          {
            'unit': 'Spinal, Epidural ve Kaudal Bloklar',
            'data': SpinalEpiduralCaudalBlocksData.getSpinalEpiduralCaudalBlocksData(context),
          },
          {
            'unit': 'Periferik Sinir Blokları',
            'data': PeripheralNerveBlocksData.getPeripheralNerveBlocksData(context),
          },
          {
            'unit': 'Kronik Ağrı Tedavisi',
            'data': ChronicPainManagementData.getChronicPainManagementData(context),
          },
          {
            'unit': 'Geliştirilmiş İyileştirme Protokolleri (ERAS)',
            'data': ErasProtocolsData.getErasProtocolsData(context),
          },
          {
            'unit': 'Sıvı ve Elektrolit Dengesizlikleri',
            'data': FluidElectrolyteImbalanceData.getFluidElectrolyteImbalanceData(context),
          },
          {
            'unit': 'Asit-Baz Yönetimi',
            'data': AcidBaseManagementData.getAcidBaseManagementData(context),
          },
          {
            'unit': 'Sıvı Yönetimi ve Kan Ürünleri Tedavisi',
            'data': FluidManagementBloodProductsData.getFluidManagementBloodProductsData(context),
          },
          {
            'unit': 'Termoregülasyon, Hipotermi ve Malign Hipertermi',
            'data': ThermoregulationHypothermiaMalignantHyperthermiaData.getThermoregulationHypothermiaMalignantHyperthermiaData(context),
          },
          {
            'unit': 'Perioperatif ve Yoğun Bakımda Beslenme',
            'data': PerioperativeCriticalCareNutritionData.getPerioperativeCriticalCareNutritionData(context),
          },
          {
            'unit': 'Anestezi Komplikasyonları',
            'data': AnesthesiaComplicationsData.getAnesthesiaComplicationsData(context),
          },
          {
            'unit': 'Kardiyopulmoner Resüsitasyon (CPR)',
            'data': CardiopulmonaryResuscitationData.getCardiopulmonaryResuscitationData(context),
          },
          {
            'unit': 'Postanestezik Bakım',
            'data': PostanestheticCareData.getPostanestheticCareData(context),
          },
          {
            'unit': 'Yoğun Bakım Uygulamalarında Karşılaşılan Sorunlar',
            'data': IntensiveCareProblemsData.getIntensiveCareProblemsData(context),
          },
          {
            'unit': 'Postoperatif Bakım Ünitesi ve Yoğun Bakımda İnhalasyon',
            'data': PostoperativeCareInhalationData.getPostoperativeCareInhalationData(context),
          },
          {
            'unit': 'Sepsis ve ARDS',
            'data': SepsisArdsData.getSepsisArdsData(context),
          },
          {
            'unit': 'ERC 2021',
            'data': Erc2021Data.getErc2021Data(context),
          },
        ],
        'en': [
          {
            'unit': 'Anesthesia History',
            'data': eng.AnesthesiaHistoryData.getAnesthesiaHistoryData(context),
          },
          {
            'unit': 'Operating Room Environment',
            'data': eng.OperatingRoomData.getOperatingRoomData(context),
          },
          {
            'unit': 'Breathing Systems',
            'data': eng.RespiratorySystemsData.getRespiratorySystemsData(context),
          },
          {
            'unit': 'Anesthesia Workstation',
            'data': eng.AnesthesiaMachineData.getAnesthesiaMachineData(context),
          },
          {
            'unit': 'Cardiovascular Monitoring',
            'data': eng.CardiovascularMonitoringData.getCardiovascularMonitoringData(context),
          },
          {
            'unit': 'Noncardiovascular Monitoring',
            'data': eng.NoncardiovascularMonitoringData.getNoncardiovascularMonitoringData(context),
          },
          {
            'unit': 'Pharmacological Principles',
            'data': eng.PharmacologicalPrinciplesData.getPharmacologicalPrinciplesData(context),
          },
          {
            'unit': 'Inhalation Anesthetics',
            'data': eng.InhalationAnestheticsData.getInhalationAnestheticsData(context),
          },
          {
            'unit': 'Intravenous Anesthetics',
            'data': eng.IntravenousAnestheticsData.getIntravenousAnestheticsData(context),
          },
          {
            'unit': 'Analgesic Agents',
            'data': eng.AnalgesicAgentsData.getAnalgesicAgentsData(context),
          },
          {
            'unit': 'Neuromuscular Blocking Agents',
            'data': eng.NeuromuscularBlockingAgentsData.getNeuromuscularBlockingAgentsData(context),
          },
          {
            'unit': 'Cholinesterase Inhibitors',
            'data': eng.CholinesteraseInhibitorsData.getCholinesteraseInhibitorsData(context),
          },
          {
            'unit': 'Anticholinergic Drugs',
            'data': eng.AnticholinergicDrugsData.getAnticholinergicDrugsData(context),
          },
          {
            'unit': 'Adrenergic Agonists & Antagonists',
            'data': eng.AdrenergicAgonistsAntagonistsData.getAdrenergicAgonistsAntagonistsData(context),
          },
          {
            'unit': 'Hypotensive Agents',
            'data': eng.HypotensiveAgentsData.getHypotensiveAgentsData(context),
          },
          {
            'unit': 'Local Anesthetics',
            'data': eng.LocalAnestheticsData.getLocalAnestheticsData(context),
          },
          {
            'unit': 'Adjuncts to Anesthesia',
            'data': eng.AnesthesiaAdjuvantDrugsData.getAnesthesiaAdjuvantDrugsData(context),
          },
          {
            'unit': 'Airway Management',
            'data': eng.AirwayManagementData.getAirwayManagementData(context),
          },
          {
            'unit': 'Cardiovascular Physiology & Anesthesia',
            'data': eng.CardiovascularPhysiologyData.getCardiovascularPhysiologyData(context),
          },
          {
            'unit': 'Anesthesia for Patients with Cardiovascular Disease',
            'data': eng.CardiovascularDiseaseAnesthesiaData.getCardiovascularDiseaseAnesthesiaData(context),
          },
          {
            'unit': 'Anesthesia for Cardiovascular Surgery',
            'data': eng.CardiovascularSurgeryAnesthesiaData.getCardiovascularSurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Respiratory Physiology & Anesthesia',
            'data': eng.RespiratoryPhysiologyAnesthesiaData.getRespiratoryPhysiologyAnesthesiaData(context),
          },
          {
            'unit': 'Anesthesia for Patients with Respiratory Disease',
            'data': eng.RespiratoryDiseaseAnesthesiaData.getRespiratoryDiseaseAnesthesiaData(context),
          },
          {
            'unit': 'Anesthesia for Thoracic Surgery',
            'data': eng.ThoracicSurgeryAnesthesiaData.getThoracicSurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Neurophysiology & Anesthesia',
            'data': eng.NeurophysiologyAnesthesiaData.getNeurophysiologyAnesthesiaData(context),
          },
          {
            'unit': 'Anesthesia for Neurosurgery',
            'data': eng.NeurosurgeryAnesthesiaData.getNeurosurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Anesthesia for Patients with Neurological & Psychiatric Diseases',
            'data': eng.NeurologicalPsychiatricAnesthesiaData.getNeurologicalPsychiatricAnesthesiaData(context),
          },
          {
            'unit': 'Anesthesia for Patients with Neuromuscular Disease',
            'data': eng.NeuromuscularDiseaseAnesthesiaData.getNeuromuscularDiseaseAnesthesiaData(context),
          },
          {
            'unit': 'Kidney Physiology & Anesthesia',
            'data': eng.RenalPhysiologyAnesthesiaData.getRenalPhysiologyAnesthesiaData(context),
          },
          {
            'unit': 'Anesthesia for Patients with Kidney Disease',
            'data': eng.RenalDiseaseAnesthesiaData.getRenalDiseaseAnesthesiaData(context),
          },
          {
            'unit': 'Anesthesia for Genitourinary Surgery',
            'data': eng.GenitourinarySurgeryAnesthesiaData.getGenitourinarySurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Hepatic Physiology & Anesthesia',
            'data': eng.HepaticPhysiologyAnesthesiaData.getHepaticPhysiologyAnesthesiaData(context),
          },
          {
            'unit': 'Anesthesia for Patients with Liver Disease',
            'data': eng.HepaticDiseaseAnesthesiaData.getHepaticDiseaseAnesthesiaData(context),
          },
          {
            'unit': 'Anesthesia for Patients with Endocrine Disease',
            'data': eng.EndocrineDiseaseAnesthesiaData.getEndocrineDiseaseAnesthesiaData(context),
          },
          {
            'unit': 'Anesthesia for Ophthalmic Surgery',
            'data': eng.OphthalmicSurgeryAnesthesiaData.getOphthalmicSurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Anesthesia for Otolaryngology–Head & Neck Surgery',
            'data': eng.OtolaryngologyHeadNeckSurgeryAnesthesiaData.getOtolaryngologyHeadNeckSurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Anesthesia for Orthopedic Surgery',
            'data': eng.OrthopedicSurgeryAnesthesiaData.getOrthopedicSurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Anesthesia for Trauma & Emergency Surgery',
            'data': eng.TraumaEmergencySurgeryAnesthesiaData.getTraumaEmergencySurgeryAnesthesiaData(context),
          },
          {
            'unit': 'Maternal & Fetal Physiology & Anesthesia',
            'data': eng.MaternalFetalPhysiologyAnesthesiaData.getMaternalFetalPhysiologyAnesthesiaData(context),
          },
          {
            'unit': 'Obstetric Anesthesia',
            'data': eng.ObstetricAnesthesiaData.getObstetricAnesthesiaData(context),
          },
          {
            'unit': 'Pediatric Anesthesia',
            'data': eng.PediatricAnesthesiaData.getPediatricAnesthesiaData(context),
          },
          {
            'unit': 'Geriatric Anesthesia',
            'data': eng.GeriatricAnesthesiaData.getGeriatricAnesthesiaData(context),
          },
          {
            'unit': 'Ambulatory & Non–Operating Room Anesthesia',
            'data': eng.OutpatientNonOrAnesthesiaData.getOutpatientNonOrAnesthesiaData(context),
          },
          {
            'unit': 'Spinal, Epidural, & Caudal Blocks',
            'data': eng.SpinalEpiduralCaudalBlocksData.getSpinalEpiduralCaudalBlocksData(context),
          },
          {
            'unit': 'Peripheral Nerve Blocks',
            'data': eng.PeripheralNerveBlocksData.getPeripheralNerveBlocksData(context),
          },
          {
            'unit': 'Chronic Pain Management',
            'data': eng.ChronicPainManagementData.getChronicPainManagementData(context),
          },
          {
            'unit': 'Enhanced Recovery Protocols (ERAS)',
            'data': eng.EnhancedRecoveryProtocolsData.getEnhancedRecoveryProtocolsData(context),
          },
          {
            'unit': 'Fluid and Electrolyte Imbalances',
            'data': eng.FluidElectrolyteImbalanceData.getFluidElectrolyteImbalanceData(context),
          },
          {
            'unit': 'Acid–Base Management',
            'data': eng.AcidBaseManagementData.getAcidBaseManagementData(context),
          },
          {
            'unit': 'Fluid Management & Blood Component Therapy',
            'data': eng.FluidManagementBloodProductsData.getFluidManagementBloodProductsData(context),
          },
          {
            'unit': 'Thermoregulation, Hypothermia, & Malignant Hyperthermia',
            'data': eng.ThermoregulationHypothermiaMalignantHyperthermiaData.getThermoregulationHypothermiaMalignantHyperthermiaData(context),
          },
          {
            'unit': 'Nutrition in Perioperative & Critical Care',
            'data': eng.PerioperativeCriticalCareNutritionData.getPerioperativeCriticalCareNutritionData(context),
          },
          {
            'unit': 'Anesthetic Complications',
            'data': eng.AnesthesiaComplicationsData.getAnesthesiaComplicationsData(context),
          },
          {
            'unit': 'Cardiopulmonary Resuscitation (CPR)',
            'data': eng.CardiopulmonaryResuscitationData.getCardiopulmonaryResuscitationData(context),
          },
          {
            'unit': 'Postanesthesia Care',
            'data': eng.PostanestheticCareData.getPostanestheticCareData(context),
          },
          {
            'unit': 'Common Clinical Concerns in Critical Care Medicine',
            'data': eng.IntensiveCareProblemsData.getIntensiveCareProblemsData(context),
          },
          {
            'unit': 'Inhalation Therapy & Mechanical Ventilation in PACU & ICU',
            'data': eng.PostoperativeCareInhalationData.getPostoperativeCareInhalationData(context),
          },
          {
            'unit': 'Sepsis and ARDS',
            'data': eng.SepsisArdsData.getSepsisArdsData(context),
          },
          {
            'unit': 'ERC 2021 Guidelines',
            'data': eng.Erc2021Data.getErc2021Data(context),
          },
        ],
      };

      for (var language in allData.keys) {
        final entries = allData[language]!;
        for (var entry in entries) {
           final String unitName = entry['unit'];
           final categories = entry['data'];
           
           if (categories is List) {
             for (var category in categories) {
               final String categoryName = category.categoryName;
               final List items = category.items;
               
               for (var item in items) {
                 try {
                   await _migrateItem(item, categoryName, unitName, language);
                   totalMigrated++;
                 } catch (e) {
                   totalErrors++;
                 }
               }
             }
           }
        }
      }

      return {
        'success': true,
        'totalMigrated': totalMigrated,
        'totalErrors': totalErrors,
      };
    } catch (e) {
      return {
        'success': false,
        'error': e.toString(),
        'totalMigrated': 0,
        'totalErrors': 0,
      };
    }
  }

  Future<void> _migrateItem(dynamic item, String categoryName, String unitName, String language) async {
    // Check if item already exists based on title and category
    final existingQuery = await _firestore
        .collection('spot_info')
        .where('title', isEqualTo: item.title)
        .where('categoryName', isEqualTo: categoryName)
        .where('unitName', isEqualTo: unitName)
        .where('language', isEqualTo: language)
        .get();

    if (existingQuery.docs.isNotEmpty) {
      return;
    }

    final data = {
      'title': item.title,
      'description': item.description,
      'subtitle': item.subtitle,
      'additionalInfo': item.additionalInfo,
      'categoryName': categoryName,
      'unitName': unitName,
      'language': language,
      'createdAt': FieldValue.serverTimestamp(),
      'createdBy': _auth.currentUser?.uid ?? 'system',
    };

    await _firestore.collection('spot_info').add(data);
  }
}
