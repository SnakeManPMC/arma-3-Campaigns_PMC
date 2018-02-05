
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [-72314.29,59380.64,-34678.64];
_camera camPreparePos [9871.26,14233.23,3.55];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["The zone... for dead SLA soldiers...", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [-72314.29,59380.64,-34678.49];
_camera camPreparePos [9873.79,14246.01,7.22];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// still
_camera camPrepareTarget [-10815.25,107616.42,-29190.82];
_camera camPreparePos [9812.07,14242.93,8.19];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// m1a1 pan
_camera camPrepareTarget [37051.25,112588.77,-3591.56];
_camera camPreparePos [10717.75,16186.52,7.89];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [37051.25,112588.77,-3591.73];
_camera camPreparePos [10717.75,16186.52,0.92];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-87604.53,34063.30,-3591.57];
_camera camPreparePos [10717.74,16186.53,0.92];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [23847.57,-80100.28,23624.41];
_camera camPreparePos [10717.74,16186.52,0.92];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// inf pan
_camera camPrepareTarget [-84724.41,43029.67,-13757.31];
_camera camPreparePos [10610.76,16246.48,2.04];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-84724.41,43029.67,-13757.50];
_camera camPreparePos [10610.76,16246.48,4.86];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-84724.41,43029.67,-13757.46];
_camera camPreparePos [10606.19,16251.43,4.63];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [-84724.41,43029.67,-13757.39];
_camera camPreparePos [10595.83,16250.92,3.36];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [-84796.85,43049.47,-13516.08];
_camera camPreparePos [10584.70,16251.07,3.46];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 5
_camera camPrepareTarget [-87438.90,18568.05,19755.02];
_camera camPreparePos [10570.18,16258.51,1.35];
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
