
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Enemy counter attack is on way, defend <marker name='pmc_marker_fob_eagle'>FOB Eagle</marker> at all costs.","Defend FOB Eagle","text1"],(getPos pmc_fob_eagle),1,2,true] call BIS_fnc_taskCreate;
