private
[
	"_d"
];

titleCut ["", "black out", 0.00000001];
// camera basic initialization
_camera = "camera" camCreate [0, 0, 0];
_camera cameraEffect ["internal", "back"];

_d = 7; enableRadio false;

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

titleText ["Objectives met", "plain down", 3];
sleep 5;

titleCut ["", "black in", 3];
sleep _d;

// some shots
_camera camPrepareTarget leader pmcinf1;
_camera camPreparePos [(getPosASL leader pmcinf1 select 0) + 1, (getPosASL leader pmcinf1 select 1) + 3, 1.5];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep _d;

titleText ["So much death...", "plain down", 3];
sleep 5;

4 fademusic 0;
titleText ["", "plain", 4];
sleep 6;

// Destroy the camera
_camera cameraeffect ["terminate", "back"];
camDestroy _camera;

// end the intro
endcut = true;
