// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 18:26:57
_camera camSetTarget [18604.17,103098.65,37413.64];
_camera camSetPos [648.49,12102.72,3.00];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 5;

//=== 18:27:05
_camera camSetTarget [54430.38,95627.80,11474.90];
_camera camSetPos [646.26,12103.16,4.94];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 18:27:11
_camera camSetTarget [97727.38,-11382.82,-4772.22];
_camera camSetPos [644.72,12108.68,6.14];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 18:29:44
_camera camSetTarget [99120.05,-4140.84,-6496.61];
_camera camSetPos [665.23,12111.00,3.06];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 18:29:48
_camera camSetTarget [99120.05,-4140.84,-6497.10];
_camera camSetPos [678.03,12106.98,1.10];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 18:29:51
_camera camSetTarget [-18535.92,110021.92,-6497.58];
_camera camSetPos [680.81,12103.02,0.96];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 18:29:56
_camera camSetTarget [-93435.20,45257.43,-6497.84];
_camera camSetPos [683.34,12104.85,1.03];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 18:29:58
_camera camSetTarget [-98466.06,23361.20,-6497.86];
_camera camSetPos [684.12,12108.03,1.14];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
sleep 1;

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

{_x assignascargo herc1} foreach units assault1;
{[_x] ordergetin true} foreach units assault1;

//=== 18:31:00
_camera camSetTarget [-93606.89,-13171.23,-21543.45];
_camera camSetPos [707.75,12119.96,11.24];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 18:31:25
_camera camSetTarget [93384.52,42650.96,-21555.37];
_camera camSetPos [638.44,12107.21,6.79];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 18:31:26
_camera camSetTarget [39316.46,101761.55,-21554.29];
_camera camSetPos [638.44,12107.21,6.79];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 18:31:27
_camera camSetTarget [-44598.49,98637.59,-21554.10];
_camera camSetPos [638.44,12107.21,6.79];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 18:31:29
_camera camSetTarget [-83281.95,65035.56,-12452.55];
_camera camSetPos [638.44,12107.21,6.79];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 18:32:04
_camera camSetTarget [-83617.86,64547.16,-12456.36];
_camera camSetPos [615.22,12118.01,4.47];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 18:32:09
_camera camSetTarget [-95916.08,35038.57,-12455.93];
_camera camSetPos [618.98,12132.05,4.64];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 18:32:12
_camera camSetTarget [-56059.09,-69295.42,-12456.49];
_camera camSetPos [616.19,12141.28,4.91];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 18:32:14
//_camera camSetTarget [-79229.95,-46755.86,-12456.33];
//_camera camSetPos [611.70,12145.20,5.12];
//
//_camera camCommit 3;
//waitUntil { (camCommitted _camera); };
sleep 1;

//=== 18:33:01
_camera camSetTarget [78239.38,-50089.05,9854.09];
_camera camSetPos [591.43,12154.45,1.20];
_camera camSetFOV 0.261
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;
//herc1 action["ENGINE ON"];
herc1 setfuel 1;
sleep 2;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene
//_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
