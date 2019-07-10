
// ware house complex
PMCHQ sideChat "Warehouse complex cleared, well done. HQ out.";

"pmc_marker_obj_4" setMarkerColorLocal "colorblue";
"pmc_marker_obj_4" setMarkerTypeLocal "mil_dot";

["t4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
