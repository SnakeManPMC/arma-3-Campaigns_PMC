
//pickWeaponPool pmc_ammobox_base_1;
//pickWeaponPool pmc_ammobox_base_2;

pmc_ammobox_base_1 saveStatus "PMC_AmmoBoxBase1";
pmc_ammobox_base_2 saveStatus "PMC_AmmoBoxBase2";

diag_log "PMC Powder Bat 1 exit.sqf executed.";
/*
private _scr = [] execVM "PMC\PMC_MissionEnd.sqf";

waitUntil
{
	scriptDone _scr;
};

diag_log "PMC Powder Bat 1 exit.sqf exited after scriptDone finished.";
*/

// generic mission end for ALL the missions. do not put any mission specific stuff here

PMC_LastMissionDateTime = date;
saveVar "PMC_LastMissionDateTime";

PMC_LastMissionOvercast = overcast;
saveVar "PMC_LastMissionOvercast";

diag_log format["PMC_LastMissionDateTime: %1, PMC_LastMissionOvercast: %2", PMC_LastMissionDateTime, PMC_LastMissionOvercast];
