
private
[
	"_groupcounte",
	"_groupcountw",
	"_PMC_countGroups",
	"_PMC_Create_BLUFOR",
	"_PMC_Create_BLUFOR_Helo",
	"_PMC_Create_OPFOR",
	"_PMC_Create_OPFOR_Helo",
	"_WinKills"
];

if (PMC_debug) then
{
	diag_log "PMC_war.sqf executed, now going to wait until aiwest and aieast is larger than 0...";
};

// just to be sure
waitUntil
{
	(count aiwest > 0 && count aieast > 0);
};

if (PMC_debug) then
{
	diag_log "PMC_war.sqf reporting passed aiwest && aieast check.";
};

// vehicle arrays
PMC_EastTanks =
[
	"CUP_O_2S6M_RU",
	"CUP_O_BMP2_CHDKZ",
	"CUP_O_BMP3_RU",
	"CUP_O_BTR90_RU",
	"CUP_I_T34_NAPA",
	"CUP_O_T55_TK",
	"CUP_O_T72_RU",
	"CUP_O_T72_RU",
	"CUP_O_ZSU23_TK"
];

PMC_WestTanks =
[
	"CUP_B_AAV_USMC",
	"CUP_B_LAV25_USMC",
	"CUP_I_M113_UN",
	"CUP_B_M1A1_Woodland_USMC",
	"CUP_B_M1A2_TUSK_MG_USMC",
	"CUP_B_M2Bradley_USA_D"
];

PMC_EastSoftV =
[
	"CUP_O_BRDM2_CHDKZ",
	"CUP_O_GAZ_Vodnik_PK_RU",
	"CUP_O_GAZ_Vodnik_BPPU_RU",
	"CUP_O_GAZ_Vodnik_MedEvac_RU",
	"CUP_O_Ural_RU",
	"CUP_O_Ural_Open_RU",
	"CUP_O_Ural_Reammo_RU",
	"CUP_O_Ural_Refuel_RU",
	"CUP_O_Ural_Repair_RU",
	"CUP_O_UAZ_Unarmed_RU",
	"CUP_C_Ural_Civ_02",
	"CUP_C_V3S_Open_TKC",
	"CUP_V3S_Open_NAPA"
];

PMC_WestSoftV =
[
	"CUP_B_HMMWV_Unarmed_USMC",
	"CUP_B_HMMWV_Ambulance_USMC",
	"CUP_B_HMMWV_M1114_USMC",
	"CUP_B_HMMWV_Avenger_USMC",
	"CUP_B_HMMWV_M2_USMC",
	"CUP_B_HMMWV_MK19_USMC",
	"CUP_B_HMMWV_TOW_USMC",
	"CUP_B_MTVR_USMC",
	"CUP_B_MTVR_Ammo_USMC",
	"CUP_B_MTVR_Refuel_USMC",
	"CUP_B_MTVR_Repair_USMC"
];

PMC_EastHelos =
[
	"CUP_O_Ka52_RU",
	"CUP_O_Ka52_Blk_RU",
	"CUP_O_Mi8_medevac_RU",
	"CUP_O_Mi8_RU",
	"CUP_B_Mi24_D_CDF",
	"CUP_O_Mi24_P_RU",
	"CUP_O_Mi24_V_RU"
];

PMC_WestHelos =
[
	"CUP_B_AH1Z_USMC",
	"CUP_B_AH64D_MR_USA",
	"AH64D_Sidewinders",
	"CUP_B_AH6J_MP_USA",
	"CUP_B_CH47F_USA",
	"CUP_B_MH60S_USMC",
	"CUP_B_UH1Y_UNA_USMC",
	"CUP_B_UH60M_US"
];

PMC_EastPlane =
[
	"CUP_O_Su25_TKA"
];

PMC_WestPlane =
[
	"CUP_B_A10_CAS_USA"
];
// these are just dumped into SoftV now ;(
//PMC_EastSupport = [ "CUP_O_Ural_Repair_RU", "CUP_O_Ural_Reammo_RU", "CUP_O_Ural_Refuel_RU" ];
//PMC_WestSupport = [ "CUP_B_MTVR_Ammo_USMC", "CUP_B_MTVR_Refuel_USMC", "CUP_B_MTVR_Repair_USMC" ];

