// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

{_x setdammage 1} foreach eastunits;

//=== 15:21:50
_camera camSetTarget [-39105.05,-74063.65,-35322.43];
_camera camSetPos [5576.92,8007.29,28.94];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

0 fademusic 1;
[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 6;

//=== 15:21:57
_camera camSetTarget [-66806.77,-50937.63,-35593.95];
_camera camSetPos [5601.71,7968.56,26.84];
_camera camCommit 6
waitUntil { (camCommitted _camera); };
//=== 15:22:06
_camera camSetTarget [-84462.21,32377.47,-35607.06];
_camera camSetPos [5611.23,7911.83,24.31];
_camera camCommit 6
waitUntil { (camCommitted _camera); };
//=== 15:22:15
_camera camSetTarget [-1941.20,101599.96,-33764.20];
_camera camSetPos [5558.44,7876.78,25.21];
_camera camCommit 6
waitUntil { (camCommitted _camera); };
sleep 1;

// alpha shot
_camera camSetTarget leader assault1;
_camera camSetRelPos [5,10,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;

// alpha shot
_camera camSetTarget leader assault1;
_camera camSetRelPos [-2,2,2];
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
