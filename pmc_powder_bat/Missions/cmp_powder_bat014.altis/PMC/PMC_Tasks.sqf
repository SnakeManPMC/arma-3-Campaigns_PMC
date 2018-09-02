
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Capture <marker name='pmc_marker_obj_1'>AAC Airfield</marker>, without damaging the buildings.","Capture AAC Airfield","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Sweep <marker name='pmc_marker_obj_2'>Drimea</marker> area of any enemy activity.","Sweep Drimea","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Check <marker name='pmc_marker_obj_3'>area</marker> and neutralize hostiles.","Check Area","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

[player,["t4"],["Clear <marker name='pmc_marker_obj_4'>house</marker> if enemies present.","Clear House","text4"],(getPos pmc_4),1,2,true] call BIS_fnc_taskCreate;

["t3", "ASSIGNED"] call BIS_fnc_taskSetState;
