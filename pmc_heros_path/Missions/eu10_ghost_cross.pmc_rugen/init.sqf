
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";

PAPABEAR = [ West, "BASE" ];

rngr1 loadStatus "rng1_09";
rngr2 loadStatus "rng2_09";
rngr3 loadStatus "rng3_09";
rngr4 loadStatus "rng4_09";
rngr5 loadStatus "rng5_09";
rngr6 loadStatus "rng6_09";
rngr7 loadStatus "rng7_09";
rngr8 loadStatus "rng8_09";
rngr9 loadStatus "rng9_09";

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

//[] exec "\COC_Mines\scripts\InitMines.sqs"
