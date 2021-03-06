// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 23:23:52
_camera camSetTarget [-87897.52,11515.44,-17913.41];
_camera camSetPos [10395.91,8490.38,17.58];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 5;

//=== 23:24:15
_camera camSetTarget [100085.19,48557.17,-17918.36];
_camera camSetPos [10291.83,8473.84,10.67];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 23:24:47
_camera camSetTarget [107202.73,32407.76,-3644.54];
_camera camSetPos [10192.01,8445.64,25.57];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 23:26:47
_camera camSetTarget [-220.65,-86642.30,-29378.29];
_camera camSetPos [9546.74,8374.90,11.89];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 23:26:56
_camera camSetTarget [-54465.83,-62531.98,-29387.17];
_camera camSetPos [9577.84,8336.48,12.70];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 23:28:15
_camera camSetTarget [-49936.77,86765.65,-7480.97];
_camera camSetPos [9738.44,6899.22,5.58];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 23:28:16
_camera camSetTarget [39890.76,101928.74,-7481.05];
_camera camSetPos [9738.44,6899.22,5.58];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 23:28:18
_camera camSetTarget [107082.59,28437.36,-7480.80];
_camera camSetPos [9738.44,6899.22,5.58];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 23:28:57
_camera camSetTarget [86386.48,68495.28,-18107.41];
_camera camSetPos [9760.61,6931.36,13.40];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 23:30:04
_camera camSetTarget [-90555.19,14554.54,123.46];
_camera camSetPos [9035.83,5519.57,3.84];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 23:30:05
_camera camSetTarget [-57433.83,-69191.77,123.56];
_camera camSetPos [9035.83,5519.57,3.84];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 23:30:08
_camera camSetTarget [28724.41,-92523.06,123.15];
_camera camSetPos [9035.83,5519.57,3.84];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 23:31:02
_camera camSetTarget [103737.12,-9571.16,-28021.00];
_camera camSetPos [8966.51,5476.97,10.51];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 23:31:13
_camera camSetTarget [81870.16,73066.16,-10187.96];
_camera camSetPos [8950.13,5418.78,10.27];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 23:32:23
_camera camSetTarget [-85357.91,-29879.89,-7420.61];
_camera camSetPos [8269.07,4449.02,2.04];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 23:32:29
_camera camSetTarget [-84020.70,-29389.61,-18428.45];
_camera camSetPos [8251.56,4442.59,3.17];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 23:32:36
_camera camSetTarget [-84020.70,-29389.61,-18428.54];
_camera camSetPos [8230.72,4434.94,3.32];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 23:33:21
_camera camSetTarget [-90348.21,-9608.93,-9853.97];
_camera camSetPos [8171.44,4401.78,5.09];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 23:33:23
_camera camSetTarget [-58549.05,78231.29,-9853.88];
_camera camSetPos [8171.44,4401.78,5.09];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 23:33:25
_camera camSetTarget [39843.84,99251.39,666.24];
_camera camSetPos [8171.44,4401.78,5.09];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 23:33:27
_camera camSetTarget [83816.54,67938.37,15545.23];
_camera camSetPos [8171.44,4401.78,5.09];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 3;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene the end
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
