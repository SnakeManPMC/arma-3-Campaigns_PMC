// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 13:37:56
_camera camSetTarget [-77562.68,-44797.50,-17612.56];
_camera camSetPos [6983.76,5553.64,6.03];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["rtrack7",0];

titlecut ["","BLACK IN",2];
sleep 5;

//=== 13:38:07
_camera camSetTarget [-24816.19,95804.05,-28573.11];
_camera camSetPos [6976.71,5458.33,17.01];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:38:32
_camera camSetTarget [55573.83,91677.44,13738.32];
_camera camSetPos [6923.42,5372.41,0.41];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

//=== 13:38:49
_camera camSetTarget [79422.61,-58980.45,-24136.33];
_camera camSetPos [6822.98,5353.19,3.19];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

// additional truck shot
_camera camSetTarget trk1;
_camera camSetRelPos [5,20,1.7];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:39:00
_camera camSetTarget [33458.49,-82652.73,-39508.74];
_camera camSetPos [6865.78,5215.50,4.84];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

//=== 13:39:06
_camera camSetTarget [-47286.25,-78525.81,-7279.47];
_camera camSetPos [6878.98,5206.94,1.83];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

//=== 13:39:16
_camera camSetTarget [-51063.10,82506.23,25831.19];
_camera camSetPos [6892.38,5172.82,1.50];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

//=== 13:39:24
_camera camSetTarget [19338.31,104182.59,6535.73];
_camera camSetPos [6876.00,5169.20,1.63];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

//=== 13:39:57
_camera camSetTarget [-49212.66,87307.98,-7843.18];
_camera camSetPos [7021.10,4998.56,9.65];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

//=== 13:40:16
_camera camSetTarget [-51474.14,85670.42,8602.33];
_camera camSetPos [6994.15,4994.96,4.44];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
