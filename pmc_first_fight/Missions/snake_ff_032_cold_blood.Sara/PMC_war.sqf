
// if we run this on client, exit immediately.
if (!isServer) exitWith{};

// run killed script, 300 corpses max on the battlefield.
// this needs to be global??
PMC_corpses = [];
[50] execVM "PMC\PMC_corpses.sqf";

private[
	"_targetpoint","PMC_opfor_vehicle_heavy","PMC_opfor_vehicle_car_armed",
	"PMC_opfor_vehicle_car_unarmed","_maxOPFORA","_maxOPFORA2",
	"_maxOPFORB"
];

// we are running the scripts, just some debug stuff which should be removed.
PMC_running = 1;
publicVariable "PMC_running";

// counter for enemy units
PMC_opfor = 0;
// where they begin, array of gamelogics
PMC_targets = [];
// this is the US HQ
_targetpoint = getPos usflag;
// waypoint random position radius
_waypointRanPosit = 50;

PMC_opfor_vehicle_heavy = ["CUP_O_BMP2_CHDKZ","CUP_O_BMP2_CHDKZ","CUP_O_ZSU23_ChDKZ","CUP_O_T72_RU","CUP_O_T72_RU"];
PMC_opfor_vehicle_car_armed = ["CUP_O_UAZ_AGS30_RU","CUP_O_UAZ_MG_CHDKZ","CUP_O_BRDM2_CHDKZ","CUP_O_BRDM2_ATGM_CHDKZ"];
PMC_opfor_vehicle_car_unarmed = ["CUP_O_Ural_Repair_CHDKZ","CUP_O_Ural_Reammo_CHDKZ","CUP_O_Ural_Refuel_CHDKZ","CUP_C_Ural_Civ_01","CUP_O_Ural_Open_CHDKZ","CUP_O_UAZ_Unarmed_RU"];
_maxOPFORA = count PMC_opfor_vehicle_heavy;
_maxOPFORA2 = count PMC_opfor_vehicle_car_armed;
_maxOPFORB = count PMC_opfor_vehicle_car_unarmed;

/*
	Make BMP, ZSU or T72
*/
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

	_wp = 1;

	_grp addWaypoint [_targetpoint, _waypointRanPosit];
	[_grp, _wp] setWaypointBehaviour "AWARE";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "FULL";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "GUARD";
};

/*
	Make 4 x BMP, ZSU or T72
*/
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

	_wp = 1;

	_grp addWaypoint [_targetpoint, _waypointRanPosit];
	[_grp, _wp] setWaypointBehaviour "AWARE";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "FULL";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "GUARD";
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

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	_grp setBehaviour "AWARE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	_grp addWaypoint [_targetpoint, 20];
	[_grp, 1] setWaypointBehaviour "AWARE";
	[_grp, 1] setWaypointCombatMode "RED";
	[_grp, 1] setWaypointSpeed "FULL";
	[_grp, 1] setWaypointFormation "WEDGE";
	[_grp, 1] setWaypointType "SENTRY";
};

// choose new digit for the gamelogic "pmc_*"
_a = 1;
_p = call compile format["pmc_%1",_a];

// loop until we have no gamelogics left, it then should return 0.
while {(getPos _p select 0) != 0} do
{
	// just make array out of the gamelogics
	PMC_targets = PMC_targets + [_p];

	// debug :)
//	player sideChat format["_p: %1 _a: %2",_p,_a];

	// add one digit to our gamelogic name.
	_a = _a + 1;
	_p = call compile format["pmc_%1",_a];
};

_targetNum = count PMC_targets;

// create units
while {PMC_opfor < 500} do
{
	_respawnpoint = getPos (PMC_targets select round random (_targetNum - 1));
	if (count opforunits < 75) then
	{
		[] call _PMC_MakeGuardInfOPFOR;
		PMC_opfor = PMC_opfor + 9;
		publicVariable "PMC_opfor";

		// this is like bad luck bonus to make more badguys
		if (random 100 > 50) then
		{
			[] call _PMC_MakeGuardInfOPFOR;
			PMC_opfor = PMC_opfor + 9;
			publicVariable "PMC_opfor";
		};

		// random chance of tanks.
		if ((random 100) > 50) then
		{
			// choose either one armored vehicle, or four.
			// one...
			if ((random 10) > 5) then
			{
				[] call _PMC_MakeTankOPFOR;
			}
			else
			// four...
			{
				[] call _PMC_MakeTankOPFORHeavy;
			};
		};
	};
	sleep 5;
};

PMC_mcomplete = true;
publicVariable "PMC_mcomplete";
