
PMC_sf1 loadStatus "sf1_02";
PMC_sf1 setDamage 0;
PMC_sf2 loadStatus "sf2_02";
PMC_sf3 loadStatus "sf3_02";
PMC_sf4 loadStatus "sf4_02";

{
	if (!alive _x) then
	{
		deleteVehicle _x;
	};
	_x setDamage 0;
} forEach [PMC_sf2,PMC_sf3,PMC_sf4];

[] execVM "PMC\PMC_Mission_Start.sqf";
