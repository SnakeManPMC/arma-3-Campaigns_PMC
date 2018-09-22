// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 1:15:18
_camera camSetTarget [45085.31,102434.12,-7755.65];
_camera camSetPos [8015.52,9885.96,2.00];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 2;

//=== 1:15:25
_camera camSetTarget [45085.31,102434.12,-7755.37];
_camera camSetPos [8038.57,9876.72,2.00];

_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 1:16:03
_camera camSetTarget [-88364.80,-9536.68,17980.04];
_camera camSetPos [8068.83,9919.13,3.43];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
