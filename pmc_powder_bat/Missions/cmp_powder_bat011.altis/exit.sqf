
[] execVM "PMC\PMC_MissionEnd.sqf";

PMC_CampaignDeaths = PMC_CampaignDeaths + PMC_CurrentMissionDeaths;
saveVar "PMC_CampaignDeaths";
