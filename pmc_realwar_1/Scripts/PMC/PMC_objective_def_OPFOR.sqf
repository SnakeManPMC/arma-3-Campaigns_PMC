/*

Big defenses for the PLAYER mission objective location.

*/

private
[
	"_a",
	"_abox1",
	"_abox2",
	"_abox3",
	"_DefenseLayers",
	"_grp",
	"_myVec",
	"_p",
	"_respawnpoint",
	"_targetpoint",
	"_tent1",
	"_tent2",
	"_vcl",
	"_waypointRanPosit",
	"_wp"
];

// grab the objective location from parameter
_targetpoint = _this select 0;
_respawnpoint = _targetpoint;

	// OPFOR stuff

_all_OPFOR_units =
[
	"SoldierEAA",
	"CUP_O_RU_Soldier_AT",
	"CUP_O_RU_Soldier",
	"CUP_O_RU_Soldier_GL",
	"CUP_O_RU_Medic",
	"CUP_O_RU_Soldier_MG",
	"CUP_O_RU_Sniper",
	"CUP_O_RU_Soldier_SL"
];
_maxOPFORA = count PMC_opfor_vehicle_heavy;
_maxOPFORA2 = count PMC_opfor_vehicle_car_armed;
_maxOPFORB = count PMC_opfor_vehicle_car_unarmed;
_maxOPFORC = count PMC_opfor_helo_armed;

_PMC_MakeTankOPFOR =
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

	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 0) moveInCommander _vcl;
	(units _grp select 1) moveInGunner _vcl;
	(units _grp select 2) moveInDriver _vcl;

	// increment the created units count
	PMC_opfor = PMC_opfor + 3;
	publicVariable "PMC_opfor";

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	_grp setBehaviour "AWARE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	_grp addWaypoint [_targetpoint, _waypointRanPosit];
	[_grp, 1] setWaypointBehaviour "AWARE";
	[_grp, 1] setWaypointCombatMode "RED";
	[_grp, 1] setWaypointSpeed "FULL";
	[_grp, 1] setWaypointFormation "WEDGE";
	[_grp, 1] setWaypointType "GUARD";
};

_PMC_MakeTankOPFORHeavy =
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

	_grp addWaypoint [_targetpoint, _waypointRanPosit];
	[_grp, 1] setWaypointBehaviour "AWARE";
	[_grp, 1] setWaypointCombatMode "RED";
	[_grp, 1] setWaypointSpeed "FULL";
	[_grp, 1] setWaypointFormation "WEDGE";
	[_grp, 1] setWaypointType "GUARD";
};

_PMC_MakeTankOPFOR2 =
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

	_grp setBehaviour "AWARE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	_grp addWaypoint [_targetpoint, _waypointRanPosit];
	[_grp, 1] setWaypointBehaviour "AWARE";
	[_grp, 1] setWaypointCombatMode "RED";
	[_grp, 1] setWaypointSpeed "FULL";
	[_grp, 1] setWaypointFormation "WEDGE";
	[_grp, 1] setWaypointType "GUARD";
};

_PMC_MakeGuardInfOPFOR =
{
	_grp = objNull;
	waitUntil
	{
		_grp = createGroup (east);
		!(isNull _grp);
	};
	
	"CUP_O_RU_Soldier_SL" createUnit [_respawnpoint, _grp, "", (random 1), "LIEUTENANT"];
	"CUP_O_RU_Soldier_TL" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_O_RU_Soldier_GL" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
	"CUP_O_RU_Soldier_MG" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_O_RU_Soldier_AT" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
	"CUP_O_RU_Soldier_TL" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_O_RU_Soldier_GL" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	"CUP_O_RU_Soldier_MG" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"CUP_O_RU_Sniper" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];

	// increment the created units count
	PMC_opfor = PMC_opfor + 9;
	publicVariable "PMC_opfor";

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	_grp setBehaviour "AWARE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "NORMAL";
	_grp setFormation "WEDGE";

	_grp addWaypoint [_targetpoint, _waypointRanPosit];
	[_grp, 1] setWaypointBehaviour "AWARE";
	[_grp, 1] setWaypointCombatMode "RED";
	[_grp, 1] setWaypointSpeed "NORMAL";
	[_grp, 1] setWaypointFormation "WEDGE";
	[_grp, 1] setWaypointType "GUARD";

};

