//#---save "garage"---

private ["_newList","_theVeh","_vehs","_clist","_f","_xVehType","_q","_sk","_theList","_z","_ruskia","_uskia","_stuff"];

if (PMC_debug) then
{
	diag_log format["scripts\PMC_mission_exit.sqf executed at: %1", time];
};

_theList = list PMC_VehList;
_q = count _theList;
_f = 0;
_vehs = [];
_clist = [];

while { _f < _q } do
{
	_newList = [_theList select _f];
	_theVeh = _theList select _f;

	if (PMC_debug) then
	{
		player sidechat format
		[
			"_f: %1. _q: %2. _newList: %3. _theVeh: %4",
			_f,
			_q,
			_newList,
			_theVeh
		];

		diag_log format
		[
			"PMC_mission_exit; _f: %1. _q: %2. _newList: %3. _theVeh: %4",
			_f,
			_q,
			_newList,
			_theVeh
		];
	};

	_f = _f + 1;

	_xVehType = "CUP_O_BMP2_CHDKZ" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_BMP2_CHDKZ"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_ZSU23_TK" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_ZSU23_TK"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_BRDM2_CHDKZ" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_BRDM2_CHDKZ"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_T55_TK" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_T55_TK"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_T72_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_T72_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_T72_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_T72_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_UAZ_Unarmed_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_UAZ_Unarmed_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_C_Ural_Civ_02" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_C_Ural_Civ_02"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_Ural_Repair_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_Ural_Repair_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_Ural_Reammo_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_Ural_Reammo_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_Ural_Refuel_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_Ural_Refuel_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_Ural_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_Ural_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_Ural_Open_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_Ural_Open_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_BM21_TKA" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_BM21_TKA"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_HMMWV_Unarmed_USMC" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_HMMWV_Unarmed_USMC"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_HMMWV_M2_USMC" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_HMMWV_M2_USMC"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_I_M113_Med_UN" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_I_M113_Med_UN"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_I_M113_UN" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_I_M113_UN"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_MTVR_USMC" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_MTVR_USMC"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_MTVR_Refuel_USMC" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_MTVR_Refuel_USMC"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_MTVR_Repair_USMC" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_MTVR_Repair_USMC"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_MTVR_Ammo_USMC" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_MTVR_Ammo_USMC"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_M2Bradley_USA_D" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_M2Bradley_USA_D"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_M1A1_Woodland_USMC" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_M1A1_Woodland_USMC"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_M1A2_TUSK_MG_USMC" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_M1A2_TUSK_MG_USMC"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_AH6J_MP_USA" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_AH6J_MP_USA"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_UH60M_US" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_UH60M_US"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_CH47F_USA" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_CH47F_USA"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_AH1Z_USMC" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_AH1Z_USMC"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_AH64D_MR_USA" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_AH64D_MR_USA"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_Mi8_medevac_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_Mi8_medevac_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_Mi8_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_Mi8_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_Mi24_D_CDF" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_Mi24_D_CDF"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_Mi24_P_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_Mi24_P_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_Mi24_V_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_Mi24_V_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_Ka52_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_Ka52_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_Ka52_Blk_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_Ka52_Blk_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_Su25_TKA" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_Su25_TKA"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_A10_CAS_USA" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_A10_CAS_USA"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_M1030" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_M1030"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_C_Skoda_White_CIV" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_C_Skoda_White_CIV"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_C_Skoda_Blue_CIV" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_C_Skoda_Blue_CIV"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_C_Skoda_Red_CIV" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_C_Skoda_Red_CIV"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_C_Skoda_Green_CIV" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_C_Skoda_Green_CIV"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_C_Skoda_Red_CIV" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_C_Skoda_Red_CIV"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_C_Skoda_White_CIV" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_C_Skoda_White_CIV"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_B_TowingTractor_USMC" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_B_TowingTractor_USMC"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_C_Skoda_Blue_CIV" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_C_Skoda_Blue_CIV"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "C_Truck_02_Transport_f" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["C_Truck_02_Transport_f"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_C_V3S_Open_TKC" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_C_V3S_Open_TKC"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_V3S_Open_NAPA" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_V3S_Open_NAPA"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_GAZ_Vodnik_BPPU_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_GAZ_Vodnik_BPPU_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_GAZ_Vodnik_PK_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_GAZ_Vodnik_PK_RU"];
			_clist = _clist + _newList;
		};
	};

	_xVehType = "CUP_O_GAZ_Vodnik_MedEvac_RU" countType _newList;
	if (_xVehType == 1) then
	{
		if (side (driver _theVeh) == east) then
		{
		}
		else
		{
			_vehs = _vehs + ["CUP_O_GAZ_Vodnik_MedEvac_RU"];
			_clist = _clist + _newList;
		};
	};
};

