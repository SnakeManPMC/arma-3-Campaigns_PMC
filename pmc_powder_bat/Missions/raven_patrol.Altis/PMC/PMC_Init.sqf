
// year, month, day, hour, minute
setDate PMC_LastMissionDateTime;

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";

pmc_ammobox_fob1_1 loadStatus "PMC_AmmoBoxFOB11";
pmc_ammobox_fob1_2 loadStatus "PMC_AmmoBoxFOB12";
pmc_ammobox_fob1_3 loadStatus "PMC_AmmoBoxFOB13";
pmc_ammobox_fob1_4 loadStatus "PMC_AmmoBoxFOB14";
pmc_truck1 loadStatus "PMC_AmmoTruck1";

pmc_ammobox_fobeagle_1 loadStatus "PMC_StatusAmmoBoxFOBEagle_1";
pmc_ammobox_fobeagle_2 loadStatus "PMC_StatusAmmoBoxFOBEagle_2";
pmc_ammobox_fobeagle_3 loadStatus "PMC_StatusAmmoBoxFOBEagle_3";
pmc_ammobox_fobeagle_4 loadStatus "PMC_StatusAmmoBoxFOBEagle_4";
pmc_ammobox_fobeagle_5 loadStatus "PMC_StatusAmmoBoxFOBEagle_5";
pmc_ammobox_fobeagle_6 loadStatus "PMC_StatusAmmoBoxFOBEagle_6";

pmc_ammobox_fobraven_1 loadStatus "PMC_StatusAmmoBoxFOBRaven_1";
pmc_ammobox_fobraven_2 loadStatus "PMC_StatusAmmoBoxFOBRaven_2";
pmc_ammobox_fobraven_3 loadStatus "PMC_StatusAmmoBoxFOBRaven_3";
pmc_ammobox_fobraven_4 loadStatus "PMC_StatusAmmoBoxFOBRaven_4";
pmc_ammobox_fobraven_5 loadStatus "PMC_StatusAmmoBoxFOBRaven_5";
pmc_ammobox_fobraven_6 loadStatus "PMC_StatusAmmoBoxFOBRaven_6";

[(getPos pmc_fob_eagle), 100] execVM "PMC\PMC_CampFOBDefenses.sqf";

PMC_corpses = [];
PMC_killedNum = 0;

[] execVM "PMC\PMC_MissionStart.sqf";

[] execVM "PMC\PMC_Create_NAPA_DynamicSimulation.sqf";

[pmc_fobraven_flag] execVM "PMC\PMC_AddActionFlagPole.sqf";
