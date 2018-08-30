
// year, month, day, hour, minute
setDate [2008, 10, 12, 8, 40];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";
// special initialization for truck, so we can add some juicy cargo for it. script in *MISSION* PMC\ scripts dir
[] execVM "PMC\PMC_WeaponPoolTruckInit.sqf";
pmc_ammobox_base_1 loadStatus "PMC_AmmoBoxBase1";
pmc_ammobox_base_2 loadStatus "PMC_AmmoBoxBase2";
[pmc_ammobox_base_1] execVM "PMC\PMC_AmmoBoxResupply.sqf";
[pmc_ammobox_base_2] execVM "PMC\PMC_AmmoBoxResupply.sqf";

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
_grp = [getPos pmc_location_1] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_location_1, 20] call PMC_Sentry_Inf_Waypoints;
_grp = [getPos pmc_location_2] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_location_2, 20] call PMC_Sentry_Inf_Waypoints;

// four patrol groups, all random ...
{
	_grp = [getPos pmc_location_1] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_location_1), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";

	_grp = [getPos pmc_location_3] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_location_3), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";
} forEach [400, 300, 200, 100];
