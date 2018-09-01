
// do not add any sleep or long processes here as they will NOT be executed before mission shuts down

diag_log "PMC Powder Bat scripts\PMC_MissionEnd.sqf executed.";

// generic mission end for ALL the missions. do not put any mission specific stuff here

PMC_LastMissionDateTime = date;
saveVar "PMC_LastMissionDateTime";

PMC_LastMissionOvercast = overcast;
saveVar "PMC_LastMissionOvercast";

diag_log format["PMC_LastMissionDateTime: %1, PMC_LastMissionOvercast: %2", PMC_LastMissionDateTime, PMC_LastMissionOvercast];
