
PMC_LastMissionDateTime = date;
saveVar "PMC_LastMissionDateTime";

PMC_LastMissionOvercast = overcast;
saveVar "PMC_LastMissionOvercast";

PMC_CampaignDeaths = PMC_CampaignDeaths + PMC_CurrentMissionDeaths;
saveVar "PMC_CampaignDeaths";
