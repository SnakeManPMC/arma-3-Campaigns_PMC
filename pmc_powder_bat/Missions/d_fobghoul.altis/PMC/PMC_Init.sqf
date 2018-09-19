
// year, month, day, hour, minute
setDate PMC_LastMissionDateTime;

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";

[] execVM "PMC\PMC_AmmoBoxLoadStatusFOBFalcon.sqf";
pmc_truck1 loadStatus "PMC_AmmoTruck1";

[pmc_fob_ghoul, 50, 33] execVM "PMC\PMC_War_OPFOR.sqf";

[] execVM "PMC\PMC_MissionStart.sqf";
