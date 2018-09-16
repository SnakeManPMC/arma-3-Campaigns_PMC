// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

leader officers1 switchmove "effectstandtalk";

//=== 5:15:54
_camera camSetTarget [-82402.33,-32288.66,5626.86];
_camera camSetPos [8070.82,9940.33,1.45];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["rtrack4",0];

titlecut ["","BLACK IN",2];
sleep 5;

leader officers2 playmove "effectstandtalk";

//=== 5:16:03
_camera camSetTarget [-86409.09,-22569.13,4395.82];
_camera camSetPos [8062.89,9927.50,5.85];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

//=== 5:16:16
_camera camSetTarget [-90667.94,-5411.38,4940.99];
_camera camSetPos [8029.00,9911.70,1.21];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

//=== 5:16:22
_camera camSetTarget [-91350.84,11396.93,-11050.00];
_camera camSetPos [8022.15,9908.99,2.02];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

// pilots walking
_camera camSetTarget leader ppilots1;
_camera camSetRelPos [5,5,1];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

// assault2 walking
_camera camSetTarget leader assault2;
_camera camSetRelPos [10,-5,1];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

// officer face
_camera camSetTarget leader officers1;
_camera camSetRelPos [5,15,3];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 0.5;
// officer face
_camera camSetTarget leader officers1;
_camera camSetRelPos [0,2,1.5];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 1;

// littlebird
_camera camSetTarget helo1;
_camera camSetRelPos [10,-5,2];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

// chinook
_camera camSetTarget helo;
_camera camSetRelPos [-8,6,1];

_camera camCommit 13
waitUntil { (camCommitted _camera); };
sleep 5;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
