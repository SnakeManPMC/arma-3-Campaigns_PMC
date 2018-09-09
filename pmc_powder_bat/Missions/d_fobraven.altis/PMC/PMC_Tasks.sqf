
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Enemy counter attack is on way, defend <marker name='pmc_marker_fob_raven'>FOB Raven</marker> at all costs.","Defend FOB Raven","text1"],(getPos pmc_fob_raven),1,2,true] call BIS_fnc_taskCreate;
