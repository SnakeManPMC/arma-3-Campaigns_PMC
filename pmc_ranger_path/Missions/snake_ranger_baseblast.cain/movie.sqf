// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

{_x setdammage 1} foreach eastunits;

//=== 13:49:01
_camera camSetTarget [-40538.40,-82871.02,-6613.86];
_camera camSetPos [7297.28,4694.19,9.10];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["rtrack8",0];

titlecut ["","BLACK IN",2];
sleep 3;

//=== 13:49:04
_camera camSetTarget [105591.98,20885.54,-8684.04];
_camera camSetPos [7297.28,4694.19,16.55];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 13:49:07
_camera camSetTarget [75721.20,74249.09,-21874.84];
_camera camSetPos [7297.28,4694.19,24.16];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 0.5;

//=== 13:49:20
_camera camSetTarget [-46559.57,86371.39,-20507.93];
_camera camSetPos [7381.65,4709.24,8.24];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~.2
//=== 13:49:21
_camera camSetTarget [34935.86,98619.46,-20507.70];
_camera camSetPos [7381.65,4709.24,8.24];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 13:49:23
_camera camSetTarget [96511.50,45134.89,-20507.72];
_camera camSetPos [7381.65,4709.24,8.24];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 0.5;


//=== 13:52:32
_camera camSetTarget [-68413.30,68465.81,-13308.17];
_camera camSetPos [7501.48,4736.97,6.62];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~.2
//=== 13:52:34
_camera camSetTarget [-1999.48,103388.07,-13306.49];
_camera camSetPos [7501.48,4736.97,6.62];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 13:52:35
_camera camSetTarget [79719.91,72610.44,-13306.40];
_camera camSetPos [7501.48,4736.97,6.62];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 0.5;

//=== 13:53:09
_camera camSetTarget [-67440.23,70779.20,-5105.67];
_camera camSetPos [7515.11,4783.49,2.96];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~.2
//=== 13:53:24
_camera camSetTarget [-67440.23,70779.20,-5105.45];
_camera camSetPos [7357.47,4919.77,5.82];

_camera camCommit 10;
waitUntil { (camCommitted _camera); };
~.2

//=== 13:53:56
_camera camSetTarget [41789.48,-84726.78,-27668.66];
_camera camSetPos [7373.85,4981.58,24.17];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:54:25
_camera camSetTarget [-44205.95,-77874.20,-21649.53];
_camera camSetPos [7503.33,4928.58,8.71];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

// assault leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,2,1.7];

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
