
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

playMusic ["ATrack7", 0];
[] execVM "movie-text.sqf";

// start
_camera camPrepareTarget [-85679.52,11353.06,41.84];
_camera camPreparePos [14313.68,12520.64,2.00];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;
// pan 1
_camera camPrepareTarget [2026.16,-86721.58,41.74];
_camera camPreparePos [14313.68,12520.64,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [2026.16,-86721.58,41.56];
_camera camPreparePos [14316.19,12514.31,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [2026.16,-86721.58,41.79];
_camera camPreparePos [14313.65,12492.38,1.63];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [2026.16,-86721.58,41.82];
_camera camPreparePos [14310.57,12466.77,1.63];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// intersection pan
_camera camPrepareTarget [-83128.48,34369.00,-4907.15];
_camera camPreparePos [14317.16,12463.60,2.81];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-13109.21,-82986.48,-11664.32];
_camera camPreparePos [14316.11,12464.01,2.81];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// hummer pan
_camera camPrepareTarget [33450.12,-85668.02,-3810.75];
_camera camPreparePos [14300.83,12405.66,3.95];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;

// pan 1
_camera camPrepareTarget [107156.98,-15108.65,-24869.94];
_camera camPreparePos [14300.83,12405.66,3.95];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [53674.19,103906.95,-8745.86];
_camera camPreparePos [14300.83,12405.66,3.95];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// hummer 2 pan
_camera camPrepareTarget [-54820.95,81206.10,-21672.35];
_camera camPreparePos [14325.12,12307.31,2.07];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;

// pan 1
_camera camPrepareTarget [-8858.20,107125.20,-21672.35];
_camera camPreparePos [14320.31,12304.43,1.58];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [40649.09,106297.57,-21672.54];
_camera camPreparePos [14314.44,12304.44,1.83];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [48373.86,103782.12,-21672.25];
_camera camPreparePos [14305.85,12307.58,2.65];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// street low pan
_camera camPrepareTarget [111756.92,34146.57,4568.26];
_camera camPreparePos [14241.64,12460.86,0.85];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [11076.27,112308.14,4568.51];
_camera camPreparePos [14241.64,12460.86,0.85];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-82515.13,37312.94,4568.18];
_camera camPreparePos [14241.64,12460.86,0.85];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// statue pan
_camera camPrepareTarget [-74276.97,51238.19,-25851.44];
_camera camPreparePos [14182.57,12458.19,12.20];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-74276.97,51238.19,-25851.46];
_camera camPreparePos [14181.10,12454.77,12.20];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-11310.82,105615.34,-25851.49];
_camera camPreparePos [14178.42,12452.51,12.20];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [54442.07,100245.44,-25851.39];
_camera camPreparePos [14174.88,12452.70,12.20];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [107077.72,38868.11,-25851.31];
_camera camPreparePos [14172.50,12455.34,11.66];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 5
_camera camPrepareTarget [111478.41,32693.47,-10993.69];
_camera camPreparePos [14172.09,12457.10,10.50];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 6
_camera camPrepareTarget [111478.41,32693.47,-10993.87];
_camera camPreparePos [14171.96,12457.72,7.11];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 7
_camera camPrepareTarget [111478.41,32693.47,-10993.83];
_camera camPreparePos [14171.35,12460.67,4.35];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 8
_camera camPrepareTarget [112585.92,26343.58,-10993.75];
_camera camPreparePos [14170.67,12464.34,2.91];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 9
_camera camPrepareTarget [-9678.34,108949.67,-10993.96];
_camera camPreparePos [14170.67,12464.34,2.91];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 10
_camera camPrepareTarget [-85420.57,21427.29,-1076.56];
_camera camPreparePos [14170.67,12464.34,2.91];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// outer town pan
_camera camPrepareTarget [113472.07,19491.68,-9415.39];
_camera camPreparePos [14177.88,12341.54,3.31];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [59382.61,101037.61,-9415.52];
_camera camPreparePos [14177.88,12341.54,3.31];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-44458.00,92792.11,-9415.50];
_camera camPreparePos [14177.88,12341.54,3.31];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// outer town vehicle pan
_camera camPrepareTarget [-81672.86,40873.98,-4589.98];
_camera camPreparePos [14081.74,12421.90,10.87];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-9754.91,108188.09,-16094.16];
_camera camPreparePos [14081.74,12421.90,10.87];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [76749.05,89756.27,-9551.88];
_camera camPreparePos [14081.74,12421.90,10.87];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// support pan
_camera camPrepareTarget [-19773.00,106303.34,-4849.99];
_camera camPreparePos [14150.83,12360.78,3.18];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [46355.91,106325.68,-11548.20];
_camera camPreparePos [14154.53,12371.32,3.44];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// landscape pan
_camera camPrepareTarget [-9002.87,-79858.36,-30203.95];
_camera camPreparePos [14011.64,12623.11,46.59];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [55940.30,-74045.97,-26940.64];
_camera camPreparePos [14011.64,12623.11,46.59];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [102004.06,-31628.50,-17208.99];
_camera camPreparePos [14011.64,12623.11,46.59];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [110776.56,30992.18,-17209.06];
_camera camPreparePos [14011.64,12623.11,46.59];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [56384.68,101535.42,-17209.09];
_camera camPreparePos [14011.64,12623.11,46.59];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// officer pan
_camera camPrepareTarget [72323.94,94049.96,58.04];
_camera camPreparePos [14024.34,12802.46,1.94];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [41102.04,109066.67,58.23];
_camera camPreparePos [14021.53,12803.24,1.92];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-25568.55,104298.52,-7780.12];
_camera camPreparePos [14017.51,12802.58,1.94];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [23162.71,111998.40,-8679.17];
_camera camPreparePos [14014.52,12802.41,1.41];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [106507.20,49792.96,-8679.11];
_camera camPreparePos [14011.01,12804.82,1.35];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 5
_camera camPrepareTarget [109900.00,-14191.60,-8679.06];
_camera camPreparePos [14010.99,12807.75,1.28];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 6
_camera camPrepareTarget [68549.43,-70625.59,-7972.95];
_camera camPreparePos [14013.03,12808.73,1.25];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// final landscape pan
_camera camPrepareTarget [112042.02,30711.01,-8262.15];
_camera camPreparePos [14010.61,12805.12,1.49];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [104872.95,29401.55,-38257.86];
_camera camPreparePos [13996.11,12802.43,12.07];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [95836.19,21238.50,-56730.15];
_camera camPreparePos [13976.31,12801.08,34.63];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [79643.13,-59439.28,-21525.87];
_camera camPreparePos [13968.01,12803.61,49.15];
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [71873.76,-66005.74,-21561.78];
_camera camPreparePos [14103.83,12689.90,62.14];
_camera camCommitPrepared 7;
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
