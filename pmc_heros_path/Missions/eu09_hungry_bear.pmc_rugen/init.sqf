
[] execVM "briefing.sqf";

PAPABEAR = [ West, "HQ" ];

[] exec "weather_old.sqs";

rngr1 loadStatus "rng1_08a";
rngr2 loadStatus "rng2_08a";
rngr3 loadStatus "rng3_08a";
rngr4 loadStatus "rng4_08a";
rngr5 loadStatus "rng5_08a";
rngr6 loadStatus "rng6_08a";
rngr7 loadStatus "rng7_08a";
rngr8 loadStatus "rng8_08a";
rngr9 loadStatus "rng9_08a";

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
