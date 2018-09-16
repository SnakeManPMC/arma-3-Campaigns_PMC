// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// start
_camera camSetTarget leader assault1;
_camera camSetRelPos [3,7,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["Track10_Logistics",0];

titlecut ["","BLACK IN",2];
sleep 2;

titletext["Gordon McKenzie, US Army regular. With his buddies hes just\nabout to go into some R&R.","plain down",2];
sleep 2;
{_x assignascargo hummer} foreach units assault1;
leader assault1 assignasdriver hummer;
{[_x] ordergetin true} foreach units assault1;
sleep 7;

leader assault1 move getpos tero1;

// start
_camera camSetTarget hummer;
_camera camSetRelPos [10,10,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;
titletext["","plain down",3];
sleep 5.5;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
