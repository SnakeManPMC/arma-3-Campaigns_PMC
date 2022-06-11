
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[] execVM "PMC\PMC_LoadStatus.sqf";
[player, "PMC_GoToPatrol", nil, nil, ""] call BIS_fnc_addCommMenuItem;
