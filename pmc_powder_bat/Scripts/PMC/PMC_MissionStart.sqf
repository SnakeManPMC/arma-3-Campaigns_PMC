
/*
ran on every mission start, do not put any MISSION SPECIFIC stuff here, only something that works on every mission regardless
for campaign init script see first mission PMC\PMC_CampaignInit.sqf
*/

private _grp = group player;

PMC_CurrentMissionDeaths = 0;

{
	_x addEventHandler ["killed", {0 = _this execVM "PMC\PMC_PlayerGroupKilledEH.sqf"}];
} forEach units _grp;

[player, "PMC_WeatherForecast", nil, nil, ""] call BIS_fnc_addCommMenuItem;
[player, "PMC_DebugEndMission", nil, nil, ""] call BIS_fnc_addCommMenuItem;
[player, "PMC_DebugCampaignMsg", nil, nil, ""] call BIS_fnc_addCommMenuItem;

sleep 10;
[ format["Somewhere on %1", worldName], format ["Year %1", date select 0], mapGridPosition player ] spawn BIS_fnc_infoText;
/*
https://community.bistudio.com/wiki/BIS_fnc_infoText
["Mission Time", (call PMC_Time_Used_Update), "Good luck"] spawn BIS_fnc_infoText;
[ "Somewhere on Altis", format ["Year %1", date select 0], mapGridPosition player ] spawn BIS_fnc_infoText;

https://community.bistudio.com/wiki/BIS_fnc_EXP_camp_SITREP
[["line1",4,5],["line2",3,5,8]] spawn BIS_fnc_EXP_camp_SITREP;

https://community.bistudio.com/wiki/BIS_fnc_typeText
https://community.bistudio.com/wiki/BIS_fnc_typeText2
https://community.bistudio.com/wiki/BIS_fnc_textTiles
*/

// zero casualties task
[] spawn
{
	waitUntil
	{
		//diag_log format["PMC_MissionStart spawned zero casualties check, PMC_CurrentMissionDeaths: %1", PMC_CurrentMissionDeaths];
		sleep 10;
		(PMC_CurrentMissionDeaths > 1);
	};
	
	["t0", "FAILED", true] spawn BIS_fnc_taskSetState;
};
