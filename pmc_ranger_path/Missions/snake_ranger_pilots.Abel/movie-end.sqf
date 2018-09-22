// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 1:15:18
_camera camSetTarget leader assault1;
_camera camSetRelPos [-10,30,10];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

0 fademusic 1;
[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 2;

//=== 1:15:18
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,3,2];

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
