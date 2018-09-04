/* PMC_CampFOBDefenses.sqf
create basic defensive mostly decorative units for Camp Maxwell and altis FOBs

_grp = [_pos, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Infantry_FROG_DES" >> "CUP_B_USMC_InfSquad_FROG_DES")] call BIS_fnc_spawnGroup;
_grp = [_pos, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Infantry_FROG_DES" >> "CUP_B_USMC_FireTeam_FROG_DES")] call BIS_fnc_spawnGroup;
_grp = [_pos, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Infantry_FROG_DES" >> "CUP_B_USMC_FireTeam_MG_FROG_DES")] call BIS_fnc_spawnGroup;
_grp = [_pos, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Infantry_FROG_DES" >> "CUP_B_USMC_FireTeam_AT_FROG_DES")] call BIS_fnc_spawnGroup;
_grp = [_pos, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Infantry_FROG_DES" >> "CUP_B_USMC_HeavyATTeam_FROG_DES")] call BIS_fnc_spawnGroup;
*/

//[getPos pmc_hq_1, 100] execVM "PMC\PMC_CampFOBDefenses.sqf";

private _pos = _this select 0;
private _waypointRanPosit = _this select 1;

// patrol
for "_i" from 1 to 3 do
{
	private _newPos = [_pos, 0, 50, 3, 0, 50, 0] call BIS_fnc_findSafePos;
	private _grp = [_newPos, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Infantry_FROG_DES" >> "CUP_B_USMC_FireTeam_FROG_DES")] call BIS_fnc_spawnGroup;
	
	_grp setbehaviour "SAFE";
	_grp setcombatmode "RED";
	_grp setspeedmode "LIMITED";
	_grp setformation "LINE";

	[_pos, _grp, 200] execVM "PMC\PMC_DefendLocation.sqf"	
};

// sentry
private _newPos = [_pos, 0, 50, 3, 0, 50, 0] call BIS_fnc_findSafePos;
private _grp = [_newPos, WEST, (configFile >> "CfgGroups" >> "West" >> "CUP_B_USMC" >> "Infantry_FROG_DES" >> "CUP_B_USMC_FireTeam_Support_FROG_DES")] call BIS_fnc_spawnGroup;

[_pos, _grp, 20] execVM "PMC\PMC_DefendLocation.sqf"	