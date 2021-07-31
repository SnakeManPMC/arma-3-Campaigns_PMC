
// mission ends, base defended and we call PMC_end1
PAPABEAR sideRadio "Rhqreply1";
["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

sleep 7;
"pmc_end1" call BIS_fnc_endMission;
