
// PMC_Objective2.sqf

PMCHQ sideRadio "Rhqreply2";
"target2" setMarkerType "mil_dot";
"target2" setMarkerColor "colorgreen";
mcomplete = true;
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
