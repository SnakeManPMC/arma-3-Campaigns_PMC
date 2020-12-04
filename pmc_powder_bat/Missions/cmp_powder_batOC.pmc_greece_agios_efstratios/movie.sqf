private
[
	"_d"
];

titleCut ["", "black out", 0.00000001];
// camera basic initialization
_camera = "camera" camCreate [0, 0, 0];
_camera cameraEffect ["internal", "back"];

_d = 7; enableRadio false;

// start
_camera camPrepareTarget [61212.32,79833.27,-12525.39];
_camera camPreparePos [294.15,1531.90,121.44];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titleText ["PMC Campaign", "plain down", 3];
sleep 5;

titleCut ["", "black in", 3];
sleep _d;

// some shots
_camera camPrepareTarget [61212.32,79833.27,-12525.39];
_camera camPreparePos [1057.50,1609.99,121.62];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep _d;

titleText ["text", "plain down", 3];
sleep 5;

4 fademusic 0;
titleText ["", "plain", 4];
sleep 6;

// Destroy the camera
_camera cameraeffect ["terminate", "back"];
camDestroy _camera;

// end the intro
endcut = true;
