
PMCHQ sideChat "Objective 2 cleared, nice work, I think that wraps it up boys. HQ over.";

"pmc_marker_obj_2" setMarkerColorLocal "colorblue";
"pmc_marker_obj_2" setMarkerTypeLocal "mil_dot";

["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

pmc_opfordead2 = true;