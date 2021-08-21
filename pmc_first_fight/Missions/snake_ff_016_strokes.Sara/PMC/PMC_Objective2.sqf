/*

	Created at 2021-08-21T07:06:28Z with Mission Converter v0.0.1 by PMC

*/
/*

	task ID should be: 2

*/
PMCHQ sideRadio "Rdefend1";
 ["t1", "FAILED", true] spawn BIS_fnc_taskSetState;
 "target1" setMarkerTypeLocal "dot";
 "target1" setMarkerColor "colorgreen";

// create t2 here, huh?
[player,["objective2"],["Defend <marker name = 'target2'>Estrella</marker>","Defend <marker name = 'target2'>Estrella</marker>","Defend <marker name = 'target2'>Estrella</marker>"],objNull,1,2,true] call BIS_fnc_taskCreate;
 "target2" setMarkerType "flag";
 hint "Briefing Updated.";

