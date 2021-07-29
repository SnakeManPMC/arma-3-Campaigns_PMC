// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 5:23:57
_camera camSetTarget [-34295.58,98369.84,141.44];
_camera camSetPos [6552.56,7093.19,2.00];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["Track15_MainTheme",0];

titlecut ["","BLACK IN",2];
sleep 5;

//=== 5:24:02
_camera camSetTarget [20529.88,105269.34,-12712.35];
_camera camSetPos [6537.17,7091.46,6.07];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 5:24:08
_camera camSetTarget [78027.83,68807.91,-32687.98];
_camera camSetPos [6516.36,7100.89,10.70];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 5:24:15
_camera camSetTarget [94319.69,38480.89,-35975.38];
_camera camSetPos [6506.95,7119.86,15.09];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 5:24:15
_camera camSetTarget leader assault1;
_camera camSetRelPos [2,5,2];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 5:24:15
_camera camSetTarget leader assault1;
_camera camSetRelPos [-2,5,.5];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 2;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
