
PMC_sf1 loadStatus "sf1_08";
PMC_sf1 setDamage 0;
PMC_sf2 loadStatus "sf2_08";
PMC_sf3 loadStatus "sf3_08";
PMC_sf4 loadStatus "sf4_08";
PMC_sf5 loadStatus "sf5_08";
PMC_sf6 loadStatus "sf6_08";

{
	if (!alive _x) then
	{
		deleteVehicle _x;
	};
	_x setDamage 0;
} forEach [PMC_sf2,PMC_sf3,PMC_sf4,PMC_sf5,PMC_sf6];

[] execVM "PMC\PMC_Mission_Start.sqf";
