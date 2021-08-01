
private ["_camera"];

// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// here you should run the fire effect for the house representing gamelogics. but get fire effect SQF first?

// start russian incoming
_camera camSetTarget [-44821.55,-68545.00,-18084.65];
_camera camSetPos [21983.17,3631.18,21.93];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["", "BLACK IN", 2];
sleep 1;

// pan to the city
_camera camSetTarget [-76034.64,-4400.34,-18084.47];
_camera camSetPos [21983.17,3631.18,21.93];
_camera camSetFOV 0.700;
_camera camCommit 8;
waitUntil
{
	camCommitted _camera;
};

// === 8:57:28
_camera camSetTarget [-48178.14,72547.00,-18084.72];
_camera camSetPos [21983.17,3631.18,21.93];
_camera camSetFOV 0.700;
_camera camCommit 9;
waitUntil
{
	camCommitted _camera;
};

// === 8:57:33
_camera camSetTarget [-19253.28,94568.98,-5439.20];
_camera camSetPos [21983.17,3631.18,21.93];
_camera camSetFOV 0.700;
_camera camCommit 9;
waitUntil
{
	camCommitted _camera;
};

sleep 2;

// pan the americans
_camera camSetTarget [59941.29,96257.50,-2450.29];
_camera camSetPos [21819.83,3841.76,12.94];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};

sleep .2;
// === 8:58:40
_camera camSetTarget [115871.95,33847.05,-15916.18];
_camera camSetPos [21819.83,3841.76,12.94];
_camera camSetFOV 0.700;
_camera camCommit 6;
waitUntil
{
	camCommitted _camera;
};

// === 8:58:42
_camera camSetTarget [103855.94,-51078.17,-15916.44];
_camera camSetPos [21819.83,3841.76,12.94];
_camera camSetFOV 0.700;
_camera camCommit 9;
waitUntil
{
	camCommitted _camera;
};

// === 8:58:46
_camera camSetTarget [73654.34,-80214.86,-15917.67];
_camera camSetPos [21837.02,3813.35,22.41];
_camera camSetFOV 0.700;
_camera camCommit 10;
waitUntil
{
	camCommitted _camera;
};

// here we had another play music, do we really need it?
sleep 2;

titletext["What is going on?", "plain down", 2];

sleep 5;

// street move
// === 9:00:01
_camera camSetTarget [20847.59,103176.46,-8383.24];
_camera camSetPos [21905.38,3596.38,6.34];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};

// === 9:00:05
_camera camSetTarget [20847.59,103176.46,-8382.75];
_camera camSetPos [21904.51,3659.04,7.24];
_camera camSetFOV 0.700;
_camera camCommit 9;
waitUntil
{
	camCommitted _camera;
};

// === 9:00:09
_camera camSetTarget [20847.59,103176.46,-8383.20];
_camera camSetPos [21904.10,3696.47,6.06];
_camera camSetFOV 0.700;
_camera camCommit 9;
waitUntil
{
	camCommitted _camera;
};

sleep 1;

// god
_camera camSetTarget [38467.71,-93290.20,-17350.90];
_camera camSetPos [21894.55,3786.15,11.09];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};

sleep 3;

titletext["May God have mercy on their souls...", "plain", 2];
sleep 5;

titletext["Because I sure dont!", "plain", 2];
sleep 3;

titletext["", "plain", 2];
sleep 2;

titlecut ["", "BLACK OUT", 2];
2 fademusic 0;
sleep 2;

// destroy camera - if we use mission cutscene the end
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
