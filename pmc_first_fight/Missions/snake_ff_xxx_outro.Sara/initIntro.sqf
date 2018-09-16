// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

_a1 = leader assault1;
_a2 = leader assault2;

// assault1 leader
_camera camSetTarget _a1;
_camera camSetRelPos [2,10,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["ATrack6",0];
sleep 3;

titletext["You have been playing\nArmed Assault first usermade campaign","plain down",2];
sleep 7;

// assault2 leader
_camera camSetTarget _a2;
_camera camSetRelPos [2,10,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

titletext["PMC First Fight","plain down",2];
sleep 7;

_camera camSetTarget _a1;
_camera camSetRelPos [2,10,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

titletext["Mission Design:\nSnake Man","plain down",2];
sleep 7;

_camera camSetTarget _a2;
_camera camSetRelPos [2,10,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

titletext["Scripts:\nSnake Man","plain down",2];
sleep 7;

_camera camSetTarget _a1;
_camera camSetRelPos [2,10,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

titletext["Cutscenes:\nSnake Man","plain down",2];
sleep 7;

_camera camSetTarget _a2;
_camera camSetRelPos [2,10,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

titletext["The End","plain down",2];
sleep 7;

_camera camSetTarget _a1;
_camera camSetRelPos [2,10,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

titletext["https://www.pmctactical.org", "plain", 2];
sleep 7;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true
