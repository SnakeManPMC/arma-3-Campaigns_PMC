
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[] execVM "PMC\PMC_Objectives.sqf";
[player, "PMC_Choose_LZ", nil, nil, ""] call BIS_fnc_addCommMenuItem;
[] execVM "PMC\PMC_LoadStatus.sqf";

"lz" setMarkerPos [-2000,-2000,0];
