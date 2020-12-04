
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Sweeo <marker name='pmc_marker_obj_1'>mountain 1</marker>.","Sweep Mountain 1","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Check <marker name='pmc_marker_obj_2'>radio tower</marker>.","Check Radio Tower","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Sweep <marker name='pmc_marker_obj_3'>mountain 2</marker>.","Sweep Mountain 2","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

[player,["t4"],["Sweep <marker name='pmc_marker_obj_4'>village</marker>.","Sweep Village","text4"],(getPos pmc_4),1,2,true] call BIS_fnc_taskCreate;

[player,["t5"],["Clear <marker name='pmc_marker_obj_5'>compounds</marker>.","Clear Compounds","text5"],(getPos pmc_5),1,2,true] call BIS_fnc_taskCreate;

[player,["t6"],["Capture <marker name='pmc_marker_obj_6'>Dorida north</marker>.","Capture Dorida North","text6"],(getPos pmc_6),1,2,true] call BIS_fnc_taskCreate;

[player,["t7"],["Capture <marker name='pmc_marker_obj_7'>Dorida south</marker>.","Capture Dorida South","text7"],(getPos pmc_7),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
