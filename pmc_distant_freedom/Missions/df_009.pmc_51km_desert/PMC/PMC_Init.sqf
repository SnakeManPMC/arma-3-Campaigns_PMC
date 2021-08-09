
// year, month, day, hour, minute
setDate [2010, 3, 9, 10, 20];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";

// short wait to get mission started
sleep 3;
[] execVM "PMC\PMC_Objectives.sqf";
