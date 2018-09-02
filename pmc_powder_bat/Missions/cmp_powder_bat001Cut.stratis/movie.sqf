private
[
	"_d"
];

titleCut ["", "black out", 0.00000001];
// camera basic initialization
_camera = "camera" camCreate [0, 0, 0];
_camera cameraEffect ["internal", "back"];

_d = 7; enableRadio false;

diag_log format["PMC m001 Cutscene, PMC_LastMissionDateTime: %1, PMC_LastMissionOvercast: %2, PMC_CampaignDeaths: %3", PMC_LastMissionDateTime, PMC_LastMissionOvercast, PMC_CampaignDeaths];

setDate PMC_LastMissionDateTime;
0 setOvercast PMC_LastMissionOvercast;
forceWeatherChange;

// start
_camera camPrepareTarget leader pmcinf1;
_camera camPreparePos [(getPosASL leader pmcinf1 select 0), (getPosASL leader pmcinf1 select 1) + 3, 1.5];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titleText ["Mission Accomplished", "plain down", 3];
sleep 5;

titleCut ["", "black in", 3];
sleep _d;

// some shots
_camera camPrepareTarget leader pmcinf1;
_camera camPreparePos [(getPosASL leader pmcinf1 select 0) + 1, (getPosASL leader pmcinf1 select 1) + 3, 1.5];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep _d;

private _pmcStr = format ["Campaign total KIAs: %1", PMC_CampaignDeaths];
titleText [_pmcStr, "plain down", 3];
sleep 7;

titleText ["Getting ready for next one...", "plain down", 3];
sleep 5;

4 fademusic 0;
titleText ["", "plain", 4];
sleep 6;

// Destroy the camera
_camera cameraeffect ["terminate", "back"];
camDestroy _camera;

// end the intro
endcut = true;
