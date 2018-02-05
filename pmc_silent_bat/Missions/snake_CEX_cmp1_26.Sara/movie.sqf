
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [-74424.45,-33962.77,-6772.36];
_camera camPreparePos [12230.56,15466.63,2.33];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["SLA final days are here... I enjoy it so much.", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [-74424.45,-33962.77,-6772.40];
_camera camPreparePos [12231.22,15465.48,2.19];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [26939.22,-83410.13,2966.71];
_camera camPreparePos [12235.07,15457.46,5.48];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [57900.80,-73480.91,2967.45];
_camera camPreparePos [12241.39,15434.89,2.66];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// landscape pans
_camera camPrepareTarget [17243.28,114816.23,-9479.74];
_camera camPreparePos [12099.40,15418.29,52.28];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;
// pan 1
_camera camPrepareTarget [-67601.41,71654.77,-21833.65];
_camera camPreparePos [12099.40,15418.29,52.28];
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-82861.47,-6879.52,-21833.60];
_camera camPreparePos [12099.40,15418.29,52.28];
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [-44433.96,-65985.39,-13125.21];
_camera camPreparePos [12099.39,15418.30,52.28];
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
sleep 1;

// inf pan
_camera camPrepareTarget [-87247.23,12589.53,-11695.95];
_camera camPreparePos [12007.29,15435.71,1.97];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-87247.23,12589.53,-11696.33];
_camera camPreparePos [12001.21,15446.10,1.97];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-87247.23,12589.53,-11696.23];
_camera camPreparePos [11975.38,15448.98,1.97];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [-83537.73,42637.83,-11701.25];
_camera camPreparePos [11964.26,15456.79,1.97];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [-83537.73,42637.83,-11701.19];
_camera camPreparePos [11945.32,15463.81,1.97];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 5
_camera camPrepareTarget [-80007.99,-15450.31,-24134.71];
_camera camPreparePos [11936.23,15473.65,1.97];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// inf 2 pan
_camera camPrepareTarget [32416.54,-79401.64,-24149.32];
_camera camPreparePos [11928.40,15410.96,4.56];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-51923.22,-57609.79,-24147.30];
_camera camPreparePos [11928.40,15410.96,11.03];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 1
_camera camPrepareTarget [-54886.80,-54951.03,-24154.39];
_camera camPreparePos [11893.93,15397.86,11.03];
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
