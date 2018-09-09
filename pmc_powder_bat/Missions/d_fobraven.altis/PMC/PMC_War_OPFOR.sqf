
// pmc_fob_raven is FOB Eagle
// pmc_location_1 etc are the enemy spawn points

PMC_corpses = [];
PMC_killedNum = 0;

call compile preprocessFileLineNumbers "PMC\PMC_Create_CUP_NAPA_Random_Infantry.sqf";

private _pmcKilledEH =
{
	private _grp = _this select 0;
	{
		_x addEventHandler ["killed", {0 = _this execVM "PMC\PMC_killed.sqf"}];
	} foreach units _grp;
};

private _spawnPosList = [pmc_location_1, pmc_location_2, pmc_location_3, pmc_location_4];
private _fob1 = getPos pmc_fob_raven;

private _PMC_Attack_Waypoints =
{
	private
	[
		"_grp",
		"_targetpoint",
		"_waypointRanPosit"
	];
	_grp = _this select 0;
	_targetpoint = _this select 1;
	_waypointRanPosit = _this select 2;

	_grp setbehaviour "SAFE";
	_grp setcombatmode "RED";
	_grp setspeedmode "LIMITED";
	_grp setformation "WEDGE";

	_grp addWaypoint [_targetpoint, _waypointRanPosit*2];
	[_grp, 1] setWaypointBehaviour "AWARE";
	[_grp, 1] setWaypointCombatMode "RED";
	[_grp, 1] setWaypointSpeed "FULL";
	[_grp, 1] setWaypointFormation "LINE";
	[_grp, 1] setWaypointType "SENTRY";
	[_grp, 1] setWaypointCompletionRadius 10;
};

while { (PMC_killedNum < 50) } do
{
	private _grp = [getPos (selectRandom _spawnPosList)] call PMC_Create_CUP_NAPA_Random_Infantry;
	[_grp] call _pmcKilledEH;
	[_grp, _fob1, 25] call _PMC_Attack_Waypoints;

	waitUntil
	{
		sleep 5;
		player sidechat format["WaitUntil AllUnits: %1, PMC_killedNum: %2. Time: %3 min.", (count AllUnits), PMC_killedNum, (time/60)];
		(count AllUnits) < 33;
	};
};

PMCHQ sideChat "Enemy assault has been repelled, excellent work Alpha One, HQ Out.";
sleep 15;

[] execVM "PMC\PMC_EndMission.sqf";
