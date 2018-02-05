
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [-35260.07,-80260.87,-7184.05];
_camera camPreparePos [12140.55,7494.78,4.63];
_camera camCommitPrepared 0;
_camera camPrepareFOV 0.700;
waitUntil { camCommitted _camera; };
sleep 3;

// pan 1
_camera camPrepareTarget [25892.56,-90443.29,-14763.19];
_camera camPreparePos [12140.55,7494.78,4.63];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// fall down to abrams
_camera camPrepareTarget [-64964.02,-55679.40,-5742.24];
_camera camPreparePos [12285.09,7559.13,9.09];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;

titleText ["MLRS has arrived to the theater, be very careful with it.", "plain down", 3];

_camera camPrepareTarget [-64964.02,-55679.40,-5742.06];
_camera camPreparePos [12285.54,7558.81,2.05];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// still
_camera camPrepareTarget [83700.37,-61415.72,-11608.96];
_camera camPreparePos [12249.60,7562.44,9.25];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Our forces are eager to attack Corazol south side.", "plain down", 3];

// soldier pan
_camera camPrepareTarget [25783.25,-91392.79,-6297.21];
_camera camPreparePos [12446.55,7511.73,1.25];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;

// pan 1
_camera camPrepareTarget [-57994.39,-63185.13,-6297.13];
_camera camPreparePos [12446.55,7511.73,1.25];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-81561.41,41015.14,-6297.33];
_camera camPreparePos [12446.55,7511.73,1.25];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// SF still
_camera camPrepareTarget [-80165.34,43583.69,-10010.31];
_camera camPreparePos [12554.31,7504.05,0.37];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// SF still 2
_camera camPrepareTarget [20332.09,-90092.83,-20680.13];
_camera camPreparePos [12630.11,7429.82,0.74];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// pan of the city
_camera camPrepareTarget [-30052.32,-80592.32,-20669.01];
_camera camPreparePos [12630.05,7429.77,18.67];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;

// pan 1
_camera camPrepareTarget [-72139.33,-41394.80,-20669.25];
_camera camPreparePos [12630.05,7429.77,18.67];
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
_camera camPrepareTarget [-84992.18,1137.96,-20669.04];
_camera camPreparePos [12630.05,7429.77,18.67];
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
_camera camPrepareTarget [-76285.67,48218.04,-20669.07];
_camera camPreparePos [12630.05,7429.77,18.67];
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
sleep 2;

titleText ["", "plain down", 2];
titleCut ["", "black out", 3];
3 fademusic 0;
sleep 4;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
