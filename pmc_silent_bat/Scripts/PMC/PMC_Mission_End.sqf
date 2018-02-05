
PMC_Artillery_Rounds = 0;
PMC_Artillery_Rounds = PMC_artyAmmo select 0;
PMC_Mortar_Rounds = 0;
PMC_Mortar_Rounds = PMC_artyAmmo select 1;
PMC_MLRS_Rounds = 0;
PMC_MLRS_Rounds = PMC_artyAmmo select 2;

saveVar "PMC_Artillery_Rounds";
saveVar "PMC_Mortar_Rounds";
saveVar "PMC_MLRS_Rounds";

/*
this shit aint working, need to have specific unit names from mission editor.
// team status
(units group player select 0) saveStatus "team1";
(units group player select 1) saveStatus "team2";
(units group player select 2) saveStatus "team3";
(units group player select 3) saveStatus "team4";
(units group player select 4) saveStatus "team5";
*/
