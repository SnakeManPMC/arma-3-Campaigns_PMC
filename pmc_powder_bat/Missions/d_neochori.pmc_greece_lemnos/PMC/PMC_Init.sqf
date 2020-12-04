
// year, month, day, hour, minute
setDate [2008, 11, 7, 18, 20];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";

[] execVM "PMC\PMC_AmmoBoxLoadStatusFOBFalcon.sqf";
pmc_truck1 loadStatus "PMC_AmmoTruck1";

[pmc_neochori, 100, 33] execVM "PMC\PMC_War_OPFOR.sqf";

[] execVM "PMC\PMC_MissionStart.sqf";
