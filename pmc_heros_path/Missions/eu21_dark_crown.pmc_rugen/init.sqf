
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";

PAPABEAR = [ West, "BASE" ];

rngr1 loadStatus "rng1_20";
rngr2 loadStatus "rng2_20";
rngr3 loadStatus "rng3_20";
rngr4 loadStatus "rng4_20";
rngr5 loadStatus "rng5_20";
rngr6 loadStatus "rng6_20";
rngr7 loadStatus "rng7_20";
rngr8 loadStatus "rng8_20";
rngr9 loadStatus "rng9_20";

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
