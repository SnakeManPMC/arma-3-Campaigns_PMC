
[player,["t1"],["Capture <marker name='pmc_marker_obj_1'>Zaros South</marker> area.","Capture Zaros South","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Capture <marker name='pmc_marker_obj_2'>Zaros North</marker> area.","Capture Zaros North","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
