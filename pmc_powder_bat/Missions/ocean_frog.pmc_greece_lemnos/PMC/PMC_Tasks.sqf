
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Capture <marker name='pmc_marker_obj_1'>military base</marker>.","Capture Military Base","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Clear <marker name='pmc_marker_obj_2'>warehouse 1</marker>.","Clear Warehouse 1","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Clear <marker name='pmc_marker_obj_3'>warehouse 2</marker>.","Clear Warehouse 2","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

[player,["t4"],["Clear <marker name='pmc_marker_obj_4'>compound</marker>.","Clear Compound","text4"],(getPos pmc_4),1,2,true] call BIS_fnc_taskCreate;

[player,["t5"],["Clear <marker name='pmc_marker_obj_5'>Pyrgos north</marker>.","Clear Pyrgos North","text5"],(getPos pmc_5),1,2,true] call BIS_fnc_taskCreate;

[player,["t6"],["Clear <marker name='pmc_marker_obj_6'>large buildings</marker>.","Clear Large Buildings","text6"],(getPos pmc_6),1,2,true] call BIS_fnc_taskCreate;

[player,["t7"],["Clear <marker name='pmc_marker_obj_7'>Pyrgos east</marker>.","Clear Pyrgos East","text7"],(getPos pmc_7),1,2,true] call BIS_fnc_taskCreate;

[player,["t8"],["Clear <marker name='pmc_marker_obj_8'>Pyrgos downtown</marker>.","Clear Pyrgos Downtown","text8"],(getPos pmc_8),1,2,true] call BIS_fnc_taskCreate;

[player,["t9"],["Clear <marker name='pmc_marker_obj_9'>harbor compound</marker>.","Clear Harbor Compound","text9"],(getPos pmc_9),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
