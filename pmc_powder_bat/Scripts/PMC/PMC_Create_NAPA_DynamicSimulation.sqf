
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

{
	[_x, 30] call _pmc_sentry;
	[_x, 100] call _pmc_sentry;
} forEach [pmc_1, pmc2, pmc3, pmc4, pmc5, pmc6, pmc7, pmc8, pmc9, pmc10, pmc11, pmc12, pmc13, pmc14, pmc15, pmc16, pmc17, pmc18, pmc19, pmc20];

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

{
	[_x, 300] call _pmc_patrol;
	[_x, 500] call _pmc_patrol;
} forEach [pmc_location_1, pmc_location_2, pmc_location_3, pmc_location_4, pmc_location_5, pmc_location_6, pmc_location_7, pmc_location_8, pmc_location_9, pmc_location_10, pmc_location_11, pmc_location_12, pmc_location_13, pmc_location_14, pmc_location_15, pmc_location_16, pmc_location_17, pmc_location_18, pmc_location_19, pmc_location_20];
