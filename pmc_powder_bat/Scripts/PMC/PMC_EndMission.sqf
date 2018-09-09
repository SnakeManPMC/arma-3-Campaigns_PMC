
// ran when tasks are completed. note that while this sqf is running game is still going and you can scavenge weapons, get killed etc

private _deathCheck = ["t0"] call BIS_fnc_taskState;
if (_deathCheck == "ASSIGNED") then
{
	["t0", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};
sleep 3;

titleText ["Mission Accomplished!", "plain down", 3];
//[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

playMusic "LeadTrack01_F";
sleep 7;

// Stratis m001 - m010
// camp maxwell ammo boxes
if (!isNil "pmc_ammobox_campmaxwell_1") then
{
	pmc_ammobox_campmaxwell_1 saveStatus "PMC_StatusAmmoBoxCampMaxwell_1";
	pmc_ammobox_campmaxwell_2 saveStatus "PMC_StatusAmmoBoxCampMaxwell_2";
};

if (!isNil "pmc_ammobox_campmaxwell_3") then
{
	pmc_ammobox_campmaxwell_3 saveStatus "PMC_StatusAmmoBoxCampMaxwell_3";
	pmc_ammobox_campmaxwell_4 saveStatus "PMC_StatusAmmoBoxCampMaxwell_4";
	pmc_ammobox_campmaxwell_5 saveStatus "PMC_StatusAmmoBoxCampMaxwell_5";
	pmc_ammobox_campmaxwell_6 saveStatus "PMC_StatusAmmoBoxCampMaxwell_6";
	pmc_ammobox_campmaxwell_7 saveStatus "PMC_StatusAmmoBoxCampMaxwell_7";
	pmc_ammobox_campmaxwell_8 saveStatus "PMC_StatusAmmoBoxCampMaxwell_8";
};

// Altis m011 - m020
// FOB Falcon
if (!isNil "pmc_ammobox_fob1_1") then
{
	private _pmcBox1 = pmc_ammobox_fob1_1 saveStatus "PMC_AmmoBoxFOB11";
	private _pmcBox2 = pmc_ammobox_fob1_2 saveStatus "PMC_AmmoBoxFOB12";
	private _pmcBox3 = pmc_ammobox_fob1_3 saveStatus "PMC_AmmoBoxFOB13";
	private _pmcBox4 = pmc_ammobox_fob1_4 saveStatus "PMC_AmmoBoxFOB14";
};

// FOB Eagle
if (!isNil "pmc_ammobox_fobeagle_1") then
{
	private _pmcBox1 = pmc_ammobox_fobeagle_1 saveStatus "PMC_StatusAmmoBoxFOBEagle_1";
	private _pmcBox2 = pmc_ammobox_fobeagle_2 saveStatus "PMC_StatusAmmoBoxFOBEagle_2";
	private _pmcBox3 = pmc_ammobox_fobeagle_3 saveStatus "PMC_StatusAmmoBoxFOBEagle_3";
	private _pmcBox4 = pmc_ammobox_fobeagle_4 saveStatus "PMC_StatusAmmoBoxFOBEagle_4";
	private _pmcBox5 = pmc_ammobox_fobeagle_5 saveStatus "PMC_StatusAmmoBoxFOBEagle_5";
	private _pmcBox6 = pmc_ammobox_fobeagle_6 saveStatus "PMC_StatusAmmoBoxFOBEagle_6";
};

// truck is on m001 - m011 as american MTVR
// truck is on m011 - m020 as guerrilla v3s
private _pmcTruck1 = pmc_truck1 saveStatus "PMC_AmmoTruck1";

PMC_LastMissionDateTime = date;
saveVar "PMC_LastMissionDateTime";

PMC_LastMissionOvercast = overcast;
saveVar "PMC_LastMissionOvercast";

if (isNil "PMC_CampaignDeaths") then
{
	PMC_CampaignDeaths = 0;
}
else
{
	PMC_CampaignDeaths = PMC_CampaignDeaths + PMC_CurrentMissionDeaths;
};
saveVar "PMC_CampaignDeaths";

private _pmcStr = format ["Friendly Killed in Action\nCurrent Mission: %1, Campaign wide: %2", PMC_CurrentMissionDeaths, PMC_CampaignDeaths];
titleText [_pmcStr, "plain down", 3];

// this bullshit is required because arma3 weaponPool is BROKEN and duplicates its contents on every mission load
[] execVM "PMC\PMC_WeaponPoolClearEverything.sqf";
sleep 1;
[] execVM "PMC\PMC_WeaponPoolInit.sqf";

sleep 30 + (random 25);

"PMC_end1" call BIS_fnc_endMission;
