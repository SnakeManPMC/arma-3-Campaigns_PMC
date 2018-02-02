
PMC_MakeVehPatrolOPFOR =
{
	_myVec = (PMC_opfor_vehicle_car_armed select round random (_maxOPFORA2 - 1));
	_vcl = _myVec createVehicle _respawnpoint;
	_vcl setPos _respawnpoint;
	_grp = objNull;
	waitUntil
	{
		_grp = createGroup (east);
		!(isNull _grp);
	};

	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	(units _grp select 0) moveInDriver _vcl;
	(units _grp select 1) moveInGunner _vcl;

	// increment the created units count
	PMC_opfor = PMC_opfor + 2;
	publicVariable "PMC_opfor";

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	_grp setBehaviour "SAFE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	// do the random patrolling waypoints
	_wp = 0;
	while {count _PMC_patrolOPFORtargets > 0} do
	{
		_ran = (floor random _ptNum);
		_tlogic = (_PMC_patrolOPFORtargets select _ran);
		_PMC_patrolOPFORtargets = _PMC_patrolOPFORtargets - [_tlogic];
		_targetpoint = getPos _tlogic;
		_ptNum = _ptNum - 1;
		_wp = _wp + 1;

		_grp addWaypoint [_targetpoint, 0];
		[_grp, _wp] setWaypointBehaviour "SAFE";
		[_grp, _wp] setWaypointCombatMode "RED";
		[_grp, _wp] setWaypointSpeed "FULL";
		[_grp, _wp] setWaypointFormation "WEDGE";
		[_grp, _wp] setWaypointType "MOVE";
	};

	// add one last for cycle, so if he survives, he does it all over again.
	_grp addWaypoint [_respawnpoint, 0];
	[_grp, _wp] setWaypointBehaviour "SAFE";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "FULL";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "CYCLE";

//	player sideChat format["just did patroltargets _wp: %1 for _grp: %2",_wp,_grp];
};
