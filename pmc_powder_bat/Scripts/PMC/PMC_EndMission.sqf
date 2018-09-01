
titleText ["Mission Accomplished!", "plain down", 3];
//[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

playMusic "LeadTrack01_F";
sleep 7;

private _pmcStr = format ["Mission friendly KIAs: %1, Campaign wide: %2", PMC_CurrentMissionDeaths, PMC_CampaignDeaths];
titleText [_pmcStr, "plain down", 3];

sleep 30 + (random 25);

"PMC_end1" call BIS_fnc_endMission;
