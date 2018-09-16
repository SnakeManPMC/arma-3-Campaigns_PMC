private
[
	"_d"
];

titleCut ["","black out",0.00000001];
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

_d = 7;

playMusic ["Ambient06_Khe_Sanh_Riff",0];
titleText ["The war is over!","plain",3];

// statue
_camera camPrepareTarget [83864.63,-60392.91,10504.14];
_camera camPreparePos [6800.22,2463.54,4.04];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 5;

titleCut ["","black in",3];
sleep _d;

titleText ["Celebrations are on!","plain",3];
sleep _d;

// statue to pan
_camera camPrepareTarget [98801.77,33995.17,23263.34];
_camera camPreparePos [6800.23,2451.67,4.04];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;
_camera camPrepareTarget [-31296.85,94477.54,8582.89];
_camera camPreparePos [6800.23,2451.67,4.04];
_camera camCommitPrepared 10;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["People gather to capitol city to celebrate their new freedom.","plain",3];
sleep _d;

// intl hotel to pan
_camera camPrepareTarget [-7034.56,101511.73,-1257.36];
_camera camPreparePos [6854.86,2485.49,40.91];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;
_camera camPrepareTarget [-79991.05,-22092.02,-43125.42];
_camera camPreparePos [6854.86,2485.49,40.91];
_camera camCommitPrepared 10;
waitUntil { camCommitted _camera; };
sleep 3;

titleText ["Your Marine Force Recon team performed like\nthe true professionals you are.","plain",3];
sleep _d;

// final street shot
_camera camPrepareTarget [-92883.75,8151.96,-4546.74];
_camera camPreparePos [6860.25,2472.79,4.74];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep _d;
sleep _d;

titleCut ["","black out", 4];
sleep _d;

titleText ["THE END","plain",3];
sleep _d;

titleText ["Campaign design\n\nSnake Man","plain",3];
sleep _d;

titleText ["Scripts\n\nSnake Man","plain",3];
sleep _d;

titleText ["This has been PMC Chernarus Campaign.","plain",3];
sleep _d;

titleText ["Thank you for playing.","plain",3];
sleep _d;

titleText ["Visit PMC Tactical web site for more ArmA 2 stuff.","plain",3];
sleep _d;

titleText ["https://www.pmctactical.org","plain",3];
sleep _d;

4 fademusic 0;
titleText ["","plain",4];
sleep 6;

// Destroy the camera
_camera cameraeffect ["terminate", "back"];
camDestroy _camera;

// end the intro
endcut = true;
