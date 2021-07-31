/*

	Created at 2021-07-30T05:31:55Z with Mission Converter v0.0.1 by PMC

*/
leader assault1 sideRadio "Reastdead1";
sleep 15;

PAPABEAR sideRadio "Rmcomplete";
sleep 3;

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
sleep 15;

["PMC_end1", true, 2] call BIS_fnc_endMission;
