s1 loadStatus "sol1_34";
s2 loadStatus "sol2_34";
s3 loadStatus "sol3_34";
s4 loadStatus "sol4_34";
s5 loadStatus "sol5_34";
s6 loadStatus "sol6_34";
s7 loadStatus "sol7_34";
s8 loadStatus "sol8_34";
s9 loadStatus "sol9_34";

{ if (!alive _x) then { deletevehicle _x } } foreach [s2,s3,s4,s5,s6,s7,s8,s9];

// heal them
{_x setdammage 0} foreach units group s1;

// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//mechs1
//ccrew1
//ppilots1
//rangers1
//seals1
//assault1

// start
_camera camSetTarget leader assault1;
_camera camSetRelPos [3,7,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 2;

titletext["Gordon McKenzie, US Army regular. You have just won the World War Three!","plain down",2];
sleep 2;

leader assault1 move getpos pole1;

// assault1
_camera camSetRelPos [10,10,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;
titletext["","plain down",3];
sleep 4;

// assault1
_camera camSetRelPos [3,10,1.5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

waitUntil
{
	(unitready leader assault1);
};

// assault1
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,2,1.5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

// pole1
_camera camSetTarget pole1;
_camera camSetRelPos [0,10,3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;

titletext["We hand Rugen back to its people.","plain down",2];
sleep 2;
pole1 setFlagTexture "ca\Ca_E\data\flag_ger_co.paa";
sleep 7;

// assault1
_camera camSetTarget leader assault1;
_camera camSetRelPos [1,3,1.5];
_camera camCommit 5;
waitUntil { (camCommitted _camera); };
sleep 4;

// ppilots1
_camera camSetTarget leader ppilots1;
_camera camSetRelPos [3,10,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;

titletext["Bob Walton, Apache AH-64 pilot.","plain down",2];

_camera camSetRelPos [0,3,1.5];
_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 2.5;
titletext["","plain down",0];
sleep 0.5;

// ccrew1
_camera camSetTarget leader ccrew1;
_camera camSetRelPos [0,7,3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;

titletext["David Ruby, M1A1 Abrams tank platoon commander.","plain down",2];

_camera camSetRelPos [0,3,1.5];
_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 2.5;
titletext["","plain down",0];
sleep 0.5;

// mechs1
_camera camSetTarget leader mechs1;
_camera camSetRelPos [-3,15,4];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;

titletext["Roger Tuchek, M2A2 Bradley mechanized infantry squad leader.","plain down",2];

_camera camSetRelPos [0,3,1.5];
_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 2.5;
titletext["","plain down",0];
sleep 0.5;

// rangers1
_camera camSetTarget leader rangers1;
_camera camSetRelPos [2,13,3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;

titletext["Steve Gross, Army Ranger's squad leader.","plain down",2];

_camera camSetRelPos [0,3,1.5];
_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 2.5;
titletext["","plain down",0];
sleep 0.5;

// seals1
_camera camSetTarget leader seals1;
_camera camSetRelPos [-7,15,5];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;

titletext["Carlos Edwards, SEAL team leader.","plain down",2];

_camera camSetRelPos [0,3,1.5];
_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 2.5;
titletext["","plain down",0];
sleep 0.5;

titlecut ["","BLACK OUT",2];
sleep 4;

titletext ["The End","plain",2];
sleep 7;

titletext ["Thank you for playing PMC Rugen Campaign\n\nHero's Path","plain",2];
sleep 7;

titletext ["Storyline\nElvisdog","plain",2];
sleep 7;

titletext ["Mission Design\nSnake Man","plain",2];
sleep 7;

titletext ["Cutscenes\nSnake Man","plain",2];
sleep 7;

titletext ["Scripts\nSnake Man\nBremmer (Improved AI)\nGeneral Barron (Easy AI Unified Artillery)","plain",2];
sleep 7;

titletext ["Addons used in this campaign\nCoC Mines\nCoC Unified Artillery\nBn880 Tracers\nbas MH-60 Blackhawk\nLaser Rangers & Deltas and SEALs\nJAM 3","plain",2];
sleep 7;

titletext ["Greetings to Laser for making such a great Rangers,\nto the CoC team for making such a great artillery.\nAnd all the rest of the cool OFP community guys and gals.","plain",2];
sleep 7;

titletext ["PMC Productions 2004-2013\n\nhttps://www.pmctactical.org", "plain", 2];
sleep 7;

//titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
