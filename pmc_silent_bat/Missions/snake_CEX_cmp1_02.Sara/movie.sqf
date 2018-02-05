
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

// look ocean
_camera camPrepareTarget [-30114.47,-91692.81,-8140.39];
_camera camPreparePos [2566.36,2463.53,4.33];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// pan to helo
_camera camPrepareTarget [-96429.41,-8039.08,-9444.75];
_camera camPreparePos [2566.36,2463.53,4.33];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };

titleText ["Special Forces are holding Rahmadi.", "plain down", 3];

// pan to sf4
_camera camPrepareTarget [-36185.15,94497.57,-5279.85];
_camera camPreparePos [2566.36,2463.53,4.33];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["They have nice foothold in there.", "plain down", 3];

// still
_camera camPrepareTarget [34057.16,-90898.02,-16658.50];
_camera camPreparePos [2536.02,2527.54,4.32];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 5;

titleText ["Some of the SLA junk has not been cleared away yet.", "plain down", 3];

// sf pan
_camera camPrepareTarget [-1750.31,-96279.63,-12916.22];
_camera camPreparePos [2543.36,2787.86,1.22];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 2;

// pan 1
_camera camPrepareTarget [67256.20,-72345.69,-12916.29];
_camera camPreparePos [2543.36,2787.86,1.22];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [100724.21,21769.18,492.92];
_camera camPreparePos [2543.36,2787.86,1.22];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Rahmadi city is ours.", "plain down", 3];

// city still
_camera camPrepareTarget [96422.21,22349.37,-28792.32];
_camera camPreparePos [2715.60,2844.01,61.44];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 5;

// sf city
_camera camPrepareTarget [60272.07,84444.98,-7246.00];
_camera camPreparePos [2877.38,2878.92,6.17];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;
// pan 1
_camera camPrepareTarget [102146.19,2388.70,-12038.42];
_camera camPreparePos [2877.38,2878.92,6.17];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [57837.07,-74042.34,-32574.30];
_camera camPreparePos [2877.38,2878.92,6.17];
//_camera camPrepareFOV 0.700;
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
sleep 3;

// FOV shot
_camera camPrepareTarget [-28246.43,97794.60,2636.66];
_camera camPreparePos [2905.11,2808.80,1.49];
_camera camPrepareFOV 0.109;
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
