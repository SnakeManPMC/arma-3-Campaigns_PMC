// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 0:36:09
_camera camSetTarget [105588.67,12250.88,13227.33];
_camera camSetPos [6579.62,7105.11,1.07];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["LeadTrack01_F", 0];

titlecut ["","BLACK IN",2];
sleep 8;

//=== 0:38:32
_camera camSetTarget [102346.55,33585.92,11109.85];
_camera camSetPos [6544.01,7098.06,1.11];

_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 0:39:15
_camera camSetTarget [79974.81,74906.98,3235.65];
_camera camSetPos [6527.91,7113.20,2.97];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 0:39:53
_camera camSetTarget [-58109.30,-62859.25,-30153.33];
_camera camSetPos [6558.01,7142.80,7.63];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 0:39:57
_camera camSetTarget [-23883.04,-83160.89,-30152.38];
_camera camSetPos [6549.00,7147.93,7.63];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 0:40:00
_camera camSetTarget [37213.46,-83078.23,-30152.86];
_camera camSetPos [6536.34,7147.64,7.63];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 0:40:04
_camera camSetTarget [83434.52,-49135.99,-30152.39];
_camera camSetPos [6527.36,7140.86,7.63];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 0:40:08
_camera camSetTarget [101805.80,8848.27,-30152.81];
_camera camSetPos [6522.89,7128.10,7.63];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 0:40:12
_camera camSetTarget [76691.02,71605.45,-30152.45];
_camera camSetPos [6527.16,7116.49,7.63];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 0:40:17
_camera camSetTarget [13216.58,102174.64,-30152.79];
_camera camSetPos [6538.30,7110.49,7.63];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 0:40:19
_camera camSetTarget [-38685.37,90991.91,-30152.67];
_camera camSetPos [6547.25,7112.21,7.63];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 0:41:40
_camera camSetTarget [-87898.80,39923.20,-1838.40];
_camera camSetPos [6547.84,7122.17,1.55];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 0:42:02
_camera camSetTarget [-82030.23,51117.93,-14805.22];
_camera camSetPos [6524.94,7136.93,7.87];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 0:42:37
_camera camSetTarget [-88742.43,37726.37,-896.30];
_camera camSetPos [6467.62,7165.50,1.70];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 0:42:41
_camera camSetTarget [-88742.43,37726.37,-896.37];
_camera camSetPos [6442.31,7189.37,1.70];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 0:42:48
_camera camSetTarget [-40215.49,-79712.34,-16280.96];
_camera camSetPos [6428.58,7204.33,4.04];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 0:42:52
_camera camSetTarget [66542.08,-64789.54,-34523.85];
_camera camSetPos [6417.32,7203.12,5.12];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 0:42:57
_camera camSetTarget [91261.13,-34566.51,-32357.41];
_camera camSetPos [6413.18,7197.72,6.17];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 0:44:10
_camera camSetTarget [89758.70,-47893.41,-3838.78];
_camera camSetPos [6403.67,7207.11,3.48];
_camera camSetFOV 0.147
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
