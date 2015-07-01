/*
	Waypoints Patrol

Syntax:
[group, targetpoint, waypointradius] execVM "PMC\PMC_Waypoints_Patrol.sqf";

Requires:
-

Returns:
-

*/

PMC_Waypoints_Patrol =
{
	private
	[
		"_grp",
		"_targetpoint",
		"_waypointRanPosit"
	];
	_grp = _this select 0;
	_targetpoint = _this select 1;
	_waypointRanPosit = _this select 2;

	_grp setbehaviour "SAFE";
	_grp setcombatmode "RED";
	_grp setspeedmode "LIMITED";
	_grp setformation "WEDGE";

	// waypoints, we add couple to make patrol area
	// first North West
	_grp addWaypoint [ [(_targetpoint select 0) + _waypointRanPosit, (_targetpoint select 1) - _waypointRanPosit, 0], _waypointRanPosit*2];
	[_grp, 1] setWaypointBehaviour "SAFE";
	[_grp, 1] setWaypointCombatMode "RED";
	[_grp, 1] setWaypointSpeed "LIMITED";
	[_grp, 1] setWaypointFormation "WEDGE";
	[_grp, 1] setWaypointType "MOVE";
	[_grp, 1] setWaypointTimeout [60*2, 60*10, 60*20]; // min, mid, max
	[_grp, 1] setWaypointCompletionRadius 50;

	// second South East
	_grp addWaypoint [ [(_targetpoint select 0) - _waypointRanPosit, (_targetpoint select 1) + _waypointRanPosit, 0], _waypointRanPosit*2];
	[_grp, 2] setWaypointType "MOVE";
	[_grp, 2] setWaypointTimeout [60*2, 60*10, 60*20];
	[_grp, 2] setWaypointCompletionRadius 50;

	// third South West
	_grp addWaypoint [ [(_targetpoint select 0) - _waypointRanPosit, (_targetpoint select 1) - _waypointRanPosit, 0], _waypointRanPosit*2];
	[_grp, 3] setWaypointType "MOVE";
	[_grp, 3] setWaypointTimeout [60*2, 60*10, 60*20];
	[_grp, 3] setWaypointCompletionRadius 50;

	// fourth North East
	_grp addWaypoint [ [(_targetpoint select 0) + _waypointRanPosit, (_targetpoint select 1) + _waypointRanPosit, 0], _waypointRanPosit*2];
	[_grp, 4] setWaypointType "MOVE";
	[_grp, 4] setWaypointTimeout [60*2, 60*10, 60*20];
	[_grp, 4] setWaypointCompletionRadius 50;

	// cycle
	_grp addWaypoint [ [(_targetpoint select 0) + _waypointRanPosit, (_targetpoint select 1) - _waypointRanPosit, 0], 0];
	[_grp, 5] setWaypointType "CYCLE";
	[_grp, 5] setWaypointTimeout [60*2, 60*10, 60*20];
	[_grp, 5] setWaypointCompletionRadius 50;
};
