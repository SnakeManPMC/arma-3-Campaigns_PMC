
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [30320.73,-88007.58,-15137.46];
_camera camPreparePos [13746.18,9435.75,7.72];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["North from Corazol...", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [30320.73,-88007.58,-15137.41];
_camera camPreparePos [13752.56,9414.37,1.81];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// mech 113 move
_camera camPrepareTarget [-71358.43,58858.75,6460.18];
_camera camPreparePos [15547.44,9805.49,1.19];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;
// move 1
_camera camPrepareTarget [-71486.55,58931.07,-3381.54];
_camera camPreparePos [15547.91,9806.33,3.66];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move 2
_camera camPrepareTarget [-71486.55,58931.07,-3381.68];
_camera camPreparePos [15525.48,9818.99,2.47];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move 3
_camera camPrepareTarget [-71486.55,58931.07,-3381.61];
_camera camPreparePos [15487.50,9849.21,1.30];
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
