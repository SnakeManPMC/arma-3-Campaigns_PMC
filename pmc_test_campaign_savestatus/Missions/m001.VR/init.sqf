
{
	clearMagazineCargo _x;
	clearWeaponCargo _x;
	clearItemCargo _x;
} forEach [pmc_truck1,pmc_ammobox1];

hint "saveStatus will be activated from PMC_EndMission.sqf upon ending mission (radio 0-0-1).\n\nCar, ammo box and your character status will be saved.";
