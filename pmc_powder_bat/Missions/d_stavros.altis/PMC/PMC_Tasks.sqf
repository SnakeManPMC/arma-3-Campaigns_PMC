
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Enemy counter attack is underway, defend <marker name='pmc_marker_stavros'>Stavros</marker> city at all costs.","Defend Stavros","text1"],(getPos pmc_stavros),1,2,true] call BIS_fnc_taskCreate;
