
private ["_A","_behav","_comba","_fomat","_group","_myVehicle","_noMatchFound","_PMC_plotWaypoints_Manual","_r1","_ran","_RanP","_speed","_SWait","_SWaitRnd","_target","_tmp","_ua","_veh","_WP"];

PMC_sdg = PMC_sdg + 1;

_group = _this select 0;
_ua = false;
_noMatchFound = true;

if (PMC_debug) then
{
	diag_log format
	[
		"PMC_sendgroup_east: received _group: %1, East_ControList: %2, East_AssignList: %3.",
		_group,
		East_ControList,
		East_AssignList
	];
};

_target = [0, 0, 0];

_PMC_plotWaypoints_Manual = compile preprocessFileLineNumbers "PMC\PMC_plotWaypoints_Manual.sqf";

// small wait in the patrol zone
_SWait = 240;
_SWaitRnd = 120;

PMC_groups = PMC_groups - [_group];

if (!alive leader _group) exitWith
{
	player sideChat format
	[
		"%1 group=dead. exiting PMC_sendgroup_east.sqf. count: %2. alive: %3",
		_group,
		count units _group,
		alive leader (_group)
	];
};

/*
_RanP is the random patrol distance, again 100 meters is ok for infantry, but 
for helos it need much wider area to patrol to make it anything useful.
*/
_RanP = 100;
_tmp = [Vehicle (leader _group)];

if ("Air" countType _tmp == 1) then
{
	_RanP = 300;
};

if (PMC_debug && "Air" countType _tmp == 1) then
{
	player sideChat format
	[
		"Air unit: %1 - %2",
		_tmp,
		typeOf vehicle leader _group
	];
};

/*
diag_log format
[
	"%1 - %2",
	_tmp,
	typeOf vehicle leader _group
];
*/
	
// if car then safe + full speed. if tank or helo, then aware + full speed.
if ("Car" countType _tmp == 1) then
{
	_group setbehaviour "safe";
	_group setspeedmode "full";
};

if ("Tank" countType _tmp == 1 || "Air" countType _tmp == 1) then
{
	_group setbehaviour "aware";
	_group setspeedmode "full";
};

_behav = ["SAFE", "AWARE", "STEALTH", "COMBAT"];
_speed = ["LIMITED", "NORMAL", "FULL"];
_comba = ["GREEN", "WHITE", "YELLOW", "RED"];
_fomat = ["COLUMN", "STAG COLUMN", "WEDGE", "ECH LEFT", "ECH RIGHT", "VEE", "LINE", "DIAMOND"];

if ("Man" countType _tmp == 1) then
{
	_r1 = floor (random (count _behav));
	_group setbehaviour (_behav select _r1);
	
	_r1 = floor (random (count _speed));
	_group setspeedmode (_behav select _r1);
	
	_r1 = floor (random (count _comba));
	_group setcombatmode (_comba select _r1);
	
	_r1 = floor (random (count _fomat));
	_group setformation (_fomat select _r1)
};


/*
this is where we find a city which is not "targeted" or occupied by the side
*/
_A = 0;
while { _A < (count PMC_targets) && _noMatchFound } do
{
	if (East_ControList select _A == 0 && East_AssignList select _A == 0) exitWith
	{
		_target = PMC_targets select _A;
		_noMatchFound = false;
		if (PMC_debug) then
		{
			diag_log format["_group: %1, _A: %2, East_ControList: %3, East_AssignList: %4", _group, _A, East_ControList, East_AssignList];
		};
	};
	_A = _A + 1;
};

// we did not find a match, so we just send them to random _target location, what the hell :)
if (_noMatchFound) then
{
	_ran = floor (random (count PMC_targets));
	_A = _ran;
	_target = PMC_targets select _A;
	_noMatchFound = true;
};

/*
we have found city and are ready to move out
*/
East_AssignList set [_A, 1];

// move order!
if (leader _group distance _target > 6400) then
{
	// goto "BigMotherFuckerMovingShit";
	_tmp = [_target, _group] call _PMC_plotWaypoints_Manual;
	waitUntil
	{
		sleep 5;
		scriptDone _tmp;
	};
}
else
{
	leader _group move getPosASL _target;
};

if (PMC_debug) then
{
	leader _group sidechat format
	[
		"ready, _A: %1, moving to: %2",
		_A,
		getPosASL _target
	];
};


// wait until they arrive or get dead
waitUntil
{
	sleep 5;
	(unitReady leader _group || !alive leader _group);
};

