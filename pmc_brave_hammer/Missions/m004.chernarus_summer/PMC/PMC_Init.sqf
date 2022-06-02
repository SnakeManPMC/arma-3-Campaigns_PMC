
PMC_mission_read_for_end = false;

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[] execVM "PMC\PMC_Objectives.sqf";
[] execVM "PMC\PMC_LoadStatus.sqf";

// CUP MQ-9 Reaper drone
private _grp = group pmc_drone_reaper;
private _wp = _grp addWaypoint [position player, 0];
[_grp, 1] setWaypointBehaviour "CARELESS";
[_grp, 1] setWaypointCombatMode "BLUE";
[_grp, 1] setWaypointType "LOITER";
[_grp, 1] setWaypointLoiterRadius 2000;
[_grp, 1] setWaypointLoiterType "CIRCLE";
//[_grp, 1] setWaypointStatements ["true", "vehicle this flyInHeightASL [2350, 2350, 2350];"];

[] spawn { sleep 3; pmc_drone_reaper flyInHeightASL [2000, 2000, 2000]; };

PMCHQ = [ West, "BASE" ];
