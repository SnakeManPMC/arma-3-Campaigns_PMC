
player sideChat "Objective 2 completed. Over.";

"target2" setMarkerColor "colorgreen";
"target2" setMarkerType "mil_dot";
 pmc_opfordead2 = true;

["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
