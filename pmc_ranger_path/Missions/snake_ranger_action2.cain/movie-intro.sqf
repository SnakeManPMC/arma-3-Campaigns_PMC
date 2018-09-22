// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 14:08:47
_camera camSetTarget [-59263.27,80942.46,-11371.49];
_camera camSetPos [9052.33,8804.35,4.58];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 7;

//=== 14:08:55
_camera camSetTarget [-8180.93,90811.66,-54423.43];
_camera camSetPos [9037.40,8794.68,20.15];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 6;

//=== 14:09:07
_camera camSetTarget [12422.87,-83982.00,-36858.25];
_camera camSetPos [9008.81,8869.67,17.79];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 6;

// ranger face
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,20,5];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

// ranger face
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,30,7];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

// ranger face
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,-30,8];

_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 3;

// ranger face
_camera camSetTarget leader assault1;
_camera camSetRelPos [-3,15,5];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

//=== 14:09:36
_camera camSetTarget [-50340.12,89240.79,-5599.56];
_camera camSetPos [8895.41,8878.53,2.39];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 8;

//=== 14:09:44
_camera camSetTarget [99504.93,-32736.04,-6758.85];
_camera camSetPos [8850.39,8908.96,1.55];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 6;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
