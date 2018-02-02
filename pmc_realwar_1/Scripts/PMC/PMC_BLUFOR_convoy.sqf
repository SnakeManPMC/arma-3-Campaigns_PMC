/*

PMC BLUFOR convoy script

*/

private
[
	"_a",
	"_grp",
	"_myVec",
	"_p",
	"_ptNum",
	"_ran",
	"_respawnpoint",
	"_targetNum",
	"_targetpoint",
	"_tlogic",
	"_vcl"
];

_maxBLUFORA = count PMC_blufor_vehicle_heavy;
_maxBLUFORA2 = count PMC_blufor_vehicle_soft;
_maxBLUFORB = count PMC_blufor_vehicle_car_unarmed;
_maxBLUFORB2 = count PMC_blufor_vehicle_car_armed;
_maxBLUFORC = count PMC_blufor_helo_armed;

_PMC_CreateConvoyVehicles =
{
	_myVec = objNull;
	_vcl = objNull;
	_grp = objNull;
	waitUntil
	{
		_grp = createGroup (west);
		!(isNull _grp);
	};

	// first vehicle
	_myVec = (PMC_blufor_vehicle_heavy select round random (_maxBLUFORA - 1));
	_vcl = _myVec createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	
	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "LIEUTENANT"];
	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	(units _grp select 0) moveInCommander _vcl;
	(units _grp select 1) moveInGunner _vcl;
	(units _grp select 2) moveInDriver _vcl;

	// second vehicle
	_myVec = (PMC_blufor_vehicle_heavy select round random (_maxBLUFORA - 1));
	_vcl = _myVec createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-40];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	(units _grp select 3) moveInCommander _vcl;
	(units _grp select 4) moveInGunner _vcl;
	(units _grp select 5) moveInDriver _vcl;

	// third vehicle
	_myVec = (PMC_blufor_vehicle_soft select round random (_maxBLUFORA2 - 1));
	_vcl = _myVec createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-80];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	(units _grp select 6) moveInDriver _vcl;
	(units _grp select 7) moveInGunner _vcl;

	// fourth vehicle
	_myVec = (PMC_blufor_vehicle_soft select round random (_maxBLUFORA2 - 1));
	_vcl = _myVec createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-120];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 8) moveInDriver _vcl;
	(units _grp select 9) moveInGunner _vcl;

	// fifth vehicle (important vehicle with gunner)
	_myVec = (PMC_blufor_vehicle_car_armed select round random (_maxBLUFORB2 - 1));
	_vcl = _myVec createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-160];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	"CUP_B_USMC_Soldier" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_B_USMC_Soldier_SL" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 10) moveInDriver _vcl;
	(units _grp select 11) moveInGunner _vcl;

	// sixth vehicle
	_myVec = (PMC_blufor_vehicle_car_unarmed select round random (_maxBLUFORB - 1));
	_vcl = _myVec createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-200];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	"CUP_B_USMC_Soldier" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_B_USMC_Soldier_SL" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 12) moveInDriver _vcl;
	(units _grp select 13) moveInCargo _vcl;

	// seventh vehicle (important vehicle with gunner)
	_myVec = (PMC_blufor_vehicle_car_armed select round random (_maxBLUFORB2 - 1));
	_vcl = _myVec createVehicle [(_respawnpoint select 0),(_respawnpoint select 1)-240];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	"CUP_B_USMC_Soldier" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_B_USMC_Soldier_SL" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 14) moveInDriver _vcl;
	(units _grp select 15) moveInGunner _vcl;

	// eight, trailing vehicle (lets make it heavy)
	_myVec = (PMC_blufor_vehicle_heavy select round random (_maxBLUFORA - 1));
	_vcl = _myVec createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	
	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_B_USMC_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 16) moveInCommander _vcl;
	(units _grp select 17) moveInGunner _vcl;
	(units _grp select 18) moveInDriver _vcl;

	// new one, Gunship helo!
	// nine, airsupport
	_vcl = createVehicle ["CUP_B_AH1Z_USMC", _respawnpoint, [], 0, "FLY"];
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	
	"CUP_B_USMC_Pilot" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"CUP_B_USMC_Pilot" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	(units _grp select 19) moveInGunner _vcl;
	(units _grp select 20) moveInDriver _vcl;

	// increment the created units count
	PMC_blufor = PMC_blufor + 21;
	publicVariable "PMC_blufor";

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	// do these need to be set, before waypoint 0 hmm?
	_grp setFormation "COLUMN";
	_grp setCombatMode "YELLOW";
	_grp setSpeedMode "NORMAL";
	_grp setBehaviour "SAFE";

	// selecting the waypoint locations
	_ptNum = count PMC_targets;
	_PMC_convoyBLUFORtargets = [];
	_PMC_convoyBLUFORtargets = PMC_targets;

	// do the random patrolling waypoints
	_wp = 0;
	while {count _PMC_convoyBLUFORtargets > 0} do
	{
		// choose random target.
		_ran = (floor random _ptNum);
		_tlogic = (_PMC_convoyBLUFORtargets select _ran);
		// remove it from the temp array so it wont be chosen again.
		_PMC_convoyBLUFORtargets = _PMC_convoyBLUFORtargets - [_tlogic];
		// get its coordinates.
		_targetpoint = getPos _tlogic;
		_ptNum = _ptNum - 1;
		_wp = _wp + 1;

		// add waypoint to this target.
		_grp addWaypoint [_targetpoint, 0];
		[_grp, _wp] setWaypointBehaviour "SAFE";
		[_grp, _wp] setWaypointCombatMode "GREEN";
		[_grp, _wp] setWaypointSpeed "NORMAL";
		[_grp, _wp] setWaypointFormation "COLUMN";
		[_grp, _wp] setWaypointType "MOVE";
//		[_grp, _wp] setWaypointTimeout [min, mid, max];
		[_grp, _wp] setWaypointTimeout [60*2, 0, 60*20];
	};

	// add one last for cycle, so if he survives, he does it all over again.
	_wp = _wp + 1;
	_grp addWaypoint [_respawnpoint, 0];
	[_grp, _wp] setWaypointBehaviour "SAFE";
	[_grp, _wp] setWaypointCombatMode "GREEN";
	[_grp, _wp] setWaypointSpeed "NORMAL";
	[_grp, _wp] setWaypointFormation "COLUMN";
	[_grp, _wp] setWaypointType "CYCLE";

	// return the group name
	_grp
};

while {true} do
{
	// choose one of the random starting locations
	_respawnpoint = ["BLUFOR"] call PMC_SelectStartPosit;

	_grp = [] call _PMC_CreateConvoyVehicles;

	sleep 10;
	// we wait until the convoy group is completely dead.
	waitUntil
	{
		sleep 10;
		((count units _grp) == 0);
	};
	// then we delete its group.
	waitUntil
	{
		deleteGroup _grp;
		(isNull _grp);
	};
	// and then we start the whole damn loop all over again :)
};
