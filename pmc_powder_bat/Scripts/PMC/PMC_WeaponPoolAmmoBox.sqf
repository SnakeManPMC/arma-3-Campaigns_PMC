
// mission start we fill camp maxwell ammo boxes with weaponPool goodies
{
	// clear them from default stuff
	clearWeaponCargo _x;
	clearItemCargo _x;
	clearMagazineCargo _x;

	// fill from weaponPool
	putWeaponPool _x;
} forEach [pmc_ammobox_base_1, pmc_ammobox_base_2];
