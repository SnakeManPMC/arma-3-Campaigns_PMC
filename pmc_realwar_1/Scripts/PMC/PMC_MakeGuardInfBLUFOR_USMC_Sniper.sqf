
PMC_MakeGuardInfBLUFOR_USMC_Sniper =
{
	_grp = objNull;
	waitUntil
	{
		_grp = createGroup (west);
		!(isNull _grp);
	};

	"CUP_B_USMC_Sniper_M40A3" createUnit [_respawnpoint, _grp, "", 1, "LIEUTENANT"];
	"CUP_B_USMC_Sniper_M40A3" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];

	// increment the created units count
	PMC_blufor = PMC_blufor + 2;
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
