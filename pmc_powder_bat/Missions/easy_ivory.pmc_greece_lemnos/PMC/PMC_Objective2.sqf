
// radio tower
PMCHQ sideChat "Radio tower cleared, good job. HQ out.";

"pmc_marker_obj_2" setMarkerColorLocal "colorblue";
"pmc_marker_obj_2" setMarkerTypeLocal "mil_dot";

["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
