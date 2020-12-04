
// another radio tower
PMCHQ sideChat "Another radio tower cleared, good job. HQ out.";

"pmc_marker_obj_3" setMarkerColorLocal "colorblue";
"pmc_marker_obj_3" setMarkerTypeLocal "mil_dot";

["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
