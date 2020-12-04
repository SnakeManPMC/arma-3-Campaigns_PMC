
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Capture <marker name='pmc_marker_obj_1'>FOB</marker> area.","Capture FOB","text1"],(getPos pmc_objective_1),1,2,true] call BIS_fnc_taskCreate;
// pmc_marker_obj_2 radio tower
[player,["t2"],["Clear <marker name='pmc_marker_obj_2'>Radio tower</marker>.","Clear Radio Tower","text1"],(getPos pmc_objective_2),1,2,true] call BIS_fnc_taskCreate;
// pmc_marker_obj_3 another radio tower
[player,["t3"],["Clear <marker name='pmc_marker_obj_3'>Another radio tower</marker>.","Clear Another Radio Tower","text1"],(getPos pmc_objective_3),1,2,true] call BIS_fnc_taskCreate;
// pmc_marker_obj_4 warehouse complex
[player,["t4"],["Capture <marker name='pmc_marker_obj_4'>Warehouse complex</marker> area.","Capture Warehouse Complex","text1"],(getPos pmc_objective_3),1,2,true] call BIS_fnc_taskCreate;

["t2", "ASSIGNED"] call BIS_fnc_taskSetState;
