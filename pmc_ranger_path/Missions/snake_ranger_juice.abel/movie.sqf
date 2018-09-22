// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 2:06:10
_camera camSetTarget [105848.40,24097.86,-14860.32];
_camera camSetPos [7984.67,9912.45,6.65];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 5;

//=== 2:06:14
_camera camSetTarget [105848.40,24097.86,-14860.79];
_camera camSetPos [8012.04,9916.42,4.97];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 2:06:19
_camera camSetTarget [105947.60,25512.88,13180.51];
_camera camSetPos [8052.88,9920.71,3.21];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
