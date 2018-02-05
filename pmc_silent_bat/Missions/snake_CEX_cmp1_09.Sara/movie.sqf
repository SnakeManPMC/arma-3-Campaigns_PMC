
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [27718.92,-91745.17,-12241.47];
_camera camPreparePos [9144.84,5744.15,1.84];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// pan 1
_camera camPrepareTarget [-58312.90,-67857.20,-5642.51];
_camera camPreparePos [9144.84,5744.15,1.84];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-90548.22,13100.04,-2640.81];
_camera camPreparePos [9144.84,5744.15,1.84];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

titleText ["Next objective is massive assault to multiple positions.", "plain down", 3];;;

// face shot
_camera camPrepareTarget [45388.18,-87096.04,-8426.16];
_camera camPreparePos [9150.44,5722.00,1.54];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 2;
// pan 1
_camera camPrepareTarget [-369.41,-93463.34,-8426.12];
_camera camPreparePos [9150.44,5722.00,1.54];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-68167.37,-57129.54,-8426.21];
_camera camPreparePos [9150.44,5722.00,1.54];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

// rise
_camera camPrepareTarget [-86958.43,24435.05,-20805.35];
_camera camPreparePos [9047.28,5770.23,1.40];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 2;
// rise 2
_camera camPrepareTarget [-86958.43,24435.05,-20805.60];
_camera camPreparePos [9047.28,5770.23,5.01];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

// M113 Mech sequence
_camera camPrepareTarget [61528.40,-63581.36,49150.30];
_camera camPreparePos [8823.54,5767.11,0.84];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 2;
// pan 1
_camera camPrepareTarget [46793.75,-86078.73,11100.65];
_camera camPreparePos [8823.54,5767.11,0.84];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-47223.52,-77020.26,-2204.34];
_camera camPreparePos [8823.54,5767.11,0.84];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [-89780.36,-10838.74,-1203.37];
_camera camPreparePos [8823.54,5767.11,0.84];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [-69704.55,67665.77,1404.58];
_camera camPreparePos [8823.54,5767.11,0.84];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 2;

// tank rise
_camera camPrepareTarget [-59628.98,77156.30,14893.36];
_camera camPreparePos [8740.86,5709.04,0.20];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 2;
// rise 1
_camera camPrepareTarget [-59628.98,77156.30,14893.31];
_camera camPreparePos [8740.86,5709.04,1.50];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// rise 2
_camera camPrepareTarget [-59630.27,77157.59,-14814.44];
_camera camPreparePos [8740.86,5709.04,4.19];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 2;

// still
_camera camPrepareTarget [104394.45,-21681.43,-8772.97];
_camera camPreparePos [8642.20,5776.47,2.19];
_camera camCommitPrepared 0;
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
