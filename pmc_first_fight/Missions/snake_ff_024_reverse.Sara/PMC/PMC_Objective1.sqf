/*

	Created at 2021-08-21T07:06:28Z with Mission Converter v0.0.1 by PMC

*/
/*

	task ID should be: 1

*/
PMCHQ sideChat "Roger that, good work. HQ out.";
 ["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
 "target1" setMarkerType "mil_dot";
 "target1" setMarkerColor "colorgreen";
 mcomplete=true;

