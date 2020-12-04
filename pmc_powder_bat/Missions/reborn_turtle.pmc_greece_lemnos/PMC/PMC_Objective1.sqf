
PMCHQ sideChat "Objective 1 captured, great job, congrats. HQ out.";

"pmc_marker_obj_1" setMarkerColorLocal "colorblue";
"pmc_marker_obj_1" setMarkerTypeLocal "mil_dot";

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

sleep 15;
[] execVM "PMC\PMC_EndMission.sqf";
