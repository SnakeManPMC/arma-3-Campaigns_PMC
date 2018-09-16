
[] execVM "briefing.sqf";

PAPABEAR = [ West, "HQ" ];

s1 loadStatus "sol1_12";
s2 loadStatus "sol2_12";
s3 loadStatus "sol3_12";
s4 loadStatus "sol4_12";
s5 loadStatus "sol5_12";
s6 loadStatus "sol6_12";
s7 loadStatus "sol7_12";
s8 loadStatus "sol8_12";
s9 loadStatus "sol9_12";

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
