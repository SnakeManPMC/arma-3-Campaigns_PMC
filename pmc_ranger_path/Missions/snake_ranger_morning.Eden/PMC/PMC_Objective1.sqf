/*

	Created at 2021-08-21T09:33:21Z with Mission Converter v0.0.1 by PMC

*/
/*

	task ID should be: 1

*/
PAPABEAR sideRadio "Rhqreply1";
 ["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
 2 setRadioMsg "Call - Extract";
 hint "call extract available";
 "target1" setMarkerType "mil_dot";
 "target1" setMarkerColor "colorgreen";

