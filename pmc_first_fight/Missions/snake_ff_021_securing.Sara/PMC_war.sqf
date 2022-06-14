
// if we run this on client, exit immediately.
if (!isServer) exitWith{};

// run killed script, 300 corpses max on the battlefield.
// this needs to be global??
PMC_corpses = [];
[50] execVM "PMC\PMC_corpses.sqf";

// we are running the scripts, just some debug stuff which should be removed.
PMC_running = 1;
publicVariable "PMC_running";

PMC_opfor = 0;
PMC_targets = [];
private _targetpoint = getPos usflag;

PMC_MakeGuardInfOPFOR =
{
	private _grp = objNull;
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

	// these to function somehow nicely, please :(
	{_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}]} forEach units _grp;

	_grp setBehaviour "AWARE";
	_grp setCombatMode "RED";
	_grp setSpeedMode "FULL";
	_grp setFormation "WEDGE";

	_grp addWaypoint [_targetpoint, 20];
	[_grp, 1] setWaypointBehaviour "AWARE";
	[_grp, 1] setWaypointCombatMode "RED";
	[_grp, 1] setWaypointSpeed "FULL";
	[_grp, 1] setWaypointFormation "WEDGE";
	[_grp, 1] setWaypointType "GUARD";
};

// choose new digit for the gamelogic "pmc_*"
private _a = 1;
private _p = call compile format["pmc_%1", _a];

// loop until we have no gamelogics left, it then should return 0.
while {(getPos _p select 0) != 0} do
{
	// just make array out of the gamelogics
	PMC_targets = PMC_targets + [_p];

	// debug :)
//	player sideChat format["_p: %1 _a: %2",_p,_a];

	// add one digit to our gamelogic name.
	_a = _a + 1;
	_p = call compile format["pmc_%1",_a];
};

private _targetNum = count PMC_targets;

// create units
while {PMC_opfor < 200} do
{
	private _respawnpoint = getPos (PMC_targets select round random (_targetNum - 1));
	if (count opforunits < 50) then 
	{
		[] call PMC_MakeGuardInfOPFOR;
		PMC_opfor = PMC_opfor + 9;
		publicVariable "PMC_opfor";
	};
	sleep 5;
};

PMC_mcomplete = true;
publicVariable "PMC_mcomplete";
