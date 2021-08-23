/*

Creates a field base objects (including ammo boxes) to players location.
I guess most important is the ammo and field hospital.

*/

private
[
	"_abox1",
	"_abox2",
	"_abox3",
	"_ftent",
	"_markerobj",
	"_p",
	"_tent1",
	"_tent2"
];

// ugly hack to get position :)
_p = getPos player;

"FlagCarrierUSA" createVehicle _p;
"Land_Fire" createVehicle _p;

//_tmp1="Fortress1" createVehicle [0,0];
//_tmp1="Fortress1" createVehicle [0,0];
//_tmp1="FenceWood" createVehicle [0,0];
//_tmp1="land_fire" createVehicle [0,0];
//_tmp1="land_fire" createVehicle [0,0];

_ftent = "MASH" createVehicle [(_p select 0),(_p select 1)+20];
_ftent setDir 180;
_tent1 = "ACamp" createVehicle [(_p select 0)-20,(_p select 1)];
_tent1 setDir 90;
_tent2 = "ACamp" createVehicle [(_p select 0)+20,(_p select 1)];
_tent2 setDir 270;
_abox1 = "CUP_USBasicAmmunitionBox" createVehicle [(_p select 0)+25,(_p select 1)+25];
_abox1 setDir (random 360);
_abox2 = "CUP_USSpecialWeaponsBox" createVehicle [(_p select 0)+25,(_p select 1)+25];
_abox2 setDir (random 360);
_abox3 = "CUP_USBasicWeaponsBox" createVehicle [(_p select 0)+25,(_p select 1)+25];
_abox3 setDir (random 360);
"HeliH" createVehicle [(_p select 0)-40,(_p select 1)-40];

// some extra magazines for the box
_abox1 addMagazineCargo ["CUP_10Rnd_127x99_M107",50];
_abox1 addMagazineCargo ["CUP_MineE",10];
_abox1 addWeaponCargo ["CUP_NVG_PVS7",5];

_markerobj = createMarker ["mybase",_p];
_markerobj setMarkerType "COC_NATO_HQ_FTCP";
_markerobj setMarkerText "Field HQ";

/*
;west
addMagazinePool ["CUP_30Rnd_556x45_Stanag",50];
addMagazinePool ["CUP_30Rnd_556x45_Stanag",50];
addMagazinePool ["CUP_FlareWhite_M203",50];
addMagazinePool ["CUP_FlareGreen_M203",50];
addMagazinePool ["CUP_FlareRed_M203",50];
addMagazinePool ["CUP_FlareYellow_M203",50];
addMagazinePool ["CUP_1Rnd_HE_M203",50];
addMagazinePool ["20Rnd_556x45_Stanag",50];
addMagazinePool ["CUP_30Rnd_556x45_G36",50];
addMagazinePool ["CUP_30Rnd_9x19_MP5",50];
addMagazinePool ["CUP_30Rnd_9x19_MP5",50];
addMagazinePool ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",50];
addMagazinePool ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",50];
addMagazinePool ["CUP_5Rnd_762x51_M24",50];
addMagazinePool ["CUP_15Rnd_9x19_M9",50];
addMagazinePool ["CUP_15Rnd_9x19_M9",50];
addMagazinePool ["CUP_10Rnd_127x99_M107",50];
addMagazinepool ["CUP_M136_M",50];
addMagazinePool ["JAVELIN",50];
addMagazinePool ["CUP_Stinger_M",50];
;east
addMagazinePool ["CUP_30Rnd_545x39_AK_M",50];
addMagazinePool ["CUP_FlareWhite_GP25_M",50];
addMagazinePool ["CUP_FlareGreen_GP25_M",50];
addMagazinePool ["CUP_FlareRed_GP25_M",50];
addMagazinePool ["CUP_FlareYellow_GP25_M",50];
addMagazinePool ["CUP_1Rnd_HE_GP25_M",50];
addMagazinePool ["CUP_30Rnd_545x39_AK_M",50];
addMagazinePool ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",50];
addMagazinePool ["CUP_10Rnd_762x54_SVD_M",50];
addMagazinePool ["CUP_5Rnd_127x108_KSVK_M",50];
addMagazinePool ["CUP_8Rnd_9x18_Makarov_M",50];
addMagazinePool ["CUP_8Rnd_9x18_MakarovSD_M",50];
addMagazinePool ["CUP_PG7V_M",50];
addMagazinePool ["CUP_PG7VR_M",50];
addMagazinePool ["STRELA",50];

;west
addWeaponPool ["CUP_M16A2",12];
addWeaponPool ["CUP_M16A4",12];
addWeaponPool ["CUP_M16A2GL",12];
addWeaponPool ["CUP_M16A4_GL",12];
addWeaponPool ["CUP_m16a4_acg",12];
addWeaponPool ["CUP_M16A4_ACG_GL",12];
addWeaponPool ["M4",12];
addWeaponPool ["M4GL",12];
addWeaponPool ["M4AIM",12];
addWeaponPool ["M4A1SD",12];
addWeaponPool ["CUP_M4SPR",12];
addWeaponPool ["CUP_M4A1",12];
addWeaponPool ["M4A1GL",12];
addWeaponPool ["G36K",12];
addWeaponPool ["G36C",12];
addWeaponPool ["G36A",12];
addWeaponPool ["CUP_MP5A5",12];
addWeaponPool ["MP5SD",12];
addWeaponPool ["CUP_lmg_M249",12];
addWeaponPool ["CUP_M240",12];
addWeaponPool ["M24",12];
addWeaponPool ["CUP_M107",12];
addWeaponPool ["CUP_hgun_M9",12];
addWeaponPool ["CUP_hgun_M9_snds",12];
addWeaponpool ["CUP_launch_M136",12];
addWeaponPool ["JAVELIN",12];
addWeaponPool ["CUP_launch_FIM92Stinger",12];
;east
addWeaponPool ["AK74",12];
addWeaponPool ["AK74GL",12];
addWeaponPool ["AKS74U",12];
addWeaponPool ["AKS74UN",12];
addWeaponPool ["AKS74PSO",12];
addWeaponPool ["CUP_PK",12];
addWeaponPool ["CUP_SVD",12];
addWeaponPool ["CUP_ksvk",12];
addWeaponPool ["CUP_Makarov",12];
addWeaponPool ["CUP_MakarovSD",12];
addWeaponPool ["CUP_launch_RPG7V",12];
addWeaponPool ["STRELA",12];

;equipment
addMagazinePool ["Laserbatteries",50];
addWeaponPool ["CUP_Laserdesignator",12];
addWeaponPool ["CUP_NVG_PVS7",12];
addWeaponPool ["Binocular",12];
addMagazinePool ["SmokeShellRed",12];
addMagazinePool ["SmokeShellGreen",12];
addMagazinePool ["SmokeShell",12];
addMagazinePool ["HandGrenade",12];
addMagazinePool ["HandGrenade",12];
addMagazinePool ["CUP_PipeBomb_M",12];
addMagazinePool ["CUP_Timebomb_M",12];
addMagazinePool ["CUP_MineE",12];
addMagazinePool ["CUP_MineE",12];
*/
