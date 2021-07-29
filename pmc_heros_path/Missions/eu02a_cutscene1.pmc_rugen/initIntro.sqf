
talker = false;

// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// start
_camera camSetTarget jeep1;
_camera camSetRelPos [10,50,3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["Track15_MainTheme",0];
sleep 1;

titlecut ["","BLACK IN",2];
sleep 5;

// jeep passes by
_camera camSetTarget jeep1;
_camera camSetRelPos [-30,100,3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 10;

// assault 1 guy
_camera camSetTarget leader assault1;
_camera camSetRelPos [2,-3,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

// look at the jeep
_camera camSetTarget leader transp1;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

// until hes in talking position
waitUntil
{
	sleep 0.5;
	talker;
};

// assault 1 guy
_camera camSetTarget leader assault1;
_camera camSetRelPos [-1,3,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

leader assault1 dowatch leader transp1;
leader transp1 dowatch leader assault1;
sleep 1;

titletext["''(Gordon): Okay, what do you got for me?''","plain down",1];
sleep 5;

// recon guy
_camera camSetTarget leader transp1;
_camera camSetRelPos [-1,2,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
titletext["''(Recon): Bad news... incoming russian main battle tanks from the south.\nthis looks like some serious firepower on our way.''","plain down",1];
_camera camSetRelPos [1,2,1];
_camera camCommit 3.5;
waitUntil { (camCommitted _camera); };
sleep 3.5;

// assault 1 guy
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,1,1.7];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;

titletext["''(Gordon): That bad huh. Okay we are evacuating this base right now. Sound the alarm. Move it!''","plain down",1];
sleep 3;
alarmisoff = true;
sleep 2;

// assault 1 guy
_camera camSetTarget leader assault1;
_camera camSetRelPos [10,20,5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

// move assault1
go_assault = true;
[leader transp1] join assault1;
sleep 3;

// assault 1 guy
_camera camSetTarget leader assault1;
_camera camSetRelPos [5,60,3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
