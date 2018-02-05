/*

	OPFOR stuff for PMC Cmp1 mission 15 :)

*/
private
[
	"_myVec",
	"_vcl",
	"_grp",
	"_wp",
	"_waypointRanPosit",
	"_targetNum",
	"_ran",
	"_tlogic",
	"_targetpoint",
	"_respawnpoint",
	"_rand"
];

PMC_opfor_vehicle_heavy = ["CUP_O_BMP2_CHDKZ","CUP_O_BMP2_CHDKZ","CUP_O_ZSU23_ChDKZ","CUP_O_T72_RU","CUP_O_T72_RU"];
PMC_opfor_vehicle_car_armed = ["CUP_O_UAZ_AGS30_RU","CUP_O_UAZ_MG_CHDKZ","CUP_O_BRDM2_CHDKZ","CUP_O_BRDM2_ATGM_CHDKZ"];
PMC_opfor_vehicle_car_unarmed = ["CUP_O_Ural_Repair_CHDKZ","CUP_O_Ural_Reammo_CHDKZ","CUP_O_Ural_Refuel_CHDKZ","CUP_C_Ural_Civ_01","CUP_O_Ural_Open_CHDKZ","CUP_O_UAZ_Unarmed_RU"];
PMC_opfor_helo_armed = ["CUP_O_Mi8_RU","CUP_O_Mi8_RU","CUP_O_Ka52_RU"];
_all_OPFOR_units = ["CUP_O_RU_Soldier_SL","SoldierEAA","CUP_O_RU_Soldier_MG","CUP_O_RU_Soldier_AT","CUP_O_RU_Sniper","CUP_O_RU_Medic","CUP_O_RU_Soldier_GL","CUP_O_RU_Soldier"];
_maxOPFORA = count PMC_opfor_vehicle_heavy;
_maxOPFORA2 = count PMC_opfor_vehicle_car_armed;
_maxOPFORB = count PMC_opfor_vehicle_car_unarmed;
_maxOPFORC = count PMC_opfor_helo_armed;

_PMC_MakeTankOPFOR =
{
	_myVec = (PMC_opfor_vehicle_heavy select round random (_maxOPFORA - 1));
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
	"CUP_O_RU_Crew" createUnit [_respawnpoint, _grp, "", (random 1), "PRIVATE"];
	(units _grp select 0) moveInCommander _vcl;
	(units _grp select 1) moveInGunner _vcl;
	(units _grp select 2) moveInDriver _vcl;

	// these to function somehow nicely, please :(
	{_x allowFleeing 0} forEach units _grp;
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	_grp setBehaviour "AWARE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	_wp = 0;
	_grp addWaypoint [_targetpoint, _waypointRanPosit];
	[_grp, _wp] setWaypointBehaviour "AWARE";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "FULL";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "GUARD";
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

	// these to function somehow nicely, please :(
	{_x allowFleeing 0} forEach units _grp;
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	_grp setBehaviour "AWARE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	_wp = 0;
	_grp addWaypoint [_targetpoint, _waypointRanPosit];
	[_grp, _wp] setWaypointBehaviour "AWARE";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "FULL";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "GUARD";
};

_PMC_MakeTankOPFOR2 =
{
	_myVec = (PMC_opfor_vehicle_car_armed select round random (_maxOPFORA2 - 1));
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
	(units _grp select 0) moveInDriver _vcl;
	(units _grp select 1) moveInGunner _vcl;

	// these to function somehow nicely, please :(
	{_x allowFleeing 0} forEach units _grp;
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	_grp setBehaviour "AWARE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	_wp = 0;
	_grp addWaypoint [_targetpoint, _waypointRanPosit];
	[_grp, _wp] setWaypointBehaviour "AWARE";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "FULL";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "GUARD";
};

