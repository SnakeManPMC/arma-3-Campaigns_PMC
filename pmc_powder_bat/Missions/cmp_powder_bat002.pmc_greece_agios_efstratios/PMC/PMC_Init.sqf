
// year, month, day, hour, minute
setDate [2008, 10, 11, 13, 5];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather.sqf";
pmc_ammobox_campmaxwell_1 loadStatus "PMC_StatusAmmoBoxCampMaxwell_1";
pmc_ammobox_campmaxwell_2 loadStatus "PMC_StatusAmmoBoxCampMaxwell_2";

[] execVM "PMC\PMC_MissionStart.sqf";
