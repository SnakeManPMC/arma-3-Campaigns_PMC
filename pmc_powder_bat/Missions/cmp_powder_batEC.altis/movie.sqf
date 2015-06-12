private
[
	"_d"
];

titleCut ["", "black out", 0.00000001];
// camera basic initialization
_camera = "camera" camCreate [0, 0, 0];
_camera cameraEffect ["internal", "back"];

_d = 7;

// start
_camera camPrepareTarget leader pmcinf1;
_camera camPreparePos [(getPosASL leader pmcinf1 select 0), (getPosASL leader pmcinf1 select 1) + 7, 3];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

playMusic ["Ambient08_Reforger", 0];

titleText ["Our campaign is over!", "plain", 3];
sleep 5;

titleCut ["", "black in", 3];
sleep _d;

// some shots
_camera camPrepareTarget leader pmcinf1;
_camera camPreparePos [(getPosASL leader pmcinf1 select 0) + 1, (getPosASL leader pmcinf1 select 1) + 10, 3];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep _d;

titleText ["We have captured our objectives!", "plain", 3];
sleep 5;

// some shots
_camera camPrepareTarget leader pmcinf1;
_camera camPreparePos [(getPosASL leader pmcinf1 select 0) + 5, (getPosASL leader pmcinf1 select 1) + 5, 3];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep _d;

titleText ["Wictory is ours!!", "plain", 3];
sleep 5;

// some shots
_camera camPrepareTarget leader pmcinf1;
_camera camPreparePos [(getPosASL leader pmcinf1 select 0) + 10, (getPosASL leader pmcinf1 select 1) + 1, 3];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep _d;

titleCut ["", "black out", 2];
sleep 1.5;
titleText ["Thank you for playing PMC Powder Bat", "plain", 3];
sleep 5;

titleText ["This has been PMC production\n\nhttp://tactical.nekromantix.com", "plain", 3];
sleep 5;

4 fademusic 0;
titleText ["", "plain", 4];
sleep 6;

// Destroy the camera
_camera cameraeffect ["terminate", "back"];
camDestroy _camera;

// end the intro
endcut = true;
