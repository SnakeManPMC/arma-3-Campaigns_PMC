
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [26606.86,112983.55,-2599.83];
_camera camPreparePos [15362.25,13652.46,2.08];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Special Forces are surrounded by enemy...\nRight where they want to be!", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [22951.72,112922.92,-9427.44];
_camera camPreparePos [15362.83,13669.60,1.91];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [62091.46,97358.17,-28500.22];
_camera camPreparePos [15365.72,13680.44,9.57];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [62091.46,97358.17,-28500.09];
_camera camPreparePos [15371.22,13703.63,11.17];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [62091.46,97358.17,-28500.12];
_camera camPreparePos [15384.71,13727.83,12.13];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 5
_camera camPrepareTarget [-13722.64,107827.63,-17296.11];
_camera camPreparePos [15388.24,13746.72,12.11];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 6
_camera camPrepareTarget [-13722.64,107827.63,-17296.10];
_camera camPreparePos [15378.75,13777.38,11.52];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 7
_camera camPrepareTarget [-13722.64,107827.63,-17295.99];
_camera camPreparePos [15366.36,13817.44,12.25];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 8
_camera camPrepareTarget [-6691.90,109804.29,-17310.01];
_camera camPreparePos [15360.59,13844.18,5.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 9
_camera camPrepareTarget [-6974.12,111032.56,-7974.44];
_camera camPreparePos [15340.81,13915.58,11.19];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 10
_camera camPrepareTarget [-6974.12,111032.56,-7974.08];
_camera camPreparePos [15328.12,13970.88,6.61];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 11
_camera camPrepareTarget [-6974.12,111032.56,-7974.20];
_camera camPreparePos [15318.63,14023.70,0.83];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 12
_camera camPrepareTarget [-6974.12,111032.56,-7974.37];
_camera camPreparePos [15312.33,14051.14,2.96];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 13
_camera camPrepareTarget [-6974.12,111032.56,-7974.35];
_camera camPreparePos [15309.77,14065.81,1.50];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 14
_camera camPrepareTarget [108739.27,-19256.04,-12614.15];
_camera camPreparePos [15306.79,14068.58,1.41];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 15
_camera camPrepareTarget [18934.10,-85060.27,-12614.17];
_camera camPreparePos [15309.50,14071.06,1.56];
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
