
PMCHQ = [ West, "BASE" ];

player setVariable ["BIS_enableRandomization", false];
player setVariable ["BIS_noCoreConversations", true];
[1.1] execVM "PMC\PMC_weather_SP.sqf";

/* DEBUG FOR PLAY TESTING, REMOVE THIS COMMENT WHEN RELEASING!
// campaign init, remove war stuff from our guy
removeAllWeapons player;
removeVest player;
removeHeadgear player;
removeGoggles player;
removeAllAssignedItems player;
removeAllItems player;
*/
PMC_loc = call compile preprocessFileLineNumbers "PMC\PMC_locationFinder_test.sqf";

// choose BLUFOR / OPFOR positions for HQ's.
// problem with this is they can be right next to each other and in _everywhere_ haha
_tmpList = PMC_loc;
_ran = floor random (count _tmpList);
_myPos = (_tmpList select _ran);
_tmpList set [_ran, "DELETEME"];
_tmpList = _tmpList - ["DELETEME"];
_newPos = [_myPos, 0, 500, 5, 0, 20, 0] call BIS_fnc_findSafePos;
PMC_hqBLUFOR = _newPos;

_ran = floor random (count _tmpList);
_myPos = (_tmpList select _ran);
_newPos = [_myPos, 0, 500, 5, 0, 20, 0] call BIS_fnc_findSafePos;
PMC_hqOPFOR = _newPos;
saveVar "PMC_hqBLUFOR";
saveVar "PMC_hqOPFOR";

/* DEBUG FOR PLAY TESTING, REMOVE THIS COMMENT WHEN RELEASING!
*/
hint format["Headquarters created.\n\nBLUFOR HQ: %1\nOPFOR HQ: %2", PMC_hqBLUFOR, PMC_hqOPFOR];
