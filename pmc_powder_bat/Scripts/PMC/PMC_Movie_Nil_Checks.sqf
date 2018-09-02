
diag_log "PMC scripts\PMC\PMC_Movie_Nil_Checks.sqf running from successful #include";
/*
diag_log format
[
	"PMC m011 Cutscene, PMC_CampaignDeaths: %1, PMC_AmmoBoxFOB11: %2, PMC_AmmoTruck1: %3, PMC_LastMissionDateTime: %4, PMC_LastMissionOvercast: %5",
	PMC_CampaignDeaths,
	PMC_AmmoBoxFOB11,
	PMC_AmmoTruck1,
	PMC_LastMissionDateTime,
	PMC_LastMissionOvercast
];

diag_log format["PMC m011Cut, PMC_LastMissionDateTime: %1, PMC_LastMissionOvercast: %2", PMC_LastMissionDateTime, PMC_LastMissionOvercast];
*/

if (isNil "PMC_CampaignDeaths") then
{
	PMC_CampaignDeaths = 0;
	diag_log "PMC_CampaignDeaths is NIL, so set to zero";
};

if (isNil "PMC_LastMissionDateTime") then
{
	PMC_LastMissionDateTime = date;
	diag_log "PMC_LastMissionDateTime is NIL, so set to todays date.";
};

if (isNil "PMC_LastMissionOvercast") then
{
	PMC_LastMissionOvercast = overcast;
	diag_log "PMC_LastMissionOvercast is NIL, so set to overcast.";
};
