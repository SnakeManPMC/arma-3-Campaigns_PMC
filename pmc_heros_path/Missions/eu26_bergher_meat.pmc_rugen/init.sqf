
[] execVM "briefing.sqf";

PAPABEAR = [ West, "HQ" ];

s1 loadStatus "sol1_25";
s2 loadStatus "sol2_25";
s3 loadStatus "sol3_25";
s4 loadStatus "sol4_25";
s5 loadStatus "sol5_25";
s6 loadStatus "sol6_25";
s7 loadStatus "sol7_25";
s8 loadStatus "sol8_25";
s9 loadStatus "sol9_25";

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
