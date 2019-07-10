
private ["_camera","_timeh"];

// camera basic initialization
_camera = "camera" camCreate [0, 0, 100];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil
{
        camCommitted _camera;
};

// dumb check
if (isNil "pmcmoff") then { pmcmoff = 0; };
if (pmcmoff) exitWith
{
// no savegames its kind of gay
//	saveGame;
	
	// destroy camera - if we use mission cutscene the end
	_camera cameraEffect ["terminate","back"];
	
	// Destroy the camera
	camDestroy _camera;
};

// shut them up
enableRadio false;
showCompass false;
ShowRadio false;
showPad false;
showWatch false;

// lets setup a random weather while were at it...
0 setOvercast random 1;

forceMap true;

0 fademusic 1;
// play random track
[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

_timeh = PMC_passTime - (PMC_passTime mod 1);

titletext
[
	format
	[
		"PMC Rugen island...\nCurrent status: Occupied by American and Russian forces.\nPolitical status unknown.\nSituation... well bad...\nYou have rested %1 hours. You have %2 trophy pistols. Get to work.",
		_timeh,
		PMCTrophyCount
	], "plain", 2
];
sleep 7;

_camera camSetTarget leader assault1;
_camera camSetRelPos [10,20,5];
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};

//titlecut ["", "BLACK IN", 2];
//sleep 2;

mapAnimAdd [2, 0.1, getMarkerPos "start"];
mapAnimCommit;
titletext["Your resistance hideout is located here.", "plain down", 1];

waitUntil
{
	mapAnimDone;
};
sleep 3;

mapAnimAdd [2, 0.1, getMarkerPos "pmc4"];
mapAnimCommit;
titletext["Your girlfriend lives in this town...", "plain down", 1];

waitUntil
{
	mapAnimDone;
};
sleep 2;

titletext["But she is missing now...", "plain down", 1];
sleep 3;

titletext["Now its my time to fight the Russians...", "plain", 2];
sleep 3;

forceMap false;

_camera camSetTarget leader assault1;
_camera camSetRelPos [-random 10 + random 20,10 + random 15,5];
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};

_camera camSetTarget leader assault1;
_camera camSetRelPos [0,1,1.5];
_camera camCommit 7;
waitUntil
{
	camCommitted _camera;
};
sleep 1;

3 fademusic 0;
sleep 2;
titletext["", "plain", 1];
sleep 1;

enableRadio true;
showCompass true;
ShowRadio true;
showPad true;
showWatch true;

// savegame is gay
//saveGame;

// destroy camera - if we use mission cutscene the end
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;
