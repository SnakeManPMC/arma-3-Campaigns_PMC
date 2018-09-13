
// year, month, day, hour, minute
setDate [2008, 11, 8, 12, 0];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";

pmc_ammobox_fobfalcon_1 loadStatus "PMC_StatusAmmoBoxFOBFalcon_1";
pmc_ammobox_fobfalcon_2 loadStatus "PMC_StatusAmmoBoxFOBFalcon_2";
pmc_ammobox_fobfalcon_3 loadStatus "PMC_StatusAmmoBoxFOBFalcon_3";
pmc_ammobox_fobfalcon_4 loadStatus "PMC_StatusAmmoBoxFOBFalcon_4";
pmc_truck1 loadStatus "PMC_AmmoTruck1";

pmc_ammobox_fobeagle_1 loadStatus "PMC_AmmoBoxFOBEagle_1";
pmc_ammobox_fobeagle_2 loadStatus "PMC_AmmoBoxFOBEagle_2";
pmc_ammobox_fobeagle_3 loadStatus "PMC_AmmoBoxFOBEagle_3";
pmc_ammobox_fobeagle_4 loadStatus "PMC_AmmoBoxFOBEagle_4";
pmc_ammobox_fobeagle_5 loadStatus "PMC_AmmoBoxFOBEagle_5";
pmc_ammobox_fobeagle_6 loadStatus "PMC_AmmoBoxFOBEagle_6";

pmc_ammobox_fobraven_1 loadStatus "PMC_StatusAmmoBoxFOBRaven_1";
pmc_ammobox_fobraven_2 loadStatus "PMC_StatusAmmoBoxFOBRaven_2";
pmc_ammobox_fobraven_3 loadStatus "PMC_StatusAmmoBoxFOBRaven_3";
pmc_ammobox_fobraven_4 loadStatus "PMC_StatusAmmoBoxFOBRaven_4";
pmc_ammobox_fobraven_5 loadStatus "PMC_StatusAmmoBoxFOBRaven_5";
pmc_ammobox_fobraven_6 loadStatus "PMC_StatusAmmoBoxFOBRaven_6";

pmc_ammobox_fobghoul_1 loadStatus "PMC_AmmoBoxFOBGhoul_1";
pmc_ammobox_fobghoul_2 loadStatus "PMC_AmmoBoxFOBGhoul_2";
pmc_ammobox_fobghoul_3 loadStatus "PMC_AmmoBoxFOBGhoul_3";
pmc_ammobox_fobghoul_4 loadStatus "PMC_AmmoBoxFOBGhoul_4";
pmc_ammobox_fobghoul_5 loadStatus "PMC_AmmoBoxFOBGhoul_5";
pmc_ammobox_fobghoul_6 loadStatus "PMC_AmmoBoxFOBGhoul_6";

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

_grp = [getPos pmc_1] call PMC_Create_CUP_NAPA_Sniper_Team;
[_grp, getPos pmc_1, 500] call PMC_Guard_Inf_Sniper_Stealth_Waypoints;

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
} forEach [400, 200];

[] execVM "PMC\PMC_MissionStart.sqf";

// here we introduced the USMC ammo boxes and we must initialize them here if we want special items added etc
// we make the huge vehicle ammo box as our uniform storage
[pmc_ammobox_fobpig_6] execVM "PMC\PMC_ClearVehicleCargo.sqf";
[pmc_ammobox_fobpig_6, 3] execVM "PMC\PMC_CUP_UniformsToCargo.sqf";

// special savestatus for FOB Pig ammo boxes which are hidden in the northern island hehe
// needs special preparation for the uniform box which is number 6
pmc_ammobox_fobpig_1 saveStatus "PMC_StatusAmmoBoxFOBPig_1";
pmc_ammobox_fobpig_2 saveStatus "PMC_StatusAmmoBoxFOBPig_2";
pmc_ammobox_fobpig_3 saveStatus "PMC_StatusAmmoBoxFOBPig_3";
pmc_ammobox_fobpig_4 saveStatus "PMC_StatusAmmoBoxFOBPig_4";
pmc_ammobox_fobpig_5 saveStatus "PMC_StatusAmmoBoxFOBPig_5";
pmc_ammobox_fobpig_6 saveStatus "PMC_StatusAmmoBoxFOBPig_6";
