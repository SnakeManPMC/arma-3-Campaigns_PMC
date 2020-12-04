
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Capture <marker name='pmc_marker_obj_1'>buildings 1</marker>.","Capture Buildings 1","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Capture <marker name='pmc_marker_obj_2'>buildings 2</marker>.","Capture Buildings 2","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Capture <marker name='pmc_marker_obj_3'>buildings 3</marker>.","Capture Buildings 3","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

[player,["t4"],["Capture <marker name='pmc_marker_obj_4'>buildings 4</marker>.","Capture Buildings 4","text4"],(getPos pmc_4),1,2,true] call BIS_fnc_taskCreate;

[player,["t5"],["Capture <marker name='pmc_marker_obj_5'>buildings 5</marker>.","Capture Buildings 5","text5"],(getPos pmc_5),1,2,true] call BIS_fnc_taskCreate;

[player,["t6"],["Capture <marker name='pmc_marker_obj_6'>buildings 6</marker>.","Capture Buildings 6","text6"],(getPos pmc_6),1,2,true] call BIS_fnc_taskCreate;

[player,["t7"],["Capture <marker name='pmc_marker_obj_7'>buildings 7</marker>.","Capture Buildings 7","text7"],(getPos pmc_7),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
