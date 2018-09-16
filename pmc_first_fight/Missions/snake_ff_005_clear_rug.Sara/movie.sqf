
PMC_army1 loadStatus "army1_04";
PMC_army1 setDamage 0;
PMC_army2 loadStatus "army2_04";
PMC_army3 loadStatus "army3_04";
PMC_army4 loadStatus "army4_04";
PMC_army5 loadStatus "army5_04";
PMC_army6 loadStatus "army6_04";
PMC_army7 loadStatus "army7_04";
PMC_army8 loadStatus "army8_04";
PMC_army9 loadStatus "army9_04";
PMC_army10 loadStatus "army10_04";

{ if (!alive _x) then { deleteVehicle _x }; _x setDamage 0 } forEach [PMC_army2,PMC_army3,PMC_army4,PMC_army5,PMC_army6,PMC_army7,PMC_army8,PMC_army9,PMC_army10];

// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// assault1 face
_camera camSetTarget leader assault1;
_camera camSetRelPos [-5+random 10,5+random 5,1+random 2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

titlecut ["","BLACK IN",2];
sleep 2;

titletext["Army squad preparing for sweep","plain down",2];
sleep 9;

// assault1
_camera camPrepareTarget leader assault1;
_camera camPrepareRelPos [-2,10,1];
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };
sleep 9;

// assault1
_camera camPrepareTarget leader assault1;
_camera camPrepareRelPos [3,15,1.7];
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };
sleep 9;

// assault1
_camera camPrepareTarget leader assault1;
_camera camPrepareRelPos [0,.3,1.7];
_camera camCommitPrepared 5;
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
