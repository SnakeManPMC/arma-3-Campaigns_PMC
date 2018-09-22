// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 15:21:50
_camera camSetTarget plane1;
_camera camSetRelPos [50,500,-20];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 8;

//=== 15:21:50
_camera camSetTarget plane1;
_camera camSetRelPos [-30,500,10];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 10;

private _A = 0;
while { (_A < 350) } do
{
	sleep 0.01;
	//=== 15:21:50
	_camera camSetTarget plane1;
	_camera camSetRelPos [-10,-20,2];
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
	_A = _A + 1;
};

//=== 15:21:50
_camera camSetTarget plane1;
_camera camSetRelPos [0,-5,10];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
