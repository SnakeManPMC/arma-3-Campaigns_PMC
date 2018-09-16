
PMC_army1 loadStatus "army1_17";
PMC_army1 setDamage 0;
PMC_army2 loadStatus "army2_17";
PMC_army3 loadStatus "army3_17";
PMC_army4 loadStatus "army4_17";
PMC_army5 loadStatus "army5_17";
PMC_army6 loadStatus "army6_17";
PMC_army7 loadStatus "army7_17";
PMC_army8 loadStatus "army8_17";
PMC_army9 loadStatus "army9_17";
PMC_army10 loadStatus "army10_17";

{ if (!alive _x) then { deleteVehicle _x }; _x setDamage 0 } forEach [PMC_army2,PMC_army3,PMC_army4,PMC_army5,PMC_army6,PMC_army7,PMC_army8,PMC_army9,PMC_army10];

assault1 setFormation "stag column";

// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [4,10,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

titletext["Army squad at Chantico","plain down",2];

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [1,1,1.5];
_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 3;

titletext["Blackhawk dropped of some supplies.","plain down",2];

_camera camSetTarget pmcuh60;
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
waitUntil
{
	((getPos pmcuh60 select 2) > 35);
};

titletext["","plain down",1];
gohummer = true;

_camera camSetTarget (units assault1 select 2);
_camera camSetRelPos [0,7,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
_camera camSetRelPos [0,2,1.3];
_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 3;

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
