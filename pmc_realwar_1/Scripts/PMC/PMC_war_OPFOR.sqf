/*

	OPFOR war script

*/

private
[
	"_a",
	"_ForceLevel",
	"_grp",
	"_markerobj",
	"_myVec",
	"_p",
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

// how many cycles of troops we create. 20 creates about 150-180 units.
_ForceLevel = 10;

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

// send out the editor groups
_targetpoint = getPos (PMC_targets select (floor random _targetNum));
slainf1 setBehaviour "AWARE";
slainf1 setCombatMode "RED";
slainf1 setSpeedMode "NORMAL";
slainf1 setFormation "WEDGE";

// for long distance waypoint plotting
_wp = [slainf1,_targetpoint] call compile preProcessFileLineNumbers "PMC\PMC_plotWaypoints.sqf";
_wp = _wp + 1;

slainf1 addWaypoint [_targetpoint, _waypointRanPosit];
[slainf1, _wp] setWaypointBehaviour "AWARE";
[slainf1, _wp] setWaypointCombatMode "RED";
[slainf1, _wp] setWaypointSpeed "FULL";
[slainf1, _wp] setWaypointFormation "WEDGE";
[slainf1, _wp] setWaypointType "GUARD";

// create units
_a = 0;
while { _a < _ForceLevel or _a > (count PMC_targets) } do
{
	_a = _a + 1;

	// choose random posit, then remove it from selection so next time
	// we choose different random posit, no two units go in same location.
	_ran = (floor random _targetNum);
	_tlogic = (_PMC_tempOPFORtargets select _ran);
	_PMC_tempOPFORtargets = _PMC_tempOPFORtargets - [_tlogic];
	_targetNum = _targetNum - 1;
	_targetpoint = getPos _tlogic;

	// choose one of the random starting locations
	_respawnpoint = ["OPFOR"] call PMC_SelectStartPosit;

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

	// flag, tent, etc for OPFOR
	// but disabled, not look good and have dupes also?
	//[] call _PMC_CreateOPFORHQstuff;

	// for debug ;)
	//[] call _PMC_DoTrigger;
	sleep 2;
};
