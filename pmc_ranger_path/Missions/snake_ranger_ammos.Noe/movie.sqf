// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 17:08:59
_camera camSetTarget [-595.60,-85553.97,-37087.02];
_camera camSetPos [5057.36,7100.14,1.82];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["rtrack6",0];

titlecut ["","BLACK IN",2];
sleep 3;

//=== 17:09:03
_camera camSetTarget [-595.60,-85553.97,-37087.05];
_camera camSetPos [5064.55,7099.70,2.88];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 17:09:09
_camera camSetTarget [36059.85,-80401.91,-37087.45];
_camera camSetPos [5072.95,7100.40,2.33];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 17:09:12
_camera camSetTarget [36059.85,-80401.91,-37087.17];
_camera camSetPos [5079.60,7102.76,2.88];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 17:09:17
_camera camSetTarget [20822.88,-79956.77,-46522.82];
_camera camSetPos [5087.36,7094.30,5.78];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
sleep 1;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
