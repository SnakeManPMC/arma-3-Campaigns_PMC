
// campaign init, remove war stuff from our guy
removeAllWeapons player;
removeVest player;
removeHeadgear player;
removeGoggles player;
removeAllAssignedItems player;
removeAllItems player;

// make everyone shoot me
player addRating -9000;

addWeaponPool ["arifle_MX_ACO_pointer_F", 2];
addMagazinePool ["30Rnd_65x39_caseless_mag", 10];
