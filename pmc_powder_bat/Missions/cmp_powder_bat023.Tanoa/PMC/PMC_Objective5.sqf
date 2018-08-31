
PMCHQ sideChat "Objective 5 cleared, great job!, your mission is accomplished. HQ over.";

"pmc_marker_obj_5" setMarkerColorLocal "colorblue";
"pmc_marker_obj_5" setMarkerTypeLocal "mil_dot";

["t5", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

pmc_opfordead5 = true;
