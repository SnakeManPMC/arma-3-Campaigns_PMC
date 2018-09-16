
PMC_sf1 loadStatus "sf1_03";
PMC_sf2 loadStatus "sf2_03";
PMC_sf3 loadStatus "sf3_03";
PMC_sf4 loadStatus "sf4_03";
PMC_sf5 loadStatus "sf5_03";
PMC_sf6 loadStatus "sf6_03";

{ if (!alive _x) then { deleteVehicle _x }; _x setDamage 0 } forEach [PMC_sf2,PMC_sf3,PMC_sf4,PMC_sf5,PMC_sf6];

assault1 setFormation "stag column";

// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [3,5,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

titletext["Special Operations Forces lead the way into Sahrani","plain down",2];

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,1,1];
_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 3;

titletext["Our operations start with simple intel gathering","plain down",2];

_camera camSetTarget leader assault1;
_camera camSetRelPos [-2,2,1.3];
_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

_camera camSetTarget (units assault1 select 2);
_camera camSetRelPos [0,7,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
_camera camSetRelPos [0,2,1.3];
_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 3;

titletext["Its the task of our Special Operations Forces to get the job done","plain down",2];

_camera camSetTarget (units assault1 select 4);
_camera camSetRelPos [0,7,.5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
_camera camSetRelPos [0,3,1];
_camera camCommit 10;
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
