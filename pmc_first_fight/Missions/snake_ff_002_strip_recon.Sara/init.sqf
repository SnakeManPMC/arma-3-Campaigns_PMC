
PMC_sf1 loadStatus "sf1_01";
PMC_sf1 setDamage 0;
PMC_sf2 loadStatus "sf2_01";
PMC_sf3 loadStatus "sf3_01";
PMC_sf4 loadStatus "sf4_01";

{
	if (!alive _x) then
	{
		deleteVehicle _x;
	};
	_x setDamage 0;
} forEach [PMC_sf2,PMC_sf3,PMC_sf4];

// no rearming on field
clearMagazinePool;
clearWeaponPool;

[] execVM "PMC\PMC_Mission_Start.sqf";
