// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 4:00:22
_camera camSetTarget [88018.33,52484.71,26725.06];
_camera camSetPos [3183.64,6650.81,4.43];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

0 fademusic 1;
playmusic ["rtrack8",0];

titlecut ["","BLACK IN",2];
sleep 5;

//=== 4:00:23
_camera camSetTarget [97690.69,-12482.65,26725.19];
_camera camSetPos [3183.64,6650.81,4.43];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:00:24
_camera camSetTarget [80928.34,-54860.51,13343.28];
_camera camSetPos [3183.64,6650.81,4.43];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:00:26
_camera camSetTarget [52949.56,-79858.88,-6054.98];
_camera camSetPos [3183.64,6650.81,4.43];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:00:27
_camera camSetTarget [-29177.23,-87759.71,-6055.05];
_camera camSetPos [3183.64,6650.81,4.43];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 4:01:11
_camera camSetTarget [-43644.38,90544.37,-27801.58];
_camera camSetPos [3124.41,6727.66,40.31];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 4:01:19
_camera camSetTarget [-52027.17,83247.73,-33235.55];
_camera camSetPos [3075.80,6808.22,14.07];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 4:02:06
_camera camSetTarget [18097.73,-91967.20,-8653.50];
_camera camSetPos [3098.03,6500.79,4.49];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 4:02:11
_camera camSetTarget [31131.45,-85217.67,-28069.70];
_camera camSetPos [3082.33,6496.94,20.97];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:02:15
_camera camSetTarget [31131.45,-85217.67,-28069.94];
_camera camSetPos [3079.33,6470.77,31.17];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:02:23
_camera camSetTarget [48702.60,-59956.88,-58986.70];
_camera camSetPos [3069.28,6428.13,37.63];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:02:37
_camera camSetTarget [98480.25,33200.55,-13069.17];
_camera camSetPos [3035.98,6387.91,30.18];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:02:47
_camera camSetTarget [98480.25,33200.55,-13069.17];
_camera camSetPos [3032.91,6355.06,6.95];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:02:55
_camera camSetTarget [98480.25,33200.55,-13069.17];
_camera camSetPos [3046.61,6333.00,4.72];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;


//=== 4:03:31
_camera camSetTarget [99743.52,11063.35,-24905.29];
_camera camSetPos [3077.63,6340.53,14.02];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 4:03:43
_camera camSetTarget [-38650.94,-80252.34,-27056.03];
_camera camSetPos [3121.33,6410.45,7.94];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 4:03:45
_camera camSetTarget [37142.16,-83578.14,-27056.10];
_camera camSetPos [3121.33,6410.45,7.94];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 4:03:46
_camera camSetTarget [85510.70,-43262.00,-27056.00];
_camera camSetPos [3121.33,6410.45,7.94];

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
