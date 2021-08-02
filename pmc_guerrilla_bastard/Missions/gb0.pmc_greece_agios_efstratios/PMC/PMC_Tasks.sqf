
//[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Assault and capture <marker name='pmc_marker_obj_1'>Agios Chepas</marker> buildings.","Agios Chepas","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Capture <marker name='pmc_marker_obj_2'>Air Station Mike-26</marker> from enemy forces.","Air Station Mike-26","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
