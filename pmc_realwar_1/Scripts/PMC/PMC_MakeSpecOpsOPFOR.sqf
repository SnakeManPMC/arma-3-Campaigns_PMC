
PMC_MakeSpecOpsOPFOR =
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

	// increment the created units count
	PMC_opfor = PMC_opfor + 6;
	publicVariable "PMC_opfor";

//	_myVec = (PMC_opfor_vehicle_car_armed select round random (_maxOPFORA2 - 1));
	_vcl = "CUP_C_Ural_Civ_01" createVehicle _respawnpoint;
	(units _grp select 0) assignAsDriver _vcl;
	{
		(units _grp select _x) assignAsCargo _vcl;
	} forEach [1,2,3,4,5];

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
	_grp addWaypoint [_targetpoint, _waypointRanPosit*5];
	[_grp, _wp] setWaypointBehaviour "STEALTH";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "LIMITED";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "MOVE";
//	[_grp, _wp] setWaypointTimeout [min, mid, max];
	[_grp, _wp] setWaypointTimeout [60*2, 0, 60*20];

	// second
	_grp addWaypoint [_targetpoint, _waypointRanPosit*5];
	[_grp, (_wp + 1)] setWaypointType "MOVE";
	[_grp, (_wp + 1)] setWaypointTimeout [60*2, 0, 60*20];

	// cycle
	_grp addWaypoint [_targetpoint, 0];
	[_grp, (_wp + 2)] setWaypointType "CYCLE";
};
