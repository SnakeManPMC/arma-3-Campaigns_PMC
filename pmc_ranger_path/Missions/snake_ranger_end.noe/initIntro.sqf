titlecut ["","BLACK OUT",0.001];
// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

//{ _x setdammage 1; [_x] exec "PMC_sm.sqs"; } foreach [tnk1,tnk2,tnk3,tnk4,tnk5,uaz1,ural1];

ppilots1 setbehaviour "safe";
officers1 setbehaviour "safe";
officers2 setbehaviour "safe";
officers3 setbehaviour "safe";

// debug second part
//goto "goo";

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";
sleep 2;

//=== 18:20:48
_camera camSetTarget [103964.01,-33015.73,-94.27];
_camera camSetPos [10726.29,3132.30,2.00];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

titlecut ["","BLACK IN",2];
titletext ["The city of Lipany has fallen to US hands.\nNogova is free of Russian occupation.","plain down",2];
sleep 2;

leader officers4 move [(getpos ustankgo1 select 0), (getpos ustankgo1 select 1)-4,0];
sleep 1;
leader ustanks1 move getpos ustankgo1;

//=== 18:20:53
_camera camSetTarget [110566.01,-2550.47,-94.62];
_camera camSetPos [10727.20,3120.85,2.00];

_camera camCommit 8;
waitUntil { (camCommitted _camera); };
sleep 3;

leader ustanks3 move getpos ustankgo3;

{_x setpos getpos offi_spot} foreach units officers4;
leader officers4 move [(getpos leader officers4 select 0),(getpos leader officers4 select 1)+3,0];

//=== 18:21:54
_camera camSetTarget [19235.80,102543.02,5662.60];
_camera camSetPos [10790.64,3054.25,0.67];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 7;
//=== 18:22:06
_camera camSetTarget [-15755.73,91749.56,-37638.10];
_camera camSetPos [10809.92,3054.85,20.73];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 2;

// gunship shot
_camera camSetTarget gship2;
_camera camSetRelPos [20,50,5];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

leader ustanks2 move getpos ustankgo2;
// ustank2 moves in from NW.
_camera camSetTarget [78082.96,-70783.63,125.87];
_camera camSetPos [10772.81,3171.37,2.00];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 8;

//=== 18:22:40
_camera camSetTarget [18842.52,102777.89,2909.87];
_camera camSetPos [10792.10,3141.36,1.60];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 18:22:42
_camera camSetTarget [85173.44,69922.08,2910.13];
_camera camSetPos [10792.10,3141.36,1.60];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 18:22:45
_camera camSetTarget [108947.01,-15775.80,2909.83];
_camera camSetPos [10792.10,3141.36,1.60];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 18:22:48
_camera camSetTarget [46547.14,-90206.51,2909.79];
_camera camSetPos [10792.10,3141.36,1.60];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 18:22:51
_camera camSetTarget [-10838.28,-94451.54,2910.14];
_camera camSetPos [10792.10,3141.36,1.60];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 0.5;

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

//=== 18:23:33
_camera camSetTarget [86602.22,68304.59,1124.22];
_camera camSetPos [10792.96,3097.56,2.60];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 18:24:09
_camera camSetTarget [-78713.85,-34921.58,-22859.90];
_camera camSetPos [10856.33,3139.44,6.57];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;


leader officers4 move [(getpos ruskie select 0),(getpos ruskie select 1)-1,0];

// deer shot ;)
_camera camSetTarget [-88106.26,-11372.24,-1513.61];
_camera camSetPos [10823.88,3125.24,4.34];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

waitUntil
{
	(leader officers4 distance ruskie < 15);
};

// move shot over bmp
_camera camSetTarget [109028.43,18548.27,-10152.05];
_camera camSetPos [10762.70,3114.82,2.88];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 18:26:46
_camera camSetTarget [109992.41,-3789.57,-10152.28];
_camera camSetPos [10762.51,3122.33,2.88];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 18:27:58
_camera camSetTarget [45180.39,-90761.19,-790.17];
_camera camSetPos [10799.71,3139.12,1.33];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

// change flag shot
_camera camSetTarget [-67070.06,49821.58,-41733.11];
_camera camSetPos [10815.50,3115.46,7.66];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;
ruskie setflagtexture "\ca\data\flag_usa_co.paa";
sleep 3;

