/*

	Created at 2021-07-30T05:31:55Z with Mission Converter v0.0.1 by PMC

*/
/*

	task ID should be: 1

*/
PAPABEAR sideRadio "Rhqreply1";
["PMC_objective1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
"target1" setMarkerType "mil_dot";
"target1" setMarkerColor "colorgreen";
sleep 10;

["PMC_end1", true, 2] call BIS_fnc_endMission;
