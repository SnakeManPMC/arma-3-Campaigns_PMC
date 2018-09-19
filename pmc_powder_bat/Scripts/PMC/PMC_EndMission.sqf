
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
	[] execVM "PMC\PMC_AmmoBoxSaveStatusCampMaxwell_1_2.sqf";
};

if (!isNil "pmc_ammobox_campmaxwell_3") then
{
	[] execVM "PMC\PMC_AmmoBoxSaveStatusCampMaxwell_3_8.sqf";
};

// Altis m011 - m020
// FOB Falcon
if (!isNil "pmc_ammobox_fobfalcon_1") then
{
	[] execVM "PMC\PMC_AmmoBoxSaveStatusFOBFalcon.sqf";
};

// FOB Eagle
if (!isNil "pmc_ammobox_fobeagle_1") then
{
	[] execVM "PMC\PMC_AmmoBoxSaveStatusFOBEagle.sqf";
};

// FOB Pig
if (!isNil "pmc_ammobox_fobpig_1") then
{
	[] execVM "PMC\PMC_AmmoBoxSaveStatusFOBPig.sqf";
};

// FOB Raven
if (!isNil "pmc_ammobox_fobraven_1") then
{
	[] execVM "PMC\PMC_AmmoBoxSaveStatusFOBRaven.sqf";
};

// FOB Ghoul
if (!isNil "pmc_ammobox_fobghoul_1") then
{
	[] execVM "PMC\PMC_AmmoBoxSaveStatusFOBGhoul.sqf";
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

if (!isNil "PMC_killedNum") then
{
	private _pmcStr = format ["Friendly Killed in Action\nCurrent Mission: %1, Campaign wide: %2\nEnemy Killed in Action: %3", PMC_CurrentMissionDeaths, PMC_CampaignDeaths, PMC_killedNum];
}
else
{
	private _pmcStr = format ["Friendly Killed in Action\nCurrent Mission: %1, Campaign wide: %2", PMC_CurrentMissionDeaths, PMC_CampaignDeaths];
};
titleText [_pmcStr, "plain down", 3];

// this bullshit is required because arma3 weaponPool is BROKEN and duplicates its contents on every mission load
[] execVM "PMC\PMC_WeaponPoolClearEverything.sqf";
sleep 1;
[] execVM "PMC\PMC_WeaponPoolInit.sqf";

sleep 30 + (random 25);

"PMC_end1" call BIS_fnc_endMission;
