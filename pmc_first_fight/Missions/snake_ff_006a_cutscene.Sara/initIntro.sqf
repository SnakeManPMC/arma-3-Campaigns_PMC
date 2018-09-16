
PMC_army1 loadStatus "army1_06";
PMC_army2 loadStatus "army2_06";
PMC_army3 loadStatus "army3_06";
PMC_army4 loadStatus "army4_06";
PMC_army5 loadStatus "army5_06";
PMC_army6 loadStatus "army6_06";
PMC_army7 loadStatus "army7_06";
PMC_army8 loadStatus "army8_06";
PMC_army9 loadStatus "army9_06";
PMC_army10 loadStatus "army10_06";

{ if (!alive _x) then { deleteVehicle _x }; _x setDamage 0 } forEach units assault1;

assault1 setFormation "stag column";

// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [1,10,1.5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

titlecut ["","BLACK IN",2];
sleep 10;

// assault1 leader, gordon mckenzie
_camera camSetTarget leader assault1;
_camera camSetRelPos [10,5,1];
_camera camCommit 14;
waitUntil { (camCommitted _camera); };

titletext["US forces arrive to the region.","plain down",2];
sleep 7;

// uh60 1
_camera camSetTarget uhelo1;
_camera camSetRelPos [10,50,5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget uhelo1;
_camera camSetRelPos [5,25,3];
_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 10;

titletext["UH60 Blackhawks are in the first wave of support.","plain down",2];
sleep 7;

// uh60 2
_camera camSetTarget uhelo2;
_camera camSetRelPos [15,45,7];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget uhelo2;
_camera camSetRelPos [6,24,3];
_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 10;

// uh60 3
_camera camSetTarget uhelo3;
_camera camSetRelPos [0,35,5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget uhelo3;
_camera camSetRelPos [2,10,2];
_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 10;

// uh60 4
_camera camSetTarget uhelo4;
_camera camSetRelPos [-50,50,3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget uhelo4;
_camera camSetRelPos [5,25,3];
_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 10;

// uh60 1
_camera camSetTarget leader assault1;
_camera camSetRelPos [5,5,1.5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget uhelo1;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
_camera camSetTarget uhelo2;
_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 1;
_camera camSetTarget uhelo4;
_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 7;

_camera camSetTarget leader assault1;
_camera camSetRelPos [0,1,1.5];
_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 2;

titletext["Time to push into Sahrani mainland is near\nAre you ready for the task?","plain down",2];
sleep 10;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
