
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [-76.83,-92007.44,-7099.88];
_camera camPreparePos [6382.51,7526.80,3.75];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Another daring mission preparations ongoing.", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [83596.53,-55846.13,4732.09];
_camera camPreparePos [6382.51,7526.80,3.75];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [100654.92,40215.95,6699.19];
_camera camPreparePos [6382.51,7526.80,3.75];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 2;

titleText ["", "plain down", 2];
titleCut ["", "black out", 3];
3 fademusic 0;
sleep 4;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
