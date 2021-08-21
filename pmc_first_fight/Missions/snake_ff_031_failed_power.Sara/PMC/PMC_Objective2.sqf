/*

	Created at 2021-08-21T07:06:28Z with Mission Converter v0.0.1 by PMC

*/
/*

	task ID should be: 2

*/
leader assault1 sideChat "1-1-A to HQ, ready for extraction. Over.";
 PMC_ExtractCalled = true;
 ["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
 "extract" setMarkerColor "colorgreen";

