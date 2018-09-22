// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

{deletevehicle _x} foreach units assault2;
{deletevehicle _x} foreach units snipas1;
{deletevehicle _x} foreach units snipas2;

//=== 0:22:04
_camera camSetTarget [87403.69,60409.97,5106.41];
_camera camSetPos [5059.13,3896.83,27.27];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

//=== 0:22:07
_camera camSetTarget [-35871.23,94456.59,-11075.55];
_camera camSetPos [5059.13,3896.83,27.27];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 0:22:18
_camera camSetTarget [-38174.48,86707.86,-35642.12];
_camera camSetPos [5022.39,3879.20,27.27];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 0:23:43
_camera camSetTarget [-7438.06,96518.31,-35668.33];
_camera camSetPos [4967.21,3939.50,18.08];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 0:23:58
_camera camSetTarget [81729.74,-58618.20,-13565.45];
_camera camSetPos [4947.68,3990.98,5.71];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 0:24:07
_camera camSetTarget [88702.29,52679.61,-24998.72];
_camera camSetPos [5026.30,3974.39,8.00];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 0:24:20
_camera camSetTarget [-39095.64,-84148.70,-16577.16];
_camera camSetPos [5088.58,4010.29,12.15];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

// russian flag
_camera camSetTarget ruskie;
_camera camSetRelPos [0,30,5];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 0:24:34
_camera camSetTarget [-90248.72,-26111.28,670.63];
_camera camSetPos [5121.59,4012.51,2.99];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 0:24:46
_camera camSetTarget [-89156.45,-17870.04,-24830.26];
_camera camSetPos [5199.29,3999.31,27.62];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 0:25:04
_camera camSetTarget [-43252.39,-79838.02,-24852.88];
_camera camSetPos [5104.35,4079.84,27.62];

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
