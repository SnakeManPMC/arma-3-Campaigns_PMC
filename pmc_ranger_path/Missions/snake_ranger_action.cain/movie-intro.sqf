// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 13:21:39
_camera camSetTarget [-96636.68,11327.98,-10550.04];
_camera camSetPos [2697.67,6942.36,1.92];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["rtrack6",0];

titlecut ["","BLACK IN",2];
sleep 2;

//=== 13:21:48
_camera camSetTarget [-96636.68,11327.98,-10550.08];
_camera camSetPos [2727.04,6941.63,3.38];
_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 0.5;

//=== 13:23:38
_camera camSetTarget [101006.64,22959.37,8983.79];
_camera camSetPos [2689.30,6935.18,1.89];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 0.5;

//=== 13:23:42
_camera camSetTarget [100534.97,-11748.60,8984.08];
_camera camSetPos [2689.70,6945.69,1.80];
_camera camCommit 5
waitUntil { (camCommitted _camera); };
//=== 13:23:46
_camera camSetTarget [93413.38,-34191.87,8984.02];
_camera camSetPos [2692.54,6953.35,3.76];
_camera camCommit 5
waitUntil { (camCommitted _camera); };
sleep 0.5;

// ranger shot
_camera camSetTarget leader assault1;
_camera camSetRelPos [2,2,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

// ranger shot
_camera camSetTarget leader assault1;
_camera camSetRelPos [-1,5,3];
_camera camCommit 0;
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
