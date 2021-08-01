
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";

// here is some campaign initialization crap
PMC_AllTimeUsed = 0;
PMC_EastKIA = 0;
PMC_WestKIA = 0;
PMC_debug = false;
PMC_MoviesOff = false;
PMCTrophyCount = 0;

saveVar "PMC_AllTimeUsed";
saveVar "PMC_EastKIA";
saveVar "PMC_WestKIA";
saveVar "PMC_debug";
saveVar "PMC_MoviesOff";
saveVar "PMCTrophyCount";

// player as civilian character does not have a map, we need ItemMap
player addItem "ItemMap";
player assignItem "ItemMap";
