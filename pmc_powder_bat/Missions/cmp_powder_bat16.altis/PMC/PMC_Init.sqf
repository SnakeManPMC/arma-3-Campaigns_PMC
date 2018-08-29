
// year, month, day, hour, minute
setDate [2008, 11, 6, 10, 20];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";

[player, "PMC_WeatherForecast", nil, nil, ""] call BIS_fnc_addCommMenuItem;
