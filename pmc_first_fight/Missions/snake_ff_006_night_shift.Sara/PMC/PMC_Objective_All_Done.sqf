
// PMC_Objective_All_Done.sqf

PMCHQ sideRadio "Rmcomplete";
mcomplete = true;
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
