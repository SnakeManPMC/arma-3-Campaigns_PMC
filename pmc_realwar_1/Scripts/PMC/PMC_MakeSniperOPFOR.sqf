
PMC_MakeSniperOPFOR =
{
	_grp = objNull;
	waitUntil
	{
		_grp = createGroup (east);
		!(isNull _grp);
	};

	"CUP_O_RU_Soldier_SL" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
	"CUP_O_RU_Sniper" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];

	// increment the created units count
	PMC_opfor = PMC_opfor + 2;
	publicVariable "PMC_opfor";

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	_grp setBehaviour "AWARE";
	_grp setCombatMode "YELLOW";
	_grp setSpeedMode "LIMITED";
	_grp setFormation "WEDGE";

	_wp = 1;

	// waypoints, we add couple to make patrol area
	// first
	_grp addWaypoint [_targetpoint, _waypointRanPosit*5];
	[_grp, _wp] setWaypointBehaviour "STEALTH";
	[_grp, _wp] setWaypointCombatMode "YELLOW";
	[_grp, _wp] setWaypointSpeed "LIMITED";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "MOVE";
//	[_grp, _wp] setWaypointTimeout [min, mid, max];
	[_grp, _wp] setWaypointTimeout [60*2, 0, 60*20];

	// second
	_grp addWaypoint [_targetpoint, _waypointRanPosit*5];
	[_grp, (_wp + 1)] setWaypointType "MOVE";
	[_grp, (_wp + 1)] setWaypointTimeout [60*2, 0, 60*20];

	// cycle
	_grp addWaypoint [_targetpoint, 0];
	[_grp, (_wp + 2)] setWaypointType "CYCLE";

	// WIP transport stuff
	[_grp,_respawnpoint,_targetpoint,"East"] execVM "PMC\PMC_TEMP_infTransport.sqf";
};
