
[] execVM "briefing.sqf";

PAPABEAR = [ West, "HQ" ];

rngr1 loadStatus "rng1_21";
rngr2 loadStatus "rng2_21";
rngr3 loadStatus "rng3_21";
rngr4 loadStatus "rng4_21";
rngr5 loadStatus "rng5_21";
rngr6 loadStatus "rng6_21";
rngr7 loadStatus "rng7_21";
rngr8 loadStatus "rng8_21";
rngr9 loadStatus "rng9_21";

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
