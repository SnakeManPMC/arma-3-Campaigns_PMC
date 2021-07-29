
// making a dummy location save for ammobox, in case of player skips the cutscene.
GLB_02_box1X = 2977; saveVar "GLB_02_box1X";
GLB_02_box1Y = 6116; saveVar "GLB_02_box1Y";
GLB_02_box1D = 0; saveVar "GLB_02_box1D";

// shoot the herc into oblivion ;)
herc1 setpos [(getpos herc1 select 0),(getpos herc1 select 1)-6000,(getpos herc1 select 2)];
DropComplete=false;

// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// at the gate rise up move
_camera camSetTarget [-59577.48,-70151.30,-16116.82];
_camera camSetPos [3070.47,6103.01,4.24];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["Track15_MainTheme",0];
sleep 1;
titletext["Nogova, near the airbase. July 22nd, 1130hrs.","plain",2];
sleep 5;

titlecut ["","BLACK IN",2];
sleep 3;
titletext["","plain",2];

//=== 11:21:48
_camera camSetTarget [-53676.79,-74638.54,-16116.28];
_camera camSetPos [3066.38,6097.18,10.40];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 2;

// pan1
_camera camSetTarget [-18924.54,-90239.30,-15535.57];
_camera camSetPos [3068.46,6062.84,6.39];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 11:23:14
_camera camSetTarget [-90140.05,-29316.37,-7751.47];
_camera camSetPos [3068.46,6062.84,6.39];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 11:23:17
_camera camSetTarget [-78286.93,63689.32,-7751.64];
_camera camSetPos [3068.46,6062.84,6.39];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 1;

// ranger face here.
// assault1
_camera camSetTarget leader assault1;
_camera camSetRelPos [5,20,10];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,2,1];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;


// plane
_camera camSetTarget herc1;
_camera camSetRelPos [10,1000,5];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

titletext["From the ocean a US cargo C-130 Hercules approaching Nogova west coast...","plain down",2];
sleep 10;

// plane
_camera camSetTarget herc1;
_camera camSetRelPos [-50,500,0];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 7;

InTheCoast=false;

//#Loop
while { (!InTheCoast) } do
{
	sleep 0.001;
	_camera camSetTarget herc1;
	_camera camSetRelPos [-10,-30,5];
	
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
};

titletext["On daring day time ammo resupply drop...\nthey across the coastline...","plain down",2];

// plane
_camera camSetTarget herc1;
_camera camSetRelPos [50,800,-20];
_camera camSetFOV 0.600
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 10;

// ranger
_camera camSetTarget leader assault1;
_camera camSetRelPos [2,5,1.5];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

assault1 setbehaviour "aware";
assault1 setspeedmode "full";
leader assault1 move getpos WatchDrop;
DropInProgress=false;

titletext["Rangers preparing to receive resupplies.","plain down",2];
sleep 7;
titletext["","plain down",2];

// watch the drop
_camera camSetPos [(getpos WatchDrop select 0),(getpos WatchDrop select 1),20];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

// plane
_camera camSetTarget herc1;

_camera camCommit 3;
waitUntil { (camCommitted _camera); };

waitUntil
{
	(DropInProgress);
};
sleep 1;

// watch the box drop
_camera camSetTarget box1;

_camera camCommit 2;
waitUntil { (camCommitted _camera); };

waitUntil
{
	(DropComplete);
};
sleep 1;

leader assault1 move getpos box1;

// ranger
_camera camSetTarget leader assault1;
_camera camSetRelPos [-2,15,3];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

// ranger
_camera camSetTarget leader assault1;
_camera camSetRelPos [5,20,5];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 7;

// saving the ammo box location
GLB_02_box1X = ((getpos box1) select 0); saveVar "GLB_02_box1X";
GLB_02_box1Y = ((getpos box1) select 1); saveVar "GLB_02_box1Y";
GLB_02_box1D = getdir box1; saveVar "GLB_02_box1D";

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
