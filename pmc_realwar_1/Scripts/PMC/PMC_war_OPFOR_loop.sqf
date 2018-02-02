/*
	OPFOR looping unit creation script
*/

private
[
	"_grp",
	"_LoopForceLevel",
	"_myVec",
	"_PMC_tempOPFORtargets",
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

// amount of troops in the loop to be kept in the fight
_LoopForceLevel = 20;

_all_OPFOR_units =
[
	"SoldierEAA",
	"CUP_O_RU_Soldier_AT",
	"CUP_O_RU_Soldier",
	"CUP_O_RU_Soldier_GL",
	"CUP_O_RU_Medic",
	"CUP_O_RU_Soldier_MG",
	"CUP_O_RU_Sniper",
	"CUP_O_RU_Soldier_SL"
];
_maxOPFORA = count PMC_opfor_vehicle_heavy;
_maxOPFORA2 = count PMC_opfor_vehicle_car_armed;
_maxOPFORB = count PMC_opfor_vehicle_car_unarmed;
_maxOPFORC = count PMC_opfor_helo_armed;
_maxOPFORD = count PMC_opfor_jet;

// our waypoints random circle range
_waypointRanPosit = 500;

// select target location
_targetNum = count PMC_targets;
_PMC_tempOPFORtargets = [];
_PMC_tempOPFORtargets = PMC_targets;

// create units, never ending loop
while {true} do
{
	// choose random posit, then remove it from selection so next time
	// we choose different random posit, no two units go in same location.
	_ran = (floor random _targetNum);
	_tlogic = (_PMC_tempOPFORtargets select _ran);
	_PMC_tempOPFORtargets = _PMC_tempOPFORtargets - [_tlogic];
	_targetNum = _targetNum - 1;
	_targetpoint = getPos _tlogic;

	// choose one of the random starting locations
	_respawnpoint = ["OPFOR"] call PMC_SelectStartPosit;

	// this controls how heavy the opfor numbers are
	waitUntil
	{
		sleep 5;
		( (count PMC_OPforlist) < _LoopForceLevel);
	};

	if (pmcdb) then
	{
		player sideChat format["passed neverending OPFOR unit creation loop; PMC_OPforlist %1, PMC_BLUforlist: %2.",count PMC_OPforlist,count PMC_BLUforlist];
	};

	_ran = round (random 11);
	switch (_ran) do
	{
		case 0:
	    	{
			[] call PMC_MakeTankOPFOR;
	    	};
	    	case 1:
	    	{
			[] call PMC_MakeTankOPFOR2;
	    	};
	    	case 2:
	    	{
			[] call PMC_MakeGuardInfOPFOR;
	    	};
	    	case 3:
	    	{
			[] call PMC_MakePatrolInfOPFOR;
	    	};
		case 4:
		{
			[] call PMC_MakeTankOPFORHeavy;
		};
		case 5:
		{
			[] call PMC_MakeSniperOPFOR;
		};
		case 6:
		{
			[] call PMC_MakeSpecOpsOPFOR;
		};
		case 7:
		{
			_ptNum = count PMC_targets;
			_PMC_patrolOPFORtargets = [];
			_PMC_patrolOPFORtargets = PMC_targets;
			[] call PMC_MakeVehPatrolOPFOR;
		};
		case 8:
		{
			[] call PMC_MakeHeloOPFOR;
		};
		case 9:
		{
			[] call PMC_MakeHeloOPFOR;
		};
		case 10;
		{
			[] call PMC_MakeAircraftOPFOR;
		};
	};

	sleep 1;
};
