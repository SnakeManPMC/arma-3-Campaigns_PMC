
// year, month, day, hour, minute
setDate [2008, 11, 8, 12, 0];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";

[] execVM "PMC\PMC_AmmoBoxLoadStatusFOBFalcon.sqf";
pmc_truck1 loadStatus "PMC_AmmoTruck1";
[] execVM "PMC\PMC_AmmoBoxLoadStatusFOBEagle.sqf";
[] execVM "PMC\PMC_AmmoBoxLoadStatusFOBRaven.sqf";
[] execVM "PMC\PMC_AmmoBoxLoadStatusFOBGhoul.sqf";

[(getPos pmc_fob_falcon), 100] execVM "PMC\PMC_CampFOBDefenses.sqf";

PMC_corpses = [];
PMC_killedNum = 0;

call compile preprocessFileLineNumbers "PMC\PMC_Create_CUP_NAPA_Random_Infantry.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Sentry_Inf_Waypoints.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_CUP_NAPA_Sniper_Team.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Guard_Inf_Sniper_Stealth_Waypoints.sqf";

private _grp = [getPos pmc_1] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_1, 50] call PMC_Sentry_Inf_Waypoints;
_grp = [getPos pmc_2] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_2, 20] call PMC_Sentry_Inf_Waypoints;
_grp = [getPos pmc_3] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_3, 20] call PMC_Sentry_Inf_Waypoints;
_grp = [getPos pmc_4] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_4, 20] call PMC_Sentry_Inf_Waypoints;
_grp = [getPos pmc_5] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_5, 20] call PMC_Sentry_Inf_Waypoints;

_grp = [getPos pmc_5] call PMC_Create_CUP_NAPA_Sniper_Team;
[_grp, getPos pmc_5, 500] call PMC_Guard_Inf_Sniper_Stealth_Waypoints;

{
	_grp = [getPos pmc_location_1] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_location_1), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";

	_grp = [getPos pmc_location_2] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_location_2), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";

	_grp = [getPos pmc_location_3] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_location_3), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";

	_grp = [getPos pmc_location_4] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_location_4), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";

	_grp = [getPos pmc_location_5] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_location_5), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";
} forEach [200, 100];

[] execVM "PMC\PMC_MissionStart.sqf";
