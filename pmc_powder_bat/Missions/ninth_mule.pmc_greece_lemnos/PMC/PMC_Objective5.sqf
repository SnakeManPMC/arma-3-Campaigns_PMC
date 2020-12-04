
PMCHQ sideChat "Objective 5 cleared, nice work, keep it up. HQ over.";

"pmc_marker_obj_5" setMarkerColorLocal "colorblue";
"pmc_marker_obj_5" setMarkerTypeLocal "mil_dot";

["t5", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

pmc_opfordead5 = true;