// these two are setup in PMC_StartMission.sqf also, why?
westguys = 0;
westguys = count aiwest;
eastguys = 0;
eastguys = count aieast;

// unit maxes
MaxWest = 0;
MaxEast = 0;
MaxUnits = 100;
MaxWest = (MaxUnits / 2);
MaxEast = (MaxUnits / 2);
_WinKills = PMC_WinKills;
// was this used anywhere anymore?
CreateDelay = .01;

// win KIA's is how many EAST KIA's in current mission.
_WinKills = floor (500 + random 500);

// helo reinf on/off thingy
PMCHOP = false;

_PMC_countGroups = compile preprocessFileLineNumbers "PMC\PMC_countGroups.sqf";
_PMC_Create_BLUFOR = compile preprocessFileLineNumbers "PMC\PMC_Create_BLUFOR.sqf";
_PMC_Create_OPFOR = compile preprocessFileLineNumbers "PMC\PMC_Create_OPFOR.sqf";
_PMC_Create_BLUFOR_Helo = compile preprocessFileLineNumbers "PMC\PMC_Create_BLUFOR_Helo.sqf";
_PMC_Create_OPFOR_Helo = compile preprocessFileLineNumbers "PMC\PMC_Create_OPFOR_Helo.sqf";

if (PMC_debug) then
{
	diag_log format
	[
		"************* STARTUP *********** PMC_war MaxWest: %1, MaxEast: %2, MaxUnits: %3, _WinKills: %4, aiwest: %5, aieast: %6",
		MaxWest,
		MaxEast,
		MaxUnits,
		_WinKills,
		(count aiwest),
		(count aieast)
	];
};

while { true } do
{
	_groupcountw = [aiwest] call _PMC_countGroups;
	_groupcounte = [aieast] call _PMC_countGroups;

	if (PMC_debug) then
	{
		player sidechat format
		[
			"e/w=a: %1/%2=%3, eKIA: %4, wKIA: %5, PMC_sdg: %6. eGRPs: %7. wGRPs: %8",
			count aieast,
			count aiwest,
			count aieast + count aiwest,
			eastguys - count aieast,
			westguys - count aiwest,
			PMC_sdg,
			_groupcounte,
			_groupcountw
		];
	};

	// if east kills more than _WinKills
	if (eastguys - count aieast > _WinKills) exitWith
	{
		eastdead1 = true;
	};

	// if west kills more than _WinKills
	if (westguys - count aiwest > _WinKills) exitWith
	{
		westdead1 = true;
	};

	if ((count aieast) < MaxEast) then
	{
		if (PMC_debug) then
		{
			diag_log format["We are in (count aieast) < MaxEast == TRUE. (count aieast): %1, MaxEast: %2", (count aieast), MaxEast];
		};
		call _PMC_Create_OPFOR;
		sleep 1;
		call _PMC_Create_OPFOR_Helo;
		sleep 1;
		// helo insertion of troops
		[] execVM "PMC\PMC_Create_BLUFOR_Helo_Reinf.sqf";
	};

	if ((count aiwest) < MaxWest) then
	{
		if (PMC_debug) then
		{
			diag_log format["We are in (count aiwest) < MaxWest == TRUE. (count aiwest):: %1, MaxWest: %2", (count aiwest), MaxWest];
		};
		call _PMC_Create_BLUFOR;
		sleep 1;
		call _PMC_Create_BLUFOR_Helo;
		sleep 1;
		// helo insertion of troops
		[] execVM "PMC\PMC_Create_OPFOR_Helo_Reinf.sqf";
	};

	if (PMC_debug) then
	{
		// huge debug
		diag_log format
		[
			"PMC_war MaxWest: %1, MaxEast: %2, MaxUnits: %3, _WinKills: %4, aiwest: %5, aieast: %6",
			MaxWest,
			MaxEast,
			MaxUnits,
			_WinKills,
			(count aiwest),
			(count aieast)
		];
	};

	sleep 5;
	waitUntil
	{
		sleep 5;
		((count aieast) < MaxEast || (count aiwest) < MaxWest);
	};
};