// try to clear previous missions saves.
deleteStatus "veh0";
deleteStatus "veh1";
deleteStatus "veh2";
deleteStatus "veh3";
deleteStatus "veh4";
deleteStatus "veh5";
deleteStatus "veh6";
deleteStatus "veh7";
deleteStatus "veh8";
deleteStatus "veh9";
deleteStatus "numVehicles";

numVehicles = count _vehs;

if (PMC_debug) then
{
	player sidechat format["numVehicles: %1", numVehicles];
	diag_log format["PMC_mission_exit; numVehicles: %1", numVehicles];
};

/*
set vehicle type
save the vehicle status, ie dammaged or not.
save the locatio of the vehicle.
*/
if ((count _vehs) >= 1) then
{
	veh0 = _vehs select 0;
};

if ((count _vehs) >= 2) then
{
	veh1 = _vehs select 1;
};

if ((count _vehs) >= 3) then
{
	veh2 = _vehs select 2;
};

if ((count _vehs) >= 4) then
{
	veh3 = _vehs select 3;
};

if ((count _vehs) >= 5) then
{
	veh4 = _vehs select 4;
};

if ((count _vehs) >= 6) then
{
	veh5 = _vehs select 5;
};

if ((count _vehs) >= 7) then
{
	veh6 = _vehs select 6;
};

if ((count _vehs) >= 8) then
{
	veh7 = _vehs select 7;
};

if ((count _vehs) >= 9) then
{
	veh8 = _vehs select 8;
};

if ((count _vehs) >= 10) then
{
	veh9 = _vehs select 9;
};

/*
this does not work as we only have list of vehicle TYPES not the vehicle objects
themselves. Damn.
veh0 savestatus "veh0Stat";
and through 9

same here, shiet
veh0Locat = (getPosASL (_vehs select 0)); saveVar "veh0Locat";
*/
saveVar "veh0";
saveVar "veh1";
saveVar "veh2";
saveVar "veh3";
saveVar "veh4";
saveVar "veh5";
saveVar "veh6";
saveVar "veh7";
saveVar "veh8";
saveVar "veh9";
saveVar "numVehicles";

/*
honestly this is stupid, you get new guys just by switching missions?
whats the reason for reinforcements mission then?

// lets create new resiSATANs joining you
_n = floor (random 6);

if (random 100 < 15) then
{
	_n = 0;
};

_z = units group player;
_z = count _z;

if (_z < 12) then
{
	_q = 1;
	_pos = [(getPosASL player select 0) + 50, (getPosASL player select 1), 0];

	while {_q < _n} do
	{
		"CUP_C_C_Citizen_01" createUnit [_pos, group player, "", 0, "Private"];
		_q = _q + 1;
	}
};
*/

//#-----------Cargo to weapon pool------------
_q = 0;

// all vehicles cargo capacity into weaponPool
while {_q < numVehicles} do
{
        _stuff = (_clist select _q);
	//pickWeaponPool _stuff; // PMCTODO 2026-01-08T23:37:05Z this doesn't work in the first place so its fine, but weaponPool multiplies crap on mission changes and should not be used.
	_q = _q + 1;
};

// 2026-01-08T23:36:15Z both disabled because weaponPool will multiply contents on mission change
// ammo box to weaponPool
//pickWeaponPool RockBox;
// and the createvehicle box from PMC_StartMission.sqf
//pickWeaponPool RockBox2;

RockBox saveStatus "PMC_RockBox";
RockBox2 saveStatus "PMC_RockBox2";

