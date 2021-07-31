
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";

PAPABEAR = [ West, "BASE" ];

SEAL1 loadStatus "sea1_03";
SEAL2 loadStatus "sea2_03";
SEAL3 loadStatus "sea3_03";
SEAL4 loadStatus "sea4_03";
SEAL5 loadStatus "sea5_03";
SEAL6 loadStatus "sea6_03";

// delete if they are dead
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
