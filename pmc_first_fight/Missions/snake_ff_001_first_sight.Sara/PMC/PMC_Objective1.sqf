
// PMC_Objective1.sqf

PMCHQ sideRadio "Rhqreply1";
"target1" setMarkerType "mil_dot";
"target1" setMarkerColor "colorgreen";
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