_PMC_MakeSniperOPFOR =
{
	_grp = objNull;
	waitUntil
	{
		_grp = createGroup (east);
		!(isNull _grp);
	};
	
	"CUP_O_RU_Soldier_SL" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
	"CUP_O_RU_Sniper" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];

	// increment the created units count
	PMC_opfor = PMC_opfor + 2;
	publicVariable "PMC_opfor";

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	_grp setBehaviour "STEALTH";
	_grp setCombatMode "YELLOW";
	_grp setSpeedMode "LIMITED";
	_grp setFormation "WEDGE";

	_wp = 1;

	// waypoints, we add couple to make patrol area
	// first
	_grp addWaypoint [_targetpoint, _waypointRanPosit*5];
	[_grp, _wp] setWaypointBehaviour "STEALTH";
	[_grp, _wp] setWaypointCombatMode "YELLOW";
	[_grp, _wp] setWaypointSpeed "LIMITED";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "MOVE";
	[_grp, _wp] setWaypointTimeout [60*2, 0, 60*20];

	// second
	_grp addWaypoint [_targetpoint, _waypointRanPosit*5];
	[_grp, (_wp + 1)] setWaypointType "MOVE";
	[_grp, (_wp + 1)] setWaypointTimeout [60*2, 0, 60*20];

	// cycle
	_grp addWaypoint [_targetpoint, 0];
	[_grp, (_wp + 2)] setWaypointType "CYCLE";

};

_PMC_MakeSpecOpsOPFOR =
{
	_grp = objNull;
	waitUntil
	{
		_grp = createGroup (east);
		!(isNull _grp);
	};
	
	"CUP_O_RUS_SpecOps" createUnit [_respawnpoint, _grp, "", 1, "SERGEANT"];
	"CUP_O_RUS_SpecOps" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_O_RUS_SpecOps" createUnit [_respawnpoint, _grp, "", 1, "CORPORAL"];
	"CUP_O_RUS_SpecOps" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"CUP_O_RUS_SpecOps" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];
	"CUP_O_RUS_SpecOps" createUnit [_respawnpoint, _grp, "", 1, "PRIVATE"];

	_vcl = "CUP_C_Ural_Civ_01" createVehicle _respawnpoint;
	(units _grp select 0) assignAsDriver _vcl;
	{(units _grp select _x) assignAsCargo _vcl} forEach [1,2,3,4,5];

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

	_wp = 1;

	// waypoints, we add couple to make patrol area
	// first
	_grp addWaypoint [_targetpoint, _waypointRanPosit*5];
	[_grp, _wp] setWaypointBehaviour "STEALTH";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "LIMITED";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "MOVE";
	[_grp, _wp] setWaypointTimeout [60*2, 0, 60*20];

	// second
	_grp addWaypoint [_targetpoint, _waypointRanPosit*5];
	[_grp, (_wp + 1)] setWaypointType "MOVE";
	[_grp, (_wp + 1)] setWaypointTimeout [60*2, 0, 60*20];

	// cycle
	_grp addWaypoint [_targetpoint, 0];
	[_grp, (_wp + 2)] setWaypointType "CYCLE";
};

_PMC_MakeVehPatrolOPFOR =
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
	_wp = 1;
	_grp addWaypoint [_targetpoint, 1000];
	[_grp, _wp] setWaypointBehaviour "SAFE";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "FULL";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "MOVE";

	_wp = 2;
	// add one last for cycle, so if he survives, he does it all over again.
	_grp addWaypoint [_respawnpoint, 0];
	[_grp, _wp] setWaypointBehaviour "SAFE";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "FULL";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "CYCLE";
};