_PMC_MakePatrolInfOPFOR =
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

	// these to function somehow nicely, please :(
	{_x allowFleeing 0} forEach units _grp;
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	_vcl = objNull;
	_vcl = "CUP_O_Ural_Open_CHDKZ" createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	(units _grp select 0) assignAsDriver _vcl;
	{
		(units _grp select _x) assignAsCargo _vcl;
	} forEach [1,2,3,4,5,6,7,8];

	_grp setBehaviour "SAFE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	_wp = 0;
	// waypoints, we add couple to make patrol area
	// first
	_grp addWaypoint [_targetpoint, _waypointRanPosit*2];
	[_grp, _wp] setWaypointBehaviour "SAFE";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "LIMITED";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "MOVE";
	[_grp, _wp] setWaypointTimeout [60*2, 0, 60*20];

	// second
	_grp addWaypoint [_targetpoint, _waypointRanPosit*2];
	[_grp, (_wp + 1)] setWaypointType "MOVE";
	[_grp, (_wp + 1)] setWaypointTimeout [60*2, 0, 60*20];

	// cycle
	_grp addWaypoint [_targetpoint, 0];
	[_grp, (_wp + 2)] setWaypointType "CYCLE";
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

	// these to function somehow nicely, please :(
	{_x allowFleeing 0} forEach units _grp;
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	_grp setBehaviour "AWARE";
	_grp setCombatMode "YELLOW";
	_grp setSpeedMode "LIMITED";
	_grp setFormation "WEDGE";

	_wp = 0;
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
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	(units _grp select 0) assignAsDriver _vcl;
	{(units _grp select _x) assignAsCargo _vcl} forEach [1,2,3,4,5];

	// these to function somehow nicely, please :(
	{_x allowFleeing 0} forEach units _grp;
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	_grp setBehaviour "SAFE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	_wp = 0;
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

_PMC_MakeHeloOPFOR =
{
	_myVec = (PMC_opfor_helo_armed select round random (_maxOPFORC - 1));
	_vcl = _myVec createVehicle _respawnpoint;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
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
	{_x allowFleeing 0} forEach units _grp;
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	_grp setBehaviour "COMBAT";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	_wp = 0;
	_grp addWaypoint [_targetpoint, _waypointRanPosit];
	[_grp, _wp] setWaypointBehaviour "COMBAT";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "FULL";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "GUARD";
};

_PMC_SelectOPFORStartPosit =
{
	// select one starting point
	_ran = (floor random (count PMC_opfor_starts));
	_tlogic = (PMC_opfor_starts select _ran);
	_respawnpoint = [(getPos _tlogic select 0)-50+random 100,(getPos _tlogic select 1)-50+random 100];

	// place the value to be returned like this at the end in function!
	_respawnpoint
};

// our waypoints random circle range
_waypointRanPosit = 25;

// select target location
_targetNum = count PMC_targets;
_PMC_tempOPFORtargets = [];
_PMC_tempOPFORtargets = PMC_targets;

// create units
while {true} do
{
	// if less than this many enemies, do more!
	if ((count opforlist < 30)) then
	{
		_ran = (floor random _targetNum);
		_tlogic = (_PMC_tempOPFORtargets select _ran);
		_targetpoint = getPos _tlogic;

		// choose one of the random starting locations
		_respawnpoint = [] call _PMC_SelectOPFORStartPosit;

		_rand = floor(random 7);
		switch (_rand) do
		{
			case 0:
		    	{
				[] call _PMC_MakeTankOPFOR;
		    	};
		    	case 1:
		    	{
				[] call _PMC_MakeTankOPFOR2;
		    	};
		    	case 2:
		    	{
				[] call _PMC_MakePatrolInfOPFOR;
		    	};
			case 3:
			{
				[] call _PMC_MakeTankOPFORHeavy;
			};
			case 4:
			{
				[] call _PMC_MakeSniperOPFOR;
			};
			case 5:
			{
				[] call _PMC_MakeSpecOpsOPFOR;
			};
			case 6:
			{
				[] call _PMC_MakeHeloOPFOR;
			};
		};
		// delay on createVehicle, short.
		sleep 2;
	}
	else
	{
		// delay if we have alot of enemies left, long.
		sleep 180;
	};

	// check if we have been fighting for 1 hour
	if (time > (60*60)) exitWith
	{
		// declare mission accomplished for the trigger + opfordead too.
		PMC_Mission_Complete = true;
	};
};
