
if (isNil "pmc_dynsim_dudes_patrol") then { pmc_dynsim_dudes_patrol = "n/a"; };
if (isNil "pmc_dynsim_dudes_sentry") then { pmc_dynsim_dudes_sentry = "n/a"; };
if (isNil "pmc_fobdefense_dudes") then { pmc_fobdefense_dudes = "n/a"; };
if (isNil "PMC_killedNum") then { PMC_killedNum = "n/a"; };

private _pmcStr = format
[
	"PMC_CurrentMissionDeaths: %1\n
	PMC_LastMissionDateTime: %2\n
	PMC_LastMissionOvercast: %3\n
	PMC_CampaignDeaths: %4\n
	allUnits: %5\n
	pmc_dynsim_dudes_sentry: %6\n
	pmc_dynsim_dudes_patrol: %7\n
	pmc_fobdefense_dudes: %8\n
	PMC_killedNum: %9",
	PMC_CurrentMissionDeaths,
	PMC_LastMissionDateTime,
	PMC_LastMissionOvercast,
	PMC_CampaignDeaths,
	(count allUnits),
	pmc_dynsim_dudes_sentry,
	pmc_dynsim_dudes_patrol,
	pmc_fobdefense_dudes,
	PMC_killedNum
];

hintSilent _pmcStr;
