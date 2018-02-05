
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [-47523.36,-66095.69,-5035.67];
_camera camPreparePos [11692.75,14313.43,1.54];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Battle Lions ready and able...", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [-76312.41,59575.21,-14129.17];
_camera camPreparePos [11692.75,14313.43,1.54];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 1
_camera camPrepareTarget [-76312.41,59575.21,-14129.09];
_camera camPreparePos [11689.17,14318.08,1.56];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// inf move
_camera camPrepareTarget [106040.26,-8293.77,-24042.53];
_camera camPreparePos [11704.84,14316.54,1.59];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// move 1
_camera camPrepareTarget [106040.26,-8293.77,-24042.71];
_camera camPreparePos [11718.54,14313.25,2.31];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move 2
_camera camPrepareTarget [109884.51,17800.77,-18576.25];
_camera camPreparePos [11732.57,14311.23,3.01];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move 3
_camera camPrepareTarget [109578.37,22861.07,-18577.35];
_camera camPreparePos [11750.22,14312.52,2.83];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move 4
_camera camPrepareTarget [109578.37,22861.07,-18577.25];
_camera camPreparePos [11771.33,14315.21,2.05];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// crazy move
_camera camPrepareTarget [111434.63,16990.04,-10238.30];
_camera camPreparePos [12014.56,14485.45,3.92];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// move
_camera camPrepareTarget [111434.63,16990.04,-10238.33];
_camera camPreparePos [12060.38,14486.61,5.44];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move
_camera camPrepareTarget [111434.63,16990.04,-10238.12];
_camera camPreparePos [12107.18,14487.79,4.18];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move
_camera camPrepareTarget [111434.63,16990.04,-10238.32];
_camera camPreparePos [12163.88,14489.22,3.53];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move
_camera camPrepareTarget [80198.17,87049.31,-10255.99];
_camera camPreparePos [12188.39,14492.39,4.63];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move
_camera camPrepareTarget [-84276.58,38625.29,-10257.95];
_camera camPreparePos [12211.81,14535.03,9.14];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move
_camera camPrepareTarget [-48403.68,-61961.27,-21547.88];
_camera camPreparePos [12159.83,14563.34,31.89];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move
_camera camPrepareTarget [102639.69,-8429.34,-35305.75];
_camera camPreparePos [12036.13,14512.30,42.23];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move
_camera camPrepareTarget [106678.88,6841.18,-30850.48];
_camera camPreparePos [11965.94,14433.25,117.41];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move
_camera camPrepareTarget [104368.83,-5764.60,-32638.01];
_camera camPreparePos [12151.39,14370.30,112.22];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move
_camera camPrepareTarget [104368.83,-5764.60,-32637.92];
_camera camPreparePos [12439.88,14306.03,29.40];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move
_camera camPrepareTarget [107577.38,-14999.11,-10047.16];
_camera camPreparePos [12520.99,14316.26,2.26];
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
