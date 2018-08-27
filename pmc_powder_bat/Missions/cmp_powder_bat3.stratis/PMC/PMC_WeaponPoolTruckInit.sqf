
// mission start we fill truck with weaponPool goodies
private _v = pmc_truck1;

// clear default stuff
clearWeaponCargo _v;
clearItemCargo _v;
clearMagazineCargo _v;
clearBackpackCargo _v;

// fill in special good US stuff player would appreciated
_v addItemCargoGlobal ["CUP_Binocular_Vector", 1];
_v addItemCargoGlobal ["CUP_NVG_PVS7", 2];

_v addWeaponCargoGlobal ["Rangefinder", 1];
_v addWeaponCargoGlobal ["Binocular", 1];

_v addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", 5];
_v addMagazineCargoGlobal ["CUP_15Rnd_9x19_M9", 12];
_v addMagazineCargoGlobal ["CUP_1Rnd_HE_M203", 12];
_v addMagazineCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249", 5];
_v addMagazineCargoGlobal ["CUP_20Rnd_762x51_DMR", 12];
_v addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag", 30];
_v addMagazineCargoGlobal ["CUP_Mine_M", 2];
_v addMagazineCargoGlobal ["CUP_PipeBomb_M", 2];
_v addMagazineCargoGlobal ["CUP_10Rnd_127x99_M107", 12];

_v addWeaponCargoGlobal ["CUP_M107", 1];
// not working?
//_v addWeaponCargoGlobal ["CUP_M14_EP1", 1];
_v addWeaponCargoGlobal ["CUP_m240_scoped_EP1", 1];
_v addWeaponCargoGlobal ["CUP_M249_EP1", 1];
_v addWeaponCargoGlobal ["CUP_M4A1_AIM_SD_camo", 1];
// not working?
//_v addWeaponCargoGlobal ["ItemGPS", 1];
_v addBackpackCargoGlobal ["CUP_B_AlicePack_Khaki", 2];
