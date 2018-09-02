
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

// dirty haxx0r for end mission cheater hehe
if (isNil "PMC_CampaignDeaths") then
{
	PMC_CampaignDeaths = 0;
	saveVar "PMC_CampaignDeaths";
};
private _pmcStr = format ["Mission friendly KIAs: %1, Campaign wide: %2", PMC_CurrentMissionDeaths, PMC_CampaignDeaths];
titleText [_pmcStr, "plain down", 3];

//diag_log "PMC_EndMission.sqf is starting 'exit.sqf' ...";
//[] execVM "exit.sqf";

// this bullshit is required because arma3 weaponPool is BROKEN and duplicates its contents on every mission load
[] execVM "PMC\PMC_WeaponPoolClearEverything.sqf";
sleep 1;
[] execVM "PMC\PMC_WeaponPoolInit.sqf";

sleep 30 + (random 25);

"PMC_end1" call BIS_fnc_endMission;
