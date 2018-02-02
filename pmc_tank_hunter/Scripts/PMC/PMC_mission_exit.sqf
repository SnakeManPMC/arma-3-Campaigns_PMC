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
			"_f: %1. _q: %2. _newList: %3. _theVeh: %4",
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
	diag_log format["numVehicles: %1", numVehicles];
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
	pickWeaponPool _stuff;
	_q = _q + 1;
};

// ammo box to weaponPool
pickWeaponPool RockBox;
// and the createvehicle box from PMC_StartMission.sqf
pickWeaponPool RockBox2;

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
PMCTrophyCount = queryWeaponPool "CUP_Makarov";
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
		deleteVehicle (_z select 1);
	};
};

if (rollCall >= 7) then
{
	if (damage (_z select 7) > 0.9) then
	{
		deleteVehicle (_z select 2);
	};
};

if (rollCall >= 8) then
{
	if (damage (_z select 8) > 0.9) then
	{
		deleteVehicle (_z select 3);
	};
};

if (rollCall >= 9) then
{
	if (damage (_z select 9) > 0.9) then
	{
		deleteVehicle (_z select 4);
	};
};

if (rollCall >= 10) then
{
	if (damage (_z select 10) > 0.9) then
	{
		deleteVehicle (_z select 5);
	};
};

if (rollCall >= 11) then
{
	if (damage (_z select 11) > 0.9) then
	{
		deleteVehicle (_z select 4);
	};
};

if (rollCall >= 12) then
{
	if (damage (_z select 12) > 0.9) then
	{
		deleteVehicle (_z select 5);
	};
};

/*

	Skill

I hope there is some limit for this so when skill reaches 1.0 or above, it truncates to 1.0 ...
if not, then soon we end up units with skill 200 :)

*/
if (rollCall >= 0) then
{
	_sk = (skill (_z select 0));
	(_z select 0) setSkill (_sk + (0.1 + random 0.1));
	(_z select 0) saveStatus "p0";
};

if (rollCall >= 1) then
{
	_sk = (skill (_z select 1));
	(_z select 1) setSkill (_sk + (0.1 + random 0.1));
	(_z select 1) saveStatus "p1";
};

if (rollCall >= 2) then
{
	_sk = (skill (_z select 2));
	(_z select 2) setSkill (_sk + (0.1 + random 0.1));
	(_z select 2) saveStatus "p2";
};

if (rollCall >= 3) then
{
	_sk = (skill (_z select 3));
	(_z select 3) setSkill (_sk + (0.1 + random 0.1));
	(_z select 3) saveStatus "p3";
};

if (rollCall >= 4) then
{
	_sk = (skill (_z select 4));
	(_z select 4) setSkill (_sk + (0.1 + random 0.1));
	(_z select 4) saveStatus "p4";
};

if (rollCall >= 5) then
{
	_sk = (skill (_z select 5));
	(_z select 5) setSkill (_sk + (0.1 + random 0.1));
	(_z select 5) saveStatus "p5";
};

if (rollCall >= 6) then
{
	_sk = (skill (_z select 6));
	(_z select 6) setSkill (_sk + (0.1 + random 0.1));
	(_z select 6) saveStatus "p6";
};

if (rollCall >= 7) then
{
	_sk = (skill (_z select 7));
	(_z select 7) setSkill (_sk + (0.1 + random 0.1));
	(_z select 7) saveStatus "p7";
};

if (rollCall >= 8) then
{
	_sk = (skill (_z select 8));
	(_z select 8) setSkill (_sk + (0.1 + random 0.1));
	(_z select 8) saveStatus "p8";
};

if (rollCall >= 9) then
{
	_sk = (skill (_z select 9));
	(_z select 9) setSkill (_sk + (0.1 + random 0.1));
	(_z select 9) saveStatus "p9";
};

if (rollCall >= 10) then
{
	_sk = (skill (_z select 10));
	(_z select 10) setSkill (_sk + (0.1 + random 0.1));
	(_z select 10) saveStatus "p10";
};

if (rollCall >= 11) then
{
	_sk = (skill (_z select 11));
	(_z select 11) setSkill (_sk + (0.1 + random 0.1));
	(_z select 11) saveStatus "p11";
};

if (rollCall >= 12) then
{
	_sk = (skill (_z select 12));
	(_z select 12) setSkill (_sk + (0.1 + random 0.1));
	(_z select 12) saveStatus "p12";
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
