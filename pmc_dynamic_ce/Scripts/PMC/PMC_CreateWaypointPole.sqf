
//call compile preprocessFileLineNumbers "PMC\PMC_CreateWaypointPole.sqf";

PMC_CreateWaypointPole =
{
	private _grp = _this select 0;
	private _myPole = selectRandom PMC_targets;

	_grp addWaypoint [(getPos _myPole), 0];
	[_grp, 1] setWaypointBehaviour "SAFE";
	[_grp, 1] setWaypointCombatMode "YELLOW";
	[_grp, 1] setWaypointSpeed "FULL";
	[_grp, 1] setWaypointFormation "WEDGE";
	[_grp, 1] setWaypointType "MOVE";
	[_grp, 1] setWaypointTimeout [0, 0, 0];
	[_grp, 1] setWaypointCompletionRadius 50;
};
