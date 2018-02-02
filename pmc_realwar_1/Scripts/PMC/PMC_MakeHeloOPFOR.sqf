
PMC_MakeHeloOPFOR =
{
	_myVec = (PMC_opfor_helo_armed select round random (_maxOPFORC - 1));
	_vcl = _myVec createVehicle _respawnpoint;
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
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];

	_grp setBehaviour "COMBAT";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	// for long distance waypoint plotting
	_wp = [_grp,_targetpoint] call compile preProcessFileLineNumbers "PMC\PMC_plotWaypoints.sqf";
	_wp = _wp + 1;

	_grp addWaypoint [_targetpoint, _waypointRanPosit];
	[_grp, _wp] setWaypointBehaviour "COMBAT";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "FULL";
	[_grp, _wp] setWaypointFormation "WEDGE";
	[_grp, _wp] setWaypointType "GUARD";
};
