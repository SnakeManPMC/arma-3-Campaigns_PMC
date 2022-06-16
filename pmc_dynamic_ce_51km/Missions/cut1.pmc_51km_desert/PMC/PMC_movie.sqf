// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

{
	_x setbehaviour "safe";
	_x setformation "stag column";
} foreach [hqteam, assault1, assault2, assault3, assault4, assault5, ranger1, ranger2, ranger3, seal1, seal2, ustanks1, ustanks2, ustanks3, ustanks4, ustanks5];

// pole
_camera camSetTarget pole20;
_camera camSetRelPos [10,10,4];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["LeadTrack01_F", 0];

titletext["PMC 51km Desert","plain",2];
sleep 5;
titletext["War against Russians is about to begin...","plain",2];
sleep 5;

titlecut ["","BLACK IN",2];
sleep 3;

_camera camSetTarget leader assault1;
_camera camSetRelPos [0,4,1.3];
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
titletext["Infantry Alpha Black","plain down",2];
sleep 5;

_camera camSetTarget leader assault2;
_camera camSetRelPos [0,4,1.3];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["Infantry Bravo Black","plain down",2];
sleep 5;

_camera camSetTarget leader assault3;
_camera camSetRelPos [0,4,1.3];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["Infantry Charlie Black","plain down",2];
sleep 5;

_camera camSetTarget leader assault4;
_camera camSetRelPos [0,4,1.3];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["Infantry Delta Black","plain down",2];
sleep 5;

_camera camSetTarget leader assault5;
_camera camSetRelPos [0,4,1.3];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["Infantry Echo Black","plain down",2];
sleep 5;

_camera camSetTarget leader ranger1;
_camera camSetRelPos [0,4,1.3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
titletext["Ranger 1","plain down",2];
sleep 5;

_camera camSetTarget leader ranger2;
_camera camSetRelPos [0,4,1.3];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["Ranger 2","plain down",2];
sleep 5;

_camera camSetTarget leader ranger3;
_camera camSetRelPos [0,4,1.3];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["Ranger 3","plain down",2];
sleep 5;

_camera camSetTarget leader seal1;
_camera camSetRelPos [0,4,1.3];
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
titletext["SEAL 1","plain down",2];
sleep 5;

_camera camSetTarget leader seal2;
_camera camSetRelPos [0,4,1.3];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["SEAL 2","plain down",2];
sleep 5;

_camera camSetTarget vehicle leader ustanks1;
_camera camSetRelPos [0,10,3];
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
titletext["M1A1 Abrams tank platoon 1","plain down",2];
sleep 5;

_camera camSetTarget vehicle leader ustanks2;
_camera camSetRelPos [0,10,3];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["M1A1 Abrams tank platoon 2","plain down",2];
sleep 5;

_camera camSetTarget vehicle leader ustanks3;
_camera camSetRelPos [0,10,3];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["M2A2 Bradley IFV platoon 1","plain down",2];
sleep 5;

_camera camSetTarget vehicle leader ustanks4;
_camera camSetRelPos [0,10,3];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["M2A2 Bradley IFV platoon 2","plain down",2];
sleep 5;

_camera camSetTarget vehicle leader ustanks5;
_camera camSetRelPos [0,10,3];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["M2A2 Bradley IFV platoon 3","plain down",2];
sleep 5;

_camera camSetTarget vehicle leader gunships1;
_camera camSetRelPos [10,25,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
titletext["AH-64 Apache gunship 1","plain down",2];
sleep 5;

_camera camSetTarget vehicle leader gunships2;
_camera camSetRelPos [-10,25,2];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["AH-64 Apache gunship 2","plain down",2];
sleep 5;

_camera camSetTarget vehicle leader transp1;
_camera camSetRelPos [10,15,2];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["UH-60L Blackhawk transport 1","plain down",2];
sleep 5;

_camera camSetTarget vehicle leader transp2;
_camera camSetRelPos [-10,15,2];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["UH-60L Blackhawk transport 2","plain down",2];
sleep 5;

_camera camSetTarget vehicle leader transp3;
_camera camSetRelPos [5,7,2];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["UH-60L Blackhawk transport 3","plain down",2];
sleep 5;

_camera camSetTarget vehicle leader usarty1;
_camera camSetRelPos [0,7,2];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["And finally our support forces. The M252 Mortar's","plain down",2];
sleep 5;

_camera camSetTarget vehicle leader usarty2;
_camera camSetRelPos [0,15,3];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["M101 Howitzers","plain down",2];
sleep 5;

_camera camSetTarget vehicle leader usarty3;
_camera camSetRelPos [0,15,3];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
titletext["M109 Paladins","plain down",2];
sleep 5;

titletext["And dont forget the submarine hiding below surface with Cruise Missiles...","plain down",2];
sleep 3;

_camera camSetTarget leader hqteam;
_camera camSetRelPos [0,2,1.3];
_camera camCommit 15;
waitUntil { (camCommitted _camera); };
titletext["HQ... you.","plain down",2];
sleep 3;
titletext["Are you up to the task?","plain down",2];
sleep 5;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene
//_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
