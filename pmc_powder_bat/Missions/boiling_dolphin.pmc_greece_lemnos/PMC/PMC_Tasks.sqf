
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Clear <marker name='pmc_marker_obj_1'>hilltop</marker>.","Clear Hilltop","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Capture <marker name='pmc_marker_obj_2'>Orino</marker>.","Capture Orino","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
