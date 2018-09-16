// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 19:57:10
_camera camSetTarget [104439.01,13063.19,-23611.17];
_camera camSetPos [7659.09,4411.43,2.74];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["Track07_Last_Men_Standing",0];

titlecut ["","BLACK IN",2];
sleep 3;

//=== 19:57:14
_camera camSetTarget [104817.27,2380.55,-23613.59];
_camera camSetPos [7707.41,4411.97,4.60];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 19:57:21
_camera camSetTarget [102722.07,-16115.79,-23630.29];
_camera camSetPos [7762.42,4402.52,1.29];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 0.5;

//=== 19:58:49
_camera camSetTarget [104834.95,22703.71,-17835.45];
_camera camSetPos [8159.74,4404.80,3.31];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 19:58:56
_camera camSetTarget [-77934.95,51950.21,-17839.45];
_camera camSetPos [8195.52,4383.95,3.33];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;

//=== 19:59:04
_camera camSetTarget [-89844.16,13018.92,-17841.90];
_camera camSetPos [8160.85,4398.84,12.03];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 19:59:32
_camera camSetTarget [-89329.99,-9018.88,-17845.87];
_camera camSetPos [8093.32,4407.94,20.17];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 19:59:38
_camera camSetTarget [-89329.99,-9018.88,-17845.67];
_camera camSetPos [8016.77,4397.40,8.61];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 19:59:41
_camera camSetTarget [-87147.80,-20675.62,-17871.70];
_camera camSetPos [7987.59,4381.56,8.24];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 19:59:46
_camera camSetTarget [-89250.98,19604.52,-17874.77];
_camera camSetPos [7942.60,4378.34,21.21];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 19:59:51
_camera camSetTarget [-87294.20,29280.06,-17885.62];
_camera camSetPos [7880.11,4391.32,24.32];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 20:01:23
_camera camSetTarget [-75296.77,60920.76,2099.69];
_camera camSetPos [7412.04,4747.62,22.91];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 20:01:33
_camera camSetTarget [-75227.07,60873.42,-4692.78];
_camera camSetPos [7401.84,4754.54,3.12];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 20:02:07
_camera camSetTarget [90093.68,-47105.27,-21299.16];
_camera camSetPos [7340.41,4774.94,15.05];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 20:02:11
_camera camSetTarget [90093.68,-47105.27,-21299.51];
_camera camSetPos [7339.66,4773.75,24.16];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 20:02:17
_camera camSetTarget [90093.68,-47105.27,-21299.16];
_camera camSetPos [7338.80,4772.37,44.96];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 20:02:17
_camera camSetTarget leader assault2
_camera camSetRelPos [0,5,2];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 20:02:17
_camera camSetTarget leader assault3
_camera camSetRelPos [2,7,3];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 20:02:17
_camera camSetTarget leader assault1;
_camera camSetRelPos [5,20,5];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;

//=== 20:02:17
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,1,1.7];

_camera camCommit 5;
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
