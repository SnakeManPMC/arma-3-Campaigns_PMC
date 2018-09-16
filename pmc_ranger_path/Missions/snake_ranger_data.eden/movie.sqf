// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

offi1 dowatch leader assault1;
offi2 dowatch leader assault1;

//=== 5:17:41
_camera camSetTarget [-40321.24,100435.41,-8992.37];
_camera camSetPos [4882.81,11692.59,2.00];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["rtrack8",0];

titlecut ["","BLACK IN",2];
offi1 playmove "effectstandtalk";
sleep 4;
offi1 playmove "effectstand";
offi2 playmove "effectstandtalk";
sleep 1;

//=== 5:17:49
_camera camSetTarget [-40321.24,100435.41,-8992.53];
_camera camSetPos [4872.41,11712.99,2.00];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;
offi2 playmove "effectstand";
leader assault1 playmove "effectstandtalk";
sleep 2;

//=== 5:17:49
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,1,1];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;
//=== 5:17:49
_camera camSetTarget leader assault1;
_camera camSetRelPos [-2,7,3];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 2;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
