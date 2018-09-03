
// year, month, day, hour, minute
setDate [2008, 10, 12, 8, 40];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";
pmc_ammobox_campmaxwell_1 loadStatus "PMC_StatusAmmoBoxCampMaxwell_1";
pmc_ammobox_campmaxwell_2 loadStatus "PMC_StatusAmmoBoxCampMaxwell_2";
// here we introduced the USMC ammo boxes 3 through 8, and we must initialize them here if we want special items added etc
// we make the huge vehicle ammo box as our uniform storage
[pmc_ammobox_campmaxwell_5] execVM "PMC\PMC_ClearVehicleCargo.sqf";
[pmc_ammobox_campmaxwell_5, 10] execVM "PMC\PMC_CUP_UniformsToCargo.sqf";

PMC_corpses = [];
PMC_killedNum = 0;

call compile preprocessFileLineNumbers "PMC\PMC_Create_CUP_NAPA_Random_Infantry.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Sentry_Inf_Waypoints.sqf";

private _grp = [getPos pmc_1] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_1, 50] call PMC_Sentry_Inf_Waypoints;
_grp = [getPos pmc_2] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_2, 20] call PMC_Sentry_Inf_Waypoints;
_grp = [getPos pmc_location_1] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_location_1, 20] call PMC_Sentry_Inf_Waypoints;
_grp = [getPos pmc_location_2] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_location_2, 20] call PMC_Sentry_Inf_Waypoints;

{
	_grp = [getPos pmc_location_1] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_location_1), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";

	_grp = [getPos pmc_location_3] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_location_3), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";
} forEach [400, 300, 200, 100];

[] execVM "PMC\PMC_MissionStart.sqf";
