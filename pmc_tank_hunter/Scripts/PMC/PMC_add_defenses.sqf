
private ["_grp","_gun1","_r1","_rtmptnk","_rveh","_ran","_rusbox","_sv","_pos","_softvehicle","_marker","_city","_gun0","_ladt","_m2a2","_usbox","_staticjunk","_myGun"];

_marker = _this select 0;
_city = getMarkerPos _marker;

// Russians
if (getMarkerColor _marker == "ColorRed") then
{
	_rusbox = "CUP_RUBasicAmmunitionBox" createVehicle _city;
	_ran = floor (2 + random 5);
	_rusbox addMagazineCargo ["CUP_MineE", _ran];
	_ran = floor (2 + random 5);
	_rusbox addMagazineCargo ["CUP_PipeBomb_M", _ran];

	_grp = objNull;
	_grp = createGroup east;
	waitUntil {!(isNull _grp)};

	_ran = random(1);
	"CUP_O_RU_Soldier_SL" createunit [_city, _grp, "", _ran, "SERGEANT"];
	_ran = random(1);
	"CUP_O_RU_Soldier" createunit [_city, _grp, "", _ran, "CORPORAL"];
	_ran = random(1);
	"CUP_O_RU_Soldier_GL" createunit [_city, _grp, "", _ran, "CORPORAL"];
	_ran = random(1);
	"CUP_O_RU_Soldier_AT" createunit [_city, _grp, "", _ran, "CORPORAL"];
	"CUP_O_RU_Soldier_MG" createunit [_city, _grp, "", 1, "PRIVATE"];
	_ran = random(1);
	"CUP_O_RU_Medic" createunit [_city, _grp, "", _ran, "PRIVATE"];

	_grp setbehaviour "safe";
	_grp setcombatmode "green";
	_grp setspeedmode "limited";
	_grp setformation "wedge";

	// create random soft vehicle
	_r1 = floor (random (count PMC_EastSoftV));
	_sv = PMC_EastSoftV select _r1;
	_pos = [(_city select 0)-50 + random 100, (_city select 1)-50 + random 100];
	_softvehicle = _sv createVehicle _pos;
	clearMagazineCargo _softvehicle;
	clearWeaponCargo _softvehicle;

	if (random 100 < 50) then
	{
		_staticjunk =
		[
			"CUP_O_Igla_AA_pod_RU",
			"CUP_O_Metis_RU",
			"CUP_O_SPG9_ChDKZ",
			"CUP_O_D30_RU",
			"CUP_O_ZU23_ChDKZ",
			"CUP_O_AGS_RU",
			"CUP_O_DSHkM_Mini_TriPod_ChDKZ",
			"CUP_O_DSHKM_ChDKZ",
			"CUP_O_KORD_high_RU",
			"CUP_B_2b14_82mm_CDF"
		];
		_r1 = floor (random count _staticjunk);
		_myGun = _staticjunk select _r1;

		_gun1 = _myGun createVehicle _city;
		_gun1 setdir random 360;
		_gun1 addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
		(units _grp select 1) moveingunner _gun1;
		(units _grp select 1) setSkill 1;
	};

	// random chance of armor
	if (random 100 < 50) then
	{
		_r1 = floor (random (count PMC_EastTanks));
		_rtmptnk = PMC_EastTanks select _r1;

		_rveh = _rtmptnk createVehicle _city;
		_rveh addEventHandler ["killed",{_this execVM "PMC\PMC_killed.sqf"}];

		clearMagazineCargo _rveh;
		clearWeaponCargo _rveh;

		"CUP_O_RU_Crew" createunit [_city, _grp, "ec1=this", 1, "PRIVATE"];
		"CUP_O_RU_Crew" createunit [_city, _grp, "eg1=this", 1, "PRIVATE"];
		"CUP_O_RU_Crew" createunit [_city, _grp, "ed1=this", 1, "PRIVATE"];

		{
			_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
		} foreach [ec1, eg1, ed1];

		ec1 assignascommander _rveh;
		eg1 assignasgunner _rveh;
		ed1 assignasdriver _rveh;

		ec1 moveincommander _rveh;
		eg1 moveingunner _rveh;
		ed1 moveindriver _rveh;

		eastguys = eastguys + 3;
	};

	{
		_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	// some defensive and action related trickery for them
	[_grp, _city] call BIS_fnc_taskDefend;

	eastguys = eastguys + 6;
};


// US
if (getMarkerColor _marker == "ColorGreen") then
{
	_usbox = "CUP_USBasicAmmunitionBox" createVehicle _city;
	_ran = floor (2 + random 5);
	_usbox addMagazineCargo ["CUP_MineE", _ran];
	_ran = floor (2 + random 5);
	_usbox addMagazineCargo ["CUP_PipeBomb_M", _ran];

	_grp = objNull;
	_grp = createGroup west;
	waitUntil {!(isNull _grp)};

	_ran = random(1);
	"CUP_B_USMC_Soldier_SL" createunit [_city, _grp, "d1 = this", _ran, "SERGEANT"];
	_ran = random(1);
	"CUP_B_USMC_Soldier" createunit [_city, _grp, "", _ran, "CORPORAL"];
	_ran = random(1);
	"CUP_B_USMC_Soldier_GL" createunit [_city, _grp, "", _ran, "CORPORAL"];
	_ran = random(1);
	"CUP_B_USMC_Soldier_AT" createunit [_city, _grp, "", _ran, "PRIVATE"];
	"CUP_B_USMC_Soldier_MG" createunit [_city, _grp, "", 1, "PRIVATE"];
	_ran = random(1);
	"CUP_B_USMC_Medic" createunit [_city, _grp, "", _ran, "PRIVATE"];

	_grp setbehaviour "safe";
	_grp setcombatmode "green";
	_grp setspeedmode "limited";
	_grp setformation "wedge";

	// create random soft vehicle
	_r1 = floor random (count PMC_WestSoftV);
	_sv = PMC_WestSoftV select _r1;
	_pos = [(_city select 0)-50 + random 100, (_city select 1)-50 + random 100];
	_softvehicle = _sv createVehicle _pos;
	clearMagazineCargo _softvehicle;
	clearWeaponCargo _softvehicle;

	if (random 100 < 50) then
	{
		_staticjunk =
		[
			"CUP_B_M2StaticMG_MiniTripod_USMC",
			"CUP_B_M2StaticMG_USMC",
			"Stinger_Pod",
			"SPG9_CDF",
			"CUP_B_TOW_TriPod_USMC",
			"CUP_B_MK19_TriPod_USMC",
			"CUP_B_M119_USMC",
			"CUP_B_M252_USMC"
		];
		_r1 = floor (random count _staticjunk);
		_myGun = _staticjunk select _r1;

		_gun0 = _myGun createVehicle _city;
		_gun0 setdir random 360;
		_gun0 addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
		(units _grp select 1) moveingunner _gun0;
		(units _grp select 1) setSkill 1;
	};

	// random chance of armor
	if (random 100 < 50) then
	{
		_ladt =
		[
			"CUP_B_M2Bradley_USA_D",
			"CUP_B_M1A2_TUSK_MG_USMC"
		];
		_r1 = floor (random count _ladt);
		_rtmptnk = _ladt select _r1;

		_m2a2 = _rtmptnk createVehicle _city;
		_m2a2 addEventHandler ["killed",{_this execVM "PMC\PMC_killed.sqf"}];

		clearMagazineCargo _m2a2;
		clearWeaponCargo _m2a2;

		"CUP_B_USMC_Crew" createunit [_city, _grp, "wc1=this", 1, "PRIVATE"];
		"CUP_B_USMC_Crew" createunit [_city, _grp, "wg1=this", 1, "PRIVATE"];
		"CUP_B_USMC_Crew" createunit [_city, _grp, "wd1=this", 1, "PRIVATE"];

		{
			_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
		} foreach [wc1, wg1, wd1];

		wc1 assignAsCommander _m2a2;
		wg1 assignAsGunner _m2a2;
		wd1 assignAsDriver _m2a2;

		wc1 moveInCommander _m2a2;
		wg1 moveInGunner _m2a2;
		wd1 moveInDriver _m2a2;

		westguys = westguys + 3;
	};

	{
		_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	// some defensive and action related trickery for them
	[_grp, _city] call BIS_fnc_taskDefend;

	westguys = westguys + 6;
};
