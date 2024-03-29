
PMC_sf1 loadStatus "sf1_08";
PMC_sf1 setDamage 0;
PMC_sf2 loadStatus "sf2_08";
PMC_sf3 loadStatus "sf3_08";
PMC_sf4 loadStatus "sf4_08";
PMC_sf5 loadStatus "sf5_08";
PMC_sf6 loadStatus "sf6_08";

{ if (!alive _x) then { deleteVehicle _x }; _x setDamage 0 } forEach [PMC_sf2,PMC_sf3,PMC_sf4,PMC_sf5,PMC_sf6];

assault1 setFormation "stag column";

// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [2,-30,3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

titletext["Special Operations Forces conducting recon.","plain down",2];

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [-1,-3,1.3];
_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 3;

titletext["Its quite tense in the enemy territory, but thats why they call us SF!","plain down",2];

_camera camSetTarget leader assault1;
_camera camSetRelPos [0,2,1.3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

_camera camSetTarget PMC_sf2;
_camera camSetRelPos [0,7,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
_camera camSetRelPos [0,2,1.3];
_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 3;

titletext["Hopefully we get to blow stuff up really soon.","plain down",2];

_camera camSetTarget PMC_sf4;
_camera camSetRelPos [0,7,.5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1
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
