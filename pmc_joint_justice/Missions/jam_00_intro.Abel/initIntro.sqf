titlecut ["", "BLACK OUT", 0.0001];

assault1 setbehaviour "safe";
assault1 setformation "stag column";

// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [1,10,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titletext["PMC Presents","plain down",2];
sleep 2;

titlecut ["","BLACK IN",2];
sleep 3;

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,2,1.5];
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

titletext["PMC Joint Justice","plain down",2];

h0 move getpos loc1;
sleep 3;

_camera camSetTarget leader assault1;
_camera camSetRelPos [-2,3,1.5];
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

titletext["Battle against the Russian occupation of\nMalden, Kolgujev\nEveron and Nogova","plain down",2];
sleep 2;

h1 move getpos loc1;
h2 move getpos loc1;

_camera camSetTarget leader assault1;
_camera camSetRelPos [-2,-3,1.3];
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 4;

titletext["","plain down",3];
sleep 3;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
