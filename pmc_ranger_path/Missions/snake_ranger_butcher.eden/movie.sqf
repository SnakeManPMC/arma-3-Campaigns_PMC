// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//"unassignvehicle _x" foreach units assault1;

//=== 14:51:22
_camera camSetTarget bot1;
_camera camSetRelPos [-20,50,5];
_camera camSetFOV 0.400;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["rtrack4",0];

titlecut ["","BLACK IN",2];
sleep 2;

//=== 14:51:22
_camera camSetTarget bot1;
_camera camSetRelPos [-10,10,5];
_camera camSetFOV 0.400;
_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 14:51:22
_camera camSetTarget bot2;
_camera camSetRelPos [10,10,4];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 10;


leader assault1 move getpos bay;
//=== 14:51:22
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,2,2];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

//=== 14:51:22
_camera camSetTarget [-1549.36,-87296.07,3892.77];
_camera camSetPos [4554.82,12441.81,2.29];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 14:51:27
_camera camSetTarget [-1549.36,-87296.07,3892.91];
_camera camSetPos [4552.58,12405.14,2.40];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 14:51:44
_camera camSetTarget [47349.46,-75740.95,20138.57];
_camera camSetPos [4553.66,12370.29,0.71];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 2;

_camera camSetTarget leader assault1;
_camera camSetRelPos [0,2,1.5];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
_camera camSetTarget leader assault1;
_camera camSetRelPos [-2.5,2,1.5];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
