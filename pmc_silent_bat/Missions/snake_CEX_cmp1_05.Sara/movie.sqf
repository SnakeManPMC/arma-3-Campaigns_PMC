
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [-37105.44,93434.26,7.67];
_camera camPreparePos [9213.13,4820.82,1.58];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 5;

titleText ["Our forces are preparing to push forward.", "plain down", 3];

sleep 3;

// move up
_camera camPrepareTarget [-11942.94,102306.46,-6978.98];
_camera camPreparePos [9213.13,4820.82,21.25];
_camera camCommitPrepared 25;
waitUntil { camCommitted _camera; };
// FOV closer
_camera camPrepareTarget [-11988.75,102517.50,-2826.20];
_camera camPreparePos [9208.80,4840.79,20.56];
_camera camPrepareFOV 0.197;
_camera camCommitPrepared 10;
waitUntil { camCommitted _camera; };
sleep 5;

// desert to city pan start
_camera camPrepareTarget [-88602.53,-12635.51,-8557.90];
_camera camPreparePos [9359.95,5509.74,8.39];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;
// pan 1
_camera camPrepareTarget [-54684.14,-70807.05,-8557.94];
_camera camPreparePos [9359.95,5509.74,8.39];
_camera camCommitPrepared 10;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [40351.29,-89176.23,-8558.05];
_camera camPreparePos [9359.95,5509.74,8.39];
_camera camCommitPrepared 10;
waitUntil { camCommitted _camera; };
sleep 5;

// city pan towards right side start
_camera camPrepareTarget [-85136.17,-10111.41,-28300.37];
_camera camPreparePos [9541.50,5109.19,29.42];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;
// pan 1
_camera camPrepareTarget [-71239.36,56781.07,-28300.73];
_camera camPreparePos [9541.50,5109.19,29.42];
_camera camCommitPrepared 10;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-7204.25,102750.74,-13564.95];
_camera camPreparePos [9541.50,5109.19,29.42];
_camera camCommitPrepared 10;
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
