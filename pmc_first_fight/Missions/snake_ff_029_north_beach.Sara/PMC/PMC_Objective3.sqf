/*

	Created at 2021-08-21T07:06:28Z with Mission Converter v0.0.1 by PMC

*/
/*

	task ID should be: 3

*/
PMCHQ sideChat "There is massive enemy counterttack spotted in SE heading to Rashidah. Stop them at all costs. Over.";
[player,["objective2"],["Defend Rashidah against enemy <marker name = 'attack'>counter attack</marker>! Use radio 0-0-2 to call HQ when you have stopped enemy attack.","Defend Rashidah against enemy <marker name = 'attack'>counter attack</marker>! Use radio 0-0-2 to call HQ when you have stopped enemy attack.","Defend Rashidah against enemy <marker name = 'attack'>counter attack</marker>! Use radio 0-0-2 to call HQ when you have stopped enemy attack."],objNull,1,2,true] call BIS_fnc_taskCreate;
 "attack" setMarkerType "Arrow";

