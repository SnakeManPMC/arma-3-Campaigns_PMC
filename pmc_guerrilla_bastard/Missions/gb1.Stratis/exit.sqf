/*

	Looping exit.sqf in campaign basic missions.
	player saveStatus and position in map

*/

diag_log "PMC exit.sqf ran!";
// saveStatus, player health, uniforms, weapons he is carrying
player saveStatus "pmc_player";

// players position on map, so next mission starts at where we left off here
pmc_posPlayer = getPosASL player;
saveVar "pmc_posPlayer";
