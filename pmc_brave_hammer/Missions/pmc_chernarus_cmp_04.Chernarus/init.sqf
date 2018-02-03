
// for mission ending trigger.
PMC_mission_read_for_end = false;

// load team status
mfr1 loadStatus "mfr1";
mfr2 loadStatus "mfr2";
mfr3 loadStatus "mfr3";
mfr4 loadStatus "mfr4";
mfr5 loadStatus "mfr5";
mfr6 loadStatus "mfr6";

// create briefing objectives
[] execVM "briefing.sqf";
