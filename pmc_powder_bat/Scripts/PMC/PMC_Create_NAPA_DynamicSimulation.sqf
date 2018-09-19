
//https://community.bistudio.com/wiki/setDynamicSimulationDistance
"Group" setDynamicSimulationDistance 800;

call compile preprocessFileLineNumbers "PMC\PMC_Create_CUP_NAPA_Random_Infantry.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Sentry_Inf_Waypoints.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_CUP_NAPA_Sniper_Team.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Guard_Inf_Sniper_Stealth_Waypoints.sqf";

pmc_dynsim_dudes_sentry = 0;
pmc_dynsim_dudes_patrol = 0;

private _pmcKilledEH =
{
	private _grp = _this select 0;
	{
		_x addEventHandler ["killed", {0 = _this execVM "PMC\PMC_killed.sqf"}];
	} foreach units _grp;
};

private _pmc_sentry =
{
	private _grp = [getPos (_this select 0)] call PMC_Create_CUP_NAPA_Random_Infantry;
	[_grp] call _pmcKilledEH;
	[_grp, getPos (_this select 0), (_this select 1)] call PMC_Sentry_Inf_Waypoints;

	pmc_dynsim_dudes_sentry = pmc_dynsim_dudes_sentry + (count units _grp);

	_grp enableDynamicSimulation true;
};

[pmc_1, 30] call _pmc_sentry;
[pmc_2, 30] call _pmc_sentry;
[pmc_3, 30] call _pmc_sentry;
[pmc_4, 30] call _pmc_sentry;
[pmc_5, 30] call _pmc_sentry;
[pmc_6, 30] call _pmc_sentry;
[pmc_7, 30] call _pmc_sentry;
[pmc_8, 30] call _pmc_sentry;
[pmc_9, 30] call _pmc_sentry;
[pmc_10, 30] call _pmc_sentry;
[pmc_11, 30] call _pmc_sentry;
[pmc_12, 30] call _pmc_sentry;
[pmc_13, 30] call _pmc_sentry;
[pmc_14, 30] call _pmc_sentry;
[pmc_15, 30] call _pmc_sentry;
[pmc_16, 30] call _pmc_sentry;
[pmc_17, 30] call _pmc_sentry;
[pmc_18, 30] call _pmc_sentry;
[pmc_19, 30] call _pmc_sentry;
[pmc_20, 30] call _pmc_sentry;

/*
_grp = [getPos pmc_2] call PMC_Create_CUP_NAPA_Sniper_Team;
[_grp, getPos pmc_2, 500] call PMC_Guard_Inf_Sniper_Stealth_Waypoints;
*/

private _pmc_patrol =
{
	private _grp = [getPos (_this select 0)] call PMC_Create_CUP_NAPA_Random_Infantry;
	[_grp] call _pmcKilledEH;
	[(getPos (_this select 0)), _grp, (_this select 1)] execVM "PMC\PMC_defendLocation.sqf";

	pmc_dynsim_dudes_patrol = pmc_dynsim_dudes_patrol + (count units _grp);

	_grp enableDynamicSimulation true;
};

[pmc_location_1, 300] call _pmc_patrol;
[pmc_location_2, 300] call _pmc_patrol;
[pmc_location_3, 300] call _pmc_patrol;
[pmc_location_4, 300] call _pmc_patrol;
[pmc_location_5, 300] call _pmc_patrol;
[pmc_location_6, 300] call _pmc_patrol;
[pmc_location_7, 300] call _pmc_patrol;
[pmc_location_8, 300] call _pmc_patrol;
[pmc_location_9, 300] call _pmc_patrol;
[pmc_location_10, 300] call _pmc_patrol;
[pmc_location_11, 300] call _pmc_patrol;
[pmc_location_12, 300] call _pmc_patrol;
[pmc_location_13, 300] call _pmc_patrol;
[pmc_location_14, 300] call _pmc_patrol;
[pmc_location_15, 300] call _pmc_patrol;
[pmc_location_16, 300] call _pmc_patrol;
[pmc_location_17, 300] call _pmc_patrol;
[pmc_location_18, 300] call _pmc_patrol;
[pmc_location_19, 300] call _pmc_patrol;
[pmc_location_20, 300] call _pmc_patrol;
