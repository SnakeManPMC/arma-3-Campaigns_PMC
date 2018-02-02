
PMC_MakeTankOPFORHeavy =
{
	_myVec = (PMC_opfor_vehicle_heavy select round random (_maxOPFORA - 1));
	_vcl = _myVec createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	_vcl setPos _respawnpoint;
	_grp = objNull;
	waitUntil
	{
		_grp = createGroup (east);
		!(isNull _grp);
	};

	// first vehicle
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "LIEUTENANT"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	(units _grp select 0) moveInCommander _vcl;
	(units _grp select 1) moveInGunner _vcl;
	(units _grp select 2) moveInDriver _vcl;

	// second vehicle
	_vcl = objNull;
	_vcl = _myVec createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	(units _grp select 3) moveInCommander _vcl;
	(units _grp select 4) moveInGunner _vcl;
	(units _grp select 5) moveInDriver _vcl;

	// third vehicle
	_vcl = objNull;
	_vcl = _myVec createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	(units _grp select 6) moveInCommander _vcl;
	(units _grp select 7) moveInGunner _vcl;
	(units _grp select 8) moveInDriver _vcl;

	// fourth vehicle
	_vcl = objNull;
	_vcl = _myVec createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 9) moveInCommander _vcl;
	(units _grp select 10) moveInGunner _vcl;
	(units _grp select 11) moveInDriver _vcl;

	// increment the created units count
	PMC_opfor = PMC_opfor + 12;
	publicVariable "PMC_opfor";

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

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
