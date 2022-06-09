
setDate [2010, 3, 6, 6, 0];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";

[player, "PMC_ViewDistanceHardcoded", nil, nil, ""] call BIS_fnc_addCommMenuItem;

{
	player hcSetGroup [group _x, "", "teammain"];
} forEach
[
	pmc_m1a2_1,
	pmc_m1a2_2,
	pmc_m1a2_3,
	pmc_m1a2_4,
	pmc_m1a2_5,
	pmc_m1a2_6,
	pmc_m1a2_7,
	pmc_m1a2_8,
	pmc_uh60_1,
	pmc_uh60_2,
	pmc_stryker_1,
	pmc_stryker_2,
	pmc_stryker_3,
	pmc_stryker_4,
	pmc_usinf_1,
	pmc_usinf_2,
	pmc_usinf_3,
	pmc_usinf_4
];

sleep 3;
[] execVM "PMC\PMC_Objectives.sqf";
