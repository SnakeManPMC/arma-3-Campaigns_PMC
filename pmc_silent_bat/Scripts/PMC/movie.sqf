
// this is the generic movie.sqs ran if nothing else is available.

// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [-5,5,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

titlecut ["","BLACK IN",2];
sleep 2;

//titletext["","plain down",2];

_camera camSetRelPos [0,3,1.5];
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

//titletext["","plain down",2];

_camera camSetTarget leader assault2;
_camera camSetRelPos [-10,20,3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;
_camera camSetRelPos [-1,3,1.5];
_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 2;

//titletext["","plain down",2];

_camera camSetTarget leader assault3;
_camera camSetRelPos [3,35,4];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
_camera camSetRelPos [-3,3.5,1];
_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 3;

//titletext["","plain down",2];
titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
