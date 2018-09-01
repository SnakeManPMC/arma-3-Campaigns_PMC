
// FOB 1
pmc_ammobox_fob1_1 saveStatus "PMC_AmmoBoxFOB11";
pmc_ammobox_fob1_2 saveStatus "PMC_AmmoBoxFOB12";
pmc_ammobox_fob1_3 saveStatus "PMC_AmmoBoxFOB13";
pmc_ammobox_fob1_4 saveStatus "PMC_AmmoBoxFOB14";
pmc_truck1 saveStatus "PMC_AmmoTruck1";

PMC_CampaignDeaths = PMC_CampaignDeaths + PMC_CurrentMissionDeaths;
saveVar "PMC_CampaignDeaths";