if (!alive leader _group) exitWith
{
	East_AssignList set [_A, 0];
	PMC_sdg = PMC_sdg - 1;
};

if (PMC_debug) then
{
	leader _group sideChat format
	[
		"my distance to target is: %1m",
		leader _group distance _target
	];
};


//#EndAlive
leader _group sideChat format
[
	"Starting our patrol of the target area in %1",
	getPosASL leader _group
];

/*
okay this is tricky, if we are in SOFT vehicle we disembark.
*/
_veh = [vehicle (leader _group)];
_myVehicle = vehicle (leader _group);

if ("Car" countType _veh == 1) then
{
	{
		unassignVehicle _x;
	} forEach units _group;
	_ua = true;
};

_group setbehaviour "aware";
_group setformation "wedge";
_group setspeedmode "limited";
_group setcombatmode "red";

_WP = 0;

while { _WP < 5 } do
{
	//#WayPointGo
	//leader _group move [(getPosASL _target select 0)-100+random 200,(getPosASL _target select 1)-100+random 200,0];
        leader _group move [(getPosASL _target select 0) - _RanP + ((random _RanP) * 2), (getPosASL _target select 1) - _RanP + ((random _RanP) * 2), 0];
	
	//#IdleW
	sleep (10 + random 5);
	
	// if they are ready or dead, we continue
	waitUntil
	{
		sleep 10;
		(unitready leader _group || !alive leader _group);
	//	goto "IdleW";
	};

	// if the fuckers are dead, then we end the script.
	if (!alive leader _group) exitWith
	{
		East_AssignList set [_A, 0];
		PMC_sdg = PMC_sdg - 1;
		// goto "EndDead";
	};
	
	// if unit is ready, we return to waypoint looping by adding another passed waypoint number
	_WP = _WP + 1;
};

_group setbehaviour "safe";
_group setspeedmode "limited";
_group setcombatmode "yellow";
leader _group sideChat "Patrol Complete. Over.";

if (PMC_debug) then
{
	diag_log format
	[
		"_group: %1, vehicle: %2. reports - Patrol over.",
		_group,
		typeOf (vehicle leader _group)
	];
};

leader _group move getPosASL _target;

/*
small wait in the target area
*/
if ("Air" countType _veh == 1) then
{
	_SWait = 10;
	_SWaitRnd = 10;
};

sleep (_SWait + random _SWaitRnd);

if (!alive leader _group) exitWith
{
	East_AssignList set [_A, 0];
	PMC_sdg = PMC_sdg - 1;
	// goto "EndDead";
};


/*
this is to board the earlier disembarked vehicle, if any.
*/

// but first, if we dont have a vehice, lets just skip this crap.
if (_ua && (canMove _myVehicle)) then
{
	// leader drives.
	leader _group assignAsDriver vehicle (_veh select 0);
	if (PMC_debug) then
	{
		player sideChat format["Just assigned cargo to: %1", typeOf (_veh select 0)];
	};
	
	// rest are put in cargo
	{
		if (_x != leader _group) then
		{
			_x assignAsCargo vehicle (_veh select 0);
		};
	} forEach units _group;
	units _group orderGetIn true;
};

// wait until they are in the vehicle (or dead, so we dont end up with never ending loop)
waitUntil
{
	sleep 3;
	( ({_x in (_veh select 0)} count units _group == count units _group) || ({alive _x} count units _group == 0) );
};

if (PMC_debug) then
{
	diag_log format["group passed IN VEHICLE and !dead check: %1, vehicle: %2", _group, (_veh select 0)];
};

// last dead check
if (!alive leader _group) exitWith
{
	East_AssignList set [_A, 0];
};

// we have skipped the vehicle boarding.
East_AssignList set [_A, 0];

if (alive leader _group) then
{
	PMC_groups = PMC_groups + [_group];
};

if (PMC_debug) then
{
	player sideChat format
	[
		"PMC_sendgroup_east.sqf exit %1, leader alive: %2. units: %3, veh: %4",
		_group,
		alive leader _group,
		count units _group,
		typeOf (vehicle leader _group)
	];

	diag_log format
	[
		"PMC_sendgroup_east.sqf exit %1, leader alive: %2. units: %3, veh: %4",
		_group,
		alive leader _group,
		count units _group,
		typeOf (vehicle leader _group)
	];
};

PMC_sdg = PMC_sdg - 1;
