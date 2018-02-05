
// load weaponpool stuff
[] execVM "PMC\PMC_weaponPool.sqf";

PMC_army1 loadStatus "army1_06";
PMC_army1 setDamage 0;
PMC_army2 loadStatus "army2_06";
PMC_army3 loadStatus "army3_06";
PMC_army4 loadStatus "army4_06";
PMC_army5 loadStatus "army5_06";
PMC_army6 loadStatus "army6_06";
PMC_army7 loadStatus "army7_06";
PMC_army8 loadStatus "army8_06";
PMC_army9 loadStatus "army9_06";
PMC_army10 loadStatus "army10_06";

{
	if (!alive _x) then
	{
		deleteVehicle _x;
	};
	_x setDamage 0;
} forEach [PMC_army2,PMC_army3,PMC_army4,PMC_army5,PMC_army6,PMC_army7,PMC_army8,PMC_army9,PMC_army10];

[] execVM "PMC\PMC_Mission_Start.sqf";
