// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

assault1 setbehaviour "safe";

//=== 17:24:50
_camera camSetTarget [90274.85,22355.23,50942.29];
_camera camSetPos [4864.92,11731.20,5.49];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

//=== 17:24:52
_camera camSetTarget [101506.93,23752.37,22741.44];
_camera camSetPos [4864.92,11731.20,5.49];

_camera camCommit 2
waitUntil { (camCommitted _camera); };
//=== 17:25:02
_camera camSetTarget [101506.93,23752.37,22741.36];
_camera camSetPos [4862.49,11729.38,5.04];

_camera camCommit 2
waitUntil { (camCommitted _camera); };
sleep 2;
//=== 17:25:09
_camera camSetTarget [71853.91,85964.95,-1079.51];
_camera camSetPos [4862.49,11729.38,5.04];

_camera camCommit 2
waitUntil { (camCommitted _camera); };
//=== 17:25:12
_camera camSetTarget [29565.31,107077.85,-17246.40];
_camera camSetPos [4862.49,11729.38,5.04];

_camera camCommit 2
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 17:26:39
//_camera camSetTarget [61639.49,-70306.43,6628.86];
//_camera camSetPos [4853.63,11740.85,0.77];
//
//_camera camCommit 0;
//waitUntil { (camCommitted _camera); };
//=== 17:26:45
_camera camSetTarget [61639.49,-70306.43,6628.48];
_camera camSetPos [4864.41,11755.28,0.77];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 17:26:55
_camera camSetTarget [61639.49,-70306.43,6628.64];
_camera camSetPos [4875.55,11766.65,0.52];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 17:26:55
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,2,1.7];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 17:27:39
_camera camSetTarget [-3815.90,111016.35,-8522.03];
_camera camSetPos [4876.90,11761.80,1.04];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

assault1 setbehaviour "aware";
{_x assignAsCargo helo1} foreach units assault1;
{[_x] orderGetIn true} foreach units assault1;
sleep 8;

//=== 17:28:16
_camera camSetTarget [69755.12,84424.43,-22608.31];
_camera camSetPos [4856.25,11790.52,4.73];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 8;

//=== 17:28:34
_camera camSetTarget [-86803.95,48395.34,15985.97];
_camera camSetPos [4882.46,11805.04,0.65];

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
