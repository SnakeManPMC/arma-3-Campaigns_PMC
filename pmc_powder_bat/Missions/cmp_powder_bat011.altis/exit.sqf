
// FOB 1
private _pmcBox1 = pmc_ammobox_fob1_1 saveStatus "PMC_AmmoBoxFOB11";
private _pmcBox2 = pmc_ammobox_fob1_2 saveStatus "PMC_AmmoBoxFOB12";
private _pmcBox3 = pmc_ammobox_fob1_3 saveStatus "PMC_AmmoBoxFOB13";
private _pmcBox4 = pmc_ammobox_fob1_4 saveStatus "PMC_AmmoBoxFOB14";
private _pmcTruck1 = pmc_truck1 saveStatus "PMC_AmmoTruck1";

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

diag_log format["PMC m011 exit.sqf, _pmcBox1: %1, _pmcBox2: 2, _pmcBox3: %3, _pmcBox4: %4, _pmcTruck1: %5", _pmcBox1, _pmcBox2, _pmcBox3, _pmcBox4, _pmcTruck1];
