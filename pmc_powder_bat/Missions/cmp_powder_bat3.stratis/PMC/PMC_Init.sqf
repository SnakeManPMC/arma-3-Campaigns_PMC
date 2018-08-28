
// year, month, day, hour, minute
setDate [2008, 10, 12, 8, 40];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";
// special initialization for truck, so we can add some juicy cargo for it. script in *MISSION* PMC\ scripts dir
[] execVM "PMC\PMC_WeaponPoolTruckInit.sqf";
[] execVM "PMC\PMC_WeaponPoolAmmoBox.sqf";
