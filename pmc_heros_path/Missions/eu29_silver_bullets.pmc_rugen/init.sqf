
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";

PAPABEAR = [ West, "BASE" ];

/* this was commented out in init.sqf, wonder why? during port or from OFP times already?
sleep 5;
{
	if ({"Tank" countType [_x] > 0} count [_x] > 0) then
	{
		_x setDamage .5;
	}
} forEach aieast;
*/