/*
	blah you must put makarov into weaponPool to have it seen in the pmctrophycount :(

// check tokarevs and add trophy count from them
if ({_x hasweapon "CUP_Makarov"} count units group player > 0) then
{
	PMCTrophyCount = PMCTrophyCount + ({_x hasweapon "CUP_Makarov"} count units group player);
	saveVar "PMCTrophyCount";
};

// remove the tokarevs from all squad members.
{
	_x removeMagazines "CUP_8Rnd_9x18_Makarov_M";
	_x removeWeapon "CUP_Makarov";
} forEach units group player;

// now check weaponPool for any makarovs and add to trophy count
if ( (queryWeaponPool "CUP_Makarov") > 0) then
{
	PMCTrophyCount = PMCTrophyCount + (queryWeaponPool "CUP_Makarov");
	saveVar "PMCTrophyCount";
};

*/
//PMCTrophyCount = queryWeaponPool "CUP_Makarov"; // PMCTODO 2026-01-09T00:03:42Z not using weaponPool anymore...
PMCTrophyCount = 0; // disabled until find a way to handle this better.
saveVar "PMCTrophyCount";

//#---save status---
_z = units group player;
rollCall = count _z;

deleteStatus "p1";
deleteStatus "p2";
deleteStatus "p3";
deleteStatus "p4";
deleteStatus "p5";
deleteStatus "p6";
deleteStatus "p7";
deleteStatus "p8";
deleteStatus "p9";
deleteStatus "p10";
deleteStatus "p11";
deleteStatus "p12";

// 2026-01-08T06:11:03Z not sure if deleting existing identities is needed?
// note that player doesn't have identity, he is player ;)
deleteIdentity "PMC_GroupMemberID2";
deleteIdentity "PMC_GroupMemberID3";
deleteIdentity "PMC_GroupMemberID4";
deleteIdentity "PMC_GroupMemberID5";
deleteIdentity "PMC_GroupMemberID6";
deleteIdentity "PMC_GroupMemberID7";
deleteIdentity "PMC_GroupMemberID8";
deleteIdentity "PMC_GroupMemberID9";
deleteIdentity "PMC_GroupMemberID10";
deleteIdentity "PMC_GroupMemberID11";
deleteIdentity "PMC_GroupMemberID12";

if (rollCall >= 1) then
{
	if (damage (_z select 1) > 0.9) then
	{
		deleteVehicle (_z select 1);
	};
};

if (rollCall >= 2) then
{
	if (damage (_z select 2) > 0.9) then
	{
		deleteVehicle (_z select 2);
	};
};

if (rollCall >= 3) then
{
	if (damage (_z select 3) > 0.9) then
	{
		deleteVehicle (_z select 3);
	};
};

if (rollCall >= 4) then
{
	if (damage (_z select 4) > 0.9) then
	{
		deleteVehicle (_z select 4);
	};
};

if (rollCall >= 5) then
{
	if (damage (_z select 5) > 0.9) then
	{
		deleteVehicle (_z select 5);
	};
};

if (rollCall >= 6) then
{
	if (damage (_z select 6) > 0.9) then
	{
		deleteVehicle (_z select 6);
	};
};

if (rollCall >= 7) then
{
	if (damage (_z select 7) > 0.9) then
	{
		deleteVehicle (_z select 7);
	};
};

if (rollCall >= 8) then
{
	if (damage (_z select 8) > 0.9) then
	{
		deleteVehicle (_z select 8);
	};
};

if (rollCall >= 9) then
{
	if (damage (_z select 9) > 0.9) then
	{
		deleteVehicle (_z select 9);
	};
};

if (rollCall >= 10) then
{
	if (damage (_z select 10) > 0.9) then
	{
		deleteVehicle (_z select 10);
	};
};

if (rollCall >= 11) then
{
	if (damage (_z select 11) > 0.9) then
	{
		deleteVehicle (_z select 11);
	};
};

if (rollCall >= 12) then
{
	if (damage (_z select 12) > 0.9) then
	{
		deleteVehicle (_z select 12);
	};
};

