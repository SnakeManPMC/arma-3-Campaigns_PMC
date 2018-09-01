
// ran when tasks are completed. note that while this sqf is running game is still going and you can scavenge weapons, get killed etc

["t0", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
sleep 3;

titleText ["Mission Accomplished!", "plain down", 3];
//[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

playMusic "LeadTrack01_F";
sleep 7;

private _pmcStr = format ["Mission friendly KIAs: %1, Campaign wide: %2", PMC_CurrentMissionDeaths, PMC_CampaignDeaths];
titleText [_pmcStr, "plain down", 3];

sleep 30 + (random 25);

"PMC_end1" call BIS_fnc_endMission;
