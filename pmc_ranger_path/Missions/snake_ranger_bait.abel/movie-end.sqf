// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 4:37:01
_camera camSetTarget [18837.66,-95219.96,-8413.52];
_camera camSetPos [3737.97,3272.94,5.93];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

//=== 4:37:09
_camera camSetTarget [24094.49,-94279.71,-8414.28];
_camera camSetPos [3751.82,3263.90,3.94];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:37:13
_camera camSetTarget [-30970.95,-90137.15,-8414.37];
_camera camSetPos [3766.03,3255.63,3.94];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 4:37:55
_camera camSetTarget [-73604.41,65632.19,-10863.80];
_camera camSetPos [3736.53,3183.67,8.12];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 4:37:56
_camera camSetTarget [207.35,102526.44,-10863.60];
_camera camSetPos [3736.53,3183.67,8.12];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:38:03
_camera camSetTarget [207.35,102526.44,-10863.84];
_camera camSetPos [3759.74,3184.50,8.50];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:38:11
_camera camSetTarget [-31037.13,96298.64,-10863.81];
_camera camSetPos [3787.30,3192.80,9.19];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 4:38:58
_camera camSetTarget [92193.25,34583.04,-34366.43];
_camera camSetPos [3681.84,3230.93,35.44];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 4:39:00
_camera camSetTarget [53725.73,86449.45,-23833.49];
_camera camSetPos [3681.84,3230.93,35.44];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:39:03
_camera camSetTarget [-8093.54,102209.77,-7986.59];
_camera camSetPos [3681.84,3230.93,35.44];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 4:39:48
_camera camSetTarget [-1761.10,103472.33,1353.53];
_camera camSetPos [3629.74,3628.77,13.90];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 4:39:52
_camera camSetTarget [-1761.10,103472.33,1353.98];
_camera camSetPos [3626.94,3680.54,10.23];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:39:57
_camera camSetTarget [19629.57,102400.59,1354.43];
_camera camSetPos [3635.73,3749.09,7.27];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 4:39:57
_camera camSetTarget leader assault1;
_camera camSetRelPos [-5,-30,10];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 4:39:57
_camera camSetTarget leader assault1;
_camera camSetRelPos [5,5,2];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 4:39:57
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,2,2];

_camera camCommit 3;
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
