// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 4:19:28
_camera camSetTarget [27966.91,-87935.13,10534.18];
_camera camSetPos [3511.59,8469.76,12.58];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 2;

//=== 4:19:31
_camera camSetTarget [100659.23,-15141.73,-2058.23];
_camera camSetPos [3511.59,8469.76,12.58];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:19:33
_camera camSetTarget [83538.87,68393.05,-2058.48];
_camera camSetPos [3511.59,8469.76,12.58];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 4:21:47
_camera camSetTarget [78844.29,73428.95,-10493.91];
_camera camSetPos [3548.24,8485.97,4.23];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 4:21:58
_camera camSetTarget [79155.48,73697.36,-5471.41];
_camera camSetPos [3595.18,8531.46,2.61];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 4:22:25
_camera camSetTarget [88506.77,60806.38,7830.29];
_camera camSetPos [3609.99,8525.46,0.48];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 4:22:27
_camera camSetTarget [94342.16,-32807.19,7830.69];
_camera camSetPos [3609.99,8525.46,0.48];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 4:22:53
_camera camSetTarget [57745.12,-75190.17,-7817.72];
_camera camSetPos [3603.49,8508.74,7.96];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 4:23:01
_camera camSetTarget [50552.00,-79377.49,8607.91];
_camera camSetPos [3606.46,8510.41,1.38];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 4:23:01
_camera camSetTarget genguy;
_camera camSetRelPos [0,30,10];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 4:23:01
_camera camSetTarget genguy;
_camera camSetRelPos [0,1,1];

_camera camCommit 7;
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
