
[player,["t1"],["Clear <marker name='pmc_marker_obj_1'>buildings south</marker>.","Clear Buildings South","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Clear <marker name='pmc_marker_obj_2'>buildings north</marker>.","Clear Buildings North","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
