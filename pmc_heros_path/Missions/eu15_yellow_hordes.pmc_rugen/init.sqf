
[] execVM "briefing.sqf";

PAPABEAR = [ West, "HQ" ];

// clear weather for Yellow Hordes by the request of Elvisdog.

s1 loadStatus "sol1_14";
s2 loadStatus "sol2_14";
s3 loadStatus "sol3_14";
s4 loadStatus "sol4_14";
s5 loadStatus "sol5_14";
s6 loadStatus "sol6_14";
s7 loadStatus "sol7_14";
s8 loadStatus "sol8_14";
s9 loadStatus "sol9_14";

{
	if (!alive _x) then
	{
		deletevehicle _x;
	}
} forEach [s2, s3, s4, s5, s6, s7, s8, s9];

// heal them
{
	_x setDamage 0;
} forEach units group s1;

addWeaponpool ["CUP_M40A3",2];
addMagazinepool ["CUP_20Rnd_762x51_DMR",18];

//[] exec "\COC_Mines\scripts\InitMines.sqs"

// debug for calling CoC UA artillery barrage...
CoCfIFCallFire =
{
};
