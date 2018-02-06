
private ["_p","_respawnpoint","_vcl","_grp"];

_p = _this select 1;
_respawnpoint = getMarkerPos "spawn";
// debug
// B_Plane_CAS_01_F
// CUP_B_A10_AT_USA
// CUP_B_F35B_LGB_USMC
//_vcl = createVehicle ["CUP_B_A10_AT_USA", _respawnpoint, [], 0, "FLY"];
//_vcl = createVehicle ["B_Plane_CAS_01_F", _respawnpoint, [], 0, "FLY"];
_vcl = createVehicle ["CUP_B_F35B_LGB_USMC", _respawnpoint, [], 0, "FLY"];
_grp = createGroup west;
waitUntil {!(isNull _grp)};

// debug
// B_Pilot_F
// CUP_B_US_Pilot
"CUP_B_US_Pilot" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
//"B_Pilot_F" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
(units _grp select 0) moveInDriver _vcl;

(units _grp select 0) sideChat "Wilco, on my way.";

// make them invicible because arma3
_vcl allowDamage false;
(units _grp select 0) allowDamage false;

_grp setbehaviour "COMBAT";
_grp setcombatmode "RED";
_grp setspeedmode "NORMAL";

// first just in case one simple move, no fuss, no huss
_vcl move _p;

// small wait so he will start to move
sleep 10;

// wait until he is ready, DEAD or close to assault target.
waitUntil
{
	sleep 2;
	( (!alive _vcl) || (unitReady _vcl) || (_vcl distance _p < 500) );
};

(units _grp select 0) sideChat "On station, starting to hunt targets, over.";

// waypoints, we add couple to make patrol area
_grp addWaypoint [_p, 0];
// search and destroy waypoint
[_grp, 1] setWaypointType "SAD";
[_grp, 1] setWaypointCompletionRadius 200;

_grp addWaypoint [_p, 0];
[_grp, 2] setWaypointType "SAD";
[_grp, 2] setWaypointCompletionRadius 200;

_grp addWaypoint [_p, 0];
[_grp, 3] setWaypointType "MOVE";
[_grp, 3] setWaypointCompletionRadius 200;

sleep 5;

// just exit, no have any cool radio calls for player notifying him... but lets just exit from this script
if (!alive _vcl) exitWith
{
};

// tricky checks if they have completed their "mission"
waitUntil
{
	// very relaxed
	sleep 10;
	// they are:
	// all dead
	// leader ready
	( (!canMove _vcl) || (unitReady leader _grp) );
};

// death check, vehicle is alive or dead
if ( (!alive _vcl) || (!canMove _vcl) ) exitWith
{
};

// move back to the starting point
_vcl move _respawnpoint;

(units _grp select 0) sideChat "We are winchester at this time, return to base.";

// small wait so he will start to move
sleep 10;

// wait until he is ready, DEAD or close to home base.
waitUntil
{
	sleep 2;
	( (!alive _vcl) || (unitReady _vcl) || (_vcl distance _respawnpoint < 100) );
};

// just exit, no have any cool radio calls for player notifying him... but lets just exit from this script
if (!alive _vcl) exitWith
{
};

// wait and then delete the crew, the vehicle and the strike team
sleep 5;

(units _grp select 0) sideChat "Landing, mission complete, out.";

{
	deleteVehicle _x;
} forEach units _grp;
deleteVehicle _vcl;
