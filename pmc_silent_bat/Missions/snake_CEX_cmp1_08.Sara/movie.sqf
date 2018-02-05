
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [110236.06,17469.48,-21399.01];
_camera camPreparePos [12948.38,8808.30,31.51];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Defense of Corazol !", "plain down", 3];;

// pan 1
_camera camPrepareTarget [110236.06,17469.48,-21399.08];
_camera camPreparePos [12944.07,8856.88,31.51];
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [110236.06,17469.48,-21398.88];
_camera camPreparePos [12939.48,8908.84,33.72];
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [110236.06,17469.48,-21398.97];
_camera camPreparePos [12934.53,8965.31,39.30];
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
sleep 1;

// hum?
_camera camPrepareTarget [-73904.91,56340.16,-12421.47];
_camera camPreparePos [13203.47,8828.75,1.37];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
// pan 1
_camera camPrepareTarget [-74407.14,56614.23,-6429.88];
_camera camPreparePos [13201.02,8836.96,1.09];
_camera camCommitPrepared 3;
waitUntil { camCommitted _camera; };
//
_camera camPrepareTarget [-74407.14,56614.23,-6429.75];
_camera camPreparePos [13196.43,8840.61,0.99];
_camera camCommitPrepared 3;
waitUntil { camCommitted _camera; };
// 
_camera camPrepareTarget [-74407.14,56614.23,-6429.89];
_camera camPreparePos [13183.22,8848.35,1.50];
_camera camCommitPrepared 3;
waitUntil { camCommitted _camera; };
// 
_camera camPrepareTarget [-16087.74,-86394.35,-8443.88];
_camera camPreparePos [13182.38,8850.65,1.38];
_camera camCommitPrepared 3;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["", "plain down", 2];;
titleCut ["", "black out", 3];;
3 fademusic 0;
sleep 4;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
