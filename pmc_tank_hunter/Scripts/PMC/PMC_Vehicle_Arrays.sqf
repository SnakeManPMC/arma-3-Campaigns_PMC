/*
2019-07-10 these arrays were part of PMC_War.sqf before but moved into their own sqf
because PMC_Add_Defenses.sqf needed to read them and returned undefined variable

this script is called from PMC_StartMission.sqf
*/

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
