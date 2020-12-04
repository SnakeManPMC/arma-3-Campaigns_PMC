
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Clear <marker name='pmc_marker_obj_1'>structures 1</marker>.","Clear Structures 1","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Clear <marker name='pmc_marker_obj_2'>structures 2</marker>.","Clear Structures 2","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Clear <marker name='pmc_marker_obj_3'>structures 3</marker>.","Clear Structures 3","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

[player,["t4"],["Clear <marker name='pmc_marker_obj_4'>structures 4</marker>.","Clear Structures 4","text4"],(getPos pmc_4),1,2,true] call BIS_fnc_taskCreate;

[player,["t5"],["Clear <marker name='pmc_marker_obj_5'>structures 5</marker>.","Clear Structures 5","text5"],(getPos pmc_5),1,2,true] call BIS_fnc_taskCreate;

[player,["t6"],["Clear <marker name='pmc_marker_obj_6'>structures 6</marker>.","Clear Structures 6","text6"],(getPos pmc_6),1,2,true] call BIS_fnc_taskCreate;

[player,["t7"],["Clear <marker name='pmc_marker_obj_7'>structures 7</marker>.","Clear Structures 7","text7"],(getPos pmc_7),1,2,true] call BIS_fnc_taskCreate;

[player,["t8"],["Clear <marker name='pmc_marker_obj_8'>structures 8</marker>.","Clear Structures 8","text8"],(getPos pmc_8),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
