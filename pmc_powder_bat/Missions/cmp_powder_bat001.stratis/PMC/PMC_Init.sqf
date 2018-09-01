
// year, month, day, hour, minute
setDate [2008, 10, 11, 5, 50];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";

[player, "PMC_WeatherForecast", nil, nil, ""] call BIS_fnc_addCommMenuItem;

PMC_corpses = [];
PMC_killedNum = 0;

call compile preprocessFileLineNumbers "PMC\PMC_Create_CUP_NAPA_Random_Infantry.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Sentry_Inf_Waypoints.sqf";

private _grp = [getPos pmc_1] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_1, 50] call PMC_Sentry_Inf_Waypoints;
_grp = [getPos pmc_2] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_2, 20] call PMC_Sentry_Inf_Waypoints;

{
	_grp = [getPos pmc_1] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_1), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";

	_grp = [getPos pmc_2] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_2), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";
} forEach [400, 300, 200, 100];

[] spawn {sleep 7; PMCHQ sideChat "Your insertion was spotted, radio traffic indicates enemy patrol is heading towards you from the north. Watch out. HQ out.";};

[] execVM "PMC\PMC_MissionStart.sqf";

[] execVM "PMC\PMC_CampaignInit.sqf";
