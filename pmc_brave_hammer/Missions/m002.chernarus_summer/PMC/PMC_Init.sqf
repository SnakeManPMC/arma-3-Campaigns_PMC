
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[] execVM "PMC\PMC_Objectives.sqf";
[] execVM "PMC\PMC_LoadStatus.sqf";
[player, "PMC_Choose_LZ", nil, nil, ""] call BIS_fnc_addCommMenuItem;

"lz" setMarkerPos [-2000,-2000,0];

[EAST,0,0,0.33,0.33] call BIS_fnc_EXP_camp_setSkill;
