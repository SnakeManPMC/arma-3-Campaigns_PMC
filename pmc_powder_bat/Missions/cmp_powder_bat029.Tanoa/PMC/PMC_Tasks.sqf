
[player,["t1"],["Check <marker name='pmc_marker_obj_1'>La Rochelle port</marker>.","La Rochelle Port","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Clear <marker name='pmc_marker_obj_2'>La Rochelle port west</marker>.","La Rochelle Port West","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Clear <marker name='pmc_marker_obj_3'>La Rochelle port east</marker>.","La Rochelle Port East","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
