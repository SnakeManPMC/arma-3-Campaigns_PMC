// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

rusinf1 setbehaviour "careless";
rusinf1 setcombatmode "blue";
rusinf1 setformation "COLUMN";
rusinf1 setspeedmode "limited";

rusinf2 setbehaviour "careless";
rusinf2 setcombatmode "blue";
rusinf2 setformation "COLUMN";
rusinf2 setspeedmode "limited";

assault1 setbehaviour "aware";
assault1 setcombatmode "blue";
assault1 setformation "COLUMN";
assault1 setspeedmode "full";

RappellingCam=false;
eastdead1=false;

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titletext ["Recognizing that I volunteered as a Ranger, fully knowing the hazards of my\nchosen profession, I will always endeavor to uphold the prestige,\nhonor, and high esprit de corps of my Ranger Regiment.","plain",2];
sleep 11;

titletext ["Acknowledging the fact that a Ranger is a more elite soldier\nwho arrives at the cutting edge of battle by land, sea, or air,\nI accept the fact that as a Ranger my country expects\n me to move farther, faster and fight harder than any other soldier.","plain",2];
sleep 11;

titletext ["Never shall I fail my comrades. I will always keep myself mentally alert,\n physically strong and morally straight and I will shoulder more than my share\n of the task whatever it may be. One-hundred-percent and then some.","plain",2];
sleep 11;

titletext ["Gallantly will I show the world that I am a specially selected and\n well-trained soldier. My courtesy to superior officers,\n neatness of dress and care of equipment shall set the example for others to follow.","plain",2];
sleep 11;

titletext ["Energetically will I meet the enemies of my country. I shall defeat them\n on the field of battle for I am better trained and will fight with all\n my might. Surrender is not a Ranger word.\n I will never leave a fallen comrade to fall into the hands of the enemy\n and under no circumstances will I ever embarrass my country.","plain",2];
sleep 13;

//#Poo
HelosAreGo = true;
titletext ["Readily will I display the intestinal fortitude required to fight on to\n the Ranger objective and complete the mission though I be the lone survivor.","plain",2];
sleep 9;

playmusic ["LeadTrack01_F", 0];

titletext ["RANGERS LEAD THE WAY!","plain",2];

// explosive shot
_camera camSetTarget helo1;
_camera camSetRelPos [0,80,0];
//_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

titlecut ["","BLACK IN",0];
sleep 6;

titletext ["PMC Ranger Campaign\nRanger Path","plain",2];
private _A = 0;
while { (_A < 250) } do
{
	sleep 0.01;
	_camera camSetTarget helo1;
	_camera camSetRelPos [-20,5,2];
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
	_A = _A + 1;
};

titlecut ["","plain",0];

_camera camSetTarget gship1;
_camera camSetRelPos [-50,100,10];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

titletext ["PMC Productions 2003","plain",2];
_A = 0;
while { (_A < 125) } do
{
	sleep 0.01;
	_camera camSetTarget helo1;
	_camera camSetRelPos [-5,20,5];
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
	_A = _A + 1;
};

_camera camSetTarget helo1;
_camera camSetRelPos [10,80,20];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

titletext ["","plain",2];

_A = 0;
while { (_A < 125) } do
{
	sleep 0.01;
	_camera camSetTarget helo1;
	_camera camSetRelPos [5,10,2];
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
	_A = _A + 1;
};

_camera camSetTarget helo1;
_camera camSetRelPos [-30,40,10];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
setacctime 0.2;
sleep 1.5;
setacctime 1;
sleep 2.5;

