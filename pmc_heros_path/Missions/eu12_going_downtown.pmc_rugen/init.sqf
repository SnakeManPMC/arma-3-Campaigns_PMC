
[] execVM "briefing.sqf";

PAPABEAR = [ West, "HQ" ];

s1 loadStatus "sol1_11";
s2 loadStatus "sol2_11";
s3 loadStatus "sol3_11";
s4 loadStatus "sol4_11";
s5 loadStatus "sol5_11";
s6 loadStatus "sol6_11";
s7 loadStatus "sol7_11";
s8 loadStatus "sol8_11";
s9 loadStatus "sol9_11";

{
	if (!alive _x) then
	{
		deletevehicle _x
	}
} forEach [s2, s3, s4, s5, s6, s7, s8, s9];

// heal them
{
	_x setDamage 0;
} forEach units group s1;

//[] exec "\COC_Mines\scripts\InitMines.sqs"
