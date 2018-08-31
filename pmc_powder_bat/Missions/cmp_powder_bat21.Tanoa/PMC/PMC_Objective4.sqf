
PMCHQ sideChat "Objective 4 cleared, well done. HQ over.";

"pmc_marker_obj_4" setMarkerColorLocal "colorblue";
"pmc_marker_obj_4" setMarkerTypeLocal "mil_dot";

["t4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

pmc_opfordead4 = true;
