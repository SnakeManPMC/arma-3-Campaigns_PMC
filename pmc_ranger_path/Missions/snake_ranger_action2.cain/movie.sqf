// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

{_x setdammage 1} foreach eastunits;

// first base zooming in
_camera camSetTarget [-54288.80,-65158.62,22632.09];
_camera camSetPos [8628.85,9229.34,5.81];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

//=== 22:42:31
_camera camSetTarget [-90629.24,-1765.12,5288.97];
_camera camSetPos [8628.85,9229.34,5.81];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 22:42:33
_camera camSetTarget [-76154.95,62252.71,-378.59];
_camera camSetPos [8628.85,9229.34,5.81];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 22:42:37
_camera camSetTarget [-76154.95,62252.71,-378.31];
_camera camSetPos [8597.41,9248.99,4.55];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 22:42:40
_camera camSetTarget [-90425.01,22042.78,-5975.28];
_camera camSetPos [8566.11,9263.66,5.10];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 3;

// secon pan shots
_camera camSetTarget [100360.41,-27671.81,-13844.93];
_camera camSetPos [8478.06,9248.37,10.74];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 22:43:38
_camera camSetTarget [105528.21,28913.88,-13844.79];
_camera camSetPos [8478.06,9248.37,10.74];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 22:43:39
_camera camSetTarget [78272.02,79492.71,-13844.60];
_camera camSetPos [8478.06,9248.37,10.74];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 22:43:40
_camera camSetTarget [23911.76,107060.77,-13844.48];
_camera camSetPos [8478.06,9248.37,10.74];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 22:43:42
_camera camSetTarget [-14177.33,105644.41,-13844.47];
_camera camSetPos [8478.06,9248.37,10.74];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 3;

// bmp zoom in
_camera camSetTarget [77528.48,40445.04,-65899.05];
_camera camSetPos [9118.93,9404.01,9.35];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 22:45:06
_camera camSetTarget [99231.06,50088.96,-14878.88];
_camera camSetPos [9118.93,9404.01,9.35];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 22:45:09
_camera camSetTarget [96749.27,55035.25,-15456.30];
_camera camSetPos [9156.29,9422.88,14.46];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:45:19
_camera camSetTarget [89304.73,67249.26,-15468.14];
_camera camSetPos [9214.46,9460.97,10.54];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// ruins 1 shots
_camera camSetTarget [68459.08,90384.23,4277.91];
_camera camSetPos [9435.14,9767.14,38.63];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 22:46:24
_camera camSetTarget [68336.89,90217.33,-7613.22];
_camera camSetPos [9472.26,9830.79,31.73];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:46:31
_camera camSetTarget [73632.54,84629.80,-17347.68];
_camera camSetPos [9526.21,9901.73,26.31];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:46:36
_camera camSetTarget [65465.50,90958.72,-17351.95];
_camera camSetPos [9557.98,9967.53,21.98];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:46:42
_camera camSetTarget [83327.85,73290.05,-23444.63];
_camera camSetPos [9608.54,10020.01,9.00];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// ruins 2 shots
_camera camSetTarget [-41077.11,-74662.44,108.39];
_camera camSetPos [11289.65,10529.83,10.74];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 22:47:44
_camera camSetTarget [49664.28,-81814.03,108.19];
_camera camSetPos [11289.65,10529.83,10.74];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:47:46
_camera camSetTarget [102835.70,-28131.44,-11050.98];
_camera camSetPos [11289.65,10529.83,10.74];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:47:47
_camera camSetTarget [108906.03,29142.07,-11050.84];
_camera camSetPos [11289.65,10529.83,10.74];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:47:50
_camera camSetTarget [110360.43,18581.14,-11052.29];
_camera camSetPos [11325.26,10534.47,17.76];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:47:53
_camera camSetTarget [110360.43,18581.14,-11052.73];
_camera camSetPos [11351.98,10536.64,22.14];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// docks shots
_camera camSetTarget [105699.80,3635.98,-32700.87];
_camera camSetPos [11492.74,10518.48,26.65];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 22:48:45
_camera camSetTarget [103151.40,6875.77,-39960.67];
_camera camSetPos [11635.03,10508.79,44.81];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:48:59
_camera camSetTarget [99791.55,183.66,-46236.64];
_camera camSetPos [11780.97,10499.33,32.15];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:49:09
_camera camSetTarget [99925.62,948.52,-46261.32];
_camera camSetPos [11859.67,10488.58,7.21];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:49:13
_camera camSetTarget [2655.58,-87385.93,-18300.00];
_camera camSetPos [11863.00,10491.76,6.46];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:49:18
_camera camSetTarget [-66439.26,-48950.50,-18299.54];
_camera camSetPos [11865.99,10489.64,6.44];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
