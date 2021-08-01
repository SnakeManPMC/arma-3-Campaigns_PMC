
// this doesnt get executed normally, for some unknown reason.
[] execVM "PMC\PMC_mission_exit.sqf";

private ["_camera"];

// camera basic initialization
_camera = "camera" camCreate [0, 0, 100];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;
_camera camSetTarget leader assault1;
_camera camSetRelPos [0, 2, 1];
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};

if (PMC_MoviesOff) exitWith
{
	// for the exit script running on the background
	sleep 3;
	
	// destroy camera - if we use mission cutscene the end
	_camera cameraEffect ["terminate", "back"];
	
	// Destroy the camera
	camDestroy _camera;
	
	// end the intro
	endcut = true;
	
	forceend;
};

enableRadio false;
0 fademusic 1;
[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";
titlecut ["", "BLACK IN", 2];
sleep 3;

titletext
[
	format
	[
		"UNITED STATES KILLED IN ACTION: %1\nSOVIET UNION KILLED IN ACTION: %2\nYou have %3 trophy pistols",
		PMC_WestKIA,
		PMC_EastKIA,
		PMCTrophyCount
	], "plain", 2
];

_camera camSetTarget leader assault1;
_camera camSetRelPos [1, 1, 1.5];
_camera camCommit 7;
waitUntil
{
	camCommitted _camera;
};
sleep 1;

// loop some poles ;)
_camera camSetTarget getPosASL pole1;
_camera camSetRelPos [(-50 + random 100), 50, 15];
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};
sleep 1;
_camera camSetRelPos [25, 15, 10];
_camera camCommit 5;
waitUntil
{
	camCommitted _camera;
};
sleep 1;

_camera camSetTarget getPosASL pole2;
_camera camSetRelPos [50, (-50 + random 100), 10];
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};
sleep 1;
_camera camSetRelPos [25, 0, 10];
_camera camCommit 5;
waitUntil
{
	camCommitted _camera;
};
sleep 1;

_camera camSetTarget getPosASL pole3;
_camera camSetRelPos [25, 25, 15];
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};
sleep 1;
_camera camSetRelPos [(-50 + random 100), 25, 15];
_camera camCommit 5;
waitUntil
{
	camCommitted _camera;
};
sleep 1;

_camera camSetTarget getPosASL pole4;
_camera camSetRelPos [-5 + random 10, 25 + random 10, 20];
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};
sleep 1;
_camera camSetRelPos [-5, 20 + random 7, 10 + random 10];
_camera camCommit 5;
waitUntil
{
	camCommitted _camera;
};
sleep 1;

_camera camSetTarget getPosASL pole5;
_camera camSetRelPos [35, 15, 10];
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};
sleep 1;
_camera camSetRelPos [0, (10 + random 10), 10];
_camera camCommit 5;
waitUntil
{
	camCommitted _camera;
};
sleep 1;

_camera camSetTarget leader assault1;
_camera camSetRelPos [-random 10 + random 20, 10 + random 10, 10];
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};
sleep 2;
_camera camSetRelPos [-random 5 + random 10, 5 + random 5, 5];
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};
sleep 2;
_camera camSetRelPos [-random 2 + random 4, 5, 2];
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};

sleep 2;
_camera camSetRelPos [0, 0.5, 1.3];
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};

sleep 5;

titlecut ["", "BLACK OUT", 3];
3 fademusic 0;
sleep 3;


// destroy camera - if we use mission cutscene the end
_camera cameraEffect ["terminate", "back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;

forceend;
