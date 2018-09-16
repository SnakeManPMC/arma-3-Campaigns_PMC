// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// starting shot
_camera camSetTarget [18214.89,-93256.14,25.83];
_camera camSetPos [1634.71,5353.44,1.44];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["rtrack4",0];

titlecut ["","BLACK IN",2];
sleep 5;

// walkaby start
_camera camSetTarget [-33312.37,-88338.09,25.39];
_camera camSetPos [1641.26,5354.19,1.44];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;
//=== 5:53:26
_camera camSetTarget [-98073.71,-2190.68,25.66];
_camera camSetPos [1641.26,5354.19,1.44];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 5:53:28
_camera camSetTarget [-41415.02,95610.26,25.87];
_camera camSetPos [1641.26,5354.19,1.44];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
GoBradley=true;
//=== 5:53:30
_camera camSetTarget [22769.21,103096.77,25.68];
_camera camSetPos [1641.26,5354.19,1.44];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// rise from ammoboxes
_camera camSetTarget [-5376.54,-90856.48,26041.51];
_camera camSetPos [1647.96,5443.87,0.44];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
shhelo1 action["engine on"];
//=== 5:54:33
_camera camSetTarget [37211.30,-87909.72,4503.31];
_camera camSetPos [1643.81,5443.97,2.56];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// flag + table pan
_camera camSetTarget [-96091.43,21836.09,13279.17];
_camera camSetPos [1660.37,5436.99,1.82];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 5:55:06
_camera camSetTarget [-61642.34,-71707.80,-6412.83];
_camera camSetPos [1660.37,5436.99,1.82];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 5:55:12
_camera camSetTarget [7335.71,-94192.78,-6412.53];
_camera camSetPos [1657.65,5438.11,1.56];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
