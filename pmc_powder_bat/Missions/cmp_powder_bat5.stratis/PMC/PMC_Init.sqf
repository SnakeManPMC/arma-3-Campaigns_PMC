
// year, month, day, hour, minute
setDate [2008, 10, 13, 7, 0];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";
[] execVM "PMC\PMC_WeaponPoolTruck.sqf";
[] execVM "PMC\PMC_WeaponPoolAmmoBox.sqf";

[player, "PMC_WeatherForecast", nil, nil, ""] call BIS_fnc_addCommMenuItem;

PMC_corpses = [];
PMC_killedNum = 0;

call compile preprocessFileLineNumbers "PMC\PMC_Create_CUP_NAPA_Random_Infantry.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Sentry_Inf_Waypoints.sqf";

// two groups to defend in sentry waypoint
private _grp = [getPos pmc_1] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_1, 50] call PMC_Sentry_Inf_Waypoints;
_grp = [getPos pmc_2] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_2, 20] call PMC_Sentry_Inf_Waypoints;

// four patrol groups, all random ...
{
	_grp = [getPos pmc_location_1] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_location_1), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";

	_grp = [getPos pmc_location_2] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_location_2), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";
} forEach [400, 300, 200, 100];

// PMCTODO sniper 2 man team with a guard WP
//_grp = [getPos pmc_location_2] execVM "PMC\SOME_COOL_SNIPA.SQF";
//[_grp] execVM "PMC\SOME_COOL_GUARD_STEALTH_SNIPA_WAYPOINT_SHIZZLE.SQF";
