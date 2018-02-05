
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [-82978.91,24025.19,-20942.19];
_camera camPreparePos [13661.18,8852.63,14.21];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Troops in Corazol prepare to move out.", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [-82978.91,24025.19,-20941.82];
_camera camPreparePos [13632.32,8858.63,14.21];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-12977.06,-82832.66,-29658.80];
_camera camPreparePos [13618.74,8850.96,8.74];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// inf pan
_camera camPrepareTarget [-8682.13,-87740.20,-12607.15];
_camera camPreparePos [13761.65,8885.90,0.78];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-84404.73,8190.20,-19020.08];
_camera camPreparePos [13761.66,8885.57,0.84];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["", "plain down", 2];
titleCut ["", "black out", 3];
3 fademusic 0;
sleep 4;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
