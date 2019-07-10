
// ends patrol mission and sets some enemy KIA stats

// t1 patrol task
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

if (isNil "PMC_PatrolMissionsKIAs") then { PMC_PatrolMissionsKIAs = 0; };

PMC_PatrolMissionsKIAs = PMC_PatrolMissionsKIAs + PMC_killedNum;

private _pmcStr = format["Current patrols enemy KIAs: %1, all patrol mission KIAs: %2", PMC_killedNum, PMC_PatrolMissionsKIAs];
saveVar "PMC_PatrolMissionsKIAs";

sleep 3;
titleText[_pmcStr, "plain", 3];
sleep 7;

[] execVM "PMC\PMC_EndMission.sqf";
