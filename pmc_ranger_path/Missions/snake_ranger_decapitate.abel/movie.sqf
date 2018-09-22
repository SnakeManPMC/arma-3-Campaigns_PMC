// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 10:16:29
_camera camSetTarget [102316.81,18894.16,32236.95];
_camera camSetPos [8068.01,9929.91,5.51];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 2;

//=== 10:16:31
_camera camSetTarget [49666.54,-75115.70,32236.71];
_camera camSetPos [8068.01,9929.91,5.51];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 10:16:32
_camera camSetTarget [-48286.61,-66144.74,32236.75];
_camera camSetPos [8068.01,9929.91,5.51];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 10:16:35
_camera camSetTarget [-85363.99,-25495.75,-3897.15];
_camera camSetPos [8068.01,9929.91,5.51];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 10:16:41
_camera camSetTarget [-85659.02,-24848.89,-3899.45];
_camera camSetPos [8022.67,9911.19,2.87];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 10:16:52
_camera camSetTarget [77988.20,-57710.25,23088.45];
_camera camSetPos [8014.98,9909.38,0.91];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
