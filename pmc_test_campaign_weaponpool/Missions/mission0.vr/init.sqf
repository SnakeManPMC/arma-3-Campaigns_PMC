
// empty the box at init
clearWeaponCargo box1;
clearMagazineCargo box1;

waitUntil { !isnil "bis_fnc_init" };

[ "pmc1", true, 2 ] call BIS_fnc_endMission;
