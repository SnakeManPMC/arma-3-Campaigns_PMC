// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// almost a1 arrive posit first overview
_camera camPrepareTarget [-43784.87,-85427.82,-7482.81];
_camera camPreparePos [2615.51,2837.60,0.92];
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

titlecut ["","BLACK IN",2];
sleep 2;

titletext["Introducing infantry squad leader, Gordon McKenzie. Ready to take the town","plain down",2];
sleep 5;

// tin hut
_camera camPrepareTarget [-2577.28,-96932.20,-3850.19];
_camera camPreparePos [2607.44,2858.36,3.61];
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };
sleep 4;

// assault2
_camera camSetTarget (getPos leader assault2);
_camera camSetRelPos [2,7,1.5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;
_camera camSetTarget (getPos leader assault2);
_camera camSetRelPos [-4,10,1.5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;
_camera camSetTarget (getPos leader assault2);
_camera camSetRelPos [1,10,1.5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;
_camera camSetTarget leader assault2;
_camera camSetRelPos [1,5,1.5];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep .5;

waitUntil
{
	(unitReady leader assault1)
};

// a1 foot shot when hes arrived
_camera camPrepareTarget [-90834.95,-26212.53,20542.68];
_camera camPreparePos [2625.93,2834.21,0.34];
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };
sleep 4;

// look city
_camera camPrepareTarget citypos;
_camera camPreparePos [2625.93,2834.21,2];
_camera camCommitPrepared 5;
waitUntil { (camCommitted _camera); };
sleep 4;

titletext["","plain down",2];
titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
