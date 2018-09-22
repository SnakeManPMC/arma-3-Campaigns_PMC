// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 0:42:23
_camera camSetTarget [-3945.46,106126.71,16989.21];
_camera camSetPos [1457.47,7726.83,8.19];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };


[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

//=== 0:42:24
_camera camSetTarget [53812.98,91217.13,16989.27];
_camera camSetPos [1457.47,7726.83,8.19];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 0:42:25
_camera camSetTarget [96875.39,32367.26,16989.48];
_camera camSetPos [1457.47,7726.83,8.19];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 0:42:27
_camera camSetTarget [94172.51,-25674.52,16989.69];
_camera camSetPos [1457.47,7726.83,8.19];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 0:42:30
_camera camSetTarget [58290.52,-70166.05,26519.37];
_camera camSetPos [1457.47,7726.83,8.19];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 0.5;

//=== 0:44:32
_camera camSetTarget [21759.57,-90203.86,-5612.20];
_camera camSetPos [1540.96,7564.15,71.82];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 0:44:37
_camera camSetTarget [97280.92,-20816.47,-5612.49];
_camera camSetPos [1587.20,7553.39,74.94];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 0:44:53
_camera camSetTarget [75653.59,-58807.10,-11145.62];
_camera camSetPos [1640.23,7486.14,65.10];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
