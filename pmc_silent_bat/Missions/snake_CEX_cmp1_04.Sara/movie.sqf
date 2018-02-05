
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [-89221.44,12628.88,-17693.45];
_camera camPreparePos [8883.85,4817.06,2.84];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Special Forces are waiting on the shore for regular infantry to arrive.", "plain down", 3];

sleep 2;

// pan 1
_camera camPrepareTarget [-41745.95,91052.38,309.53];
_camera camPreparePos [8883.85,4817.06,2.84];
_camera camCommitPrepared 10;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-41745.95,91052.38,309.75];
_camera camPreparePos [8883.85,4817.06,2.84];
_camera camPrepareFOV 0.120;
_camera camCommitPrepared 10;
waitUntil { camCommitted _camera; };
sleep 3;

// pan other side start
_camera camPrepareTarget [2127.08,-94323.03,-5927.63];
_camera camPreparePos [8662.31,5286.23,2.00];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// pan 1
_camera camPrepareTarget [73720.75,-69923.09,-10517.73];
_camera camPreparePos [8662.31,5286.23,12.08];
_camera camCommitPrepared 10;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [68009.46,-75128.52,-3350.77];
_camera camPreparePos [8662.31,5286.23,12.08];
_camera camPrepareFOV 0.233;
_camera camCommitPrepared 10;
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
