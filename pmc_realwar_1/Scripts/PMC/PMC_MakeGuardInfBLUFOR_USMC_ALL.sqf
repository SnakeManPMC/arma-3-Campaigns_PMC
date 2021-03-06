
PMC_MakeGuardInfBLUFOR_USMC_ALL =
{
	_grp = objNull;
	waitUntil
	{
		_grp = createGroup (west);
		!(isNull _grp);
	};

	"CUP_B_USMC_Soldier_SL" createUnit [_respawnpoint, _grp, "", (random 1), "LIEUTENANT"];
	"CUP_B_USMC_Soldier_TL" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_B_USMC_Soldier_MG" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_B_USMC_Medic" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_B_USMC_Soldier_MG" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"CUP_B_USMC_Soldier" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_B_USMC_Soldier_GL" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_B_USMC_Soldier_AT" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"USMCD_Soldier_AA" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"CUP_B_USMC_Soldier_AT" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"USMCD_Soldier_Engineer" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"CUP_B_USMC_Sniper_M40A3" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"CUP_B_USMC_Sniper_M40A3" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];

	// increment the created units count
	PMC_blufor = PMC_blufor + 13;
	publicVariable "PMC_blufor";

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	_grp setBehaviour "AWARE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "NORMAL";
	_grp setFormation "WEDGE";

	// for long distance waypoint plotting
	_wp = [_grp,_targetpoint] call compile preProcessFileLineNumbers "PMC\PMC_plotWaypoints.sqf";
	_wp = _wp + 1;

	_grp addWaypoint [_targetpoint, _waypointRanPosit];
	[_grp, _wp] setWaypointBehaviour "AWARE";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "NORMAL";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "GUARD";
};
