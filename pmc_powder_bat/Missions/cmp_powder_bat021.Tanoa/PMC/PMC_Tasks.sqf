
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Capture <marker name='pmc_marker_obj_1'>training base</marker> from the enemy.","Training Base","text1"],(getPos pmc_1),1,2,true] call BIS_fnc_taskCreate;

[player,["t2"],["Neutralize <marker name='pmc_marker_obj_2'>Tuvanaka</marker> harbor village from bad guys.","Tuvanaka","text2"],(getPos pmc_2),1,2,true] call BIS_fnc_taskCreate;

[player,["t3"],["Clear <marker name='pmc_marker_obj_3'>Belfort</marker> harbor of any enemy forces.","Belfort","text3"],(getPos pmc_3),1,2,true] call BIS_fnc_taskCreate;

[player,["t4"],["Check <marker name='pmc_marker_obj_4'>Comms Whiskey</marker> for enemy presence.","Comms Whiskey","text4"],(getPos pmc_4),1,2,true] call BIS_fnc_taskCreate;

[player,["t5"],["Capture <marker name='pmc_marker_obj_5'>GSM Station</marker> from bad guys.","GSM Station","text5"],(getPos pmc_5),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
