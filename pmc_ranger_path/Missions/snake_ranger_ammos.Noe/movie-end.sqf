// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

{_x setdammage 1} foreach eastunits;

//=== 17:21:11
_camera camSetTarget [-94192.05,-2742.22,563.32];
_camera camSetPos [5361.25,6684.13,1.95];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

//=== 17:21:19
_camera camSetTarget [-70538.71,-58403.95,-1366.85];
_camera camSetPos [5356.83,6695.30,5.01];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 17:21:27
_camera camSetTarget [-14124.40,-90871.54,-10022.88];
_camera camSetPos [5344.36,6698.28,5.01];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 0.5;

//=== 17:22:39
_camera camSetTarget [-88481.09,38920.78,-11788.46];
_camera camSetPos [5428.18,6645.47,8.82];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 17:22:46
_camera camSetTarget [-93616.03,13702.92,-11788.23];
_camera camSetPos [5433.24,6668.92,9.43];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 17:22:54
_camera camSetTarget [-91547.89,-14660.60,-11788.61];
_camera camSetPos [5426.39,6698.56,8.39];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 17:23:01
_camera camSetTarget [-86842.78,-28497.79,-15703.59];
_camera camSetPos [5416.33,6722.77,11.64];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 17:23:11
_camera camSetTarget [-58174.66,-64494.48,-29676.89];
_camera camSetPos [5393.52,6749.94,16.80];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 17:23:20
_camera camSetTarget [-25108.26,-82212.97,-33927.16];
_camera camSetPos [5365.46,6764.60,19.63];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
sleep 0.5;

//=== 17:24:12
_camera camSetTarget [80718.50,-44005.14,-41440.73];
_camera camSetPos [5229.58,6764.49,46.07];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 17:24:35
_camera camSetTarget [98030.94,14596.91,-36271.39];
_camera camSetPos [5208.73,6684.15,47.07];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 0.5;

//=== 17:25:25
_camera camSetTarget [97345.55,35954.11,15038.57];
_camera camSetPos [3076.11,6158.41,0.91];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 17:25:27
_camera camSetTarget [80276.12,-57228.81,4735.88];
_camera camSetPos [3076.11,6158.41,0.91];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 17:25:31
_camera camSetTarget [-15368.78,-92114.51,-1467.37];
_camera camSetPos [3076.11,6158.41,0.91];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 17:25:46
_camera camSetTarget [-6362.23,-93383.77,-1467.21];
_camera camSetPos [3062.67,6159.96,7.03];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 17:25:56
_camera camSetTarget [8433.73,-91922.03,-18748.11];
_camera camSetPos [3028.17,6148.20,21.70];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
sleep 0.5;

//=== 17:26:32
_camera camSetTarget [-75385.66,-42583.81,-38365.27];
_camera camSetPos [3077.41,6086.07,16.80];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 17:26:43
_camera camSetTarget [-86214.84,49934.66,9898.00];
_camera camSetPos [3089.69,6035.05,1.96];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 17:26:54
_camera camSetTarget [67451.54,68887.67,-43510.04];
_camera camSetPos [3008.70,6031.41,15.85];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 17:27:05
_camera camSetTarget [84318.43,64201.73,-1081.30];
_camera camSetPos [3006.60,6002.34,1.28];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 17:27:09
_camera camSetTarget [-35548.07,98264.58,-1081.75];
_camera camSetPos [3006.60,6002.34,1.28];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
