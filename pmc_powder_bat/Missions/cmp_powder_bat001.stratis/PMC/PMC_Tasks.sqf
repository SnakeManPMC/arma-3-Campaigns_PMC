
[player,["t1"],["Assault and capture <marker name='pmc_marker_obj_1'>Tsoukalia</marker> buildings.","Tsoukalia","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Capture <marker name='pmc_marker_obj_2'>Camp Maxwell</marker> from enemy forces.","Camp Maxwell","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
