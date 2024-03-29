
// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

// assault1 leader
_camera camSetTarget leader hqteam;
_camera camSetRelPos [0,5,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };;

playmusic ["Track10_Logistics", 0];

// shut them up
enableRadio false;

showPad false;
showCompass false;
showWatch false;
showRadio false;
mapAnimClear;

mapAnimAdd [0, 0.1, getMarkerPos "pmc1"];
mapAnimCommit;
ForceMap true;
waitUntil { mapAnimDone; };
sleep 3;

mapAnimAdd [1, 0.1, getMarkerPos "pmc2"];
mapAnimCommit;
waitUntil { mapAnimDone; };
sleep 3;

mapAnimAdd [1, 0.1, getMarkerPos "pmc3"];
mapAnimCommit;
waitUntil { mapAnimDone; };
sleep 3;

//titletext [format["PMC_passTime %1. PMC_AllTimeUsed %2",PMC_passTime,PMC_AllTimeUsed],"plain down",2];

mapAnimAdd [1, 0.1, getMarkerPos "pmc20"];
mapAnimCommit;
waitUntil { mapAnimDone; };
sleep 3;
ForceMap false;
enableRadio true;

3 fadeMusic 0;
sleep 3;

// destroy camera - if we use mission cutscene the end
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;
