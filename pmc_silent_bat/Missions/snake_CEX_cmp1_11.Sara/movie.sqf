
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [80195.94,76397.95,5681.28];
_camera camPreparePos [8920.82,6480.59,2.00];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// move 1
_camera camPrepareTarget [6623.35,106453.09,-399.38];
_camera camPreparePos [8920.82,6480.59,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move 2
_camera camPrepareTarget [-70435.69,67204.11,-3822.86];
_camera camPreparePos [8920.82,6480.59,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move 3
_camera camPrepareTarget [-83211.53,-31636.46,-7587.27];
_camera camPreparePos [8920.82,6480.59,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move 4
_camera camPrepareTarget [-34984.16,-83038.28,-7587.36];
_camera camPreparePos [8920.82,6480.59,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move 5
_camera camPrepareTarget [79140.13,-64569.73,-4517.96];
_camera camPreparePos [8920.82,6480.59,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

titleText ["Guys are eager to get some SLA scalps", "plain down", 3];;;

// move 6
_camera camPrepareTarget [78648.34,-64072.09,-12586.62];
_camera camPreparePos [8939.27,6461.92,6.06];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move 7
_camera camPrepareTarget [71395.37,-69982.32,-16051.59];
_camera camPreparePos [8978.90,6414.42,10.29];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move 8
_camera camPrepareTarget [79838.16,-62356.27,-16066.58];
_camera camPreparePos [9018.61,6376.63,6.56];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
titleText ["", "plain down", 2];
sleep 2;

// tank pan
_camera camPrepareTarget [97814.78,-39641.45,-681.11];
_camera camPreparePos [8974.93,6260.12,3.21];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 2;
// tank pan 2
_camera camPrepareTarget [20968.05,-92678.70,-8156.99];
_camera camPreparePos [8974.93,6260.12,3.21];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 2;

// tank move
_camera camPrepareTarget [85201.56,-57821.45,-9598.57];
_camera camPreparePos [8976.52,6185.43,2.61];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 2;

_camera camPrepareTarget [63292.79,-77222.33,-9597.20];
_camera camPreparePos [8977.69,6183.63,5.85];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [63292.79,-77222.33,-9597.49];
_camera camPreparePos [8997.22,6153.65,6.56];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [63292.79,-77222.33,-9597.41];
_camera camPreparePos [9021.92,6115.71,6.58];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [63292.79,-77222.33,-9597.45];
_camera camPreparePos [9043.52,6095.19,4.59];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [63292.79,-77222.33,-9597.50];
_camera camPreparePos [9050.10,6082.81,1.39];
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
