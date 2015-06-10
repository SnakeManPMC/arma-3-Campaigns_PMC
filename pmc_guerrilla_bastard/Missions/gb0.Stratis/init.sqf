player setVariable ["BIS_enableRandomization", false];
player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

// campaign init, remove war stuff from our guy
removeAllWeapons player;
removeVest player;
removeHeadgear player;
removeGoggles player;
removeAllAssignedItems player;
removeAllItems player;

// make everyone shoot me
player addRating -9000;
