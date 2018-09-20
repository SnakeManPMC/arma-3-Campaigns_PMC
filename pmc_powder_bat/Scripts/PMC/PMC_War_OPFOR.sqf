
/*
[location, numberOfBadGuys, attackStrenght] execVM "PMC\PMC_War_OPFOR.sqf";

example:
[pmc_fob_eagle, 200, 30] execVM "PMC\PMC_War_OPFOR.sqf";
*/

private _target = getPos (_this select 0);
private _numBadGuys = _this select 1;
private _waveStrenght = _this select 2;

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

while { (PMC_killedNum < _numBadGuys) } do
{
	private _grp = [getPos (selectRandom _spawnPosList)] call PMC_Create_CUP_NAPA_Random_Infantry;
	[_grp] call _pmcKilledEH;
	[_grp, _target, 25] call _PMC_Attack_Waypoints;

	waitUntil
	{
		sleep 5;
		//player sidechat format["WaitUntil AllUnits: %1, PMC_killedNum: %2. Time: %3 min.", (count AllUnits), PMC_killedNum, (time/60)];
		(count AllUnits) < _waveStrenght;
	};
};

PMCHQ sideChat "Enemy assault has been repelled, excellent work Alpha One, HQ Out.";
sleep 15;

if (isNil "PMC_DefendMissionsKIAs") then { PMC_DefendMissionsKIAs = 0; };

PMC_DefendMissionsKIAs = PMC_DefendMissionsKIAs + PMC_killedNum;

private _pmcStr = format["Current defend enemy KIAs: %1, all defend mission KIAs: %2", PMC_killedNum, PMC_DefendMissionsKIAs];
saveVar "PMC_DefendMissionsKIAs";

titleText[_pmcStr, "plain", 3];
sleep 7;

[] execVM "PMC\PMC_EndMission.sqf";
