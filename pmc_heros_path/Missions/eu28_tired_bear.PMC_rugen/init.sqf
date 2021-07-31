
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";

PAPABEAR = [ West, "BASE" ];

SEAL1 loadStatus "sea1_27";
SEAL2 loadStatus "sea2_27";
SEAL3 loadStatus "sea3_27";
SEAL4 loadStatus "sea4_27";
SEAL5 loadStatus "sea5_27";
SEAL6 loadStatus "sea6_27";

{
	if (!alive _x) then
	{
		deletevehicle _x;
	}
} forEach [SEAL2, SEAL3, SEAL4, SEAL5, SEAL6];

// heal them
{
	_x setDamage 0;
} forEach units group SEAL1;

//[] exec "\COC_Mines\scripts\InitMines.sqs"
