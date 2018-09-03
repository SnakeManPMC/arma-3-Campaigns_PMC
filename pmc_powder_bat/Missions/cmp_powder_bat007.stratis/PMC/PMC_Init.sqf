
// year, month, day, hour, minute
setDate [2008, 10, 14, 10, 30];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";
//[] execVM "PMC\PMC_WeaponPoolTruck.sqf";
//[] execVM "PMC\PMC_WeaponPoolAmmoBox.sqf";
pmc_ammobox_campmaxwell_1 loadStatus "PMC_StatusAmmoBoxCampMaxwell_1";
pmc_ammobox_campmaxwell_2 loadStatus "PMC_StatusAmmoBoxCampMaxwell_2";
pmc_truck1 loadStatus "PMC_AmmoTruck1";

PMC_corpses = [];
PMC_killedNum = 0;

call compile preprocessFileLineNumbers "PMC\PMC_Create_CUP_NAPA_Random_Infantry.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Sentry_Inf_Waypoints.sqf";

private _grp = [getPos pmc_location_2] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_location_2, 50] call PMC_Sentry_Inf_Waypoints;
_grp = [getPos pmc_2] call PMC_Create_CUP_NAPA_Random_Infantry;
[_grp, getPos pmc_2, 20] call PMC_Sentry_Inf_Waypoints;

{
	_grp = [getPos pmc_1] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_1), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";

	_grp = [getPos pmc_location_1] call PMC_Create_CUP_NAPA_Random_Infantry;
	[(getPos pmc_location_1), _grp, _x] execVM "PMC\PMC_defendLocation.sqf";
} forEach [400, 300, 200, 100];

[] execVM "PMC\PMC_MissionStart.sqf";
