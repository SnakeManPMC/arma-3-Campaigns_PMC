
PMCHQ sideChat "Objective 6 cleared, great job, congratulations for your team. HQ over.";

"pmc_marker_obj_6" setMarkerColorLocal "colorblue";
"pmc_marker_obj_6" setMarkerTypeLocal "mil_dot";

["t6", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

pmc_opfordead6 = true;
