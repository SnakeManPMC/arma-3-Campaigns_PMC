// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// desert shots of M101s
_camera camSetTarget [-2761.99,-93943.88,-1911.63];
_camera camSetPos [2217.34,5912.99,15.29];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

//=== 22:18:41
_camera camSetTarget [86251.52,-42906.15,-23517.08];
_camera camSetPos [2217.34,5912.99,15.29];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:18:44
_camera camSetTarget [76497.10,68587.84,-23504.65];
_camera camSetPos [2217.34,5912.99,15.29];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// M252's shots
_camera camSetTarget [105080.85,20497.21,10843.97];
_camera camSetPos [7028.30,4050.90,1.05];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 22:19:59
_camera camSetTarget [96871.14,47492.93,6520.54];
_camera camSetPos [7026.89,4054.30,0.74];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:20:05
_camera camSetTarget [18373.69,103301.16,-4533.09];
_camera camSetPos [7026.29,4059.82,2.55];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:20:09
_camera camSetTarget [18207.45,101847.30,-17600.76];
_camera camSetPos [7026.98,4065.84,3.74];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// shots of lany
_camera camSetTarget [14737.01,103833.16,-4294.17];
_camera camSetPos [10306.22,4029.49,9.18];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 22:21:12
_camera camSetTarget [88373.35,66366.70,-4293.87];
_camera camSetPos [10306.22,4029.49,9.18];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:21:14
_camera camSetTarget [104021.62,-30580.19,-4294.07];
_camera camSetPos [10306.22,4029.49,9.18];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// M2 pan
_camera camSetTarget [94495.59,57046.30,-10717.84];
_camera camSetPos [10368.71,4083.51,3.86];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 22:22:03
_camera camSetTarget [106520.98,29321.28,-10717.69];
_camera camSetPos [10365.82,4090.77,3.86];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// lany intersection pan
_camera camSetTarget [105167.14,35451.39,6749.19];
_camera camSetPos [10437.38,4108.28,1.86];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 22:22:48
_camera camSetTarget [68651.50,-77088.51,-4140.88];
_camera camSetPos [10437.38,4108.28,1.86];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// lany stills
_camera camSetTarget [2690.79,-93680.45,-19416.14];
_camera camSetPos [10468.38,4083.61,6.80];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;
//=== 22:23:35
_camera camSetTarget [-47896.80,83373.41,-17210.43];
_camera camSetPos [10483.40,4048.24,5.42];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

// lipany pan
_camera camSetTarget [47196.59,96252.94,32.16];
_camera camSetPos [10657.84,3167.46,9.32];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 22:24:30
_camera camSetTarget [105526.23,34789.89,32.28];
_camera camSetPos [10657.84,3167.46,9.32];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:24:32
_camera camSetTarget [100959.59,-39792.80,32.54];
_camera camSetPos [10657.84,3167.46,9.32];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:24:33
_camera camSetTarget [45973.52,-90388.90,32.65];
_camera camSetPos [10657.84,3167.46,9.32];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:24:36
_camera camSetTarget [-14006.40,-92153.51,-17344.72];
_camera camSetPos [10657.84,3167.46,9.32];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// lipany downtown move
_camera camSetTarget [32068.13,-88964.74,-32250.61];
_camera camSetPos [10791.49,3219.99,16.75];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 22:28:28
_camera camSetTarget [36060.30,-88010.91,-32269.71];
_camera camSetPos [10806.32,3155.95,16.75];

_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 3;

// lipany flag pan
_camera camSetTarget [19071.88,102661.68,-4535.92];
_camera camSetPos [10801.64,3113.63,5.00];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;
//=== 22:29:03
_camera camSetTarget [107256.43,24488.46,-15346.71];
_camera camSetPos [10801.64,3113.63,5.00];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// okh pans
_camera camSetTarget [104668.70,38724.40,72.20];
_camera camSetPos [11521.61,2346.42,2.83];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 22:30:12
_camera camSetTarget [80524.14,-70032.11,72.52];
_camera camSetPos [11521.61,2346.42,2.83];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:30:17
_camera camSetTarget [-42784.30,-81623.03,72.40];
_camera camSetPos [11521.61,2346.42,2.83];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// okh downtown pans
_camera camSetTarget [23766.00,-96608.73,-8749.80];
_camera camSetPos [11545.75,2248.72,3.58];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 22:31:12
_camera camSetTarget [-53172.26,-73472.54,-8749.63];
_camera camSetPos [11545.75,2248.72,3.58];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:31:14
_camera camSetTarget [-86346.29,-16170.82,-8749.34];
_camera camSetPos [11545.75,2248.72,3.58];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// stsedlo moves
_camera camSetTarget [50183.24,-89849.27,-4428.49];
_camera camSetPos [10601.34,1874.32,2.00];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 22:32:09
_camera camSetTarget [14098.13,-97970.59,-4427.08];
_camera camSetPos [10603.12,1867.58,11.76];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:32:12
_camera camSetTarget [7526.72,-98007.03,-4427.61];
_camera camSetPos [10603.39,1829.09,12.37];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 22:32:17
_camera camSetTarget [-5468.31,-96285.77,-10990.17];
_camera camSetPos [10598.61,1772.66,5.75];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// stsedlo panzoom
_camera camSetTarget [50219.19,92808.24,-11013.94];
_camera camSetPos [10579.50,1663.32,3.11];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;
//=== 22:33:53
_camera camSetTarget [39182.95,97484.10,-419.46];
_camera camSetPos [10579.50,1663.32,3.11];
_camera camSetFOV 0.132
_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// airbase pan
_camera camSetTarget [101229.19,2917.05,8695.08];
_camera camSetPos [1637.35,5429.86,2.00];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;
//=== 22:34:53
_camera camSetTarget [67407.99,80239.54,8843.18];
_camera camSetPos [1637.35,5429.86,2.00];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// helo shot
_camera camSetTarget [11702.93,-93653.30,-8473.49];
_camera camSetPos [1659.71,5477.18,4.12];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

// assault1
_camera camSetTarget leader assault1;
_camera camSetRelPos [1,2,1.5];

_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 3;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene the end
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
