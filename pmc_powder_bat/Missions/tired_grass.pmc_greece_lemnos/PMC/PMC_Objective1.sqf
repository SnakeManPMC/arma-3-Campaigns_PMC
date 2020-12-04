
PMCHQ sideChat "Objective 1 cleared, great job, now push on. HQ out.";

"pmc_marker_obj_1" setMarkerColorLocal "colorblue";
"pmc_marker_obj_1" setMarkerTypeLocal "mil_dot";

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

pmc_opfordead1 = true;
