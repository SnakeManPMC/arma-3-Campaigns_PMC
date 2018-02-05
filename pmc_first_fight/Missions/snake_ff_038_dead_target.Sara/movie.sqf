
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [595.39,-89627.69,141.44];
_camera camPreparePos [9530.84,9972.31,2.00];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Snipers are getting ready to depart", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [51767.39,-80668.65,141.22];
_camera camPreparePos [9523.47,9970.46,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [107360.12,-10703.98,141.34];
_camera camPreparePos [9519.43,9964.87,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [84545.57,76075.38,141.31];
_camera camPreparePos [9520.97,9959.52,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [65738.03,92667.59,141.08];
_camera camPreparePos [9527.50,9961.04,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// medic shot, uh60 taking off.
_camera camPrepareTarget [-41656.34,95447.59,-8080.94];
_camera camPreparePos [9582.65,9966.49,3.28];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;
// pan left to hummer
_camera camPrepareTarget [-89339.74,23139.20,-6248.06];
_camera camPreparePos [9582.65,9966.49,3.28];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// Around the helo
_camera camPrepareTarget [-90174.80,12355.85,-6434.36];
_camera camPreparePos [9582.74,10027.08,2.00];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 2;
// pan 1
_camera camPrepareTarget [-74386.10,-43879.07,-6434.27];
_camera camPreparePos [9580.32,10032.00,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-26766.20,-82895.02,-6434.51];
_camera camPreparePos [9576.70,10034.82,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [42570.16,-84134.01,-6434.32];
_camera camPreparePos [9571.53,10035.26,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [95044.41,-41450.59,-6434.31];
_camera camPreparePos [9567.04,10031.26,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// overview of the field.
_camera camPrepareTarget [-89201.91,-2633.84,-4692.15];
_camera camPreparePos [9874.40,10032.74,9.13];
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
