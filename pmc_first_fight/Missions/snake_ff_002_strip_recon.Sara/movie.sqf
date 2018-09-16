
PMC_sf1 loadStatus "sf1_01"; PMC_sf1 setDamage 0;
PMC_sf2 loadStatus "sf2_01";
PMC_sf3 loadStatus "sf3_01";
PMC_sf4 loadStatus "sf4_01";

{ if (!alive _x) then { deleteVehicle _x }; _x setDamage 0 } forEach [PMC_sf2,PMC_sf3,PMC_sf4];

// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [5,20,5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

titlecut ["","BLACK IN",2];
sleep 2;

titletext["Rahmadi","plain down",2];

_camera camSetRelPos [0,1,1.5];
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

titletext["Todays task; Reconnaissance","plain down",2];

_camera camSetRelPos [-1,3,1.3];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 2;

_camera camSetTarget (units assault1 select 1);
_camera camSetRelPos [-2,5,.5];
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 3;

titletext["","plain down",2];
titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
