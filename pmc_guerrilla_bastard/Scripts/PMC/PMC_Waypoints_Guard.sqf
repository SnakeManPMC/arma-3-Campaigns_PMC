/*
	Create waypoints: guard

Syntax:
[group, targetpoint, waypoint_radius] execVM "PMC\PMC_Waypoints_Guard.sqf";

Requires:
-

Returns:
-

*/

PMC_Waypoints_Guard =
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

	_grp setbehaviour "AWARE";
	_grp setcombatmode "RED";
	_grp setspeedmode "FULL";
	_grp setformation "WEDGE";

	_grp addWaypoint [_targetpoint, _waypointRanPosit];
	[_grp, 1] setWaypointBehaviour "AWARE";
	[_grp, 1] setWaypointCombatMode "RED";
	[_grp, 1] setWaypointSpeed "FULL";
	[_grp, 1] setWaypointFormation "WEDGE";
	[_grp, 1] setWaypointType "GUARD";
	[_grp, 1] setWaypointCompletionRadius 50;
};
