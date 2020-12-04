
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Clear <marker name='pmc_marker_obj_1'>old outpost</marker> any enemies you'll find.","Old Outpost","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Sweep and clear <marker name='pmc_marker_obj_2'>radio masts</marker> towards north east.","Structures","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
