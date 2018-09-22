// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 17:37:05
_camera camSetTarget [-88726.88,-22487.73,-9831.87];
_camera camSetPos [6520.36,6199.54,4.21];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };


[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 5;

//=== 17:37:07
_camera camSetTarget [-69557.77,70286.31,-9831.91];
_camera camSetPos [6520.36,6199.54,4.21];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 17:37:08
_camera camSetTarget [18300.93,104973.10,-9831.62];
_camera camSetPos [6520.36,6199.54,4.21];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 17:37:12
_camera camSetTarget [86165.00,65795.93,-9831.60];
_camera camSetPos [6520.36,6199.54,4.21];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 17:37:31
_camera camSetTarget [95707.18,50344.47,-9835.92];
_camera camSetPos [6554.76,6222.45,1.24];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 17:38:48
_camera camSetTarget [86154.49,-41757.62,-36425.59];
_camera camSetPos [6547.90,6247.76,7.96];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 17:39:01
_camera camSetTarget [-40132.67,-80625.73,-15955.12];
_camera camSetPos [6595.09,6259.24,2.30];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 17:39:21
_camera camSetTarget [-48145.03,-77429.00,2159.51];
_camera camSetPos [6578.87,6250.56,0.42];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;


titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
