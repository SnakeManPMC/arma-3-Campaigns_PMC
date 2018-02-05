
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [-78285.99,46994.75,-34645.36];
_camera camPreparePos [10356.13,16353.54,37.04];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["This is the end...", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [-25460.06,18480.78,-93275.69];
_camera camPreparePos [10356.13,16353.54,37.04];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-11411.01,-67123.71,-50508.23];
_camera camPreparePos [10356.13,16353.54,37.04];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [58169.53,-65558.74,-31624.03];
_camera camPreparePos [10356.13,16353.54,37.04];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// inf pan
_camera camPrepareTarget [-34953.59,-66262.93,-34296.97];
_camera camPreparePos [8225.42,17121.35,49.17];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-34953.59,-66262.93,-34296.79];
_camera camPreparePos [8196.48,17071.68,7.48];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 1
_camera camPrepareTarget [-24938.31,-76830.19,-9415.10];
_camera camPreparePos [8186.83,17047.98,1.50];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// inf 2 pan
_camera camPrepareTarget [-83912.62,51511.12,-17840.79];
_camera camPreparePos [8216.69,16985.19,2.53];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-83912.62,51511.12,-17840.52];
_camera camPreparePos [8212.17,16976.44,2.17];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-83912.62,51511.12,-17840.54];
_camera camPreparePos [8212.17,16976.44,3.48];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [-83912.62,51511.12,-17840.69];
_camera camPreparePos [8203.35,16979.74,3.82];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 4
_camera camPrepareTarget [-83912.62,51511.12,-17840.66];
_camera camPreparePos [8174.38,16990.59,3.84];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// inf 3 pan
_camera camPrepareTarget [-18191.65,111960.82,9704.36];
_camera camPreparePos [7738.65,15866.87,2.00];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-92072.94,10661.27,-3216.91];
_camera camPreparePos [7738.65,15866.88,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-28823.03,-75222.58,-19098.65];
_camera camPreparePos [7738.65,15866.88,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [86081.25,-46186.80,-3400.60];
_camera camPreparePos [7738.65,15866.88,2.00];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// inf 4 pan
_camera camPrepareTarget [30547.80,-81523.76,-2880.83];
_camera camPreparePos [7817.10,15815.15,0.77];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-89623.13,-6477.14,-2880.77];
_camera camPreparePos [7817.10,15815.15,0.77];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-91392.52,3537.40,-2880.98];
_camera camPreparePos [7796.02,15811.76,1.63];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [-91157.17,3566.52,-7820.73];
_camera camPreparePos [7753.07,15806.43,1.16];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// M113 pan
_camera camPrepareTarget [-88593.97,40358.73,-10657.55];
_camera camPreparePos [7735.66,15730.47,3.24];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-49466.09,94262.63,-23610.66];
_camera camPreparePos [7728.79,15711.78,9.74];
_camera camCommitPrepared 5;
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
