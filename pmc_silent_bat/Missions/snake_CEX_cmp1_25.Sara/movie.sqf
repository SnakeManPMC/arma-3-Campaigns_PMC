
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [8264.87,-83636.41,-14547.68];
_camera camPreparePos [12596.61,15178.40,1.62];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Time to hunt down and destroy the SLA.", "plain down", 3];;;

// pan
_camera camPrepareTarget [-42876.79,-67732.96,-6779.23];
_camera camPreparePos [12587.91,15171.78,1.75];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// still
_camera camPrepareTarget [-62735.77,72794.78,-31444.19];
_camera camPreparePos [12614.07,15155.94,3.00];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// inf pan
_camera camPrepareTarget [-85096.48,4772.75,-18861.98];
_camera camPreparePos [12518.46,15209.98,3.74];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-84502.27,37199.61,-9963.85];
_camera camPreparePos [12517.91,15193.13,2.82];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// tank pan
_camera camPrepareTarget [10274.94,-82151.09,23694.73];
_camera camPreparePos [12243.95,15024.90,0.20];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [10222.18,-84755.20,-6130.74];
_camera camPreparePos [12243.95,15024.90,2.02];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [13477.18,-82781.38,-20609.39];
_camera camPreparePos [12243.95,15024.90,5.54];
_camera camCommitPrepared 5;
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
