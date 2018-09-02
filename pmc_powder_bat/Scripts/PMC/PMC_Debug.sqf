
private _pmcStr = format
[
	"PMC_CurrentMissionDeaths: %1\n
	PMC_LastMissionDateTime: %2\n
	PMC_LastMissionOvercast: %3\n
	PMC_CampaignDeaths: %4",
	PMC_CurrentMissionDeaths,
	PMC_LastMissionDateTime,
	PMC_LastMissionOvercast,
	PMC_CampaignDeaths
];

hintSilent _pmcStr;
