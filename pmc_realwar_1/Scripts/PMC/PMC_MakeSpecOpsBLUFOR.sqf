
PMC_MakeSpecOpsBLUFOR =
{
	_grp = objNull;
	waitUntil
	{
		_grp = createGroup (west);
		!(isNull _grp);
	};

	"CUP_B_FR_Soldier_AR" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
	"CUP_B_FR_Soldier_Marksman" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_B_FR_Soldier_Light" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_B_FR_Saboteur" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"CUP_B_FR_Soldier_Exp" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];

	// increment the created units count
	PMC_blufor = PMC_blufor + 5;
	publicVariable "PMC_blufor";

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	_grp setBehaviour "STEALTH";
	_grp setCombatMode "RED";
	_grp setSpeedMode "LIMITED";
	_grp setFormation "WEDGE";

	// waypoints, we add couple to make patrol area
	// first
	_grp addWaypoint [_targetpoint, _waypointRanPosit*5];
	[_grp, 1] setWaypointBehaviour "STEALTH";
	[_grp, 1] setWaypointCombatMode "RED";
	[_grp, 1] setWaypointSpeed "LIMITED";
	[_grp, 1] setWaypointFormation "WEDGE";
	[_grp, 1] setWaypointType "MOVE";
//	[_grp, 1] setWaypointTimeout [min, mid, max];
	[_grp, 1] setWaypointTimeout [60*2, 0, 60*20];

	// second
	_grp addWaypoint [_targetpoint, _waypointRanPosit*5];
	[_grp, 2] setWaypointType "MOVE";
	[_grp, 2] setWaypointTimeout [60*2, 0, 60*20];

	// cycle
	_grp addWaypoint [_targetpoint, 0];
	[_grp, 3] setWaypointType "CYCLE";

	// WIP transport stuff
	[_grp,_respawnpoint,_targetpoint,"West"] execVM "PMC\PMC_TEMP_infTransport.sqf";
};
