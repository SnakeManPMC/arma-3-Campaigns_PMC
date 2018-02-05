
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [107447.30,21494.93,-5974.97];
_camera camPreparePos [8359.90,9397.88,1.18];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// pan 1
_camera camPrepareTarget [91950.70,-45417.53,-2791.70];
_camera camPreparePos [8359.90,9397.88,1.18];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 2;

titleText ["Stike Team assembles", "plain down", 3];;;

// inf move
_camera camPrepareTarget [-90627.83,4176.79,-12860.71];
_camera camPreparePos [8406.82,9311.86,2.01];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 2;
// move 1
_camera camPrepareTarget [-90627.83,4176.79,-12860.71];
_camera camPreparePos [8392.60,9323.22,2.27];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 2;

// inf 2 pan
_camera camPrepareTarget [12592.27,108647.09,-4417.72];
_camera camPreparePos [9902.58,8791.95,1.77];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 2;
// pan 2
_camera camPrepareTarget [-72011.10,65967.95,-4417.57];
_camera camPreparePos [9902.58,8791.95,1.77];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [-77412.30,-39736.98,-4417.57];
_camera camPreparePos [9901.58,8791.39,1.77];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [1631.63,-90760.39,-4417.79];
_camera camPreparePos [9901.58,8791.39,1.77];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [98984.09,-36410.22,-4417.74];
_camera camPreparePos [9900.39,8789.78,1.76];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 2;

// inf 3 pan
_camera camPrepareTarget [-88882.21,21859.34,-8154.86];
_camera camPreparePos [9901.91,8730.52,2.06];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 2;
_camera camPrepareTarget [-88882.21,21859.34,-8154.78];
_camera camPreparePos [9896.12,8728.09,1.15];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 2;

// tank
_camera camPrepareTarget [-17736.07,104411.27,-7310.66];
_camera camPreparePos [9590.60,8509.12,2.57];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 2;
// pan 1
_camera camPrepareTarget [-70712.48,67633.45,-7311.09];
_camera camPreparePos [9590.39,8511.70,2.72];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 2;

// M113 mech inf
_camera camPrepareTarget [-64880.37,-58106.29,-6042.97];
_camera camPreparePos [9479.81,8466.32,2.05];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 2;
// pan 1
_camera camPrepareTarget [-89277.76,22898.61,-6042.98];
_camera camPreparePos [9478.28,8467.77,2.05];
_camera camCommitPrepared 5;
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
