
PMC_MakeHeloBLUFOR =
{
	_myVec = (PMC_blufor_helo_armed select round random (_maxBLUFORC - 1));
	if (_myVec == "CUP_B_AH6J_MP_USA") then { _myVec = "CUP_B_AH6J_MP_USA"; };
	_vcl = _myVec createVehicle _respawnpoint;
	_vcl setPos _respawnpoint;
	_grp = objNull;
	waitUntil
	{
		_grp = createGroup (west);
		!(isNull _grp);
	};

	if (_myVec in ["CUP_B_AH1Z_USMC","CUP_B_MH60S_USMC"]) then
	{
		"CUP_B_USMC_Pilot" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
		"CUP_B_USMC_Pilot" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
		(units _grp select 0) moveInDriver _vcl;
		(units _grp select 1) moveinGunner _vcl;
		if (_myVec == "CUP_B_MH60S_USMC") then
		{
			"CUP_B_USMC_Pilot" createUnit [_respawnpoint, _grp, "", (random 1), "CORPORAL"];
			(units _grp select 2) moveinTurret [_vcl,[1]];
		};
	}
	else
	{
		"CUP_B_USMC_Pilot" createUnit [_respawnpoint, _grp, "", (random 1), "SERGEANT"];
		(units _grp select 0) moveInDriver _vcl;
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
