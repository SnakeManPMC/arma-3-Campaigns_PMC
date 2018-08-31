
PMCHQ sideChat "Objective 3 cleared, nice work, proceed. HQ over.";

"pmc_marker_obj_3" setMarkerColorLocal "colorblue";
"pmc_marker_obj_3" setMarkerTypeLocal "mil_dot";

["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

pmc_opfordead3 = true;
