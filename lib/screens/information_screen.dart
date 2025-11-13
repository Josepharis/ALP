import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../l10n/app_localizations.dart';
import '../services/language_service.dart';
import '../services/premium_service.dart';
import '../widgets/premium_lock_widget.dart';
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
// İngilizce spot verileri
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

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  String _searchQuery = '';
  bool _isSearching = false;
  List<dynamic> _allSections = [];
  List<dynamic> _filteredSections = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadAllData();
    });
  }

  void _loadAllData() {
    final languageService = Provider.of<LanguageService>(context, listen: false);
    final isEnglish = languageService.currentLocale.languageCode == 'en';
    
    // Dil seçimine göre doğru spot verilerini yükle
    final anesthesiaData = isEnglish 
        ? eng.AnesthesiaHistoryData.getAnesthesiaHistoryData(context)
        : AnesthesiaHistoryData.categories;
    final operatingRoomData = isEnglish
        ? eng.OperatingRoomData.getOperatingRoomData(context)
        : OperatingRoomData.getOperatingRoomData(context);
    final respiratoryData = isEnglish
        ? eng.RespiratorySystemsData.getRespiratorySystemsData(context)
        : RespiratorySystemsData.getRespiratorySystemsData(context);
    final cardiovascularData = isEnglish
        ? eng.CardiovascularMonitoringData.getCardiovascularMonitoringData(context)
        : CardiovascularMonitoringData.getCardiovascularMonitoringData(context);
    final anesthesiaMachineData = isEnglish
        ? eng.AnesthesiaMachineData.getAnesthesiaMachineData(context)
        : AnesthesiaMachineData.getAnesthesiaMachineData(context);
    final noncardiovascularData = isEnglish
        ? eng.NoncardiovascularMonitoringData.getNoncardiovascularMonitoringData(context)
        : NoncardiovascularMonitoringData.getNoncardiovascularMonitoringData(context);
    final pharmacologicalData = isEnglish
        ? eng.PharmacologicalPrinciplesData.getPharmacologicalPrinciplesData(context)
        : PharmacologicalPrinciplesData.getPharmacologicalPrinciplesData(context);
    final inhalationData = isEnglish
        ? eng.InhalationAnestheticsData.getInhalationAnestheticsData(context)
        : InhalationAnestheticsData.getInhalationAnestheticsData(context);
    final intravenousData = isEnglish
        ? eng.IntravenousAnestheticsData.getIntravenousAnestheticsData(context)
        : IntravenousAnestheticsData.getIntravenousAnestheticsData(context);
    final analgesicData = isEnglish
        ? eng.AnalgesicAgentsData.getAnalgesicAgentsData(context)
        : AnalgesicAgentsData.getAnalgesicAgentsData(context);
    final neuromuscularData = isEnglish
        ? eng.NeuromuscularBlockingAgentsData.getNeuromuscularBlockingAgentsData(context)
        : NeuromuscularBlockingAgentsData.getNeuromuscularBlockingAgentsData(context);
    final cholinesteraseData = isEnglish
        ? eng.CholinesteraseInhibitorsData.getCholinesteraseInhibitorsData(context)
        : CholinesteraseInhibitorsData.getCholinesteraseInhibitorsData(context);
    final anticholinergicData = isEnglish
        ? eng.AnticholinergicDrugsData.getAnticholinergicDrugsData(context)
        : AnticholinergicDrugsData.getAnticholinergicDrugsData(context);
    final adrenergicData = isEnglish
        ? eng.AdrenergicAgonistsAntagonistsData.getAdrenergicAgonistsAntagonistsData(context)
        : AdrenergicAgonistsAntagonistsData.getAdrenergicAgonistsAntagonistsData(context);
    final hypotensiveData = isEnglish
        ? eng.HypotensiveAgentsData.getHypotensiveAgentsData(context)
        : HypotensiveAgentsData.getHypotensiveAgentsData(context);
    final localAnestheticsData = isEnglish
        ? eng.LocalAnestheticsData.getLocalAnestheticsData(context)
        : LocalAnestheticsData.getLocalAnestheticsData(context);
    final adjuvantData = isEnglish
        ? eng.AnesthesiaAdjuvantDrugsData.getAnesthesiaAdjuvantDrugsData(context)
        : AnesthesiaAdjuvantDrugsData.getAnesthesiaAdjuvantDrugsData(context);
    final airwayData = isEnglish
        ? eng.AirwayManagementData.getAirwayManagementData(context)
        : AirwayManagementData.getAirwayManagementData(context);
    final cardiovascularPhysiologyData = isEnglish
        ? eng.CardiovascularPhysiologyData.getCardiovascularPhysiologyData(context)
        : CardiovascularPhysiologyData.getCardiovascularPhysiologyData(context);
    final cardiovascularDiseaseData = isEnglish
        ? eng.CardiovascularDiseaseAnesthesiaData.getCardiovascularDiseaseAnesthesiaData(context)
        : CardiovascularDiseaseAnesthesiaData.getCardiovascularDiseaseAnesthesiaData(context);
    final cardiovascularSurgeryData = isEnglish
        ? eng.CardiovascularSurgeryAnesthesiaData.getCardiovascularSurgeryAnesthesiaData(context)
        : CardiovascularSurgeryAnesthesiaData.getCardiovascularSurgeryAnesthesiaData(context);
    final respiratoryPhysiologyData = isEnglish
        ? eng.RespiratoryPhysiologyAnesthesiaData.getRespiratoryPhysiologyAnesthesiaData(context)
        : RespiratoryPhysiologyAnesthesiaData.getRespiratoryPhysiologyAnesthesiaData(context);
    final respiratoryDiseaseData = isEnglish
        ? eng.RespiratoryDiseaseAnesthesiaData.getRespiratoryDiseaseAnesthesiaData(context)
        : RespiratoryDiseaseAnesthesiaData.getRespiratoryDiseaseAnesthesiaData(context);
    final thoracicSurgeryData = isEnglish
        ? eng.ThoracicSurgeryAnesthesiaData.getThoracicSurgeryAnesthesiaData(context)
        : ThoracicSurgeryAnesthesiaData.getThoracicSurgeryAnesthesiaData(context);
    final neurophysiologyData = isEnglish
        ? eng.NeurophysiologyAnesthesiaData.getNeurophysiologyAnesthesiaData(context)
        : NeurophysiologyAnesthesiaData.getNeurophysiologyAnesthesiaData(context);
    final neurosurgeryData = isEnglish
        ? eng.NeurosurgeryAnesthesiaData.getNeurosurgeryAnesthesiaData(context)
        : NeurosurgeryAnesthesiaData.getNeurosurgeryAnesthesiaData(context);
    final neurologicalPsychiatricData = isEnglish
        ? eng.NeurologicalPsychiatricAnesthesiaData.getNeurologicalPsychiatricAnesthesiaData(context)
        : NeurologicalPsychiatricAnesthesiaData.getNeurologicalPsychiatricAnesthesiaData(context);
    final neuromuscularDiseaseData = isEnglish
        ? eng.NeuromuscularDiseaseAnesthesiaData.getNeuromuscularDiseaseAnesthesiaData(context)
        : NeuromuscularDiseaseAnesthesiaData.getNeuromuscularDiseaseAnesthesiaData(context);
    final renalPhysiologyData = isEnglish
        ? eng.RenalPhysiologyAnesthesiaData.getRenalPhysiologyAnesthesiaData(context)
        : RenalPhysiologyAnesthesiaData.getRenalPhysiologyAnesthesiaData(context);
    final renalDiseaseData = isEnglish
        ? eng.RenalDiseaseAnesthesiaData.getRenalDiseaseAnesthesiaData(context)
        : RenalDiseaseAnesthesiaData.getRenalDiseaseAnesthesiaData(context);
    final genitourinarySurgeryData = isEnglish
        ? eng.GenitourinarySurgeryAnesthesiaData.getGenitourinarySurgeryAnesthesiaData(context)
        : GenitourinarySurgeryAnesthesiaData.getGenitourinarySurgeryAnesthesiaData(context);
    final hepaticPhysiologyData = isEnglish
        ? eng.HepaticPhysiologyAnesthesiaData.getHepaticPhysiologyAnesthesiaData(context)
        : HepaticPhysiologyAnesthesiaData.getHepaticPhysiologyAnesthesiaData(context);
    final hepaticDiseaseData = isEnglish
        ? eng.HepaticDiseaseAnesthesiaData.getHepaticDiseaseAnesthesiaData(context)
        : HepaticDiseaseAnesthesiaData.getHepaticDiseaseAnesthesiaData(context);
    final endocrineDiseaseData = isEnglish
        ? eng.EndocrineDiseaseAnesthesiaData.getEndocrineDiseaseAnesthesiaData(context)
        : EndocrineDiseaseAnesthesiaData.getEndocrineDiseaseAnesthesiaData(context);
    final ophthalmicSurgeryData = isEnglish
        ? eng.OphthalmicSurgeryAnesthesiaData.getOphthalmicSurgeryAnesthesiaData(context)
        : OphthalmicSurgeryAnesthesiaData.getOphthalmicSurgeryAnesthesiaData(context);
    final otolaryngologyHeadNeckSurgeryData = isEnglish
        ? eng.OtolaryngologyHeadNeckSurgeryAnesthesiaData.getOtolaryngologyHeadNeckSurgeryAnesthesiaData(context)
        : OtolaryngologyHeadNeckSurgeryAnesthesiaData.getOtolaryngologyHeadNeckSurgeryAnesthesiaData(context);
    final orthopedicSurgeryData = isEnglish
        ? eng.OrthopedicSurgeryAnesthesiaData.getOrthopedicSurgeryAnesthesiaData(context)
        : OrthopedicSurgeryAnesthesiaData.getOrthopedicSurgeryAnesthesiaData(context);
    final traumaEmergencySurgeryData = isEnglish
        ? eng.TraumaEmergencySurgeryAnesthesiaData.getTraumaEmergencySurgeryAnesthesiaData(context)
        : TraumaEmergencySurgeryAnesthesiaData.getTraumaEmergencySurgeryAnesthesiaData(context);
    final maternalFetalPhysiologyData = isEnglish
        ? eng.MaternalFetalPhysiologyAnesthesiaData.getMaternalFetalPhysiologyAnesthesiaData(context)
        : MaternalFetalPhysiologyAnesthesiaData.getMaternalFetalPhysiologyAnesthesiaData(context);
    final obstetricAnesthesiaData = isEnglish
        ? eng.ObstetricAnesthesiaData.getObstetricAnesthesiaData(context)
        : ObstetricAnesthesiaData.getObstetricAnesthesiaData(context);
    final pediatricAnesthesiaData = isEnglish
        ? eng.PediatricAnesthesiaData.getPediatricAnesthesiaData(context)
        : PediatricAnesthesiaData.getPediatricAnesthesiaData(context);
    final geriatricAnesthesiaData = isEnglish
        ? eng.GeriatricAnesthesiaData.getGeriatricAnesthesiaData(context)
        : GeriatricAnesthesiaData.getGeriatricAnesthesiaData(context);
    final outpatientNonOrAnesthesiaData = isEnglish
        ? eng.OutpatientNonOrAnesthesiaData.getOutpatientNonOrAnesthesiaData(context)
        : OutpatientNonOrAnesthesiaData.getOutpatientNonOrAnesthesiaData(context);
    final spinalEpiduralCaudalBlocksData = isEnglish
        ? eng.SpinalEpiduralCaudalBlocksData.getSpinalEpiduralCaudalBlocksData(context)
        : SpinalEpiduralCaudalBlocksData.getSpinalEpiduralCaudalBlocksData(context);
    final peripheralNerveBlocksData = isEnglish
        ? eng.PeripheralNerveBlocksData.getPeripheralNerveBlocksData(context)
        : PeripheralNerveBlocksData.getPeripheralNerveBlocksData(context);
    final chronicPainManagementData = isEnglish
        ? eng.ChronicPainManagementData.getChronicPainManagementData(context)
        : ChronicPainManagementData.getChronicPainManagementData(context);
    final erasProtocolsData = isEnglish
        ? eng.EnhancedRecoveryProtocolsData.getEnhancedRecoveryProtocolsData(context)
        : ErasProtocolsData.getErasProtocolsData(context);
    final fluidElectrolyteImbalanceData = isEnglish
        ? eng.FluidElectrolyteImbalanceData.getFluidElectrolyteImbalanceData(context)
        : FluidElectrolyteImbalanceData.getFluidElectrolyteImbalanceData(context);
    final acidBaseManagementData = isEnglish
        ? eng.AcidBaseManagementData.getAcidBaseManagementData(context)
        : AcidBaseManagementData.getAcidBaseManagementData(context);
    final fluidManagementBloodProductsData = isEnglish
        ? eng.FluidManagementBloodProductsData.getFluidManagementBloodProductsData(context)
        : FluidManagementBloodProductsData.getFluidManagementBloodProductsData(context);
    final thermoregulationHypothermiaMalignantHyperthermiaData = isEnglish
        ? eng.ThermoregulationHypothermiaMalignantHyperthermiaData.getThermoregulationHypothermiaMalignantHyperthermiaData(context)
        : ThermoregulationHypothermiaMalignantHyperthermiaData.getThermoregulationHypothermiaMalignantHyperthermiaData(context);
    final perioperativeCriticalCareNutritionData = isEnglish
        ? eng.PerioperativeCriticalCareNutritionData.getPerioperativeCriticalCareNutritionData(context)
        : PerioperativeCriticalCareNutritionData.getPerioperativeCriticalCareNutritionData(context);
    final anesthesiaComplicationsData = isEnglish
        ? eng.AnesthesiaComplicationsData.getAnesthesiaComplicationsData(context)
        : AnesthesiaComplicationsData.getAnesthesiaComplicationsData(context);
    final cardiopulmonaryResuscitationData = isEnglish
        ? eng.CardiopulmonaryResuscitationData.getCardiopulmonaryResuscitationData(context)
        : CardiopulmonaryResuscitationData.getCardiopulmonaryResuscitationData(context);
    final postanestheticCareData = isEnglish
        ? eng.PostanestheticCareData.getPostanestheticCareData(context)
        : PostanestheticCareData.getPostanestheticCareData(context);
    final intensiveCareProblemsData = isEnglish
        ? eng.IntensiveCareProblemsData.getIntensiveCareProblemsData(context)
        : IntensiveCareProblemsData.getIntensiveCareProblemsData(context);
    final postoperativeCareInhalationData = isEnglish
        ? eng.PostoperativeCareInhalationData.getPostoperativeCareInhalationData(context)
        : PostoperativeCareInhalationData.getPostoperativeCareInhalationData(context);
    final sepsisArdsData = isEnglish
        ? eng.SepsisArdsData.getSepsisArdsData(context)
        : SepsisArdsData.getSepsisArdsData(context);
    final erc2021Data = isEnglish
        ? eng.Erc2021Data.getErc2021Data(context)
        : Erc2021Data.getErc2021Data(context);
    
    _allSections = [
      {
        'title': isEnglish ? 'Anesthesia History' : 'Anestezi Tarihçesi',
        'icon': Icons.history_edu_rounded,
        'color': [Color(0xFF6B73FF), Color(0xFF9B59B6)],
        'categories': anesthesiaData,
      },
      {
        'title': isEnglish ? 'Operating Room Environment' : 'Ameliyathane Ortamı',
        'icon': Icons.local_hospital_rounded,
        'color': [Color(0xFF3498DB), Color(0xFF2980B9)],
        'categories': operatingRoomData,
      },
      {
        'title': isEnglish ? 'Breathing Systems' : 'Solunum Sistemleri',
        'icon': Icons.air_rounded,
        'color': [Color(0xFF27AE60), Color(0xFF229954)],
        'categories': respiratoryData,
      },
      {
        'title': isEnglish ? 'Anesthesia Workstation' : 'Anestezi Makinesi',
        'icon': Icons.settings_rounded,
        'color': [Color(0xFF8E44AD), Color(0xFF7D3C98)],
        'categories': anesthesiaMachineData,
      },
      {
        'title': isEnglish ? 'Cardiovascular Monitoring' : 'Kardiyovasküler Monitörizasyon',
        'icon': Icons.favorite_rounded,
        'color': [Color(0xFFE74C3C), Color(0xFFC0392B)],
        'categories': cardiovascularData,
      },
      {
        'title': isEnglish ? 'Noncardiovascular Monitoring' : 'Nonkardiyovasküler Monitörizasyon',
        'icon': Icons.monitor_heart_rounded,
        'color': [Color(0xFFE67E22), Color(0xFFD35400)],
        'categories': noncardiovascularData,
      },
      {
        'title': isEnglish ? 'Pharmacological Principles' : 'Farmakolojik Prensipler',
        'icon': Icons.science_rounded,
        'color': [Color(0xFF16A085), Color(0xFF138D75)],
        'categories': pharmacologicalData,
      },
      {
        'title': isEnglish ? 'Inhalation Anesthetics' : 'İnhalasyon Anestezikleri',
        'icon': Icons.air_rounded,
        'color': [Color(0xFF2ECC71), Color(0xFF27AE60)],
        'categories': inhalationData,
      },
      {
        'title': isEnglish ? 'Intravenous Anesthetics' : 'İntravenöz Anestezikler',
        'icon': Icons.medication_rounded,
        'color': [Color(0xFF9B59B6), Color(0xFF8E44AD)],
        'categories': intravenousData,
      },
      {
        'title': isEnglish ? 'Analgesic Agents' : 'Analjezik Ajanlar',
        'icon': Icons.healing_rounded,
        'color': [Color(0xFFE91E63), Color(0xFFC2185B)],
        'categories': analgesicData,
      },
      {
        'title': isEnglish ? 'Neuromuscular Blocking Agents' : 'Nöromüsküler Bloke Edici Ajanlar',
        'icon': Icons.accessibility_rounded,
        'color': [Color(0xFF795548), Color(0xFF5D4037)],
        'categories': neuromuscularData,
      },
      {
        'title': isEnglish ? 'Cholinesterase Inhibitors' : 'Kolinesteraz İnhibitörleri',
        'icon': Icons.psychology_rounded,
        'color': [Color(0xFF607D8B), Color(0xFF455A64)],
        'categories': cholinesteraseData,
      },
      {
        'title': isEnglish ? 'Anticholinergic Drugs' : 'Antikolinerjik İlaçlar',
        'icon': Icons.block_rounded,
        'color': [Color(0xFF37474F), Color(0xFF263238)],
        'categories': anticholinergicData,
      },
      {
        'title': isEnglish ? 'Adrenergic Agonists & Antagonists' : 'Adrenerjik Agonist ve Antagonistler',
        'icon': Icons.flash_on_rounded,
        'color': [Color(0xFFFF5722), Color(0xFFE64A19)],
        'categories': adrenergicData,
      },
      {
        'title': isEnglish ? 'Hypotensive Agents' : 'Hipotansif Ajanlar',
        'icon': Icons.water_drop_rounded,
        'color': [Color(0xFF00BCD4), Color(0xFF0097A7)],
        'categories': hypotensiveData,
      },
      {
        'title': isEnglish ? 'Local Anesthetics' : 'Lokal Anestezikler',
        'icon': Icons.local_pharmacy_rounded,
        'color': [Color(0xFF4CAF50), Color(0xFF388E3C)],
        'categories': localAnestheticsData,
      },
      {
        'title': isEnglish ? 'Adjuncts to Anesthesia' : 'Anestezide Yardımcı İlaçlar',
        'icon': Icons.medication_liquid_rounded,
        'color': [Color(0xFF673AB7), Color(0xFF512DA8)],
        'categories': adjuvantData,
      },
      {
        'title': isEnglish ? 'Airway Management' : 'Havayolu Yönetimi',
        'icon': Icons.air_rounded,
        'color': [Color(0xFF03A9F4), Color(0xFF0288D1)],
        'categories': airwayData,
      },
      {
        'title': isEnglish ? 'Cardiovascular Physiology & Anesthesia' : 'Kardiyovasküler Fizyoloji ve Anestezi',
        'icon': Icons.favorite_rounded,
        'color': [Color(0xFFF44336), Color(0xFFD32F2F)],
        'categories': cardiovascularPhysiologyData,
      },
      {
        'title': isEnglish ? 'Anesthesia for Patients with Cardiovascular Disease' : 'Kardiyovasküler Hastalığı Olan Hastalarda Anestezi',
        'icon': Icons.medical_services_rounded,
        'color': [Color(0xFFE91E63), Color(0xFFC2185B)],
        'categories': cardiovascularDiseaseData,
      },
      {
        'title': isEnglish ? 'Anesthesia for Cardiovascular Surgery' : 'Kardiyovasküler Cerrahide Anestezi',
        'icon': Icons.healing_rounded,
        'color': [Color(0xFF9C27B0), Color(0xFF7B1FA2)],
        'categories': cardiovascularSurgeryData,
      },
      {
        'title': isEnglish ? 'Respiratory Physiology & Anesthesia' : 'Solunum Fizyolojisi ve Anestezi',
        'icon': Icons.air_rounded,
        'color': [Color(0xFF00BCD4), Color(0xFF0097A7)],
        'categories': respiratoryPhysiologyData,
      },
      {
        'title': isEnglish ? 'Anesthesia for Patients with Respiratory Disease' : 'Solunum Sistemi Hastalığı Olan Hastalarda Anestezi',
        'icon': Icons.sick_rounded,
        'color': [Color(0xFF4CAF50), Color(0xFF388E3C)],
        'categories': respiratoryDiseaseData,
      },
      {
        'title': isEnglish ? 'Anesthesia for Thoracic Surgery' : 'Toraks Cerrahisinde Anestezi',
        'icon': Icons.medical_information_rounded,
        'color': [Color(0xFF2196F3), Color(0xFF1976D2)],
        'categories': thoracicSurgeryData,
      },
      {
        'title': isEnglish ? 'Neurophysiology & Anesthesia' : 'Nörofizyoloji ve Anestezi',
        'icon': Icons.psychology_rounded,
        'color': [Color(0xFF673AB7), Color(0xFF512DA8)],
        'categories': neurophysiologyData,
      },
      {
        'title': isEnglish ? 'Anesthesia for Neurosurgery' : 'Nörocerrahide Anestezi',
        'icon': Icons.medical_services_rounded,
        'color': [Color(0xFF795548), Color(0xFF5D4037)],
        'categories': neurosurgeryData,
      },
      {
        'title': isEnglish ? 'Anesthesia for Patients with Neurological & Psychiatric Diseases' : 'Nörolojik ve Psikiyatrik Hastalığı Olanlarda Anestezi',
        'icon': Icons.psychology_alt_rounded,
        'color': [Color(0xFF607D8B), Color(0xFF455A64)],
        'categories': neurologicalPsychiatricData,
      },
        {
          'title': isEnglish ? 'Anesthesia for Patients with Neuromuscular Disease' : 'Nöromüsküler Hastalığı Olanlarda Anestezi',
          'icon': Icons.accessibility_new_rounded,
          'color': [Color(0xFF8BC34A), Color(0xFF689F38)],
          'categories': neuromuscularDiseaseData,
        },
        {
          'title': isEnglish ? 'Kidney Physiology & Anesthesia' : 'Böbrek Fizyolojisi ve Anestezi',
          'icon': Icons.water_drop_rounded,
          'color': [Color(0xFF00BCD4), Color(0xFF0097A7)],
          'categories': renalPhysiologyData,
        },
        {
          'title': isEnglish ? 'Anesthesia for Patients with Kidney Disease' : 'Böbrek Hastalığı Olan Hastalarda Anestezi',
          'icon': Icons.medical_services_rounded,
          'color': [Color(0xFF4CAF50), Color(0xFF388E3C)],
          'categories': renalDiseaseData,
        },
        {
          'title': isEnglish ? 'Anesthesia for Genitourinary Surgery' : 'Genitouriner Cerrahide Anestezi',
          'icon': Icons.local_hospital_rounded,
          'color': [Color(0xFF9C27B0), Color(0xFF7B1FA2)],
          'categories': genitourinarySurgeryData,
        },
        {
          'title': isEnglish ? 'Hepatic Physiology & Anesthesia' : 'Hepatik Fizyoloji ve Anestezi',
          'icon': Icons.healing_rounded,
          'color': [Color(0xFFFF9800), Color(0xFFF57C00)],
          'categories': hepaticPhysiologyData,
        },
        {
          'title': isEnglish ? 'Anesthesia for Patients with Liver Disease' : 'Karaciğer Hastalığı Olan Hastalarda Anestezi',
          'icon': Icons.medical_information_rounded,
          'color': [Color(0xFFE91E63), Color(0xFFC2185B)],
          'categories': hepaticDiseaseData,
        },
        {
          'title': isEnglish ? 'Anesthesia for Patients with Endocrine Disease' : 'Endokrin Hastalıklarda Anestezi',
          'icon': Icons.biotech_rounded,
          'color': [Color(0xFF3F51B5), Color(0xFF303F9F)],
          'categories': endocrineDiseaseData,
        },
        {
          'title': isEnglish ? 'Anesthesia for Ophthalmic Surgery' : 'Oftalmik Cerrahide Anestezi',
          'icon': Icons.visibility_rounded,
          'color': [Color(0xFF795548), Color(0xFF5D4037)],
          'categories': ophthalmicSurgeryData,
        },
        {
          'title': isEnglish ? 'Anesthesia for Otolaryngology–Head & Neck Surgery' : 'Otolaringoloji-Baş ve Boyun Cerrahisinde Anestezi',
          'icon': Icons.hearing_rounded,
          'color': [Color(0xFF607D8B), Color(0xFF455A64)],
          'categories': otolaryngologyHeadNeckSurgeryData,
        },
        {
          'title': isEnglish ? 'Anesthesia for Orthopedic Surgery' : 'Ortopedik Cerrahide Anestezi',
          'icon': Icons.accessibility_new_rounded,
          'color': [Color(0xFF8BC34A), Color(0xFF689F38)],
          'categories': orthopedicSurgeryData,
        },
        {
          'title': isEnglish ? 'Anesthesia for Trauma & Emergency Surgery' : 'Travma ve Acil Cerrahide Anestezi',
          'icon': Icons.emergency_rounded,
          'color': [Color(0xFFF44336), Color(0xFFD32F2F)],
          'categories': traumaEmergencySurgeryData,
        },
        {
          'title': isEnglish ? 'Maternal & Fetal Physiology & Anesthesia' : 'Maternal ve Fetal Fizyoloji ve Anestezi',
          'icon': Icons.pregnant_woman_rounded,
          'color': [Color(0xFFE91E63), Color(0xFFC2185B)],
          'categories': maternalFetalPhysiologyData,
        },
        {
          'title': isEnglish ? 'Obstetric Anesthesia' : 'Obstetrik Anestezi',
          'icon': Icons.child_care_rounded,
          'color': [Color(0xFF9C27B0), Color(0xFF7B1FA2)],
          'categories': obstetricAnesthesiaData,
        },
        {
          'title': isEnglish ? 'Pediatric Anesthesia' : 'Pediatrik Anestezi',
          'icon': Icons.child_friendly_rounded,
          'color': [Color(0xFF00BCD4), Color(0xFF0097A7)],
          'categories': pediatricAnesthesiaData,
        },
        {
          'title': isEnglish ? 'Geriatric Anesthesia' : 'Geriatrik Anestezi',
          'icon': Icons.elderly_rounded,
          'color': [Color(0xFF795548), Color(0xFF5D4037)],
          'categories': geriatricAnesthesiaData,
        },
        {
          'title': isEnglish ? 'Ambulatory & Non–Operating Room Anesthesia' : 'Günübirlik ve Ameliyathane Dışı Anestezi',
          'icon': Icons.local_hospital_rounded,
          'color': [Color(0xFF607D8B), Color(0xFF455A64)],
          'categories': outpatientNonOrAnesthesiaData,
        },
        {
          'title': isEnglish ? 'Spinal, Epidural, & Caudal Blocks' : 'Spinal, Epidural ve Kaudal Bloklar',
          'icon': Icons.medical_services_rounded,
          'color': [Color(0xFF3F51B5), Color(0xFF303F9F)],
          'categories': spinalEpiduralCaudalBlocksData,
        },
        {
          'title': isEnglish ? 'Peripheral Nerve Blocks' : 'Periferik Sinir Blokları',
          'icon': Icons.healing_rounded,
          'color': [Color(0xFF4CAF50), Color(0xFF388E3C)],
          'categories': peripheralNerveBlocksData,
        },
        {
          'title': isEnglish ? 'Chronic Pain Management' : 'Kronik Ağrı Tedavisi',
          'icon': Icons.medical_information_rounded,
          'color': [Color(0xFFE91E63), Color(0xFFC2185B)],
          'categories': chronicPainManagementData,
        },
        {
          'title': isEnglish ? 'Enhanced Recovery Protocols (ERAS)' : 'Geliştirilmiş İyileştirme Protokolleri (ERAS)',
          'icon': Icons.trending_up_rounded,
          'color': [Color(0xFF9C27B0), Color(0xFF7B1FA2)],
          'categories': erasProtocolsData,
        },
        {
          'title': isEnglish ? 'Fluid and Electrolyte Imbalances' : 'Sıvı ve Elektrolit Dengesizlikleri',
          'icon': Icons.water_drop_rounded,
          'color': [Color(0xFF00BCD4), Color(0xFF0097A7)],
          'categories': fluidElectrolyteImbalanceData,
        },
        {
          'title': isEnglish ? 'Acid–Base Management' : 'Asit-Baz Yönetimi',
          'icon': Icons.science_rounded,
          'color': [Color(0xFF4CAF50), Color(0xFF388E3C)],
          'categories': acidBaseManagementData,
        },
        {
          'title': isEnglish ? 'Fluid Management & Blood Component Therapy' : 'Sıvı Yönetimi ve Kan Ürünleri Tedavisi',
          'icon': Icons.water_drop_rounded,
          'color': [Color(0xFF2196F3), Color(0xFF1976D2)],
          'categories': fluidManagementBloodProductsData,
        },
        {
          'title': isEnglish ? 'Thermoregulation, Hypothermia, & Malignant Hyperthermia' : 'Termoregülasyon, Hipotermi ve Malign Hipertermi',
          'icon': Icons.thermostat_rounded,
          'color': [Color(0xFFFF9800), Color(0xFFF57C00)],
          'categories': thermoregulationHypothermiaMalignantHyperthermiaData,
        },
        {
          'title': isEnglish ? 'Nutrition in Perioperative & Critical Care' : 'Perioperatif ve Yoğun Bakımda Beslenme',
          'icon': Icons.restaurant_rounded,
          'color': [Color(0xFF8BC34A), Color(0xFF689F38)],
          'categories': perioperativeCriticalCareNutritionData,
        },
        {
          'title': isEnglish ? 'Anesthetic Complications' : 'Anestezi Komplikasyonları',
          'icon': Icons.warning_rounded,
          'color': [Color(0xFFF44336), Color(0xFFD32F2F)],
          'categories': anesthesiaComplicationsData,
        },
        {
          'title': isEnglish ? 'Cardiopulmonary Resuscitation (CPR)' : 'Kardiyopulmoner Resüsitasyon (CPR)',
          'icon': Icons.favorite_rounded,
          'color': [Color(0xFFE91E63), Color(0xFFC2185B)],
          'categories': cardiopulmonaryResuscitationData,
        },
        {
          'title': isEnglish ? 'Postanesthesia Care' : 'Postanestezik Bakım',
          'icon': Icons.local_hospital_rounded,
          'color': [Color(0xFF4CAF50), Color(0xFF388E3C)],
          'categories': postanestheticCareData,
        },
        {
          'title': isEnglish ? 'Common Clinical Concerns in Critical Care Medicine' : 'Yoğun Bakım Uygulamalarında Karşılaşılan Sorunlar',
          'icon': Icons.medical_services_rounded,
          'color': [Color(0xFF9C27B0), Color(0xFF7B1FA2)],
          'categories': intensiveCareProblemsData,
        },
        {
          'title': isEnglish ? 'Inhalation Therapy & Mechanical Ventilation in PACU & ICU' : 'Postoperatif Bakım Ünitesi ve Yoğun Bakımda İnhalasyon',
          'icon': Icons.air_rounded,
          'color': [Color(0xFF00BCD4), Color(0xFF0097A7)],
          'categories': postoperativeCareInhalationData,
        },
        {
          'title': isEnglish ? 'Sepsis and ARDS' : 'Sepsis ve ARDS',
          'icon': Icons.emergency_rounded,
          'color': [Color(0xFFF44336), Color(0xFFD32F2F)],
          'categories': sepsisArdsData,
        },
        {
          'title': isEnglish ? 'ERC 2021 Guidelines' : 'ERC 2021',
          'icon': Icons.medical_information_rounded,
          'color': [Color(0xFF795548), Color(0xFF5D4037)],
          'categories': erc2021Data,
        },
    ];
    
    _filteredSections = _allSections;
    
    setState(() {});
  }

  void _navigateToDetailScreen(dynamic section) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => InformationDetailScreen(section: section),
      ),
    );
  }

  void _performSearch(String query) {
    setState(() {
      _searchQuery = query;
      if (query.isEmpty) {
        _filteredSections = _allSections;
      } else {
        final lowerCaseQuery = query.toLowerCase();
        _filteredSections = _allSections.where((section) {
          // Ana başlıkta arama
          if (section['title'].toLowerCase().contains(lowerCaseQuery)) {
            return true;
          }
          
          // Kategorilerde arama
          for (var category in section['categories']) {
            if (category.categoryName.toLowerCase().contains(lowerCaseQuery)) {
              return true;
            }
            
            // Item'larda arama
            for (var item in category.items) {
              if (item.title.toLowerCase().contains(lowerCaseQuery) ||
                  item.description.toLowerCase().contains(lowerCaseQuery) ||
                  (item.subtitle?.toLowerCase().contains(lowerCaseQuery) ?? false) ||
                  (item.additionalInfo?.toLowerCase().contains(lowerCaseQuery) ?? false)) {
                return true;
              }
            }
          }
          return false;
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400;

    return Consumer<LanguageService>(
      builder: (context, languageService, child) {
        // Dil değiştiğinde verileri yeniden yükle
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) {
            _loadAllData();
          }
        });

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue.shade900, Colors.black],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Compact Header
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isSmallScreen ? 16 : 20,
                  vertical: isSmallScreen ? 8 : 12,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline_rounded,
                      color: Colors.white,
                      size: isSmallScreen ? 20 : 24,
                    ),
                    SizedBox(width: isSmallScreen ? 12 : 16),
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.information,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Search button
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSearching = !_isSearching;
                          if (_isSearching) {
                            _searchFocusNode.requestFocus();
                          } else {
                            _searchController.clear();
                            _performSearch('');
                          }
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(isSmallScreen ? 6 : 8),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.white.withOpacity(0.1), Colors.white.withOpacity(0.05)],
                          ),
                          borderRadius: BorderRadius.circular(isSmallScreen ? 10 : 12),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.2),
                          ),
                        ),
                        child: Icon(
                          _isSearching ? Icons.close_rounded : Icons.search_rounded,
                          color: Colors.white,
                          size: isSmallScreen ? 16 : 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              // Search bar
              if (_isSearching) ...[
                const SizedBox(height: 12),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: isSmallScreen ? 16 : 20),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    controller: _searchController,
                    focusNode: _searchFocusNode,
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value;
                      });
                      _performSearch(value);
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Bilgilerde ara...',
                      hintStyle: const TextStyle(color: Colors.white70),
                      border: InputBorder.none,
                      icon: const Icon(Icons.search, color: Colors.white70, size: 18),
                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
              ],
              
              // Content Area
              Expanded(
                child: Builder(
                  builder: (context) {
                    return _filteredSections.isEmpty
                        ? _buildEmptyState()
                        : ListView.builder(
                            padding: EdgeInsets.symmetric(horizontal: isSmallScreen ? 16 : 20),
                            itemCount: _filteredSections.length,
                            itemBuilder: (context, sectionIndex) {
                              final section = _filteredSections[sectionIndex];
                              return _buildSectionCard(section, sectionIndex);
                            },
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
      },
    );
  }


  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white.withOpacity(0.1), Colors.white.withOpacity(0.05)],
              ),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            child: Icon(
              Icons.search_off_rounded,
              size: 64,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Sonuç bulunamadı",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Farklı anahtar kelimeler deneyin",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionCard(dynamic section, int sectionIndex) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400;
    
    final sectionTitle = section['title'];
    final sectionIcon = section['icon'];
    final sectionColors = section['color'];
    final categories = section['categories'];
    
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: isSmallScreen ? 12 : 16),
      child: GestureDetector(
        onTap: () => _navigateToDetailScreen(section),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: isSmallScreen ? 12 : 16,
            vertical: isSmallScreen ? 8 : 12,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: sectionColors,
            ),
            borderRadius: BorderRadius.circular(isSmallScreen ? 12 : 16),
            boxShadow: [
              BoxShadow(
                color: sectionColors[0].withOpacity(0.3),
                blurRadius: isSmallScreen ? 8 : 12,
                spreadRadius: 0,
                offset: Offset(0, isSmallScreen ? 2 : 4),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(isSmallScreen ? 6 : 8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(isSmallScreen ? 8 : 10),
                ),
                child: Icon(
                  sectionIcon,
                  color: Colors.white,
                  size: isSmallScreen ? 16 : 18,
                ),
              ),
              SizedBox(width: isSmallScreen ? 8 : 12),
              Expanded(
                child: Text(
                  sectionTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isSmallScreen ? 14 : 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(width: isSmallScreen ? 6 : 8),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white.withOpacity(0.8),
                size: isSmallScreen ? 12 : 14,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }
}

class InformationDetailScreen extends StatefulWidget {
  final dynamic section;

  const InformationDetailScreen({super.key, required this.section});

  @override
  State<InformationDetailScreen> createState() => _InformationDetailScreenState();
}

class _InformationDetailScreenState extends State<InformationDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400;
    
    final sectionTitle = widget.section['title'];
    final categories = widget.section['categories'];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue.shade900, Colors.black],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isSmallScreen ? 16 : 20,
                  vertical: isSmallScreen ? 8 : 12,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        padding: EdgeInsets.all(isSmallScreen ? 6 : 8),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.white.withOpacity(0.1), Colors.white.withOpacity(0.05)],
                          ),
                          borderRadius: BorderRadius.circular(isSmallScreen ? 10 : 12),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.2),
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                          size: isSmallScreen ? 16 : 18,
                        ),
                      ),
                    ),
                    SizedBox(width: isSmallScreen ? 12 : 16),
                    Expanded(
                      child: Text(
                        sectionTitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isSmallScreen ? 18 : 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              // Content
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: isSmallScreen ? 16 : 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Kategoriler
                      ...categories.map((category) => _buildCategoryCard(category, categories.indexOf(category))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard(dynamic category, int categoryIndex) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400;
    
    // Her kategori için daha yumuşak ve göze hoş gelen renkler
    List<List<Color>> categoryColors = [
      [Color(0xFF6B73FF), Color(0xFF9B59B6)], // Soft Purple-Blue
      [Color(0xFFE74C3C), Color(0xFFC0392B)], // Soft Red
      [Color(0xFF3498DB), Color(0xFF2980B9)], // Soft Blue
      [Color(0xFF27AE60), Color(0xFF229954)], // Soft Green
      [Color(0xFF8E44AD), Color(0xFF7D3C98)], // Soft Purple
      [Color(0xFFE67E22), Color(0xFFD35400)], // Soft Orange
      [Color(0xFF16A085), Color(0xFF138D75)], // Soft Teal
      [Color(0xFF95A5A6), Color(0xFF7F8C8D)], // Soft Gray
      [Color(0xFFE91E63), Color(0xFFC2185B)], // Soft Pink
      [Color(0xFF9C27B0), Color(0xFF7B1FA2)], // Soft Violet
    ];
    
    final colors = categoryColors[categoryIndex % categoryColors.length];
    
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: isSmallScreen ? 20 : 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Responsive Category Header
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: isSmallScreen ? 12 : 16,
              vertical: isSmallScreen ? 10 : 12,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: colors,
              ),
              borderRadius: BorderRadius.circular(isSmallScreen ? 12 : 16),
              boxShadow: [
                BoxShadow(
                  color: colors[0].withOpacity(0.3),
                  blurRadius: isSmallScreen ? 8 : 12,
                  spreadRadius: 0,
                  offset: Offset(0, isSmallScreen ? 2 : 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(isSmallScreen ? 6 : 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(isSmallScreen ? 8 : 10),
                  ),
                  child: Icon(
                    Icons.category_rounded,
                    color: Colors.white,
                    size: isSmallScreen ? 16 : 18,
                  ),
                ),
                SizedBox(width: isSmallScreen ? 10 : 12),
                Expanded(
                  child: Text(
                    category.categoryName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isSmallScreen ? 16 : 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          SizedBox(height: isSmallScreen ? 12 : 16),
          
          // Items
          ...category.items.map((item) => _buildItemCard(item, colors)),
        ],
      ),
    );
  }

  Widget _buildItemCard(dynamic item, List<Color> categoryColors) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400;
    
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: isSmallScreen ? 10 : 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.1),
            Colors.white.withOpacity(0.05),
          ],
        ),
        borderRadius: BorderRadius.circular(isSmallScreen ? 12 : 16),
        border: Border.all(
          color: Colors.white.withOpacity(0.15),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: categoryColors[0].withOpacity(0.1),
            blurRadius: isSmallScreen ? 6 : 8,
            spreadRadius: 0,
            offset: Offset(0, isSmallScreen ? 1 : 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(isSmallScreen ? 14 : 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              item.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: isSmallScreen ? 15 : 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            
            SizedBox(height: isSmallScreen ? 10 : 12),
            
            // Description
            Text(
              item.description,
              style: TextStyle(
                color: Colors.white,
                fontSize: isSmallScreen ? 13 : 14,
                height: 1.5,
                fontWeight: FontWeight.w400,
              ),
            ),
            
            // Subtitle
            if (item.subtitle != null) ...[
              SizedBox(height: isSmallScreen ? 6 : 8),
              Text(
                item.subtitle!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isSmallScreen ? 12 : 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
            
            // Additional info
            if (item.additionalInfo != null) ...[
              SizedBox(height: isSmallScreen ? 8 : 10),
              Text(
                item.additionalInfo!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isSmallScreen ? 12 : 13,
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

// Premium wrapper for InformationScreen
class PremiumInformationScreen extends StatelessWidget {
  const PremiumInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PremiumService>(
      builder: (context, premiumService, child) {
        // Premium kontrolü - Bilgiler bölümü sadece premium kullanıcılara açık
        // Async kontrol için FutureBuilder kullan
        return FutureBuilder<bool>(
          future: premiumService.hasPremiumAccess(),
          builder: (context, snapshot) {
            // Loading durumunda sync kontrolü kullan
            final isPremium = snapshot.hasData 
                ? snapshot.data! 
                : premiumService.isPremium;
            
            // Test modu kontrolü
            if (premiumService.isTestMode) {
              return const InformationScreen();
            }
            
            // Premium kontrolü - Bilgiler bölümü sadece premium kullanıcılara açık
            if (!isPremium) {
              return Scaffold(
                backgroundColor: Colors.transparent,
                body: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue.shade900, Colors.black],
                    ),
                  ),
                  child: SafeArea(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: PremiumLockWidget(
                          message: AppLocalizations.of(context)!.informationPremiumMessage,
                          subtitle: AppLocalizations.of(context)!.informationPremiumSubtitle,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }

            // Premium kullanıcılar için normal InformationScreen'i göster
            return const InformationScreen();
          },
        );
      },
    );
  }
}