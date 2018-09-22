// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 11:25:30
_camera camSetTarget [91812.27,-39050.57,260.13];
_camera camSetPos [3062.10,6940.03,16.92];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 5;

//=== 11:25:42
_camera camSetTarget [74469.09,-56763.69,-28907.78];
_camera camSetPos [3150.57,6962.51,26.34];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 11:25:57
_camera camSetTarget [-8082.04,-83683.97,-40355.55];
_camera camSetPos [3264.17,6974.81,26.59];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 11:26:05
_camera camSetTarget [11994.46,-84035.01,-40380.28];
_camera camSetPos [3295.78,6904.88,23.85];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 11:26:22
_camera camSetTarget [-69847.63,65502.59,-34183.90];
_camera camSetPos [3338.63,6722.07,26.71];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 11:26:25
_camera camSetTarget [-2406.04,97454.97,-41355.49];
_camera camSetPos [3338.63,6722.07,26.71];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 11:26:38
_camera camSetTarget [-7811.48,100817.90,-31878.38];
_camera camSetPos [3249.12,6778.58,14.67];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 11:26:45
_camera camSetTarget [67656.28,76171.13,-31884.95];
_camera camSetPos [3209.15,6802.99,14.67];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
