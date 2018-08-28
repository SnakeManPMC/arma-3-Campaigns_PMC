
// year, month, day, hour, minute
setDate [2008, 10, 13, 7, 0];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";
[] execVM "PMC\PMC_WeaponPoolTruck.sqf";
[] execVM "PMC\PMC_WeaponPoolAmmoBox.sqf";
