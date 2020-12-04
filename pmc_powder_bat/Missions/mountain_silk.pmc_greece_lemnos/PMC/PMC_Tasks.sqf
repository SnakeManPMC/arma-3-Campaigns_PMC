
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Sweep <marker name='pmc_marker_obj_1'>mountain 1</marker>.","Sweep Mountain 1","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Sweep <marker name='pmc_marker_obj_2'>mountain 2</marker>.","Sweep Mountain 2","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Sweep <marker name='pmc_marker_obj_3'>mountain 3</marker>.","Sweep Mountain 3","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

[player,["t4"],["Sweep <marker name='pmc_marker_obj_4'>mountain 4</marker>.","Sweep Mountain 4","text4"],(getPos pmc_4),1,2,true] call BIS_fnc_taskCreate;

[player,["t5"],["Sweep <marker name='pmc_marker_obj_5'>mountain 5</marker>.","Sweep Mountain 5","text5"],(getPos pmc_5),1,2,true] call BIS_fnc_taskCreate;

[player,["t6"],["Return to <marker name='pmc_marker_fob_eagle'>FOB Eagle</marker>.","Return to FOB Eagle","text5"],(getPos pmc_fob_eagle),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
