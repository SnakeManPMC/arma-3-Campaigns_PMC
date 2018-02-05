
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [35163.54,-64682.66,61380.74];
_camera camPreparePos [9315.83,10035.40,11.15];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 4;

// airbase pan 1
_camera camPrepareTarget [92160.43,-40843.49,-23261.14];
_camera camPreparePos [9315.84,10035.41,11.15];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;
titleText ["Welcome to Sahrani airbase", "plain down", 3];;;
sleep 2;
_camera camPrepareTarget [108458.44,3825.89,-11394.20];
_camera camPreparePos [9361.72,10031.80,11.15];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [108706.91,9577.81,-11400.44];
_camera camPreparePos [9472.73,10026.08,11.15];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [108706.91,9577.81,-11400.60];
_camera camPreparePos [9599.30,10025.52,11.15];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [108706.91,9577.81,-11400.24];
_camera camPreparePos [9738.92,10026.24,11.15];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [108706.91,9577.81,-11400.60];
_camera camPreparePos [9917.05,10026.62,11.15];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [108706.91,9577.81,-11400.57];
_camera camPreparePos [10081.36,10026.89,11.15];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [108706.91,9577.81,-11400.55];
_camera camPreparePos [10288.14,10026.16,9.13];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// inf pan
_camera camPrepareTarget [-80145.21,-29814.69,-15171.94];
_camera camPreparePos [10300.76,9998.65,1.62];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
_camera camPrepareTarget [-80145.21,-29814.69,-15172.19];
_camera camPreparePos [10275.36,10001.27,2.47];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 3;

// still
_camera camPrepareTarget [-69050.80,70237.89,-9156.32];
_camera camPreparePos [10123.13,9859.85,2.63];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// tank move
_camera camPrepareTarget [-62021.75,79209.29,3035.17];
_camera camPreparePos [9624.64,9506.71,0.81];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;
_camera camPrepareTarget [-60279.66,80559.84,-7903.28];
_camera camPreparePos [9624.64,9506.71,3.29];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [-60552.83,80309.34,-7904.58];
_camera camPreparePos [9595.02,9538.45,4.60];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// landscape shots
_camera camPrepareTarget [20548.56,-82896.48,-35218.98];
_camera camPreparePos [10494.87,10025.51,218.67];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

_camera camPrepareTarget [-47772.38,-67480.10,-24110.24];
_camera camPreparePos [10494.87,10025.51,218.67];
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [-81146.84,-21660.31,-24110.26];
_camera camPreparePos [10494.87,10025.51,218.67];
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [-81055.25,7692.48,-39824.04];
_camera camPreparePos [10494.87,10025.51,218.67];
_camera camCommitPrepared 7;
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
