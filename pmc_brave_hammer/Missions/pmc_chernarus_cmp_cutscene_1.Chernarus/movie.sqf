private
[
	"_d"
];

titleCut ["","black out",0.00000001];
// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

_d = 7;

// start
_camera camPrepareTarget [61212.32,79833.27,-12525.39];
_camera camPreparePos [294.15,1531.90,121.44];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep 3;

playMusic ["Ambient08_Reforger",0];

titleText ["PMC Chernarus Campaign","plain",3];
sleep 5;

titleCut ["","black in",3];
sleep _d;

// coast shots
_camera camPrepareTarget [61212.32,79833.27,-12525.39];
_camera camPreparePos [1057.50,1609.99,121.62];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep _d;

titleText ["The sovereign country of Chernarus is in turmoil.","plain",3];
sleep 5;

_camera camPrepareTarget [37674.12,94421.98,-11324.79];
_camera camPreparePos [3078.44,1293.40,231.70];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep _d;

titleText ["Terrorists that call themselves ''Chedaki'' have seized control.","plain",3];
sleep 5;

_camera camPrepareTarget [37674.12,94421.98,-11324.79];
_camera camPreparePos [6139.31,1372.90,157.62];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep _d;

titleText ["Local population are being systematically killed.","plain",3];
sleep 5;

_camera camPrepareTarget [95105.99,49214.61,-17796.81];
_camera camPreparePos [9011.03,1619.57,157.88];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera; };
sleep _d;

titleText ["Mass graves are being dug...","plain",3];
sleep 3;
titleText ["Mass graves are being dug... daily.","plain",3];
sleep 5;

_camera camPrepareTarget [-5925.08,100341.46,-5321.89];
_camera camPreparePos [12286.70,2147.05,157.71];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera };
sleep _d;

titleText ["Russians are in the north, observing and supporting the Chedaki.","plain",3];
sleep 5;

_camera camPrepareTarget [-56180.13,74141.45,-5572.60];
_camera camPreparePos [14450.70,3551.36,157.66];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera };
sleep _d;

titleText ["United States carrier group has arrived to 60miles off the south coast\nof Chernarus. Orders: Observe and gather intelligence.","plain",3];
sleep 5;

_camera camPrepareTarget [-56180.13,74141.45,-5572.60];
_camera camPreparePos [13965.07,5892.93,157.60];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera };
sleep _d;

titleText ["Will this be the start of major conflict?","plain",3];
sleep 5;

_camera camPrepareTarget [-56180.13,74141.45,-5572.60];
_camera camPreparePos [13509.78,7846.65,76.69];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera };
sleep _d;

titleText ["Will the Russians get involved?","plain",3];
sleep 5;

_camera camPrepareTarget [-20315.68,104427.15,-5781.60];
_camera camPreparePos [13927.99,10637.46,76.65];
_camera camCommitPrepared 0;
waitUntil { camCommitted _camera };
sleep _d;

titleText ["Who will stop the slaugther of innocents?","plain",3];
sleep 5;

// turn the screen black from this moment on.
titleCut ["","black out", 4];
sleep 5;

titleText ["You're Marine Force Recon team leader on board the US carrier.\nThis is as close to a war you've been since the MFR training ended.","plain",3];
sleep 8;

titleText ["Will you get to see some action?","plain",3];
sleep 5;

titleText ["Will you survive if you do?","plain",3];
sleep 5;

titleText ["Get ready for PMC Chernarus Campaign!","plain",3];
sleep 5;

4 fademusic 0;
titleText ["","plain",4];
sleep 6;

// Destroy the camera
_camera cameraeffect ["terminate", "back"];
camDestroy _camera;

// end the intro
endcut = true;