/*

	Skill

I hope there is some limit for this so when skill reaches 1.0 or above, it truncates to 1.0 ...
if not, then soon we end up units with skill 200 :)

2026-01-06T00:36:51Z includes also the very important campaign saveStatus.

*/

if (PMC_debug) then
{
		diag_log format["PMC_mission_exit; rollCall: %1", rollCall];
};

// (rollCall >= 1) is player character, its meaningless to add skill improvement to him
// however private variable _z is an array of players group units, it begins from ZERO (0), so its math thingy instead of 1,2,3 etc ;)
if (rollCall >= 1) then
{
	private _theGuy = (_z select 0);
	_theGuy saveStatus "p1";
	if (PMC_debug) then
	{
			diag_log format["PMC_mission_exit; rollCall >= 1 is true, saveStatus p1 executed. _z select 0 skill: %1", (skill _theGuy)];
	};
};

// (rollCall >= 2) is the first group member, ie soldier 2
if (rollCall >= 2) then
{
	private _theGuy = (_z select 1);
	_sk = (skill _theGuy);
	_theGuy setSkill (_sk + (0.1 + random 0.1));
	_theGuy saveStatus "p2";
	_theGuy saveIdentity "PMC_GroupMemberID2";
	if (PMC_debug) then
	{
			diag_log format["PMC_mission_exit; rollCall >= 2 is true, saveStatus p2 executed. _z select 1 skill: %1", (skill _theGuy)];
	};
};

if (rollCall >= 3) then
{
	private _theGuy = (_z select 2);
	_sk = (skill _theGuy);
	_theGuy setSkill (_sk + (0.1 + random 0.1));
	_theGuy saveStatus "p3";
	_theGuy saveIdentity "PMC_GroupMemberID3";
	if (PMC_debug) then
	{
			diag_log format["PMC_mission_exit; rollCall >= 3 is true, saveStatus p3 executed. _z select 2 skill: %1", (skill _theGuy)];
	};
};

if (rollCall >= 4) then
{
	private _theGuy = (_z select 3);
	_sk = (skill _theGuy);
	_theGuy setSkill (_sk + (0.1 + random 0.1));
	_theGuy saveStatus "p4";
	_theGuy saveIdentity "PMC_GroupMemberID4";
	if (PMC_debug) then
	{
			diag_log format["PMC_mission_exit; rollCall >= 4 is true, saveStatus p4 executed. _z select 3 skill: %1", (skill _theGuy)];
	};
};

if (rollCall >= 5) then
{
	private _theGuy = (_z select 4);
	_sk = (skill _theGuy);
	_theGuy setSkill (_sk + (0.1 + random 0.1));
	_theGuy saveStatus "p5";
	_theGuy saveIdentity "PMC_GroupMemberID5";
	if (PMC_debug) then
	{
			diag_log format["PMC_mission_exit; rollCall >= 5 is true, saveStatus p5 executed. _z select 4 skill: %1", (skill _theGuy)];
	};
};

if (rollCall >= 6) then
{
	private _theGuy = (_z select 5);
	_sk = (skill _theGuy);
	_theGuy setSkill (_sk + (0.1 + random 0.1));
	_theGuy saveStatus "p6";
	_theGuy saveIdentity "PMC_GroupMemberID6";
	if (PMC_debug) then
	{
			diag_log format["PMC_mission_exit; rollCall >= 6 is true, saveStatus p6 executed. _z select 5 skill: %1", (skill _theGuy)];
	};
};

if (rollCall >= 7) then
{
	private _theGuy = (_z select 6);
	_sk = (skill _theGuy);
	_theGuy setSkill (_sk + (0.1 + random 0.1));
	_theGuy saveStatus "p7";
	_theGuy saveIdentity "PMC_GroupMemberID7";
	if (PMC_debug) then
	{
			diag_log format["PMC_mission_exit; rollCall >= 7 is true, saveStatus p7 executed. _z select 6 skill: %1", (skill _theGuy)];
	};
};