//#goo
titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

//
// ok here we change the operations into the airbase
//

// first tank shot on the row.
_camera camSetTarget [40242.73,-86193.41,-9780.47];
_camera camSetPos [1630.40,5528.95,1.78];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

leader officers1 dowatch leader officers2;
leader officers2 dowatch leader officers1;
leader officers3 dowatch leader officers2;
offi1 playmove "effectstandtalk";
sleep 0.2;
offi2 playmove "effectstandtalk";
sleep 0.3;
offi3 playmove "effectstandtalk";

0 fademusic 1;
playmusic ["LeadTrack01_F", 0];
titletext ["In the mean time, US Army Rangers have completed\nall their objectives in Nogova and are\npreparing to depart back to home base.","plain",2];
sleep 4;

titlecut ["","black in",2];
sleep 2;
titletext ["","plain",2];

//=== 19:18:54
_camera camSetTarget [40242.73,-86193.41,-9780.91];
_camera camSetPos [1628.87,5469.45,1.78];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 0.3;

titletext ["","plain",2];

//=== 19:19:51
_camera camSetTarget [-60908.02,83482.06,-1010.94];
_camera camSetPos [1655.03,5479.40,1.42];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 19:19:56
_camera camSetTarget [-60908.02,83482.06,-1010.49];
_camera camSetPos [1647.16,5473.09,3.62];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 0.3;

//=== 19:21:16
_camera camSetTarget [-59407.78,83615.59,-12304.21];
_camera camSetPos [1580.47,5331.17,2.09];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 19:21:21
_camera camSetTarget [-59407.78,83615.59,-12303.83];
_camera camSetPos [1588.36,5337.31,12.38];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 0.3;

//=== 19:21:52
_camera camSetTarget [-4885.68,105200.48,758.79];
_camera camSetPos [1540.84,5409.90,1.93];
_camera camSetFOV 0.122
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 19:22:02
_camera camSetTarget [-70250.49,75019.27,758.59];
_camera camSetPos [1540.84,5409.90,1.93];
_camera camSetFOV 0.811
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

//=== 19:23:06
_camera camSetTarget [14084.97,4202.08,-99193.81];
_camera camSetPos [1650.73,5412.73,1.25];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 19:23:11
_camera camSetTarget [14084.97,4202.08,-99193.33];
_camera camSetPos [1650.73,5412.73,2.71];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 0.3;

//=== 19:23:44
_camera camSetTarget [5369.46,-94052.09,-9597.08];
_camera camSetPos [1650.67,5413.66,1.22];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 19:23:53
_camera camSetTarget [57282.84,-76270.80,-15227.14];
_camera camSetPos [1648.13,5412.98,1.72];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 0.3;

leader assault1 move [(getpos tbl1 select 0),(getpos tbl1 select 1)+2,0];

//=== 19:25:37
_camera camSetTarget [-6416.22,-94147.18,-3507.48];
_camera camSetPos [1674.73,5462.45,1.49];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;
//=== 19:25:43
_camera camSetTarget [47616.17,-78831.80,-27969.63];
_camera camSetPos [1670.83,5461.37,3.83];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 2;

//=== 19:26:23
_camera camSetTarget [54008.63,90200.60,-8250.75];
_camera camSetPos [1648.42,5406.84,1.02];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 19:26:46
_camera camSetTarget [-90961.78,-31881.01,-5012.30];
_camera camSetPos [1683.07,5422.95,2.13];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 19:26:49
_camera camSetTarget [-65816.65,79033.00,-5011.97];
_camera camSetPos [1683.07,5422.95,2.13];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 2;

// discussion table shot
_camera camSetTarget [-98131.85,10564.97,3943.69];
_camera camSetPos [1658.28,5412.29,1.39];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;

offi1 playmove "effectstand";
sleep 0.2;
offi2 playmove "effectstand";
sleep 0.1;
offi3 playmove "effectstand";
leader officers1 dowatch leader assault1;
leader officers2 dowatch leader assault1;
leader officers3 dowatch leader assault1;

waitUntil
{
	(unitready leader assault1);
};
leader assault1 dowatch leader officers1;

