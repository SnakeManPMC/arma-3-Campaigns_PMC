
PMC_mission_read_for_end = false;

mfr1 loadStatus "mfr1";
mfr2 loadStatus "mfr2";
mfr3 loadStatus "mfr3";
mfr4 loadStatus "mfr4";
mfr5 loadStatus "mfr5";
mfr6 loadStatus "mfr6";

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[] execVM "PMC\PMC_Objectives.sqf";
