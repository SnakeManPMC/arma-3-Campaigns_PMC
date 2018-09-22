
private ["_camera"];

// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

_camera camSetTarget player;
_camera camSetRelPos [0,0,1];
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";
//titlecut ["","BLACK IN",2];

titletext ["You have been playing PMC Tank Hunter", "plain", 1];
sleep 5;

titletext ["Mission Design\nSnake Man", "plain", 1];
sleep 5;

titletext ["Scripts\nWGL explosion effects\nRemo's modified smoke\nImproved AI by Bremmer\nFire Effects by General Barron\nWeather by Snake Man", "plain", 1];
sleep 5;

titletext ["Cutscenes\nSnake Man", "plain", 1];
sleep 5;

titletext ["Addons used\nBn880's tracers\nJAM 3", "plain", 1];
sleep 5;

titletext ["Thank you for playing PMC Tank Hunter", "plain", 1];
sleep 5;

titletext ["PMC Tactical homepage\nhttps://www.pmctactical.org", "plain", 1];
sleep 5;

titlecut ["", "BLACK OUT", 3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
