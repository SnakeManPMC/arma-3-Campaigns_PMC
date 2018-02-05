/*

	Bagango attack war creation

*/
private [
	"_PMC_MakePatrolInfOPFOR","_grp","_wp","_PMC_SelectOPFORStartPosit",
	"_ran","_tlogic","_respawnpoint","_waypointRanPosit","_targetNum",
	"_PMC_tempOPFORtargets"
];

_PMC_MakePatrolInfOPFOR =
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

	_grp setBehaviour "AWARE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "LINE";

	_wp = 1;
	// waypoints, we add couple to make patrol area
	// first
	_grp addWaypoint [_targetpoint, _waypointRanPosit*2];
	[_grp, _wp] setWaypointBehaviour "AWARE";
	[_grp, _wp] setWaypointCombatMode "RED";
	[_grp, _wp] setWaypointSpeed "FULL";
	[_grp, _wp] setWaypointFormation "LINE";
	[_grp, _wp] setWaypointType "SAD"; // search and destroy

	// cycle
	_grp addWaypoint [_targetpoint, 0];
	[_grp, (_wp + 1)] setWaypointType "CYCLE";
};

_PMC_SelectOPFORStartPosit =
{
	// select one starting point
	_ran = (floor random (count PMC_opfor_starts));
	_tlogic = (PMC_opfor_starts select _ran);
	_respawnpoint = [(getPos _tlogic select 0)-50+random 100,(getPos _tlogic select 1)-50+random 100];

	// place the value to be returned like this at the end in function!
	_respawnpoint
};

// launch counter attack
player sideChat "Damn men! Enemy forces are approaching Bagango. Over.";

[] execVM "PMC\PMC_targets.sqf";
sleep 1;

// our waypoints random circle range
_waypointRanPosit = 25;

// select target location
_targetNum = count PMC_targets;
_PMC_tempOPFORtargets = [];
_PMC_tempOPFORtargets = PMC_targets;

// create units
while {true} do
{
	// if less than this many enemies, do more!
	if ((count opforlist < 30)) then
	{
		_ran = (floor random _targetNum);
		_tlogic = (_PMC_tempOPFORtargets select _ran);
		_targetpoint = getPos _tlogic;

		// choose one of the random starting locations
		_respawnpoint = [] call _PMC_SelectOPFORStartPosit;

		[] call _PMC_MakePatrolInfOPFOR;

		// delay on createVehicle, short.
		sleep 2;
	}
	else
	{
		// delay if we have alot of enemies left, long.
		sleep 180;
	};

	// check if we have been fighting for 30 mins
	if (time > (60*60)) exitWith
	{
		// declare mission accomplished for the trigger + opfordead too.
		PMC_Pita_Defended = true;
	};
};
