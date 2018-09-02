
// campaign init, stuff that needs to be set in campaign start, however weaponPool for briefing -> team -> inventory wont get executed in time here

// these are just to have the saveVar's for all cutscenes in the development case when you endmission cheat
PMC_LastMissionDateTime = date;
saveVar "PMC_LastMissionDateTime";

PMC_LastMissionOvercast = overcast;
saveVar "PMC_LastMissionOvercast";

PMC_CampaignDeaths = 0;
saveVar "PMC_CampaignDeaths";

diag_log format["PMC_CampaignInit, PMC_LastMissionDateTime: %1, PMC_LastMissionOvercast: %2, PMC_CampaignDeaths: %3", PMC_LastMissionDateTime, PMC_LastMissionOvercast, PMC_CampaignDeaths];
