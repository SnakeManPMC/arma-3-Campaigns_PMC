
PMC_MakeGuardInfOPFOR =
{
	_grp = objNull;
	waitUntil
	{
		_grp = createGroup (east);
		!(isNull _grp);
	};

	"CUP_O_RU_Soldier_SL" createUnit [_respawnpoint, _grp, "", (random 1), "LIEUTENANT"];
	"CUP_O_RU_Soldier_TL" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_O_RU_Soldier_GL" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_O_RU_Soldier_MG" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_O_RU_Soldier_AT" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"CUP_O_RU_Soldier_TL" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_O_RU_Soldier_GL" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_O_RU_Soldier_MG" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"CUP_O_RU_Sniper" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];

	// increment the created units count
	PMC_opfor = PMC_opfor + 9;
	publicVariable "PMC_opfor";

	// random SoldierEAA
	if ((random 100) < 15) then
	{
		"SoldierEAA" createUnit [_respawnpoint, _grp, "", 0, "PRIVATE"];
		// increment the created units count
		PMC_opfor = PMC_opfor + 1;
		publicVariable "PMC_opfor";
	};

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

	// infantry transport
	[_grp,_respawnpoint,_targetpoint,"East"] execVM "PMC\PMC_TEMP_infTransport.sqf";
};