if (rollCall >= 8) then
{
	private _theGuy = (_z select 7);
	_sk = (skill _theGuy);
	_theGuy setSkill (_sk + (0.1 + random 0.1));
	_theGuy saveStatus "p8";
	_theGuy saveIdentity "PMC_GroupMemberID8";
	if (PMC_debug) then
	{
			diag_log format["PMC_mission_exit; rollCall >= 8 is true, saveStatus p8 executed. _z select 7 skill: %1", (skill _theGuy)];
	};
};

if (rollCall >= 9) then
{
	private _theGuy = (_z select 8);
	_sk = (skill _theGuy);
	_theGuy setSkill (_sk + (0.1 + random 0.1));
	_theGuy saveStatus "p9";
	_theGuy saveIdentity "PMC_GroupMemberID9";
	if (PMC_debug) then
	{
			diag_log format["PMC_mission_exit; rollCall >= 9 is true, saveStatus p9 executed. _z select 8 skill: %1", (skill _theGuy)];
	};
};

if (rollCall >= 10) then
{
	private _theGuy = (_z select 9);
	_sk = (skill _theGuy);
	_theGuy setSkill (_sk + (0.1 + random 0.1));
	_theGuy saveStatus "p10";
	_theGuy saveIdentity "PMC_GroupMemberID10";
	if (PMC_debug) then
	{
			diag_log format["PMC_mission_exit; rollCall >= 10 is true, saveStatus p10 executed. _z select 9 skill: %1", (skill _theGuy)];
	};
};

if (rollCall >= 11) then
{
	private _theGuy = (_z select 10);
	_sk = (skill _theGuy);
	_theGuy setSkill (_sk + (0.1 + random 0.1));
	_theGuy saveStatus "p11";
	_theGuy saveIdentity "PMC_GroupMemberID11";
	if (PMC_debug) then
	{
			diag_log format["PMC_mission_exit; rollCall >= 11 is true, saveStatus p11 executed. _z select 10 skill: %1", (skill _theGuy)];
	};
};

if (rollCall >= 12) then
{
	private _theGuy = (_z select 11);
	_sk = (skill _theGuy);
	_theGuy setSkill (_sk + (0.1 + random 0.1));
	_theGuy saveStatus "p12";
	_theGuy saveIdentity "PMC_GroupMemberID12";
	if (PMC_debug) then
	{
			diag_log format["PMC_mission_exit; rollCall >= 12 is true, saveStatus p12 executed. _z select 11 skill: %1", (skill _theGuy)];
	};
};

saveVar "rollCall";

//#endfile

// save debug status
saveVar "PMC_debug";

// time changes between missions.
PMC_passTime = (3 + random 4);
/*
this is the time used in this mission.
time = seconds. skiptime = hours.
*/
PMC_AllTimeUsed = ((PMC_AllTimeUsed + PMC_passTime) + (time/3600));

saveVar "PMC_passTime";
saveVar "PMC_AllTimeUsed";

//#end0

// KIA's
_ruskia = 0;
_ruskia = (eastguys - count aieast);
_uskia = 0;
_uskia = (westguys - count aiwest);
PMC_EastKIA = (PMC_EastKIA + _ruskia);
PMC_WestKIA = (PMC_EastKIA + _uskia);
saveVar "PMC_EastKIA";
saveVar "PMC_WestKIA";

// this is for the captured towns stuff.
PMC_City01 = getMarkerColor "pmc1";
PMC_City02 = getMarkerColor "pmc2";
PMC_City03 = getMarkerColor "pmc3";
PMC_City04 = getMarkerColor "pmc4";
PMC_City05 = getMarkerColor "pmc5";
PMC_City06 = getMarkerColor "pmc6";
PMC_City07 = getMarkerColor "pmc7";
PMC_City08 = getMarkerColor "pmc8";
PMC_City09 = getMarkerColor "pmc9";
PMC_City10 = getMarkerColor "pmc10";

saveVar "PMC_City01";
saveVar "PMC_City02";
saveVar "PMC_City03";
saveVar "PMC_City04";
saveVar "PMC_City05";
saveVar "PMC_City06";
saveVar "PMC_City07";
saveVar "PMC_City08";
saveVar "PMC_City09";
saveVar "PMC_City10";

if (PMC_debug) then
{
	diag_log format["scripts\PMC_mission_exit.sqf succesfully completed at: %1", time];
};
