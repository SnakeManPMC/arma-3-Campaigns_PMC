
setDate [2010, 3, 6, 6, 0];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";

sleep 3;
[] execVM "PMC\PMC_Objectives.sqf";
