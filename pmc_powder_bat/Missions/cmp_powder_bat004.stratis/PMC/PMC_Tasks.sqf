
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Pass through and clear <marker name='pmc_marker_obj_1'>Srognos Bay area</marker> for any enemies.","Strognos Bay Area","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Assault and clear <marker name='pmc_marker_obj_2'>Girna</marker> town.","Clear Girna","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Return to <marker name='pmc_marker_obj_3'>Camp Maxwell</marker> to accomplish your mission.","Return to Maxwell","text2"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
