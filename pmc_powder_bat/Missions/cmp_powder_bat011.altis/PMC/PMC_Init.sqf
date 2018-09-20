
// year, month, day, hour, minute
setDate [2008, 11, 3, 8, 30];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";

// our v3s truck introductory mission and we want to clear its contents
[pmc_truck1] execVM "PMC\PMC_ClearVehicleCargo.sqf";

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

_grp = [getPos pmc_3] call PMC_Create_CUP_NAPA_Sniper_Team;
[_grp, getPos pmc_3, 500] call PMC_Guard_Inf_Sniper_Stealth_Waypoints;

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

	_grp = [getPos pmc_3] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_3), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";
} forEach [500, 300];

[] execVM "PMC\PMC_MissionStart.sqf";

// here we introduced the USMC ammo boxes and we must initialize them here if we want special items added etc
// we make the huge vehicle ammo box as our uniform storage
[pmc_ammobox_fobfalcon_6] execVM "PMC\PMC_ClearVehicleCargo.sqf";
[pmc_ammobox_fobfalcon_6, 3] execVM "PMC\PMC_CUP_UniformsToCargo.sqf";
// special empty boxes
[pmc_ammobox_fobfalcon_5] execVM "PMC\PMC_ClearVehicleCargo.sqf";
[pmc_ammobox_fobfalcon_7] execVM "PMC\PMC_ClearVehicleCargo.sqf";

// special save to fob eagle ammo boxes which are hidden in the norther island
[] execVM "PMC\PMC_AmmoBoxSaveStatusFOBFalcon.sqf";
