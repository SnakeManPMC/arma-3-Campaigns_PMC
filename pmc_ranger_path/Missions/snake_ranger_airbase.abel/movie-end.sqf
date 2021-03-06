// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

{_x setdammage 1} foreach eastunits;

//=== 14:57:52
_camera camSetTarget [-58326.59,4392.28,75144.19];
_camera camSetPos [7400.59,10631.36,9.26];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 5;

//=== 14:57:57
_camera camSetTarget [-63264.78,-58709.20,14118.85];
_camera camSetPos [7400.59,10631.36,9.26];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 14:58:00
_camera camSetTarget [35268.26,-82162.14,-24716.67];
_camera camSetPos [7400.59,10631.36,9.26];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 14:58:01
_camera camSetTarget [93434.80,-40162.02,4297.64];
_camera camSetPos [7400.59,10631.36,9.26];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 14:58:07
_camera camSetTarget [81773.80,-43837.59,-38819.99];
_camera camSetPos [7447.24,10612.31,21.56];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 14:58:18
_camera camSetTarget [4784.33,-78098.59,-46007.49];
_camera camSetPos [7505.28,10622.26,22.15];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };

//=== 14:59:40
_camera camSetTarget [100700.22,-7786.51,-33122.38];
_camera camSetPos [8056.74,10028.72,9.31];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 14:59:45
_camera camSetTarget [72470.66,-58891.53,-33119.91];
_camera camSetPos [8037.59,10022.70,9.45];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 14:59:54
_camera camSetTarget [59464.59,-68469.14,-34543.95];
_camera camSetPos [8017.00,9995.64,22.77];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 15:00:02
_camera camSetTarget [59464.59,-68469.14,-34543.97];
_camera camSetPos [8016.87,9942.31,22.77];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };

//=== 15:00:55
_camera camSetTarget [50438.61,-80033.70,-10429.33];
_camera camSetPos [8056.15,9934.04,5.15];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 15:01:03
_camera camSetTarget [-21300.41,-79136.91,-34737.76];
_camera camSetPos [8091.73,9894.89,7.84];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 15:01:26
_camera camSetTarget [-3055.56,109096.16,-6064.53];
_camera camSetPos [8075.57,9904.81,1.25];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 15:01:34
_camera camSetTarget [-87105.82,40442.88,3369.68];
_camera camSetPos [8064.76,9923.16,5.95];

_camera camCommit 8;
waitUntil { (camCommitted _camera); };
sleep 5;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
