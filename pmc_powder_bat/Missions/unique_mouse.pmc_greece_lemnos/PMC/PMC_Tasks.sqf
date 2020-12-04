
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Clear <marker name='pmc_marker_obj_1'>compound</marker>.","Clear Compound","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Capture <marker name='pmc_marker_obj_2'>military base</marker>.","Capture Military Base","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Capture <marker name='pmc_marker_obj_3'>factory</marker>.","Capture Factory","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

[player,["t4"],["Capture <marker name='pmc_marker_obj_4'>Lakka north</marker>.","Capture Lakka North","text4"],(getPos pmc_4),1,2,true] call BIS_fnc_taskCreate;

[player,["t5"],["Capture <marker name='pmc_marker_obj_5'>Lakka south</marker>.","Capture Lakka South","text5"],(getPos pmc_5),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
