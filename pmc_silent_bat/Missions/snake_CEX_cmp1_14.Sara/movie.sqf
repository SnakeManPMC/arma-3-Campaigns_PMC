
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [110669.98,20781.64,-15318.36];
_camera camPreparePos [12701.68,7911.79,11.18];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Assault is our game... that's whussup!", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [52628.84,93639.45,-32442.57];
_camera camPreparePos [12701.68,7911.79,11.18];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-34569.97,94145.69,-18078.43];
_camera camPreparePos [12701.68,7911.79,11.18];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// M113 pan
_camera camPrepareTarget [-75835.85,-37667.90,-8155.74];
_camera camPreparePos [12492.62,8493.75,12.18];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-76424.06,51405.76,-15845.94];
_camera camPreparePos [12492.62,8493.75,12.18];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// inf still
_camera camPrepareTarget [26705.99,-89972.59,-4749.84];
_camera camPreparePos [12982.08,8966.64,1.48];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 5;

// inf 2 still
_camera camPrepareTarget [80711.56,-64903.39,-2301.89];
_camera camPreparePos [12929.43,8582.56,2.58];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 5;

titleText ["", "plain down", 2];
titleCut ["", "black out", 3];
3 fademusic 0;
sleep 4;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
