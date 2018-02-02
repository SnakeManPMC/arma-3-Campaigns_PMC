/*
	BLUFOR looping unit creation script
*/

private
[
	"_grp",
	"_LoopForceLevel",
	"_myVec",
	"_PMC_tempBLUFORtargets",
	"_ptNum",
	"_ran",
	"_respawnpoint",
	"_targetNum",
	"_tlogic",
	"_vcl",
	"_waypointRanPosit",
	"_wp"
];

// amount of troops in the loop to be kept in the fight
_LoopForceLevel = 20;

_maxBLUFORA = count PMC_blufor_vehicle_heavy;
_maxBLUFORA2 = count PMC_blufor_vehicle_soft;
_maxBLUFORB = count PMC_blufor_vehicle_car_unarmed;
_maxBLUFORB2 = count PMC_blufor_vehicle_car_armed;
_maxBLUFORC = count PMC_blufor_helo_armed;
_maxBLUFORD = count PMC_blufor_jet;

_targetNum = count PMC_targets;
_waypointRanPosit = 500;
_PMC_tempBLUFORtargets = [];
_PMC_tempBLUFORtargets = PMC_targets;

// create units never ending loop
while {true} do
{
	// choose random posit, then remove it from selection so next time
	// we choose different random posit, no two units go in same location.
	_ran = (floor random _targetNum);
	_tlogic = (_PMC_tempBLUFORtargets select _ran);
	_PMC_tempBLUFORtargets = _PMC_tempBLUFORtargets - [_tlogic];
	_targetNum = _targetNum - 1;
	_targetpoint = getPos _tlogic;

	// choose one of the random starting locations
	_respawnpoint = ["BLUFOR"] call PMC_SelectStartPosit;

	// this controls how heavy the opfor numbers are
	waitUntil
	{
		sleep 5;
		( (count PMC_BLUforlist) < _LoopForceLevel);
	};

	if (pmcdb) then
	{
		player sideChat format["passed neverending BLUFOR unit creation loop; PMC_BLUforlist: %1, PMC_OPforlist %2.",count PMC_BLUforlist,count PMC_OPforlist];
	};

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

	sleep 2;
};
