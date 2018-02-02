// _PMC_MakeTankBLUFOR
PMC_MakeTankBLUFOR =
{
	_myVec = (PMC_blufor_vehicle_heavy select round random (_maxBLUFORA - 1));
	_vcl = _myVec createVehicle _respawnpoint;
	_vcl setPos _respawnpoint;
	_grp = objNull;
	waitUntil
	{
		_grp = createGroup (west);
		!(isNull _grp);
	};

	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 0) moveInCommander _vcl;
	(units _grp select 1) moveInGunner _vcl;
	(units _grp select 2) moveInDriver _vcl;

	// increment the created units count
	PMC_blufor = PMC_blufor + 3;
	publicVariable "PMC_blufor";

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	_grp setBehaviour "AWARE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	// for long distance waypoint plotting
	_wp = [_grp,_targetpoint] call compile preProcessFileLineNumbers "PMC\PMC_plotWaypoints.sqf";
	_wp = _wp + 1;

	_grp addWaypoint [_targetpoint, _waypointRanPosit];
	[_grp, _wp] setWaypointBehaviour "AWARE";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "FULL";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "GUARD";
};
