
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Sweep <marker name='pmc_marker_obj_1'>warehouse 1</marker>.","Sweep Warehouse 1","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Sweep <marker name='pmc_marker_obj_2'>warehouse 2</marker>.","Sweep warehouse 2","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Sweep <marker name='pmc_marker_obj_3'>warehouse 3</marker>.","Sweep warehouse 3","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

[player,["t4"],["Sweep <marker name='pmc_marker_obj_4'>warehouse 4</marker>.","Sweep warehouse 4","text4"],(getPos pmc_4),1,2,true] call BIS_fnc_taskCreate;

[player,["t5"],["Sweep <marker name='pmc_marker_obj_5'>warehouse 5</marker>.","Sweep warehouse 5","text5"],(getPos pmc_5),1,2,true] call BIS_fnc_taskCreate;

[player,["t6"],["Sweep <marker name='pmc_marker_obj_6'>warehouse 6</marker>.","Sweep warehouse 6","text6"],(getPos pmc_6),1,2,true] call BIS_fnc_taskCreate;

[player,["t7"],["Capture <marker name='pmc_marker_obj_7'>Topolia</marker>.","Capture Topolia","text7"],(getPos pmc_7),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
