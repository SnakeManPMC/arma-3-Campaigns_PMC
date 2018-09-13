
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Capture <marker name='pmc_marker_obj_1'>factory</marker>.","Capture Factory","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Clear <marker name='pmc_marker_obj_2'>warehouse 1</marker>.","Clear Warehouse 1","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Clear <marker name='pmc_marker_obj_3'>industrial site</marker>.","Clear Industrial Site","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

[player,["t4"],["Clear <marker name='pmc_marker_obj_4'>warehouse 2</marker>.","Clear Warehouse 2","text4"],(getPos pmc_4),1,2,true] call BIS_fnc_taskCreate;

[player,["t5"],["Capture <marker name='pmc_marker_obj_5'>Agios Dionysios west</marker>.","Capture Agios Dionysios West","text5"],(getPos pmc_5),1,2,true] call BIS_fnc_taskCreate;

[player,["t6"],["Capture <marker name='pmc_marker_obj_6'>Agios Dionysios downtown</marker>.","Capture Agios Dionysios Downtown","text6"],(getPos pmc_6),1,2,true] call BIS_fnc_taskCreate;

[player,["t7"],["Capture <marker name='pmc_marker_obj_7'>Agios Dionysios east</marker>.","Capture Agios Dionysios East","text7"],(getPos pmc_7),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
