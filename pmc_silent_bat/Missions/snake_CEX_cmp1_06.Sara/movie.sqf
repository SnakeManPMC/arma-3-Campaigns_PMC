
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [-77557.26,-42938.32,-15821.88];
_camera camPreparePos [8823.64,4892.44,6.01];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 5;

titleText ["Armored vehicles have been unloaded on the coast.", "plain down", 3];
sleep 5;

_camera camPrepareTarget [76950.15,77864.92,-4245.81];
_camera camPreparePos [8755.48,4848.66,9.93];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 5;

_camera camPrepareTarget [-23050.34,98395.82,-15164.93];
_camera camPreparePos [8847.54,4843.03,12.50];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 5;

_camera camPrepareTarget [25106.29,-92320.24,-15219.89];
_camera camPreparePos [8693.96,5128.77,10.69];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 5;

_camera camPrepareTarget [72639.65,-71725.30,-2081.58];
_camera camPreparePos [8693.96,5128.77,10.69];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Artillery has also arrived.", "plain down", 3];

// arty shots
_camera camPrepareTarget [-1751.33,102209.15,-13273.87];
_camera camPreparePos [3432.17,3231.96,1.85];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

_camera camPrepareTarget [-33793.08,95107.69,-13276.13];
_camera camPreparePos [3424.94,3251.24,2.95];
_camera camCommitPrepared 3;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [-41442.30,91640.24,-13277.87];
_camera camPreparePos [3411.77,3275.04,2.89];
_camera camCommitPrepared 3;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [-23232.02,98758.09,-13282.02];
_camera camPreparePos [3401.28,3292.34,3.33];
_camera camCommitPrepared 3;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [-10507.92,101439.99,-13284.57];
_camera camPreparePos [3396.77,3308.65,1.75];
_camera camCommitPrepared 3;
waitUntil { camCommitted _camera; };
sleep 1;

titleText ["", "plain down", 2];
titleCut ["", "black out", 3];
3 fademusic 0;
sleep 4;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
