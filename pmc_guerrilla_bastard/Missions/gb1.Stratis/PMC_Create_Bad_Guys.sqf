/*

	Creates 10 groups of BLUFOR and OPFOR infantry
	Creates marker and a guer seized trigger for each groups position

*/
private["_tmpList", "_a", "_b", "_ran", "_myPos", "_newPos", "_grp"];

call compile preprocessFileLineNumbers "PMC\PMC_Create_CUP_US_Army_Rifle_Squad.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_Russian_MSV_Squad_Flora.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Waypoints_Patrol.sqf";

// haha mayhem :)
_tmpList = PMC_loc;
_a = 0;
_b = 0;
while {_a < 10 && (count _tmpList > 1)} do
{
	diag_log format["PMC_Create_Bad_Guys; Start: %1, _tmpList: %2", (count _tmpList), _tmpList];
	_ran = floor random (count _tmpList);
	_myPos = (_tmpList select _ran);
	_tmpList set [_ran, "DELETEME"];
	_tmpList = _tmpList - ["DELETEME"];
	diag_log format["PMC_Create_Bad_Guys; End: %1, _tmpList: %2", (count _tmpList), _tmpList];
	diag_log format["PMC_Create_Bad_Guys; _myPos: %1", _myPos];

	_newPos = [_myPos, 0, 500, 5, 0, 20, 0] call BIS_fnc_findSafePos;
	
	// create objective string variable
	_myObj = format["pmc_objective%1", _b];

	_grp = [_newPos] call PMC_Create_CUP_US_Army_Rifle_Squad;
	[_grp, _newPos, 200] call PMC_Waypoints_Patrol;
	[_newPos, _myObj, _b] execVM "PMC\PMC_Create_Trigger_Guerrilla_Seized.sqf";
	[_newPos, _myObj, _b] execVM "PMC\PMC_Create_Single_Task.sqf";
	_b = _b + 1;

	diag_log format["PMC_Create_Bad_Guys; Start: %1, _tmpList: %2", (count _tmpList), _tmpList];
	_ran = floor random (count _tmpList);
	_myPos = (_tmpList select _ran);
	_tmpList set [_ran, "DELETEME"];
	_tmpList = _tmpList - ["DELETEME"];
	diag_log format["PMC_Create_Bad_Guys; End: %1, _tmpList: %2", (count _tmpList), _tmpList];
	diag_log format["PMC_Create_Bad_Guys; _myPos: %1", _myPos];

	_newPos = [_myPos, 0, 500, 5, 0, 20, 0] call BIS_fnc_findSafePos;

	// create objective string variable
	_myObj = format["pmc_objective%1", _b];

	_grp = [_newPos] call PMC_Create_Russian_MSV_Squad_Flora;
	[_grp, _newPos, 200] call PMC_Waypoints_Patrol;
	[_newPos, _myObj, _b] execVM "PMC\PMC_Create_Trigger_Guerrilla_Seized.sqf";
	[_newPos, _myObj, _b] execVM "PMC\PMC_Create_Single_Task.sqf";
	_b = _b + 1;

	_a = _a + 1;
};
hint format["while exited count _tmpList: %1 and _A: %2.", (count _tmpList), _A];
