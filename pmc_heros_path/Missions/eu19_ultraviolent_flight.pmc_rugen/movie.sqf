// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// assault1 leader
_camera camSetTarget leader gunships1
_camera camSetRelPos [10,-5,3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["Track10_Logistics",0];

titlecut ["","BLACK IN",2];
sleep 5;

// assault1 leader
_camera camSetTarget leader gunships1
_camera camSetRelPos [10,5,3];
_camera camCommit 14
waitUntil { (camCommitted _camera); };

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