_camera camSetTarget gship1;
_camera camSetRelPos [-10,50,5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

_camera camSetTarget HillShot;
_camera camSetRelPos [0,0,2];
_camera camSetTarget helo1
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 0.5;
// zoom for incomng helos
_camera camSetFOV 0.100;
_camera camCommit 6;
waitUntil { (camCommitted _camera); };
sleep 0.5;

// slowmotion shot when helo is rotorwashing the water and moves nicely sideways
setacctime 0.3;
_camera camSetTarget helo1;
_camera camSetRelPos [15,30,10];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;
setacctime 1;

while { (!RappellingCam) } do
{
	sleep 0.01;
	_camera camSetTarget helo1;
	_camera camSetRelPos [0,20,2];
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
};

_camera camSetTarget helo1;
_camera camSetRelPos [-20,100,-50];
_camera camCommit 5;
waitUntil { (camCommitted _camera); };

// shot from insertion
_camera camSetTarget helo1;
_camera camSetRelPos [20,200,-30];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget helo1;
_camera camSetRelPos [-70,150,-30];
_camera camSetFOV 0.200;
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

_camera camSetTarget helo1;
_camera camSetRelPos [-20,5,0];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget helo1;
_camera camSetRelPos [30,5,5];
_camera camCommit 5;
waitUntil { (camCommitted _camera); };

_camera camSetTarget BeachShot;
_camera camSetRelPos [0,0,2];
_camera camSetTarget helo1;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget BeachShot;
_camera camSetRelPos [0,0,2];
_camera camSetTarget helo1;
_camera camSetFOV 0.300;
_camera camCommit 5;
waitUntil { (camCommitted _camera); };

_camera camSetTarget helo1;
_camera camSetRelPos [30,10,0];
_camera camSetFOV 0.500
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget helo1;
_camera camSetRelPos [-30,20,10];
_camera camSetFOV 0.500;
_camera camCommit 5;
waitUntil { (camCommitted _camera); };

_camera camSetTarget helo1;
_camera camSetRelPos [10,-30,-30];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

// move the leader while others are still fast roping
leader assault1 move (getpos telep);

waitUntil
{
	(FastRopeOver);
};

// leader assault1
_camera camSetTarget getpos leader assault1;
_camera camSetRelPos [0,50,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 10;

_camera camSetTarget leader assault1;
_camera camSetRelPos [-3,10,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

titlecut ["","BLACK OUT",3];
3 fademusic 0
sleep 3;

// teleport the guys into the gamelogic
{_x setpos getpos telep} foreach units assault1;

// bit of black screen, then shot from the camp. move rangers to the flag.
leader assault1 move getpos ruskie;
sleep 1;
0 fademusic 1;
[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

_camera camSetTarget leader rusinf1;
_camera camSetRelPos [0,2,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

titlecut ["","BLACK IN",2];
sleep 3;

// delete helos for making noise, and for paranormal guys to slowdown cpu ;)
{deletevehicle _x} foreach units gunships1;
{deletevehicle _x} foreach units gunships2;
{deletevehicle _x} foreach units transp1;

_camera camSetTarget ruskie;
_camera camSetRelPos [-70,0,20];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget ruskie;
_camera camSetRelPos [-25,-25,15];
_camera camCommit 7;
waitUntil { (camCommitted _camera); };
_camera camSetTarget ruskie;
_camera camSetRelPos [0,-25,10];
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 1;

_camera camSetTarget leader assault1;
_camera camSetRelPos [0,5,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

// make the leader say enemy sighted open fire.
leader assault1 say "Eng12";
// start the fight!
assault1 setcombatmode "yellow";
{_x setunitpos "UP"} foreach units assault1;

_fish1 = "flare" createvehicle [(getpos scd1 select 0),(getpos scd1 select 1),100];

_camera camSetTarget telep;
_camera camSetRelPos [0,0,2];
_camera camSetTarget ruskie;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget telep;
_camera camSetRelPos [0,0,25];
_camera camSetTarget ruskie;
_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 1;

_camera camSetTarget leader assault1;
_camera camSetRelPos [2,5,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2.5;

_camera camSetTarget leader rusinf1;
_camera camSetRelPos [2,5,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2.5;

// russian leader says the usual... amerikan evils :)
leader rusinf1 say "Rus1";

// give russians better chances
rusinf1 setbehaviour "combat";
rusinf1 setcombatmode "red";
rusinf1 setformation "wedge";
rusinf1 setspeedmode "full";
{_x setunitpos "UP"} foreach units rusinf1;

rusinf2 setbehaviour "combat";
rusinf2 setcombatmode "red";
rusinf2 setformation "wedge";
rusinf2 setspeedmode "full";
{_x setunitpos "UP"} foreach units rusinf2;

_fish1 = "flare" createvehicle [(getpos scd1 select 0),(getpos scd1 select 1),100];

while { (!eastdead1) } do
{
	_camera camSetTarget leader assault1;
	_camera camSetRelPos [0,-2,1];
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
	sleep 3;
	
	_camera camSetTarget leader rusinf1;
	_camera camSetRelPos [0,-3,1.7];
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
	sleep 3;
	
	_camera camSetTarget leader assault1;
	_camera camSetRelPos [2,-10,2];
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
	sleep 3;
	
	_camera camSetTarget leader rusinf1;
	_camera camSetRelPos [0,-3,1.7];
	_camera camSetTarget getpos leader assault1;
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
	_camera camSetFOV 0.300
	_camera camCommit 3;
	waitUntil { (camCommitted _camera); };
	
	_camera camSetTarget ruskie;
	_camera camSetRelPos [-25,10,3];
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
	sleep 5;
	
	_fish1 = "flare" createvehicle [(getpos scd1 select 0),(getpos scd1 select 1),100];
};

// satchel charges guys are ordered to go t80 and ural fuel
t1 setunitpos "auto";
t2 setunitpos "auto";
t1 commandmove [(getpos scd1 select 0)+2,(getpos scd1 select 1),0];
t2 commandmove [(getpos tnk1 select 0)+2,(getpos tnk1 select 1),0];

_camera camSetTarget ruskie;
_camera camSetRelPos [-10,-10,5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget ruskie;
_camera camSetRelPos [-20,20,10];
_camera camSetFOV 0.800;
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
_camera camSetTarget ruskie;
_camera camSetRelPos [20,25,10];
_camera camCommit 5;
waitUntil { (camCommitted _camera); };

_camera camSetTarget t1;
_camera camSetRelPos [1,5,1];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 5;

_camera camSetTarget t2;
_camera camSetRelPos [0,-3,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

while { (!unitready t2) } do
{
	sleep 0.01;
	_camera camSetTarget t2;
	_camera camSetRelPos [0,-3,2];
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
};

_camera camSetTarget t2;
_camera camSetRelPos [2,0,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
t2 fire ["put", "CUP_PipeBomb_M"];
sleep 4;

waitUntil
{
	(unitready t1);
};
_camera camSetTarget t1;
_camera camSetRelPos [-2,-1,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
t1 fire ["put", "CUP_PipeBomb_M"];
sleep 4;

leader assault1 move [(getpos telep2 select 0),(getpos telep2 select 1),0];

while { (leader assault1 distance ruskie < 60) } do
{
	sleep 0.01;
	_camera camSetTarget leader assault1;
	_camera camSetRelPos [0,10,3];
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
};

// instead of camp, lets just slowly move the camera upwards from the running ranger
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,10,3];
_camera camSetTarget ruskie;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,10,15];
_camera camSetTarget ruskie;
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 0.5;

setAccTime .2;
// bomba
fire1 inflame false;
fire2 inflame false;
_fish3 = "laserguidedbomb" createvehicle getpos trk1;
_fish4 = "laserguidedbomb" createvehicle getpos tnk1;
sleep 0.001;
_fish2 = "laserguidedbomb" createvehicle getpos scd1;
sleep 3;

setAccTime 1;
_camera camSetTarget ruskie;
_camera camSetRelPos [-50,0,3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget ruskie;
_camera camSetRelPos [-100,0,30];
_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 1;

titletext ["Rangers Lead The Way!","plain",2];
sleep 7;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 4;
titletext ["","plain",2];
sleep 2;

// destroy camera - if we use mission cutscene
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
