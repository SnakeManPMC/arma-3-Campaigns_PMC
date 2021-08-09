// PMC_Objectives.sqf
systemChat "PMC_Objectives running.";

// objectives achieved
pmc_objective1 = false;
pmc_objective2 = false;
pmc_objective3 = false;
pmc_objective4 = false;
pmc_objective5 = false;
pmc_objective6 = false;
pmc_objective7 = false;
pmc_objective8 = false;

// start monitor objectives
[] execVM "PMC\PMC_Objective1.sqf";
[] execVM "PMC\PMC_Objective2.sqf";
[] execVM "PMC\PMC_Objective3.sqf";
[] execVM "PMC\PMC_Objective4.sqf";
[] execVM "PMC\PMC_Objective5.sqf";
[] execVM "PMC\PMC_Objective6.sqf";
[] execVM "PMC\PMC_Objective7.sqf";
[] execVM "PMC\PMC_Objective8.sqf";

waitUntil
{
	sleep 30;
	systemChat format
	[
		"%1, pmc_objective1: %2,
		pmc_objective2: %3,
		pmc_objective3: %4,
		pmc_objective4: %5,
		pmc_objective5: %6,
		pmc_objective6: %7,
		pmc_objective7: %8,
		pmc_objective8: %9",
		time,
		pmc_objective1,
		pmc_objective2,
		pmc_objective3,
		pmc_objective4,
		pmc_objective5,
		pmc_objective6,
		pmc_objective7,
		pmc_objective8
	];
	(pmc_objective1 && pmc_objective2 && pmc_objective3 && pmc_objective4 && pmc_objective5 && pmc_objective6 && pmc_objective7 && pmc_objective8);
};

// both objectives are achieved, ie true, we end the mission
"pmc_end1" call BIS_fnc_endMission;
