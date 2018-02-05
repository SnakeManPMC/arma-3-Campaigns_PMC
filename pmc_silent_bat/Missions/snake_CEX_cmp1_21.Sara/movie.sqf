
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [-71088.91,-40009.29,-11470.36];
_camera camPreparePos [14169.93,10964.97,5.96];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Tensions are mounting...", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [-33814.30,-76011.80,-11470.66];
_camera camPreparePos [14169.93,10964.97,5.96];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [21793.77,-88077.05,-11470.50];
_camera camPreparePos [14169.96,10964.98,5.96];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [82678.27,-60965.93,-11470.49];
_camera camPreparePos [14169.98,10965.00,5.96];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [108900.23,42998.64,-114.85];
_camera camPreparePos [14169.98,10965.00,5.96];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 5
_camera camPrepareTarget [85489.82,81008.84,3698.54];
_camera camPreparePos [14200.94,10996.36,4.40];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 6
_camera camPrepareTarget [85484.94,81004.03,-4602.11];
_camera camPreparePos [14255.47,11067.26,3.68];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 7
_camera camPrepareTarget [99552.20,58788.54,-21262.30];
_camera camPreparePos [14277.73,11099.11,3.06];
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
