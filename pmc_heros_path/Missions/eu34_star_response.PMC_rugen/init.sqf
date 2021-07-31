
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";

PAPABEAR = [ West, "BASE" ];

s1 loadStatus "sol1_26";
s2 loadStatus "sol2_26";
s3 loadStatus "sol3_26";
s4 loadStatus "sol4_26";
s5 loadStatus "sol5_26";
s6 loadStatus "sol6_26";
s7 loadStatus "sol7_26";
s8 loadStatus "sol8_26";
s9 loadStatus "sol9_26";

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

//[] exec "\COC_Mines\scripts\InitMines.sqs"
