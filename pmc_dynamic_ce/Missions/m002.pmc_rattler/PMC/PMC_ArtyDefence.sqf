
private _pos = getPos (_this select 0);

private _grp = [_pos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Armored" >> "CUP_O_RU_TankPlatoon")] call BIS_fnc_spawnGroup;
{_x addEventHandler [{killed}, {_this execVM "PMC\PMC_killed.sqf"}]} forEach units _grp;

_grp setbehaviour "aware";
_grp setcombatmode "yellow";
_grp setformation "line";
_grp setspeedmode "limited";

// random looping move waypoint with 300 meter radius
_grp addWaypoint [_pos, 300];
[_grp, 1] setWaypointBehaviour "SAFE";
[_grp, 1] setWaypointCombatMode "YELLOW";
[_grp, 1] setWaypointSpeed "LIMITED";
[_grp, 1] setWaypointFormation "WEDGE";
[_grp, 1] setWaypointType "SENTRY";
[_grp, 1] setWaypointCompletionRadius 50;