_PMC_MakeHeloOPFOR =
{
	_myVec = (PMC_opfor_helo_armed select round random (_maxOPFORC - 1));
	_vcl = createVehicle [_myVec, _respawnpoint, [], 0, "FLY"];
//	_vcl = _myVec createVehicle _respawnpoint;
	_vcl setPos _respawnpoint;
	_grp = objNull;
	waitUntil
	{
		_grp = createGroup (east);
		!(isNull _grp);
	};

	if (_myVec in ["CUP_O_Mi8_RU","CUP_O_Ka52_RU"]) then 
	{
		"CUP_O_RU_Pilot" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
		(units _grp select 0) moveInDriver _vcl;
	}
	else
	{
		"CUP_O_RU_Pilot" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
		"CUP_O_RU_Pilot" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
		(units _grp select 0) moveInDriver _vcl;
		(units _grp select 1) moveInGunner _vcl;
	};

	// these to function somehow nicely, please :(
	{_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}]} forEach units _grp;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	_grp setBehaviour "COMBAT";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	_wp = 1;

	_grp addWaypoint [_targetpoint, _waypointRanPosit];
	[_grp, _wp] setWaypointBehaviour "COMBAT";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "FULL";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "GUARD";
};

_PMC_CreateOPFORHQstuff =
{
	// ugly hack to get position :)
	_p = _targetpoint;

	"FlagCarrierRU" createVehicle _p;
	"Land_Fire" createVehicle _p;

	//_ftent = "MASH" createVehicle [(_p select 0),(_p select 1)+20];
	//_ftent setDir 180;
	_tent1 = "ACamp" createVehicle [(_p select 0)-20,(_p select 1)];
	_tent1 setDir (random 360);
	_tent2 = "ACamp" createVehicle [(_p select 0)+20,(_p select 1)];
	_tent2 setDir (random 360);

	_abox1 = "CUP_RUBasicAmmunitionBox" createVehicle [(_p select 0)+25,(_p select 1)+25];
	_abox1 setDir (random 360);
	_abox2 = "CUP_RUSpecialWeaponsBox" createVehicle [(_p select 0)+25,(_p select 1)+25];
	_abox2 setDir (random 360);
	_abox3 = "CUP_RUBasicWeaponsBox" createVehicle [(_p select 0)+25,(_p select 1)+25];
	_abox3 setDir (random 360);
	"HeliH" createVehicle [(_p select 0)-40,(_p select 1)-40];
};

// our waypoints random circle range
_waypointRanPosit = 500;

// create some junk in the objective
[] call _PMC_CreateOPFORHQstuff;

// check that we dont create too many defense guys.
_DefenseLayers = 1;
if ( (count PMC_OPforlist) < 100) then
{
	_DefenseLayers = (random 5);
};

// create units
_a = 0;
while { _a < _DefenseLayers } do
{
	_a = _a + 1;

	[] call _PMC_MakeTankOPFOR;
	sleep 2;
	[] call _PMC_MakeGuardInfOPFOR;
	sleep 0.5;
	[] call _PMC_MakeGuardInfOPFOR;
	sleep 0.5;
	[] call _PMC_MakeGuardInfOPFOR;
	[] call _PMC_MakeTankOPFORHeavy;
	sleep 2;
	[] call _PMC_MakeSniperOPFOR;
	[] call _PMC_MakeSpecOpsOPFOR;
	[] call _PMC_MakeVehPatrolOPFOR;
	sleep 2;
	[] call _PMC_MakeHeloOPFOR;
	sleep 2;
};

// debug
if (pmcdb) then
{
	player sideChat format["%1 objective defenses created: %2 cycles, PMC_OPforlist: %3",_targetpoint,_a,(count PMC_OPforlist)];
};
