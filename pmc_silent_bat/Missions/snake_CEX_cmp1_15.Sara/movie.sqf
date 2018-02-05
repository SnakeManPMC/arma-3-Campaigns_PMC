
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

[]; execVM "PMC\PMC_ArmA_Default_Music.sqf";

// start
_camera camPrepareTarget [-40641.22,89928.96,-22257.47];
_camera camPreparePos [13505.04,8863.38,7.34];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["The defense of Corazol...", "plain down", 3];;;

// pan 1
_camera camPrepareTarget [39687.84,101914.22,-25585.62];
_camera camPreparePos [13505.04,8863.38,7.34];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

_camera camPrepareTarget [95480.44,64247.41,-14555.61];
_camera camPreparePos [13505.04,8863.38,7.34];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

// ammo box still
_camera camPrepareTarget [-41700.24,-71637.87,-21561.04];
_camera camPreparePos [13493.70,8908.87,2.65];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 4;

// fence still
_camera camPrepareTarget [113258.48,7390.61,-6843.98];
_camera camPreparePos [13505.79,8897.78,1.58];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 4;

// medic pan
_camera camPrepareTarget [59232.70,97568.40,-6845.09];
_camera camPreparePos [13520.99,8893.16,1.58];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [108594.82,39891.27,-270.10];
_camera camPreparePos [13520.99,8893.16,1.58];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// dshkm still
_camera camPrepareTarget [17402.81,108122.66,-12414.64];
_camera camPreparePos [13571.50,8972.85,1.31];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// brdm pan
_camera camPrepareTarget [-603.83,108006.61,-2900.94];
_camera camPreparePos [13497.88,9049.08,3.10];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// pan 1
_camera camPrepareTarget [-68874.89,61702.16,-21010.14];
_camera camPreparePos [13497.88,9049.08,3.10];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-82618.90,-17326.13,-8096.22];
_camera camPreparePos [13497.88,9049.08,3.10];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 1;

// dshkm 2 still
_camera camPrepareTarget [22149.46,108430.05,-7784.13];
_camera camPreparePos [13448.37,9115.50,1.64];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// zsu still
_camera camPrepareTarget [5700.66,108505.70,-7777.97];
_camera camPreparePos [13443.02,9333.41,16.87];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// inf still
_camera camPrepareTarget [107906.68,-21394.05,-12268.75];
_camera camPreparePos [13540.45,9328.00,6.68];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// still
_camera camPrepareTarget [112169.13,25850.73,-4225.99];
_camera camPreparePos [13643.40,9265.03,1.70];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// M113 still
_camera camPrepareTarget [7544.60,107161.57,-19346.29];
_camera camPreparePos [13682.20,9247.66,3.08];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// t72 still
_camera camPrepareTarget [46377.12,103577.25,-6196.00];
_camera camPreparePos [13675.61,9280.58,2.10];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// M1A1 still
_camera camPrepareTarget [-31315.52,97699.15,-12685.74];
_camera camPreparePos [13721.30,9324.56,4.46];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// Vulcan still
_camera camPrepareTarget [-36209.55,95650.87,-5620.03];
_camera camPreparePos [13711.37,9186.63,2.59];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// arty still
_camera camPrepareTarget [110555.98,24951.09,-19413.90];
_camera camPreparePos [13741.27,9189.70,8.19];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

// zsu move
_camera camPrepareTarget [-30843.05,98627.39,1963.42];
_camera camPreparePos [13845.79,9189.14,2.67];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 1;
// move 1
_camera camPrepareTarget [-30843.05,98627.39,1963.45];
_camera camPreparePos [13850.04,9201.75,2.39];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// move 2
_camera camPrepareTarget [-52997.66,83177.64,-7727.08];
_camera camPreparePos [13847.07,9208.70,2.15];
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
sleep 3;

// landscape shots
_camera camPrepareTarget [-15229.70,-84104.05,-21035.28];
_camera camPreparePos [13847.07,9208.70,76.98];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;
// pan 1
_camera camPrepareTarget [-64403.53,-43372.45,-33234.32];
_camera camPreparePos [13847.07,9208.70,76.98];
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
// pan 2
_camera camPrepareTarget [-78250.97,29355.28,-33234.43];
_camera camPreparePos [13847.07,9208.70,76.98];
_camera camCommitPrepared 7;
waitUntil { camCommitted _camera; };
// pan 3
_camera camPrepareTarget [-33570.36,94172.50,-22967.70];
_camera camPreparePos [13847.06,9208.69,76.98];
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
