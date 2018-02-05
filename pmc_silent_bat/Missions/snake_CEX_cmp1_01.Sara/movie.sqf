// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

playMusic ["ATrack2", 0];

// still on the edge
_camera camPrepareTarget [-95179.19,-11468.29,-13487.33];
_camera camPreparePos [2991.62,1965.81,4.16];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };

sleep 2;

titletext["Special Forces are infiltrating Rahmadi coastline...","plain",2];

sleep 5;

// first shot of players group
_camera camPrepareTarget [-37516.05,-89237.16,7985.29];
_camera camPreparePos [2767.77,1930.03,-0.45];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;
// ===1:25:17
_camera camPrepareTarget [18075.24,-96568.21,7986.12];
_camera camPreparePos [2767.77,1930.03,0.31];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// ===1:25:20
_camera camPrepareTarget [-47668.40,-84049.14,7985.98];
_camera camPreparePos [2767.77,1930.03,0.28];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// ===1:25:23
_camera camPrepareTarget [-90736.48,-32612.39,7986.36];
_camera camPreparePos [2767.77,1930.03,0.43];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };
// ===1:25:26
_camera camPrepareTarget [-87800.79,43566.08,7986.09];
_camera camPreparePos [2767.77,1930.03,0.16];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 5;
waitUntil { camCommitted _camera; };

//titletext["Long campaign with alot of troops under your command.","plain",2];

//titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 4;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
