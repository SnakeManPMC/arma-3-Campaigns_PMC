
[] execVM "briefing.sqf";

PAPABEAR=[West,"HQ"];

// create empty bmp named t80_1
t80_1="CUP_O_T72_RU" createvehicle [GLB_02_t80_1X, GLB_02_t80_1Y];

// adjust the pos + heading to match where you left it in previous mission
t80_1 setpos [GLB_02_t80_1X, GLB_02_t80_1Y]; t80_1 setdir GLB_02_t80_1D;

// make it highly broken 
aa = t80_1 loadStatus "02t80_1";
t80_1 lock true;

uaz1="CUP_O_UAZ_Unarmed_RU" createvehicle [GLB_02_uaz1X, GLB_02_uaz1Y];
uaz1 setpos [GLB_02_uaz1X, GLB_02_uaz1Y]; uaz1 setdir GLB_02_uaz1D;
aa = uaz1 loadStatus "02uaz1";
uaz1 lock true;

urep1="CUP_O_Ural_Repair_RU" createvehicle [GLB_02_urep1X, GLB_02_urep1Y];
urep1 setpos [GLB_02_urep1X, GLB_02_urep1Y]; urep1 setdir GLB_02_urep1D;
aa = urep1 loadStatus "02urep1";
urep1 lock true;

urep2="CUP_O_Ural_Repair_RU" createvehicle [GLB_02_urep2X, GLB_02_urep2Y];
urep2 setpos [GLB_02_urep2X, GLB_02_urep2Y]; urep2 setdir GLB_02_urep2D;
aa = urep2 loadStatus "02urep2";
urep2 lock true;

ural1="CUP_C_Ural_Civ_02" createvehicle [GLB_02_ural1X, GLB_02_ural1Y];
ural1 setpos [GLB_02_ural1X, GLB_02_ural1Y]; ural1 setdir GLB_02_ural1D;
aa = ural1 loadStatus "02ural1";
ural1 lock true;

zsu1="CUP_O_ZSU23_TK" createvehicle [GLB_02_zsu1X, GLB_02_zsu1Y];
zsu1 setpos [GLB_02_zsu1X, GLB_02_zsu1Y]; zsu1 setdir GLB_02_zsu1D;
aa = zsu1 loadStatus "02zsu1";
zsu1 lock true;

zsu2="CUP_O_ZSU23_TK" createvehicle [GLB_02_zsu2X, GLB_02_zsu2Y];
zsu2 setpos [GLB_02_zsu2X, GLB_02_zsu2Y]; zsu2 setdir GLB_02_zsu2D;
aa = zsu2 loadStatus "02zsu2";
zsu2 lock true;

zsu3="CUP_O_ZSU23_TK" createvehicle [GLB_02_zsu3X, GLB_02_zsu3Y];
zsu3 setpos [GLB_02_zsu3X, GLB_02_zsu3Y]; zsu3 setdir GLB_02_zsu3D;
aa = zsu3 loadStatus "02zsu3";
zsu3 lock true;

ufuel1="CUP_O_Ural_Refuel_RU" createvehicle [GLB_02_ufuel1X, GLB_02_ufuel1Y];
ufuel1 setpos [GLB_02_ufuel1X, GLB_02_ufuel1Y]; ufuel1 setdir GLB_02_ufuel1D;
aa = ufuel1 loadStatus "02ufuel1";
ufuel1 lock true;

uammo1="CUP_O_Ural_Reammo_RU" createvehicle [GLB_02_uammo1X, GLB_02_uammo1Y];
uammo1 setpos [GLB_02_uammo1X, GLB_02_uammo1Y]; uammo1 setdir GLB_02_uammo1D;
aa = uammo1 loadStatus "02uammo1";
uammo1 lock true;

// setting up the ammo box position and weapons
box1 setpos [GLB_02_box1X, GLB_02_box1Y];
box1 setdir GLB_02_box1D;

clearMagazinecargo box1;
clearWeaponcargo box1;
/*
box1 addmagazinecargo ["CUP_30Rnd_556x45_Stanag",50];
box1 addmagazinecargo ["JAM_12Gauge_Shotgun_Mag",20];
box1 addmagazinecargo ["CUP_1Rnd_HE_M203",20];
box1 addmagazinecargo ["CUP_1Rnd_HE_M203",5];
box1 addmagazinecargo ["CUP_30Rnd_556x45_Stanag",50];
box1 addmagazinecargo ["JAM_W762_20mag",50];
box1 addmagazinecargo ["CUP_5Rnd_762x51_M24",50];
box1 addmagazinecargo ["CUP_30Rnd_9x19_MP5",50];
box1 addmagazinecargo ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",50];
box1 addmagazinecargo ["JAM_W762M_100mag",50];
box1 addmagazinecargo ["CUP_15Rnd_9x19_M9",50];
box1 addmagazinecargo ["JAM_AT4ALLRocket",10];
box1 addWeaponCargo ["CUP_launch_M136",4];
*/
aa = s1 loadStatus "17s1";
aa = s2 loadStatus "17s2";
aa = s3 loadStatus "17s3";
aa = s4 loadStatus "17s4";
aa = s5 loadStatus "17s5";
aa = s6 loadStatus "17s6";
aa = s7 loadStatus "17s7";
aa = s8 loadStatus "17s8";
aa = s9 loadStatus "17s9";

if (!alive s2) then { deletevehicle s2; };
if (!alive s3) then { deletevehicle s3; };
if (!alive s4) then { deletevehicle s4; };
if (!alive s5) then { deletevehicle s5; };
if (!alive s6) then { deletevehicle s6; };
if (!alive s7) then { deletevehicle s7; };
if (!alive s8) then { deletevehicle s8; };
if (!alive s9) then { deletevehicle s9; };

{_x setdammage 0} foreach units assault1;

aa = ssn1 loadStatus "17ssn1";
