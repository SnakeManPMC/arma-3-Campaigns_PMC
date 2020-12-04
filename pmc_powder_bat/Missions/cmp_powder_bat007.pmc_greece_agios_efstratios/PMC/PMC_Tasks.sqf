
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Check and clear <marker name='pmc_marker_obj_1'>structures</marker> so no enemies are left behind lurking.","Structures","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Assault <marker name='pmc_marker_obj_2'>Kamino</marker> and clear the whole area.","Kamino Area","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
