
// year, month, day, hour, minute
setDate [2008, 11, 6, 17, 5];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";
pmc_ammobox_fob1_1 loadStatus "PMC_AmmoBoxFOB11";
pmc_ammobox_fob1_2 loadStatus "PMC_AmmoBoxFOB12";
pmc_ammobox_fob1_3 loadStatus "PMC_AmmoBoxFOB13";
pmc_ammobox_fob1_4 loadStatus "PMC_AmmoBoxFOB14";
pmc_truck1 loadStatus "PMC_AmmoTruck1";

[] execVM "PMC\PMC_War_OPFOR.sqf";

[] execVM "PMC\PMC_MissionStart.sqf";
