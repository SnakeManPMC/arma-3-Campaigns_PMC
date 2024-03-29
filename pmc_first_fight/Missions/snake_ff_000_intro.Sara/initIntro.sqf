// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// assault1 leader
_camera camSetTarget plr;
_camera camSetRelPos [1,0,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";
sleep 3;

titletext["PMC Presents","plain",2];
sleep 3;

_camera camSetTarget plr;
_camera camSetRelPos [1,1,1.3];
_camera camCommit 7;
waitUntil { (camCommitted _camera); };

titletext["Armed Assault first usermade campaign","plain",2];
sleep 5;

_camera camSetRelPos [0,3,1.5];
_camera camCommit 10;

titletext["PMC First Fight","plain",2];
waitUntil { (camCommitted _camera); };
sleep 3;

titletext["Are you up to fight in Sahrani?","plain",2];
sleep 5;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
