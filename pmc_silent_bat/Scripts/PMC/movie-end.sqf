
// this is the default movie-END.sqs which is used if nothing else is available.
// but in fact this is now always used as its loaded "PMC\movie-end.sqs", hoho

// hard coded Sahrani center position with 9000m x 9000m rectangle area
// is 10537.925781,68.235008,10502.411133
// this is trigger set off by anyone, so it will list BLUFOR, OPFOR and vehicles

private _z = createTrigger ["EmptyDetector", [10537,68,10502]];
_z setTriggerActivation ["ANY", "PRESENT", false];
_z setTriggerArea [9000, 9000, 0, true];
_z setTriggerStatements ["PMC_Movie_List = thislist", "", ""];

// shut down radio
enableRadio false;

// have to wait a sec the array to initialize
waitUntil
{
	(count PMC_Movie_List > 0);
};

// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

titlecut ["","black in",2];

private _object = PMC_Movie_List select (random count PMC_Movie_List);
private _pos = getPos _object;

_camera camSetTarget _pos;
_camera camSetRelPos [(-15 + random 30), (-15 + random 30), (0.5 + random 3)];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 6;

// incredibly shitty loop
_a = 0;
while { (_a < 9) } do
{
	_object = PMC_Movie_List select (random count PMC_Movie_List);
	_pos = getPos _object;
	
	_camera camSetTarget _pos;
	_camera camSetRelPos [(-15 + random 30), (-15 + random 30), (0.5 + random 3)];
	_camera camSetFOV 0.700;
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
	sleep 6;
	_a = _a + 1;
};

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 4;

// destroy camera - if we use mission cutscene the end
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
