// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 2:26:23
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,5,3];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 5;

//=== 2:26:23
_camera camSetTarget helo;
_camera camSetRelPos [10,30,5];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;

//=== 2:26:23
_camera camSetTarget helo;
_camera camSetRelPos [-10,30,5];
_camera camSetFOV 0.400
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 3;

_camera camSetTarget maj1;
_camera camSetRelPos [3,5,2];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;
_camera camSetTarget maj1;
_camera camSetRelPos [-3,5,2];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 3;

4 fademusic 0;
titlecut ["","BLACK OUT",3];
sleep 3;

// destroy camera - if we use mission cutscene
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
