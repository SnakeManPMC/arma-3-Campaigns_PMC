
PMC_army1 loadStatus "army1_06";
PMC_army1 setDamage 0;
PMC_army2 loadStatus "army2_06";
PMC_army3 loadStatus "army3_06";
PMC_army4 loadStatus "army4_06";
PMC_army5 loadStatus "army5_06";
PMC_army6 loadStatus "army6_06";
PMC_army7 loadStatus "army7_06";
PMC_army8 loadStatus "army8_06";
PMC_army9 loadStatus "army9_06";
PMC_army10 loadStatus "army10_06";

{ if (!alive _x) then { deleteVehicle _x }; _x setDamage 0 } forEach [PMC_army2,PMC_army3,PMC_army4,PMC_army5,PMC_army6,PMC_army7,PMC_army8,PMC_army9,PMC_army10];

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
waitUntil { (camCommitted _camera); };;

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

titletext["Our troops","plain down",2];

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,1,1.7];
_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 3;

titletext["Getting ready for next mission","plain down",2];

_camera camSetTarget leader assault2;
_camera camSetRelPos [5,10,1.3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

_camera camSetTarget leader assault2;
_camera camSetRelPos [-5,15,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

titletext["Assault on Sahrani is just ahead... how will it play out?","plain down",2];

_camera camSetTarget leader assault1;
_camera camSetRelPos [-3,17,1.7];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetRelPos [0,1,1.7];
_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 4;

titletext["","plain down",2];
titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
