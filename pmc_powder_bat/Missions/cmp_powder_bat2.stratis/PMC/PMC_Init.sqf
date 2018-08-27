
// year, month, day, hour, minute
setDate [2010, 3, 6, 9, 0];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[] execVM "PMC\PMC_weather.sqf";
[] execVM "PMC\PMC_WeaponPoolAmmoBox.sqf";
