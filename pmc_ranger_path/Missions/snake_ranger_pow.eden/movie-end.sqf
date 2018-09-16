// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 5:03:02
_camera camSetTarget [-29301.23,103420.09,-20558.30];
_camera camSetPos [4881.94,11723.80,10.67];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["7thiamgonafly",0];

titlecut ["","BLACK IN",2];
sleep 5;

//=== 5:03:02
_camera camSetTarget pow1;
_camera camSetRelPos [5,5,2];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 5:03:02
_camera camSetTarget pow1;
_camera camSetRelPos [5,-5,2];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 5:03:02
_camera camSetTarget pow1;
_camera camSetRelPos [-5,-5,2];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 5:03:02
_camera camSetTarget pow1;
_camera camSetRelPos [-5,5,2];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 5:03:02
_camera camSetTarget pow1;
_camera camSetRelPos [0,2,2];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 2;

//=== 5:03:02
_camera camSetTarget leader assault1;
_camera camSetRelPos [10,30,10];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

//=== 5:03:02
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,2,1];

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
