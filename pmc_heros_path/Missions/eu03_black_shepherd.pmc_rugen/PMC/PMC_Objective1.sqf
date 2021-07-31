/*

	Created at 2021-07-30T05:31:55Z with Mission Converter v0.0.1 by PMC

*/
PAPABEAR sideRadio "Reastdead1";
sleep 5;

["PMC_objective2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
sleep 7;

["PMC_end1", true, 2] call BIS_fnc_endMission;
