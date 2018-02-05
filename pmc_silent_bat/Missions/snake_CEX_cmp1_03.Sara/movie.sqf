
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

// sf still 1
_camera camPrepareTarget [45994.48,-87067.34,-8150.97];
_camera camPreparePos [2653.59,2681.54,1.40];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 5;

titleText ["Special Forces are preparing to their first mission\noff from Rahmadi, into the Sahrani mainland.", "plain down", 3];

// sf still 2
_camera camPrepareTarget [50363.82,-84433.02,-10178.22];
_camera camPreparePos [2598.13,2828.34,1.48];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 5;

// ammo box still
_camera camPrepareTarget [100716.27,-13523.76,-9921.92];
_camera camPreparePos [2567.70,2834.27,2.96];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 7;

// helo flyover start
_camera camPrepareTarget [-28510.61,-92141.45,-3355.25];
_camera camPreparePos [2550.32,2832.71,1.87];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 2;
// stop 1
_camera camPrepareTarget [-28510.61,-92141.45,-3355.44];
_camera camPreparePos [2548.34,2795.22,1.87];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
// stop 2
_camera camPrepareTarget [-28510.61,-92141.45,-3355.47];
_camera camPreparePos [2552.42,2752.78,1.87];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
// stop 3
_camera camPrepareTarget [-28510.61,-92141.45,-3355.40];
_camera camPreparePos [2547.62,2710.49,1.87];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
// stop 4
_camera camPrepareTarget [-28510.61,-92141.45,-3355.29];
_camera camPreparePos [2552.59,2657.51,1.87];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
// stop 5
_camera camPrepareTarget [-28510.61,-92141.45,-3355.27];
_camera camPreparePos [2546.61,2622.67,1.87];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
// stop 6
_camera camPrepareTarget [-28510.61,-92141.45,-3355.25];
_camera camPreparePos [2552.84,2586.98,1.87];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
// stop 7, final, little bird
_camera camPrepareTarget [-28510.61,-92141.45,-3355.05];
_camera camPreparePos [2544.11,2554.87,1.87];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
sleep 3;

// FOV shot
_camera camPrepareTarget [-7352.06,101698.45,-6342.35];
_camera camPreparePos [2561.80,2395.45,15.39];
_camera camPrepareFOV 0.073;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 5;

titleText ["", "plain down", 2];
titleCut ["", "black out", 3];
3 fademusic 0;
sleep 4;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
