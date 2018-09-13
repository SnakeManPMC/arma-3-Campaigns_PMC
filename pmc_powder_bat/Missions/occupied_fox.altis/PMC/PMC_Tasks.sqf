
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Capture <marker name='pmc_marker_obj_1'>football field</marker>.","Capture Football Field","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Capture <marker name='pmc_marker_obj_2'>gas station</marker>.","Capture Gas Station","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Capture <marker name='pmc_marker_obj_3'>Aggelochori north west</marker>.","Capture Aggelochori North West","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

[player,["t4"],["Capture <marker name='pmc_marker_obj_4'>Aggelochori north east</marker>.","Capture Aggelochori North East","text4"],(getPos pmc_4),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
