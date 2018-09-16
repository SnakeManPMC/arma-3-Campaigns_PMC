
[] execVM "briefing.sqf";

PAPABEAR = [ West, "HQ" ];

ms1 LoadStatus "msol1_23";
ms2 LoadStatus "msol2_23";
ms3 LoadStatus "msol3_23";
ms4 LoadStatus "msol4_23";
ms5 LoadStatus "msol5_23";
ms6 LoadStatus "msol6_23";
m2crew1 LoadStatus "mcrew1_23";
m2crew2 LoadStatus "mcrew2_23";
m2crew3 LoadStatus "mcrew3_23";
m2crew4 LoadStatus "mcrew4_23";
m2crew5 LoadStatus "mcrew5_23";
m2crew6 LoadStatus "mcrew6_23";
tnk1 LoadStatus "brad1_23";
tnk2 LoadStatus "brad2_23";

// if they are dead, then remove them from the mission alltogether
{
	if (!alive _x) then
	{
		deletevehicle _x;
	}
} forEach [ms2, ms3, ms4, ms5, ms6, tnk1, tnk2, m2crew1, m2crew2, m2crew3, m2crew4, m2crew5, m2crew6];

// heal them
{
	_x setDamage 0;
} forEach units group ms1;

//[] exec "\COC_Mines\scripts\InitMines.sqs"
