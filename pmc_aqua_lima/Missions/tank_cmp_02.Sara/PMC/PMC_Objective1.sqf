
player sideChat "Objective 1 completed. Over.";

"target1" setMarkerColor "colorgreen";
"target1" setMarkerType "mil_dot";
 pmc_opfordead1 = true;

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
