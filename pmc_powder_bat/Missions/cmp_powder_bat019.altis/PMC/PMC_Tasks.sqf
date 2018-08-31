
[player,["t1"],["Sweep military <marker name='pmc_marker_obj_1'>outpost</marker> for any lurking enemies.","Sweep outpost","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Capture <marker name='pmc_marker_obj_2'>Stavros</marker> town from the enemy.","Capture Stavros","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
