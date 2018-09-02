
// FOB 1
pmc_ammobox_fob1_1 saveStatus "PMC_AmmoBoxFOB11";
pmc_ammobox_fob1_2 saveStatus "PMC_AmmoBoxFOB12";
pmc_ammobox_fob1_3 saveStatus "PMC_AmmoBoxFOB13";
pmc_ammobox_fob1_4 saveStatus "PMC_AmmoBoxFOB14";
pmc_truck1 saveStatus "PMC_AmmoTruck1";

PMC_LastMissionDateTime = date;
saveVar "PMC_LastMissionDateTime";

PMC_LastMissionOvercast = overcast;
saveVar "PMC_LastMissionOvercast";

PMC_CampaignDeaths = PMC_CampaignDeaths + PMC_CurrentMissionDeaths;
saveVar "PMC_CampaignDeaths";

diag_log format
[
	"PMC m011 exit.sqf, PMC_CampaignDeaths: %1, PMC_AmmoBoxFOB11: %2, PMC_AmmoTruck1: %3, PMC_LastMissionDateTime: %4, PMC_LastMissionOvercast: %5",
	PMC_CampaignDeaths,
	PMC_AmmoBoxFOB11,
	PMC_AmmoTruck1,
	PMC_LastMissionDateTime,
	PMC_LastMissionOvercast
];
