
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";

PAPABEAR = [ West, "HQ" ];

// give the guys Beretta's
{
	removeallweapons _x;
	_x addmagazine "CUP_15Rnd_9x19_M9";
	_x addmagazine "CUP_15Rnd_9x19_M9";
	_x addmagazine "CUP_15Rnd_9x19_M9";
	_x addmagazine "CUP_15Rnd_9x19_M9";
	_x addweapon "CUP_hgun_M9";
} forEach units assault1;
