// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

{_x setdammage 1} foreach eastunits;

//=== 3:19:42
_camera camSetTarget [101750.68,6574.77,-4589.39];
_camera camSetPos [1865.82,7387.76,9.18];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

//=== 3:19:50
_camera camSetTarget [101750.68,6574.77,-4589.51];
_camera camSetPos [1881.99,7376.30,2.19];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 3:19:54
_camera camSetTarget [69595.71,80803.39,-4589.80];
_camera camSetPos [1888.25,7363.55,2.19];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 3:20:01
_camera camSetTarget [-25060.79,103534.63,-4589.64];
_camera camSetPos [1908.29,7353.79,2.19];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 3:21:21
_camera camSetTarget [100990.88,19090.36,-8478.93];
_camera camSetPos [2057.45,7342.78,3.58];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 3:21:27
_camera camSetTarget [100162.29,26717.59,-5.53];
_camera camSetPos [2059.82,7329.90,3.62];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };

//=== 3:22:02
_camera camSetTarget [14115.47,106597.88,-1690.17];
_camera camSetPos [2136.38,7334.65,5.37];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 3:22:09
_camera camSetTarget [98578.53,9171.36,-26293.84];
_camera camSetPos [2151.62,7341.52,11.11];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 3:22:25
_camera camSetTarget [-1771.73,-88961.77,-26306.19];
_camera camSetPos [2224.31,7401.44,11.14];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 3:22:44
_camera camSetTarget [-94444.45,20501.04,-21651.28];
_camera camSetPos [2260.60,7326.77,8.66];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 3:23:19
_camera camSetTarget [71463.90,-64789.79,5423.89];
_camera camSetPos [2311.10,7253.77,21.99];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 3:23:31
_camera camSetTarget [71264.42,-64582.00,-10348.15];
_camera camSetPos [2438.21,7121.36,21.39];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 3:23:41
_camera camSetTarget [71748.50,-65086.34,-2501.31];
_camera camSetPos [2539.52,7015.81,6.74];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 3:23:50
_camera camSetTarget [89285.91,-42716.64,-2502.36];
_camera camSetPos [2637.91,6954.46,3.00];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 3:24:23
_camera camSetTarget [100845.52,20929.86,12999.65];
_camera camSetPos [2654.36,6958.25,3.02];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 3:24:27
_camera camSetTarget [100845.52,20929.86,12999.81];
_camera camSetPos [2656.83,6943.21,2.64];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 3:24:31
_camera camSetTarget [95563.81,42758.21,9549.76];
_camera camSetPos [2668.56,6934.80,1.93];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 2;

//=== 3:24:31
_camera camSetTarget leader assault1;
_camera camSetRelPos [10,50,10];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 3:24:31
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,5,2];

_camera camCommit 7;
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
