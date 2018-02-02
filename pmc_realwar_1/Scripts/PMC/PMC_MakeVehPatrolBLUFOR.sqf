
PMC_MakeVehPatrolBLUFOR =
{
	_myVec = (PMC_blufor_vehicle_soft select round random (_maxBLUFORA2 - 1));
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
	(units _grp select 0) moveInDriver _vcl;
	(units _grp select 1) moveInGunner _vcl;

	// increment the created units count
	PMC_blufor = PMC_blufor + 2;
	publicVariable "PMC_blufor";

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
	while {count PMC_patrolBLUFORtargets > 0} do
	{
		_ran = (floor random _ptNum);
		_tlogic = (PMC_patrolBLUFORtargets select _ran);
		PMC_patrolBLUFORtargets = PMC_patrolBLUFORtargets - [_tlogic];
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
