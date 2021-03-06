// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 2:26:09
_camera camSetTarget [-45091.80,-79710.20,-24241.55];
_camera camSetPos [1619.73,5313.98,5.18];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 5;

//=== 2:26:16
_camera camSetTarget [-92089.26,-23902.91,-19097.39];
_camera camSetPos [1622.54,5294.04,3.22];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 2:26:23
_camera camSetTarget [-28981.68,99815.63,-11211.75];
_camera camSetPos [1613.10,5276.19,3.22];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 2;

{_x assignascargo helo} foreach units assault1;
{[_x] ordergetin true} foreach units assault1;

//=== 2:26:23
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,5,3];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 7;

//=== 2:26:23
_camera camSetTarget helo;
_camera camSetRelPos [8,15,4];

_camera camCommit 18
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 2:26:23
_camera camSetTarget helo;
_camera camSetRelPos [4,9,.5];
_camera camSetFOV 0.400
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 3;

titlecut ["","BLACK OUT",3];
sleep 5;

//=== 2:38:14
_camera camSetTarget [-48056.09,-81067.41,-8620.20];
_camera camSetPos [1613.53,5293.54,2.27];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

titlecut ["","BLACK IN",2];
sleep 2;

//=== 2:38:17
_camera camSetTarget [-98010.55,4721.65,-8620.63];
_camera camSetPos [1613.53,5293.54,2.27];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };

// left cheek zoom
_camera camSetTarget [-54339.66,-77583.65,23.44];
_camera camSetPos [1613.97,5296.94,1.36];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 19:40:39
_camera camSetTarget [-4682.67,-94503.14,23.28];
_camera camSetPos [1609.85,5298.68,1.36];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 19:40:40
_camera camSetTarget [45008.63,-84791.88,22.99];
_camera camSetPos [1605.45,5297.89,1.36];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// zoom inside MH-60
_camera camSetTarget [-97378.48,2824.08,-13931.32];
_camera camSetPos [1615.52,5293.52,1.84];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 19:41:32
_camera camSetTarget [-97378.48,2824.08,-13930.86];
_camera camSetPos [1611.59,5293.42,1.84];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// right doom men zoom
_camera camSetTarget [27569.67,100848.00,-13931.13];
_camera camSetPos [1607.79,5290.41,1.84];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 19:42:10
_camera camSetTarget [-41235.07,95484.55,-5399.64];
_camera camSetPos [1609.85,5290.79,1.52];

_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 3;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
