/*

BLUFOR war script

*/

private
[
	"_a",
	"_ForceLevel",
	"_grp",
	"_maxBLUFORA",
	"_maxBLUFORA2",
	"_maxBLUFORB",
	"_maxBLUFORB2",
	"_maxBLUFORC",
	"_myVec",
	"_p",
	"_PMC_tempBLUFORtargets",
	"_ptNum",
	"_ran",
	"_respawnpoint",
	"_targetNum",
	"_targetpoint",
	"_tlogic",
	"_vcl",
	"_waypointRanPosit",
	"_wp"
];

// how many cycles of troops we create. 20 creates about 150-180 units.
_ForceLevel = 10;

_maxBLUFORA = count PMC_blufor_vehicle_heavy;
_maxBLUFORA2 = count PMC_blufor_vehicle_soft;
_maxBLUFORB = count PMC_blufor_vehicle_car_unarmed;
_maxBLUFORB2 = count PMC_blufor_vehicle_car_armed;
_maxBLUFORC = count PMC_blufor_helo_armed;
_maxBLUFORD = count PMC_blufor_jet;

/*
old functions which were removed to these names (add .sqf).
[] call PMC_MakeTankBLUFOR;
[] call PMC_MakeTankBLUFORHeavy;
[] call PMC_MakeTankBLUFOR2;
[] call PMC_MakePatrolInfBLUFOR;
[] call PMC_MakeSniperBLUFOR;
[] call PMC_MakeSpecOpsBLUFOR;
[] call PMC_MakeVehPatrolBLUFOR;
[] call PMC_MakeHeloBLUFOR;
[] call PMC_MakeAircraftBLUFOR;
[] call PMC_CreateBLUFORHQstuff;
[] call PMC_DoTrigger;
[] call PMC_EventHandlersStuff;
*/

_targetNum = count PMC_targets;
_waypointRanPosit = 500;
_PMC_tempBLUFORtargets = [];
_PMC_tempBLUFORtargets = PMC_targets;

_targetpoint = getPos (PMC_targets select (floor random _targetNum));
usinf1 setBehaviour "AWARE";
usinf1 setCombatMode "RED";
usinf1 setSpeedMode "NORMAL";
usinf1 setFormation "WEDGE";

// for long distance waypoint plotting
_wp = [usinf1,_targetpoint] call compile preProcessFileLineNumbers "PMC\PMC_plotWaypoints.sqf";
_wp = _wp + 1;

usinf1 addWaypoint [_targetpoint, _waypointRanPosit];
[usinf1, _wp] setWaypointBehaviour "AWARE";
[usinf1, _wp] setWaypointCombatMode "RED";
[usinf1, _wp] setWaypointSpeed "FULL";
[usinf1, _wp] setWaypointFormation "WEDGE";
[usinf1, _wp] setWaypointType "GUARD";

// create units
_a = 0;
while { _a < _ForceLevel or _a > (count PMC_targets) } do
{
	_a = _a + 1;

	// choose random posit, then remove it from selection so next time
	// we choose different random posit, no two units go in same location.
	_ran = (floor random _targetNum);
	_tlogic = (_PMC_tempBLUFORtargets select _ran);
	_PMC_tempBLUFORtargets = _PMC_tempBLUFORtargets - [_tlogic];
	_targetNum = _targetNum - 1;
	_targetpoint = getPos _tlogic;

	// choose one of the random starting locations
	_respawnpoint = ["BLUFOR"] call PMC_SelectStartPosit;

	_ran = round (random 11);
	switch (_ran) do
	{
		case 0:
	    	{
			[] call PMC_MakeTankBLUFOR;
	    	};
	    	case 1:
	    	{
			[] call PMC_MakeTankBLUFOR2;
	    	};
	    	case 2:
	    	{
			[] call PMC_MakeGuardInfBLUFOR;
	    	};
	    	case 3:
	    	{
			[] call PMC_MakePatrolInfBLUFOR;
	    	};
		case 4:
		{
			[] call PMC_MakeTankBLUFORHeavy;
		};
		case 5:
		{
			[] call PMC_MakeSniperBLUFOR;
		};
		case 6:
		{
			[] call PMC_MakeSpecOpsBLUFOR;
		};
		case 7:
		{
			_ptNum = count PMC_targets;
			PMC_patrolBLUFORtargets = [];
			PMC_patrolBLUFORtargets = PMC_targets;
			[] call PMC_MakeVehPatrolBLUFOR;
		};
		case 8:
		{
			[] call PMC_MakeHeloBLUFOR;
		};
		case 9:
		{
			[] call PMC_MakeHeloBLUFOR;
		};
		case 10:
		{
			[] call PMC_MakeAircraftBLUFOR;
		};
	};

	sleep 1;
};