// assault1 face
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,1,1.5];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;

// officer1 face
_camera camSetTarget leader officers1;
_camera camSetRelPos [0,1,1.5];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;

// assault1 face
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,1,1.5];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

leader assault1 playmove "effectstandsalute";
sleep 2;

// officer1 face
_camera camSetTarget leader officers1;
_camera camSetRelPos [0,1,1.5];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
leader officers1 playmove "effectstandsalute";
leader officers2 playmove "effectstandsalute";
leader officers3 playmove "effectstandsalute";
sleep 2;

// discussion table shot
_camera camSetTarget [-98131.85,10564.97,3943.69];
_camera camSetPos [1658.28,5412.29,1.39];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;

leader officers1 playmove "effectstand";
sleep 0.1;
leader officers2 playmove "effectstand";
sleep 0.1;
leader officers3 playmove "effectstand";
sleep 0.5;

leader assault1 playmove "effectstand";
sleep 3;

{_x assignascargo helo1} foreach units assault1;
{[_x] ordergetin true} foreach units assault1;

//=== 19:41:44
_camera camSetTarget [100673.15,-8049.57,933.41];
_camera camSetPos [1589.45,5426.02,0.92];
_camera camSetFOV 0.144;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 7;

//=== 19:42:59
_camera camSetTarget [100472.50,-8284.96,-4767.57];
_camera camSetPos [1533.83,5431.45,2.30];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 19:43:02
_camera camSetTarget [9287.01,-94152.39,-4767.21];
_camera camSetPos [1533.83,5431.45,2.30];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
//=== 19:43:08
_camera camSetTarget [-72666.73,-61607.81,-102.73];
_camera camSetPos [1533.83,5431.45,2.30];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

helo1 action["ENGINE ON"];
helo1 flyinheight 0;

ppilots1 move getpos tbl1;

// use this if its get too slow
{_x setpos getpos chinook_front} foreach units assault1;
sleep 3;

//=== 19:43:49
_camera camSetTarget [54793.29,89890.52,4939.36];
_camera camSetPos [1515.34,5408.06,2.21];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

private _A = 0;
while { (_B > _A) } do
{
	private _listunits = units assault1;
	private _B = count _listunits
	sleep 0.1;
	if (_listunits select _A in helo1) then
	{
		_A = _A + 1;
	};
};

helo1 flyinheight 50;

leader transp1 move getpos USA;
sleep 3;

_A = 0;
//#Loopah
while { (_A < 125) } do
{
	sleep 0.01;
	//=== 19:43:49
	_camera camSetTarget helo1;
	_camera camSetRelPos [5,10,2];
	
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
	_A = _A + 1;
};

_A = 0;
while { (_A < 125) } do
{
	sleep 0.01;
	//=== 19:43:49
	_camera camSetTarget helo1;
	_camera camSetRelPos [-5,10,2];
	
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
	_A = _A + 1;
};

//=== 19:43:49
_camera camSetTarget helo1;
_camera camSetRelPos [0,-10,0];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 10;

titlecut ["","BLACK OUT",2];
sleep 4;

titletext ["The End","plain",2];
sleep 7;

titletext ["Thank you for playing PMC Ranger Campaign\n\nRanger Path","plain",2];
sleep 7;

titletext ["Mission Design\nSnake Man","plain",2];
sleep 7;

titletext ["Cutscenes\nSnake Man","plain",2];
sleep 7;

titletext ["Scripts\nSnake Man\nBremmer (Improved AI)\nBallistic Addon Studios (fastrope)\nSkumball (airstrike)","plain",2];
sleep 7;

titletext ["Addons used in this campaign\nCoC Mines\nBn880 Tracers\nBAS Littlebirds\nBAS MH-47E Chinook\nBAS MH-60 Blackhawk\nC-130 Hercules\nLaser Rangers\nLaser Deltas\nJAM 3","plain",2];
sleep 7;

titletext ["Greetings to Laser for making such a great Rangers.\nAnd all the rest of the cool OFP community guys and gals.","plain",2];
sleep 7;

titletext ["PMC Productions 2003-2006\n\nhttps://www.pmctactical.org","plain",2];
sleep 7;
titletext ["","plain",3];
sleep 4;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
