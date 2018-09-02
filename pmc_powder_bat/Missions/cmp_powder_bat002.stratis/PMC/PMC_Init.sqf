
// year, month, day, hour, minute
setDate [2008, 10, 11, 13, 5];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";
//[] execVM "PMC\PMC_WeaponPoolAmmoBox.sqf";
pmc_ammobox_base_1 loadStatus "PMC_AmmoBoxBase1";
pmc_ammobox_base_2 loadStatus "PMC_AmmoBoxBase2";

[] execVM "PMC\PMC_MissionStart.sqf";
