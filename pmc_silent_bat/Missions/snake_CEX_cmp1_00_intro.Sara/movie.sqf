
// camera basic initialization
_camera = "camera" camCreate getPos player;
_camera cameraEffect ["internal","back"];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
//waitUntil { camCommitted _camera; };
titleCut ["", "black out", 0.000001];
sleep 3;

playMusic ["ATrack26", 0];
sleep 2;

titleText ["PMC Productions 2009", "plain", 4];
sleep 14;

titleText ["Presents\n\nPMC Silent Bat", "plain", 4];
sleep 15;

titleText ["Armed Assault Command Campaign", "plain", 4];
sleep 15;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
