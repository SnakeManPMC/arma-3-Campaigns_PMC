
PMCHQ = [West, "HQ"];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_LoadStatus.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[] execVM "PMC\PMC_Objectives.sqf";

helo1 flyInHeight 0;
mfr = group pmc_mfr1;

[player, "PMC_ReconDamDone", nil, nil, ""] call BIS_fnc_addCommMenuItem;
[player, "PMC_ReconAirstripDone", nil, nil, ""] call BIS_fnc_addCommMenuItem;
