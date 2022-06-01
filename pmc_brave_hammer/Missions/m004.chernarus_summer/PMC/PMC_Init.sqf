
PMC_mission_read_for_end = false;

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[] execVM "PMC\PMC_Objectives.sqf";
[] execVM "PMC\PMC_LoadStatus.sqf";

// CUP MQ-9 Reaper drone
pmc_drone_reaper flyInHeightASL [2000, 2000, 2000];

private _grp = group pmc_drone_reaper;
private _wp = _grp addWaypoint [position player, 0];
[_grp, 1] setWaypointType "LOITER";
[_grp, 1] setWaypointLoiterRadius 2000;
[_grp, 1] setWaypointLoiterType "CIRCLE";
