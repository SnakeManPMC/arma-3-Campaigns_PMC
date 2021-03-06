// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 17:34:45
_camera camSetTarget [90027.22,18407.61,51362.16];
_camera camSetPos [5228.34,4988.44,21.74];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

//=== 17:34:48
_camera camSetTarget [54215.39,91086.24,-13602.67];
_camera camSetPos [5228.34,4988.44,21.74];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 17:34:50
_camera camSetTarget [1674.60,80501.44,-65372.95];
_camera camSetPos [5228.34,4988.44,21.74];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 17:35:51
_camera camSetTarget [101992.20,23633.17,-16854.94];
_camera camSetPos [5209.87,5012.01,3.84];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 17:36:03
_camera camSetTarget [-83515.47,-39032.18,-13266.15];
_camera camSetPos [5238.94,5067.68,3.49];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 17:36:11
_camera camSetTarget [632.27,104037.20,-13268.63];
_camera camSetPos [5215.41,5035.85,6.51];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 17:36:43
_camera camSetTarget [-69988.88,-53806.04,-28684.46];
_camera camSetPos [5305.82,5373.08,11.02];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 17:36:45
_camera camSetTarget [-17079.76,-87761.95,-28688.77];
_camera camSetPos [5297.01,5351.67,11.37];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 17:36:50
_camera camSetTarget [43817.07,93011.37,-28693.49];
_camera camSetPos [5284.66,5332.30,14.77];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 17:37:26
_camera camSetTarget [90404.53,-46696.44,84.44];
_camera camSetPos [5473.48,6092.92,5.51];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 17:37:33
_camera camSetTarget [53344.33,-71365.62,-41253.57];
_camera camSetPos [5503.77,6103.01,17.28];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 17:37:45
_camera camSetTarget [-80402.48,56366.20,-8811.47];
_camera camSetPos [5563.76,6055.15,4.40];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

// player shot
_camera camSetTarget leader assault1;
_camera camSetRelPos [2,5,1.7];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

// col1 shot
_camera camSetTarget col1
_camera camSetRelPos [0,3,2];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
