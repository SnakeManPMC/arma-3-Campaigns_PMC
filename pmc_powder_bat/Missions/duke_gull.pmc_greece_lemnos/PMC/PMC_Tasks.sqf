
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Clear <marker name='pmc_marker_obj_1'>building</marker>.","Clear Building","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Clear <marker name='pmc_marker_obj_2'>buildings</marker>.","Clear Buildings","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Clear <marker name='pmc_marker_obj_3'>buildings 2</marker>.","Clear Buildings 2","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

[player,["t4"],["Clear <marker name='pmc_marker_obj_4'>buildings 3</marker>.","Clear Buildings 3","text4"],(getPos pmc_4),1,2,true] call BIS_fnc_taskCreate;

[player,["t5"],["Clear <marker name='pmc_marker_obj_5'>buildings 4</marker>.","Clear Buildings 4","text5"],(getPos pmc_5),1,2,true] call BIS_fnc_taskCreate;

[player,["t6"],["Clear <marker name='pmc_marker_obj_6'>compound 1</marker>.","Clear Compound 1","text6"],(getPos pmc_6),1,2,true] call BIS_fnc_taskCreate;

[player,["t7"],["Clear <marker name='pmc_marker_obj_7'>compound 2</marker>.","Clear Compound 2","text7"],(getPos pmc_7),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
