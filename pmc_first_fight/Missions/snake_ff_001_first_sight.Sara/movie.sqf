// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// assault1 leader
_camera camSetTarget shp1;
_camera camSetRelPos [5,50,3];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_ArmA_Default_Music.sqf";

titlecut ["","BLACK IN",2];
sleep 5;

titletext["Special Operations Forces","plain down",2];

_camera camSetRelPos [3,20,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 9;

titletext["Approaching Rahmadi coastline","plain down",2];

_camera camSetRelPos [-5,20,2];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 9;

private _t = time;
PMC_gogglesoff = 0;
while { time < (_t + 20) } do
{
	_camera camSetRelPos [0,2,.2];
	_camera camCommit 0;
	waitUntil { (camCommitted _camera); };
	sleep .001;
	if (time > (_t+10) && PMC_gogglesoff == 0 ) then
	{
		{
			_x removeWeapon "CUP_NVG_PVS7";
		} forEach units assault1;
		PMC_gogglesoff = 1;
	};
};

_camera camSetRelPos [3,10,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 7;

titletext["","plain down",2];
titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true
