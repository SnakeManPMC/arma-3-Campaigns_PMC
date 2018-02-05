
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [60202.68,-79801.34,-9346.67];
_camera camPreparePos [14256.75,8522.55,1.21];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Just east from Corazol...", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [-45943.75,-71214.31,-4207.96];
_camera camPreparePos [14256.75,8522.55,1.21];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// inf pan
_camera camPrepareTarget [109049.77,-22401.36,-9391.40];
_camera camPreparePos [14454.30,8507.48,4.11];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [109049.77,-22401.36,-9391.20];
_camera camPreparePos [14489.23,8492.31,3.51];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// inf + m1a1 pan
_camera camPrepareTarget [112790.56,-1995.69,-13308.64];
_camera camPreparePos [14342.80,9377.58,2.19];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [112790.56,-1995.69,-13308.72];
_camera camPreparePos [14373.02,9374.71,2.76];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [112790.56,-1995.69,-13308.86];
_camera camPreparePos [14409.90,9377.61,3.36];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [112790.56,-1995.69,-13308.67];
_camera camPreparePos [14441.21,9376.57,1.46];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [112790.56,-1995.69,-13308.74];
_camera camPreparePos [14473.85,9374.69,7.48];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 5
_camera camPrepareTarget [112790.56,-1995.69,-13308.86];
_camera camPreparePos [14508.12,9370.72,3.02];
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
