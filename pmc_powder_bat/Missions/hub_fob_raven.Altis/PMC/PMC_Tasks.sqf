
//[player,["t0"],["Accomplish this mission with zero casualties for your group.","Zero Casualties","text1"],objNull,1,2,true] call BIS_fnc_taskCreate;

[player,["t1"],["Hangout at <marker name='pmc_marker_fob_raven'>FOB Raven</marker>","Hangout","text2"],(getPos pmc_fob_raven),1,2,true] call BIS_fnc_taskCreate;

["t1", "ASSIGNED"] call BIS_fnc_taskSetState;
