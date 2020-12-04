
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Sweep <marker name='pmc_marker_obj_1'>compounds</marker>.","Sweep Compounds","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Clear <marker name='pmc_marker_obj_2'>compound 1</marker>.","Clear Compound 1","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Clear <marker name='pmc_marker_obj_3'>church</marker>.","Clear Church","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

[player,["t4"],["Check <marker name='pmc_marker_obj_4'>compound 2</marker>.","Check Compound 2","text4"],(getPos pmc_4),1,2,true] call BIS_fnc_taskCreate;

[player,["t5"],["Capture <marker name='pmc_marker_obj_5'>Kalithea harbor</marker>.","Capture Kalithea Harbor","text5"],(getPos pmc_5),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
