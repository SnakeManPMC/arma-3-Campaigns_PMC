
PMC_sf1 loadStatus "sf1_10";
PMC_sf1 setDamage 0;
PMC_sf2 loadStatus "sf2_10";
PMC_sf3 loadStatus "sf3_10";
PMC_sf4 loadStatus "sf4_10";
PMC_sf5 loadStatus "sf5_10";
PMC_sf6 loadStatus "sf6_10";

{ if (!alive _x) then { deleteVehicle _x }; _x setDamage 0 } forEach [PMC_sf2,PMC_sf3,PMC_sf4,PMC_sf5,PMC_sf6];

// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,35,3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

titlecut ["","BLACK IN",2];
sleep 5;

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [-3,10,2];
_camera camCommit 14;
waitUntil { (camCommitted _camera); };

titletext["Our SF guys are hunted down by SLA troops...","plain down",2];

_camera camSetTarget leader slainf1;
_camera camSetRelPos [-3,35,4];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;
_camera camSetTarget leader slainf2;
_camera camSetRelPos [3,25,3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

_camera camSetTarget leader assault1;
_camera camSetRelPos [2,15,1.5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

_camera camSetTarget leader assault1;
_camera camSetRelPos [-2,20,1.3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 7;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
