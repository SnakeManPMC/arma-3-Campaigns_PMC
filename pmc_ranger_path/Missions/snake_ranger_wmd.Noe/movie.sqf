// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

_as1 = leader assault1
_as2 = leader assault2
_as3 = leader assault3
_as1 removeweapon "binocular";
_as2 removeweapon "binocular";
_as3 removeweapon "binocular";

_as1 setbehaviour "safe";
_as2 setbehaviour "safe";
_as3 setbehaviour "safe";

_as1 setpos [(getpos interrogator select 0),(getpos interrogator select 1)+3,0];
_as2 setpos [(getpos interrogator select 0)-3,(getpos interrogator select 1),0];
_as3 setpos [(getpos interrogator select 0)+3,(getpos interrogator select 1),0];

cia1 setpos [(getpos interrogator select 0)-1,(getpos interrogator select 1)+1,0];
cia2 setpos [(getpos interrogator select 0)+1,(getpos interrogator select 1)+1,0];

col1 setpos getpos interrogator;

//=== 22:50:48
_camera camSetTarget [-67459.98,-54594.37,-36718.29];
_camera camSetPos [3043.66,6057.71,14.31];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

titletext ["High Security facility in western Nogova.\nHousing Central Intelligence Agency field office.","plain",2];

//=== 22:50:56
_camera camSetTarget [-26875.36,-81995.19,-36717.64];
_camera camSetPos [3030.87,6066.45,14.31];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };

titletext ["They are currently interrogating an important\nhigh ranking enemy officer.","plain",2];

//=== 22:51:00
_camera camSetTarget [18326.37,-85664.87,-36718.02];
_camera camSetPos [3016.53,6067.58,14.31];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };

titletext ["Process has been good so far...","plain",2];

//=== 22:51:05
_camera camSetTarget [73114.34,-55042.46,-36717.79];
_camera camSetPos [3002.79,6060.77,14.31];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

titletext ["","plain",2];

//=== 22:28:43
_camera camSetTarget [-65315.62,-45369.81,-51793.34];
_camera camSetPos [3028.43,6046.46,7.22];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
cia1 dowatch col1;
cia2 dowatch col1;
of1 dowatch col1;
of2 dowatch col1;
of3 dowatch col1;
cia1 playmove "effectstandtalk";
col1 dowatch cia1;
sleep 5;

cia1 playmove "effectstand";
col1 playmove "effectstandtalk";

//=== 22:28:48
_camera camSetTarget [84969.46,-51012.78,-5233.26];
_camera camSetPos [3013.35,6044.88,1.89];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

col1 playmove "effectstand";
cia2 playmove "effectstandtalk";
col1 dowatch cia2;

//=== 22:29:26
_camera camSetTarget [81066.31,64638.56,21796.95];
_camera camSetPos [3016.23,6038.02,0.83];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

cia2 playmove "effectstand";
col1 playmove "effectstandtalk";
sleep 5;

//=== 22:29:26
_camera camSetTarget cia2;
_camera camSetRelPos [0,1,1.7];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
col1 playmove "effectstand";
cia2 playmove "effectstandtalk";
sleep 5;
cia2 playmove "effectstand";

//=== 22:29:26
_camera camSetTarget col1;
_camera camSetRelPos [0,1,1.7];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
col1 playmove "effectstandtalk";
sleep 3;
col1 playmove "effectstand";
sleep 3;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene the end
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
