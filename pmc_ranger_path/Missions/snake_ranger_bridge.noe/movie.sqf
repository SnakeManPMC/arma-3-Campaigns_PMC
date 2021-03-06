// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 19:19:18
_camera camSetTarget [-34825.21,98427.27,1213.10];
_camera camSetPos [1593.77,5302.14,19.09];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

p1 playmove effectstandtalk;
sleep 0.3;
p2 playmove effectstandtalk;

//=== 19:19:20
_camera camSetTarget [-86033.31,52629.07,-8994.14];
_camera camSetPos [1593.77,5302.14,19.09];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 19:19:22
_camera camSetTarget [-85221.67,-43497.70,-8994.24];
_camera camSetPos [1593.77,5302.14,19.09];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 19:19:25
_camera camSetTarget [-10523.65,-93826.10,-5131.34];
_camera camSetPos [1593.77,5302.14,19.09];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 19:19:26
_camera camSetTarget [66581.02,-70525.93,-5131.25];
_camera camSetPos [1593.77,5302.14,19.09];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 19:19:35
_camera camSetTarget [77564.63,-59518.45,-5131.72];
_camera camSetPos [1593.77,5302.14,4.72];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 2;

//=== 19:21:02
_camera camSetTarget [-58753.57,-72723.88,-16258.05];
_camera camSetPos [1623.57,5310.54,4.72];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 19:21:13
_camera camSetTarget [-96137.30,-7973.96,-16258.05];
_camera camSetPos [1631.48,5295.17,3.63];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 19:21:21
_camera camSetTarget [-98310.55,7600.86,-2470.60];
_camera camSetPos [1627.65,5292.22,1.97];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 2;

// zoom backwards through MH-60
_camera camSetTarget [1648.83,-94691.33,24.81];
_camera camSetPos [1606.85,5285.55,1.09];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 0.5;
//=== 19:11:28
_camera camSetTarget [1648.83,-94691.33,25.15];
_camera camSetPos [1606.83,5309.14,1.09];

_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 1;

// zoom around the cockpit & gunner area
_camera camSetTarget [-47398.88,91098.26,-15315.28];
_camera camSetPos [1605.99,5289.37,1.64];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 19:13:10
_camera camSetTarget [24577.30,101397.13,-15315.00];
_camera camSetPos [1603.49,5288.36,1.64];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 19:13:12
_camera camSetTarget [86527.32,55808.07,-15315.41];
_camera camSetPos [1600.13,5290.14,1.64];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 19:13:17
_camera camSetTarget [91773.73,-37650.64,-4903.73];
_camera camSetPos [1599.38,5294.63,1.64];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 19:13:24
_camera camSetTarget [39481.34,-87120.51,-4903.98];
_camera camSetPos [1603.06,5295.78,1.64];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 19:13:31
_camera camSetTarget [88724.23,-41624.57,14466.38];
_camera camSetPos [1602.96,5293.59,1.64];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// zoomed in zoom left side of another MH-60
_camera camSetTarget [14117.43,104393.09,-2748.30];
_camera camSetPos [1610.35,5214.66,2.64];
_camera camSetFOV 0.280;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 0.3;
//=== 19:15:07
_camera camSetTarget [20481.80,103377.65,-2748.39];
_camera camSetPos [1604.00,5213.75,2.64];
_camera camSetFOV 0.280;
_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 19:22:30
_camera camSetTarget [-67596.04,77224.34,6815.63];
_camera camSetPos [1672.42,5420.84,0.61];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 19:22:37
_camera camSetTarget [-67563.27,77190.35,-7428.67];
_camera camSetPos [1669.62,5420.57,2.33];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 19:22:47
_camera camSetTarget [-53554.32,88553.81,6477.02];
_camera camSetPos [1660.15,5428.53,1.35];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 1;

// assault2 and three shots
leader assault2 move [(getpos table select 0)+2,(getpos table select 1)+2,(getpos table select 2)];
leader assault3 move [(getpos table select 0)+5,(getpos table select 1),(getpos table select 2)];
sleep 1;

//=== 19:23:37
_camera camSetTarget [38058.12,97595.32,-13637.75];
_camera camSetPos [1679.30,5454.50,2.11];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 19:23:42
_camera camSetTarget [99753.63,-8383.42,-13640.22];
_camera camSetPos [1666.95,5482.32,2.11];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 19:23:51
_camera camSetTarget [-69757.55,-63121.50,-13640.97];
_camera camSetPos [1706.83,5483.37,2.13];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

// rangers shot
leader assault1 move [(getpos table select 0)+3,(getpos table select 1),(getpos table select 2)];
//=== 19:24:34
_camera camSetTarget [66116.08,-71002.88,-3328.03];
_camera camSetPos [1675.29,5391.81,1.02];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 19:24:44
_camera camSetTarget [91808.25,-33319.73,-19371.24];
_camera camSetPos [1666.41,5387.86,3.81];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 2;

//=== 19:25:05
_camera camSetTarget [-4644.46,104526.25,-11489.69];
_camera camSetPos [1665.88,5392.25,3.81];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 19:25:12
_camera camSetTarget [19813.91,103085.51,-11493.92];
_camera camSetPos [1657.94,5424.46,2.02];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 19:41:58
_camera camSetTarget [84918.23,-45186.14,-22377.20];
_camera camSetPos [1641.80,5439.81,6.46];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 19:42:05
_camera camSetTarget [79496.77,-54993.49,-16982.34];
_camera camSetPos [1655.39,5433.83,2.13];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 1;

leader offi1 playmove "effectstandtalk";
sleep 0.2;
leader offi2 playmove "effectstandtalk";
sleep 3;
leader assault1 playmove "effectstandtalk";
sleep 0.2;
leader assault2 playmove "effectstandtalk";
sleep 0.3;
leader assault3 playmove "effectstandtalk";

//=== 19:43:49
_camera camSetTarget [-56062.14,83715.72,-23121.00];
_camera camSetPos [1672.71,5416.04,4.20];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 19:43:52
_camera camSetTarget [-22742.63,99584.01,-23121.26];
_camera camSetPos [1664.39,5411.55,4.20];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 19:43:57
_camera camSetTarget [55757.43,86261.67,-23121.06];
_camera camSetPos [1648.80,5413.61,4.20];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 19:44:02
_camera camSetTarget [56544.75,86479.10,-20410.25];
_camera camSetPos [1655.77,5426.00,2.21];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
sleep 5;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
