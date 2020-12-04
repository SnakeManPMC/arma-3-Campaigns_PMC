
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Clear <marker name='pmc_marker_obj_1'>building 1</marker>.","Clear Building 1","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Clear <marker name='pmc_marker_obj_2'>building 2</marker>.","Clear Building 2","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Clear <marker name='pmc_marker_obj_3'>Xirolimni Damn</marker>.","Clear Xirolimni Damn","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

[player,["t4"],["Clear <marker name='pmc_marker_obj_4'>warehouse 1</marker>.","Clear Warehouse 1","text4"],(getPos pmc_4),1,2,true] call BIS_fnc_taskCreate;

[player,["t5"],["Clear <marker name='pmc_marker_obj_5'>warehouse 2</marker>.","Clear Warehouse 2","text5"],(getPos pmc_5),1,2,true] call BIS_fnc_taskCreate;

[player,["t6"],["Clear <marker name='pmc_marker_obj_6'>warehouse 3</marker>.","Clear Warehouse 3","text6"],(getPos pmc_6),1,2,true] call BIS_fnc_taskCreate;

[player,["t7"],["Clear <marker name='pmc_marker_obj_7'>warehouse 4</marker>.","Clear Warehouse 4","text7"],(getPos pmc_7),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
