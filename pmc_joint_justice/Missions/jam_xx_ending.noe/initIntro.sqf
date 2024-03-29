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
_camera camSetRelPos [10,100,25];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titletext["War is Over!","plain",2];
sleep 4;

titlecut ["","BLACK IN",2];
sleep 2;

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,5,1.7];
_camera camCommit 20;
sleep 2;

titletext["You have won, US forces have won!","plain down",2];
sleep 5;

titletext["Russians have been defeated, they threaten the peaceful\nisland group of Malden, Kolgujev, Everon and Nogova no more","plain down",2];
sleep 5;

titletext["You did a great job, congratulations!","plain down",2];
sleep 5;

waitUntil { (camCommitted _camera); };

_camera camSetRelPos [0,.5,1.7];
_camera camCommit 7;
waitUntil { (camCommitted _camera); };

titletext["Your forces look up to you like an hero...","plain down",2];
sleep 4;
titletext["How does the saying goes?\n\n''Nobody asks to be a hero, sometimes it just turns that way.''","plain down",2];
sleep 7;

_camera camSetRelPos [50,-50,15];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
titletext["Are you ready to go back to peace?","plain down",2];
sleep 5;

titlecut ["","BLACK OUT",3];
sleep 3;
titletext["Dont worry, there is always war in PMC world...","plain down",2];
sleep 7;

_camera camSetPos [0,0,200];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

titletext["THE END","plain",2];
sleep 7;
titletext["You have been playing PMC Joint Justice","plain",2];
sleep 7;
titletext["Mission design\nSnake Man","plain",2];
sleep 7;
titletext["Cutscenes\nSnake Man","plain",2];
sleep 7;
titletext["Scripting\nSnake Man","plain",2];
sleep 7;
titletext["Thank you for playing PMC Joint Justice!","plain",2];
sleep 7;
titletext["Visit our web site and forum for more PMC madness\n\nhttps://www.pmctactical.org\n\n","plain",2];
sleep 9;

4 fademusic 0;
sleep 4;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
