
// PMC_Objective3.sqf

PMCHQ sideRadio "Rhqreply3";
"target3" setMarkerType "mil_dot";
"target3" setMarkerColor "colorgreen";
["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
