/*

	Created at 2021-08-21T07:06:28Z with Mission Converter v0.0.1 by PMC

*/
/*

	task ID should be: 1

*/
["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
 "target1" setMarkerColor "colorgreen";
 leader assault1 sideChat "This is 1-1-A. Target has been neutralized, mission accomplished. Out.";
 PMC_mcomplete = true;

