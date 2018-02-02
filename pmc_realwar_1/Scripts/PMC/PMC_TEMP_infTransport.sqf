/*

Temporary inf helo transport script, dunno why the original one is not working,
maybe because of the [_HeloGrp, _wp] setWaypointType "TR UNLOAD"; is not working?

I have no idea ;)

*/

private
[
	"_grp",
	"_HeloGrp",
	"_respawnpoint",
	"_side",
	"_targetpoint",
	"_vcl"
];

_grp = _this select 0;
_respawnpoint = _this select 1;
_targetpoint = _this select 2;
_side = _this select 3;

if (_side == "West") then
{
	waitUntil
	{
		_HeloGrp = createGroup (west);
		!(isNull _HeloGrp);
	};
	_vcl = "CUP_B_MH60S_USMC" createVehicle _respawnpoint;
	"CUP_B_USMC_Pilot" createUnit [_respawnpoint, _HeloGrp, "", (random 1), "SERGEANT"];
	"CUP_B_USMC_Pilot" createUnit [_respawnpoint, _HeloGrp, "", (random 1), "CORPORAL"];
	"CUP_B_USMC_Pilot" createUnit [_respawnpoint, _HeloGrp, "", (random 1), "CORPORAL"];
	(units _HeloGrp select 0) moveInDriver _vcl;
	(units _HeloGrp select 1) moveinTurret [_vcl,[0]];
	(units _HeloGrp select 2) moveinTurret [_vcl,[1]];
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _HeloGrp;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
}
else
{
	waitUntil
	{
		_HeloGrp = createGroup (east);
		!(isNull _HeloGrp);
	};
	_vcl = "CUP_O_Mi8_RU" createVehicle _respawnpoint;
	"CUP_O_RU_Pilot" createUnit [_respawnpoint, _HeloGrp, "", (random 1), "SERGEANT"];
	"CUP_O_RU_Pilot" createUnit [_respawnpoint, _HeloGrp, "", (random 1), "CORPORAL"];
	(units _HeloGrp select 0) moveInDriver _vcl;
	(units _HeloGrp select 1) moveinGunner _vcl;
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _HeloGrp;
	_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
};

// load our guys
{
	_x moveinCargo _vcl;
} forEach units _grp;

_HeloGrp setBehaviour "AWARE";
_HeloGrp setCombatMode "YELLOW";
_HeloGrp setSpeedMode "FULL";
_HeloGrp setFormation "WEDGE";

_vcl move _targetpoint;

// some radio traffic, lifting off into the mission.
leader _HeloGrp sideChat format["This is: %1. Cargo onboard, we are lifting off now. Over.", leader _HeloGrp];
if (pmcdb) then
{
	leader _HeloGrp globalChat format["This is: %1. Cargo onboard, we are lifting off now. Over.", leader _HeloGrp];
};

// they arrive or they cant move?
waitUntil
{
	sleep 2;
	( ((_vcl distance _targetpoint) < 100) || !(canMove _vcl) );
};

// helo vehicle and the group leader is alive, put some radio traffic.
if ((alive leader _HeloGrp) && (canMove _vcl)) then
{
	leader _HeloGrp sideChat format["This is: %1. Setting her down now, disembarking cargo. Over.", leader _HeloGrp];
	if (pmcdb) then
	{
		leader _HeloGrp globalChat format["This is : %1. Setting her down now, disembarking cargo. Over.", leader _HeloGrp];
	};
};

// order the cargo to disembark.
{
	unassignVehicle _x;
} forEach units _grp;

// set the combat mood for him
_HeloGrp setBehaviour "COMBAT";
_HeloGrp setCombatMode "RED";
_HeloGrp setSpeedMode "FULL";
_HeloGrp setFormation "WEDGE";

// group also acknowledges disembark
if (alive leader _grp) then
{
	// wait a bit so they dont stick together.
	sleep (5 + random 25);
	leader _grp sideChat format["This is %1. Reporting boots on the ground, starting our mission. Over.", leader _grp];
	if (pmcdb) then
	{
		leader _grp globalChat format["This is %1. Reporting boots on the ground, starting our mission. %1 out!", leader _grp];
	};
};

// add one guard waypoint in random radius of 500m from the insert location.
//_HeloGrp addWaypoint [_targetpoint, 1000];
//[_HeloGrp, 1] setWaypointBehaviour "COMBAT";
//[_HeloGrp, 1] setWaypointCombatMode "RED";
//[_HeloGrp, 1] setWaypointSpeed "FULL";
//[_HeloGrp, 1] setWaypointFormation "WEDGE";
//[_HeloGrp, 1] setWaypointType "GUARD";

// move helo back to base.
_vcl move _respawnpoint;

// helo arrives or it cant move?
waitUntil
{
	sleep 2;
	( ((_vcl distance _respawnpoint) < 500) || !(canMove _vcl) );
};

// if they are alive, delete them, if not, leave them be (killed.sqf)
if ( ((_vcl distance _respawnpoint) < 500) && (alive _vcl) ) then
{
	{
		deleteVehicle _x;
	} forEach units _HeloGrp;
	deleteGroup _HeloGrp;
	deleteVehicle _vcl;
};
