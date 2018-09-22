// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

{_x setdammage 1} foreach eastunits;

//=== 16:54:36
_camera camSetTarget [102222.46,-7303.21,-11748.11];
_camera camSetPos [4803.08,11952.44,4.99];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 2;

//=== 16:54:44
_camera camSetTarget [97658.55,47134.95,-11748.18];
_camera camSetPos [4803.66,11931.48,4.99];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 16:55:28
_camera camSetTarget [5549.47,-87417.42,-11754.58];
_camera camSetPos [4864.01,11883.61,4.99];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 16:55:33
_camera camSetTarget [5549.47,-87417.42,-11754.19];
_camera camSetPos [4867.74,11818.33,4.99];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 16:55:39
_camera camSetTarget [5549.47,-87417.42,-11754.50];
_camera camSetPos [4867.99,11734.28,4.99];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 16:55:46
_camera camSetTarget [100036.72,22611.60,-28665.62];
_camera camSetPos [4863.16,11724.64,7.35];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 16:56:16
_camera camSetTarget [18335.37,-85944.59,-16932.92];
_camera camSetPos [4897.90,11682.23,26.95];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 16:56:17
_camera camSetTarget [-44181.45,-73774.07,-16932.87];
_camera camSetPos [4897.90,11682.23,26.95];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 16:56:19
_camera camSetTarget [-89857.52,-644.35,-29436.49];
_camera camSetPos [4897.90,11682.23,26.95];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 16:56:21
_camera camSetTarget [-74767.10,64446.04,-29436.61];
_camera camSetPos [4897.90,11682.23,26.95];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 16:56:23
_camera camSetTarget [-36953.97,100681.68,-18047.24];
_camera camSetPos [4897.90,11682.23,26.95];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 16:56:23
_camera camSetTarget leader assault1;
_camera camSetRelPos [3,20,10];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 16:56:23
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,2,1.7];

_camera camCommit 5;
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
