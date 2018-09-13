
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Clear <marker name='pmc_marker_obj_1'>compound</marker>.","Clear Compound","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Check <marker name='pmc_marker_obj_2'>bridge 1</marker>.","Check Bridge 1","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Check <marker name='pmc_marker_obj_3'>bridge 2</marker>.","Check Bridge 2","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

[player,["t4"],["Capture <marker name='pmc_marker_obj_4'>Chalkeia west</marker>.","Capture Chalkeia West","text4"],(getPos pmc_4),1,2,true] call BIS_fnc_taskCreate;

[player,["t5"],["Capture <marker name='pmc_marker_obj_5'>Chalkeia east</marker>.","Capture Chalkeia East","text5"],(getPos pmc_5),1,2,true] call BIS_fnc_taskCreate;

[player,["t6"],["Clear <marker name='pmc_marker_obj_6'>Chalkeia cemetary</marker>.","Clear Chalkeia Cemetary","text6"],(getPos pmc_6),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
