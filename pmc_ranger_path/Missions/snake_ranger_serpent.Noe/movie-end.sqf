// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

{_x setdammage 1} foreach eastunits;

//=== 23:33:07
_camera camSetTarget [-3299.16,-94075.40,-2018.62];
_camera camSetPos [1646.05,5781.05,17.31];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["LeadTrack01_F", 0];

titlecut ["","BLACK IN",2];
sleep 3;

//=== 23:33:17
_camera camSetTarget [6030.34,-89156.36,-31275.32];
_camera camSetPos [1617.60,5703.27,42.09];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };

//=== 23:34:00
_camera camSetTarget [-88012.61,-34003.94,-19782.70];
_camera camSetPos [1644.89,5624.46,27.12];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 23:34:11
_camera camSetTarget [-87431.73,-39805.54,-593.02];
_camera camSetPos [1645.90,5634.46,2.50];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };

//=== 23:38:00
_camera camSetTarget [14606.85,-90409.12,-24778.13];
_camera camSetPos [1622.51,5586.41,10.30];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 23:38:10
_camera camSetTarget [14606.85,-90409.12,-24778.29];
_camera camSetPos [1640.69,5452.03,10.30];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };

//=== 23:38:38
_camera camSetTarget [-83227.30,-41262.99,-24813.38];
_camera camSetPos [1628.94,5451.47,7.32];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 23:38:44
_camera camSetTarget [-83227.30,-41262.99,-24813.47];
_camera camSetPos [1624.69,5431.37,7.32];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };

//=== 23:39:27
_camera camSetTarget [48834.74,-78529.43,-26771.79];
_camera camSetPos [1575.21,5423.74,11.61];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

//=== 23:39:39
_camera camSetTarget [-3170.53,105223.07,-1330.42];
_camera camSetPos [1592.58,5345.76,2.61];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

//=== 23:39:47
_camera camSetTarget [97101.87,-18882.05,-16982.44];
_camera camSetPos [1589.68,5370.42,5.11];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

//=== 23:39:52
_camera camSetTarget [82648.86,58425.77,-24825.64];
_camera camSetPos [1594.58,5392.47,5.11];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

//=== 23:40:02
_camera camSetTarget [96048.57,-26303.92,8247.80];
_camera camSetPos [1585.70,5472.99,2.84];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

//=== 23:40:48
_camera camSetTarget [100254.24,13197.90,-14310.95];
_camera camSetPos [1575.56,5424.76,4.59];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 23:40:58
_camera camSetTarget [100614.23,7836.46,-14322.95];
_camera camSetPos [1701.46,5428.71,4.59];

_camera camCommit 10;
waitUntil { (camCommitted _camera); };

//=== 23:41:25
_camera camSetTarget [-64993.65,-65830.45,-21637.16];
_camera camSetPos [1740.71,5421.99,11.21];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 23:41:27
_camera camSetTarget [-95830.09,8635.03,-21637.24];
_camera camSetPos [1740.71,5421.99,11.21];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 23:41:29
_camera camSetTarget [-71273.09,62912.90,-36895.73];
_camera camSetPos [1740.71,5421.99,11.21];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };

//=== 23:42:07
_camera camSetTarget [-78331.98,52609.22,-36902.05];
_camera camSetPos [1713.42,5398.51,21.27];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 23:42:16
_camera camSetTarget [-78331.98,52609.22,-36902.06];
_camera camSetPos [1687.66,5413.71,21.21];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };

//=== 23:42:46
_camera camSetTarget [-30983.54,-88040.55,-14161.12];
_camera camSetPos [1773.42,5366.17,33.90];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 23:42:47
_camera camSetTarget [-90655.51,-30055.98,-14161.17];
_camera camSetPos [1773.42,5366.17,33.90];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 23:42:48
_camera camSetTarget [-77649.13,64441.48,-14161.34];
_camera camSetPos [1773.42,5366.17,33.90];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 23:42:50
_camera camSetTarget [-25606.92,100487.95,-14161.59];
_camera camSetPos [1773.42,5366.17,33.90];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };

// leader assault2
_camera camSetTarget leader assault2;
_camera camSetRelPos [-5,10,3];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget leader assault2
_camera camSetRelPos [5,2,2];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 2;

// leader assault1
_camera camSetTarget leader assault1;
_camera camSetRelPos [-2,10,3];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,1,1];

_camera camCommit 3;
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
