
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [-38633.70,97741.71,125.68];
_camera camPreparePos [13794.21,12587.11,2.30];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Next battle is few moments away...", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [-83260.46,36678.23,125.29];
_camera camPreparePos [13794.21,12587.11,2.30];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-66304.31,-47281.23,125.49];
_camera camPreparePos [13794.21,12587.11,2.30];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [50397.88,-80472.88,125.65];
_camera camPreparePos [13794.21,12587.11,2.30];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [113582.60,6085.67,125.69];
_camera camPreparePos [13794.21,12587.11,2.30];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 5
_camera camPrepareTarget [66727.05,97026.50,8284.72];
_camera camPreparePos [13794.21,12587.11,2.30];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// inf pan
_camera camPrepareTarget [33858.94,-84952.38,-7345.16];
_camera camPreparePos [14266.55,12830.88,1.23];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-40955.53,-70210.99,-7345.46];
_camera camPreparePos [14266.55,12830.88,1.23];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-80501.69,-19081.76,-710.45];
_camera camPreparePos [14266.55,12830.88,1.23];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [-80501.69,-19081.76,-710.59];
_camera camPreparePos [14242.24,12822.69,1.48];
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
