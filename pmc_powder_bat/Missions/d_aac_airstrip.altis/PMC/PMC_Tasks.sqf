
[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["We have spotted enemy counter attack on your way, defend <marker name='pmc_marker_airfield_1'>AAC Airfield</marker> at all costs.","Defend AAC Airfield","text1"],(getPos pmc_airfield_1),1,2,true] call BIS_fnc_taskCreate;
