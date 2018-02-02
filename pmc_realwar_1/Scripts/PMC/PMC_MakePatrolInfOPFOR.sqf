
PMC_MakePatrolInfOPFOR =
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

	// random SoldierEAA
	if ((random 100) < 15) then
	{
		"SoldierEAA" createUnit [_respawnpoint, _grp, "", 0, "PRIVATE"];
		// increment the created units count
		PMC_opfor = PMC_opfor + 1;
		publicVariable "PMC_opfor";
	};

//	_myVec = (PMC_opfor_vehicle_car_unarmed select round random (_maxOPFORB - 1));
	_vcl = objNull;
	_vcl = "CUP_O_Ural_Open_CHDKZ" createVehicle _respawnpoint;
	(units _grp select 0) assignAsDriver _vcl;
	{
		(units _grp select _x) assignAsCargo _vcl;
	} forEach [1,2,3,4,5,6,7,8,9];

	// these to function somehow nicely, please :(
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	_grp setBehaviour "SAFE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	// for long distance waypoint plotting
	_wp = [_grp,_targetpoint] call compile preProcessFileLineNumbers "PMC\PMC_plotWaypoints.sqf";
	_wp = _wp + 1;

	// waypoints, we add couple to make patrol area
	// first
	_grp addWaypoint [_targetpoint, _waypointRanPosit*2];
	[_grp, _wp] setWaypointBehaviour "SAFE";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "LIMITED";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "MOVE";
//	[_grp, _wp] setWaypointTimeout [min, mid, max];
	[_grp, _wp] setWaypointTimeout [60*2, 0, 60*20];

	// second
	_grp addWaypoint [_targetpoint, _waypointRanPosit*2];
	[_grp, (_wp + 1)] setWaypointType "MOVE";
	[_grp, (_wp + 1)] setWaypointTimeout [60*2, 0, 60*20];

	// cycle
	_grp addWaypoint [_targetpoint, 0];
	[_grp, (_wp + 2)] setWaypointType "CYCLE";
};
