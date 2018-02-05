
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [99515.77,-21755.17,97.56];
_camera camPreparePos [2594.80,2838.88,4.94];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["And now, some Special Forces action", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [7937.94,-96521.68,-9927.59];
_camera camPreparePos [2594.80,2838.88,4.94];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-65443.79,-69768.43,-9927.66];
_camera camPreparePos [2594.80,2838.88,4.94];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [-95980.70,16401.38,-9927.50];
_camera camPreparePos [2594.80,2838.88,4.94];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 3;

// still
_camera camPrepareTarget [-8194.78,-93408.89,25121.78];
_camera camPreparePos [2544.49,2790.23,0.20];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// still
_camera camPrepareTarget [-40202.26,93187.65,1507.41];
_camera camPreparePos [2505.72,2778.79,1.63];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// still
_camera camPrepareTarget [-62986.05,-69683.98,-21617.55];
_camera camPreparePos [2512.54,2716.69,4.23];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// still
_camera camPrepareTarget [-89809.16,41032.41,-348.96];
_camera camPreparePos [2550.03,2696.41,0.88];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// inf move
_camera camPrepareTarget [-89357.63,40845.02,-8610.96];
_camera camPreparePos [2660.88,2659.55,1.48];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// move 1
_camera camPrepareTarget [-11291.33,101321.91,-8612.26];
_camera camPreparePos [2655.00,2683.05,3.59];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move 1
_camera camPrepareTarget [-11291.33,101321.91,-8612.18];
_camera camPreparePos [2649.10,2724.75,3.60];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move 1
_camera camPrepareTarget [-11291.33,101321.91,-8612.14];
_camera camPreparePos [2645.08,2753.16,1.54];
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
