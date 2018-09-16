// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

{_x assignascargo helo1} foreach units assault1;
{[_x] ordergetin true} foreach units assault1;

//=== 4:57:25
_camera camSetTarget [4870.39,111718.87,23.82];
_camera camSetPos [4870.39,11711.38,2.00];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["rtrack7",0];

titlecut ["","BLACK IN",2];
sleep 5;

//=== 4:57:29
_camera camSetTarget [-3333.73,111377.53,24.01];
_camera camSetPos [4868.60,11736.18,3.07];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 4:57:33
_camera camSetTarget [-3300.39,110972.55,-9365.81];
_camera camSetPos [4864.78,11782.60,5.47];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 4:58:34
_camera camSetTarget [84588.66,71414.95,-9372.14];
_camera camSetPos [4853.05,11800.01,2.71];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 4:58:37
_camera camSetTarget [101772.30,34560.55,-9371.74];
_camera camSetPos [4849.79,11806.83,2.71];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:58:39
_camera camSetTarget [101216.09,-13190.14,-9371.89];
_camera camSetPos [4849.54,11813.81,2.71];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 4:58:46
_camera camSetTarget [99724.94,-18364.95,-9371.77];
_camera camSetPos [4857.59,11810.56,1.89];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
