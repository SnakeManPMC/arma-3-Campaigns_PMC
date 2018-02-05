
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [-12458.11,-72444.17,44585.43];
_camera camPreparePos [14289.82,13002.10,1.48];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Another day, another fight. Bring it on SLA!", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [-84179.70,-4371.77,-1330.29];
_camera camPreparePos [14289.04,13001.96,1.47];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-79436.11,-1797.84,-31583.10];
_camera camPreparePos [14262.58,12996.10,9.51];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [-79436.11,-1797.84,-31582.99];
_camera camPreparePos [14232.02,12991.28,10.16];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [-79436.11,-1797.84,-31583.31];
_camera camPreparePos [14193.64,12993.11,12.28];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// still
_camera camPrepareTarget [-82734.61,33623.46,-12452.44];
_camera camPreparePos [14290.48,12889.98,3.85];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// inf pan
_camera camPrepareTarget [79005.35,-60589.62,-20015.27];
_camera camPreparePos [14060.73,12756.42,1.22];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [961.94,-84330.50,-20015.28];
_camera camPreparePos [14060.73,12756.42,1.22];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-67366.85,-44569.00,-9081.23];
_camera camPreparePos [14060.73,12756.42,1.22];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// inf 2 pan
_camera camPrepareTarget [-80732.56,36475.88,-21327.26];
_camera camPreparePos [14026.89,12740.85,11.85];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-25031.60,99237.01,-31452.42];
_camera camPreparePos [14026.89,12740.85,11.85];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [51491.24,94465.60,-43732.03];
_camera camPreparePos [14026.89,12740.85,11.85];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [107566.98,25767.50,-32814.69];
_camera camPreparePos [14026.89,12740.85,11.85];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// still
_camera camPrepareTarget [-49531.37,77578.48,-41748.76];
_camera camPreparePos [13869.92,12513.42,11.24];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["", "plain down", 2];
titleCut ["", "black out", 3];
3 fademusic 0;
sleep 4;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
