// PMC_Objectives.sqf
systemChat "PMC_Objectives running.";

// objectives achieved
pmc_objective1 = false;

// start monitor objectives
[] execVM "PMC\PMC_Objective1.sqf";

waitUntil
{
	sleep 30;
	systemChat format["%1, pmc_objective1: %2", time, pmc_objective1];
	(pmc_objective1);
};

// both objectives are achieved, ie true, we end the mission
"pmc_end1" call BIS_fnc_endMission;
