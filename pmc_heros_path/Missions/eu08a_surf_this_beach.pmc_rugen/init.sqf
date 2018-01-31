
[] execVM "briefing.sqf";

PAPABEAR = [ West, "HQ" ];

[] exec "weather_old.sqs";

rngr1 loadStatus "rng1_08";
rngr2 loadStatus "rng2_08";
rngr3 loadStatus "rng3_08";
rngr4 loadStatus "rng4_08";
rngr5 loadStatus "rng5_08";
rngr6 loadStatus "rng6_08";
rngr7 loadStatus "rng7_08";
rngr8 loadStatus "rng8_08";
rngr9 loadStatus "rng9_08";

{
	if (!alive _x) then
	{
		deletevehicle _x;
	}
} forEach [rngr2, rngr3, rngr4, rngr5, rngr6, rngr7, rngr8, rngr9];

// heal them
{
	_x setDamage 0;
} forEach units group rngr1;

addWeaponpool ["CUP_M4A1_AIM_SD_camo",2];
addMagazinepool ["CUP_30Rnd_556x45_Stanag",20];
addWeaponpool ["CUP_M40A3",2];
addMagazinepool ["CUP_20Rnd_762x51_DMR",20];
addWeaponpool ["M136",2];
addMagazinepool ["M136",10];

//[] exec "\COC_Mines\scripts\InitMines.sqs"
