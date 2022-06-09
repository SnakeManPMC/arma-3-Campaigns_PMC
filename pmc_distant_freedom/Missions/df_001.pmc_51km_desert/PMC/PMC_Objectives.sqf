// PMC_Objectives.sqf
//systemChat "PMC_Objectives running.";

pmc_objective1 = false;
pmc_objective2 = false;

[] execVM "PMC\PMC_Objective1.sqf";
[] execVM "PMC\PMC_Objective2.sqf";

waitUntil
{
	sleep 30;
//	systemChat format["%1, pmc_objective1: %2, pmc_objective2: %3", time, pmc_objective1, pmc_objective2];
	(pmc_objective1 && pmc_objective2);
};

"pmc_end1" call BIS_fnc_endMission;
