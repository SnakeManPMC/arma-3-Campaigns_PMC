
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Capture <marker name='pmc_marker_obj_1'>buildings</marker>.","Capture Buildings","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Clear <marker name='pmc_marker_obj_2'>compounds</marker>.","Clear Compounds","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Capture <marker name='pmc_marker_obj_3'>Athanos</marker>.","Capture Athanos","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
